.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;,
        Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;,
        Landroid/app/admin/DevicePolicyManager$SystemSettingsWhitelist;,
        Landroid/app/admin/DevicePolicyManager$CreateAndManageUserFlags;,
        Landroid/app/admin/DevicePolicyManager$AutoTimeZonePolicy;,
        Landroid/app/admin/DevicePolicyManager$AutoTimePolicy;,
        Landroid/app/admin/DevicePolicyManager$LockNowFlag;,
        Landroid/app/admin/DevicePolicyManager$AppFunctionsPolicy;,
        Landroid/app/admin/DevicePolicyManager$ContentProtectionPolicy;,
        Landroid/app/admin/DevicePolicyManager$MtePolicy;,
        Landroid/app/admin/DevicePolicyManager$ApplicationExemptionConstants;,
        Landroid/app/admin/DevicePolicyManager$OperationSafetyReason;,
        Landroid/app/admin/DevicePolicyManager$DevicePolicyOperation;,
        Landroid/app/admin/DevicePolicyManager$DeviceOwnerType;,
        Landroid/app/admin/DevicePolicyManager$PersonalAppsSuspensionReason;,
        Landroid/app/admin/DevicePolicyManager$RoleHolderUpdateFailureStrategy;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsModeErrorCodes;,
        Landroid/app/admin/DevicePolicyManager$InstallUpdateCallbackErrorConstants;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsMode;,
        Landroid/app/admin/DevicePolicyManager$AttestationIdType;,
        Landroid/app/admin/DevicePolicyManager$LockTaskFeature;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningPrecondition;,
        Landroid/app/admin/DevicePolicyManager$UserProvisioningState;,
        Landroid/app/admin/DevicePolicyManager$PermissionGrantState;,
        Landroid/app/admin/DevicePolicyManager$NearbyStreamingPolicy;,
        Landroid/app/admin/DevicePolicyManager$PasswordComplexity;,
        Landroid/app/admin/DevicePolicyManager$WifiSecurity;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningConfiguration;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningTrigger;
    }
.end annotation


# static fields
.field public static final whitelist ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_ALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_DISALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final whitelist ACTION_ADMIN_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.ADMIN_POLICY_COMPLIANCE"

.field public static final whitelist ACTION_APPLICATION_DELEGATION_SCOPES_CHANGED:Ljava/lang/String; = "android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED"

.field public static final whitelist ACTION_BIND_SECONDARY_LOCKSCREEN_SERVICE:Ljava/lang/String; = "android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_ACCEPTED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

.field public static final whitelist ACTION_CHECK_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.CHECK_POLICY_COMPLIANCE"

.field public static final blacklist ACTION_DATA_SHARING_RESTRICTION_APPLIED:Ljava/lang/String; = "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

.field public static final whitelist ACTION_DEVICE_ADMIN_SERVICE:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_SERVICE"

.field public static final whitelist ACTION_DEVICE_FINANCING_STATE_CHANGED:Ljava/lang/String; = "android.app.admin.action.DEVICE_FINANCING_STATE_CHANGED"

.field public static final whitelist ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final blacklist ACTION_DEVICE_POLICY_CONSTANTS_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_CONSTANTS_CHANGED"

.field public static final greylist-max-r ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final whitelist ACTION_DEVICE_POLICY_RESOURCE_UPDATED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

.field public static final whitelist ACTION_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String; = "android.app.action.ESTABLISH_NETWORK_CONNECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GET_PROVISIONING_MODE:Ljava/lang/String; = "android.app.action.GET_PROVISIONING_MODE"

.field public static final whitelist ACTION_LOST_MODE_LOCATION_UPDATE:Ljava/lang/String; = "android.app.action.LOST_MODE_LOCATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final whitelist ACTION_PROFILE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.PROFILE_OWNER_CHANGED"

.field public static final blacklist ACTION_PROVISIONING_COMPLETED:Ljava/lang/String; = "android.app.action.PROVISIONING_COMPLETED"

.field public static final whitelist ACTION_PROVISIONING_SUCCESSFUL:Ljava/lang/String; = "android.app.action.PROVISIONING_SUCCESSFUL"

.field public static final whitelist ACTION_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_FINANCED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_FINANCED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final greylist-max-o ACTION_PROVISION_MANAGED_USER:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_USER"

.field public static final greylist-max-o ACTION_REMOTE_BUGREPORT_DISPATCH:Ljava/lang/String; = "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

.field public static final whitelist ACTION_RESET_PROTECTION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.RESET_PROTECTION_POLICY_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

.field public static final whitelist ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final whitelist ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_SHOW_DEVICE_MONITORING_DIALOG:Ljava/lang/String; = "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

.field public static final blacklist ACTION_SHOW_NEW_USER_DISCLAIMER:Ljava/lang/String; = "android.app.action.SHOW_NEW_USER_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final whitelist ACTION_STATE_USER_SETUP_COMPLETE:Ljava/lang/String; = "android.app.action.STATE_USER_SETUP_COMPLETE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final whitelist ACTION_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER:Ljava/lang/String; = "android.app.action.UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ADD_ISFINANCED_DEVICE_FLAG:Ljava/lang/String; = "add-isfinanced-device"

.field public static final blacklist ADD_ISFINANCED_FEVICE_DEFAULT:Z = true

.field public static final whitelist APP_FUNCTIONS_DISABLED:I = 0x1

.field public static final whitelist APP_FUNCTIONS_DISABLED_CROSS_PROFILE:I = 0x2

.field public static final whitelist APP_FUNCTIONS_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist AUTO_TIME_DISABLED:I = 0x1

.field public static final whitelist AUTO_TIME_ENABLED:I = 0x2

.field public static final whitelist AUTO_TIME_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist AUTO_TIME_ZONE_DISABLED:I = 0x1

.field public static final whitelist AUTO_TIME_ZONE_ENABLED:I = 0x2

.field public static final whitelist AUTO_TIME_ZONE_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist CONTENT_PROTECTION_DISABLED:I = 0x1

.field public static final whitelist CONTENT_PROTECTION_ENABLED:I = 0x2

.field public static final whitelist CONTENT_PROTECTION_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final greylist-max-o DEFAULT_STRONG_AUTH_TIMEOUT_MS:J = 0xf731400L

.field public static final whitelist DELEGATION_APP_RESTRICTIONS:Ljava/lang/String; = "delegation-app-restrictions"

.field public static final whitelist DELEGATION_BLOCK_UNINSTALL:Ljava/lang/String; = "delegation-block-uninstall"

.field public static final whitelist DELEGATION_CERT_INSTALL:Ljava/lang/String; = "delegation-cert-install"

.field public static final whitelist DELEGATION_CERT_SELECTION:Ljava/lang/String; = "delegation-cert-selection"

.field public static final whitelist DELEGATION_ENABLE_SYSTEM_APP:Ljava/lang/String; = "delegation-enable-system-app"

.field public static final whitelist DELEGATION_INSTALL_EXISTING_PACKAGE:Ljava/lang/String; = "delegation-install-existing-package"

.field public static final whitelist DELEGATION_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "delegation-keep-uninstalled-packages"

.field public static final whitelist DELEGATION_NETWORK_LOGGING:Ljava/lang/String; = "delegation-network-logging"

.field public static final whitelist DELEGATION_PACKAGE_ACCESS:Ljava/lang/String; = "delegation-package-access"

.field public static final whitelist DELEGATION_PERMISSION_GRANT:Ljava/lang/String; = "delegation-permission-grant"

.field public static final whitelist DELEGATION_SECURITY_LOGGING:Ljava/lang/String; = "delegation-security-logging"

.field public static final blacklist DEPRECATE_USERMANAGERINTERNAL_DEVICEPOLICY_DEFAULT:Z = true

.field public static final blacklist DEPRECATE_USERMANAGERINTERNAL_DEVICEPOLICY_FLAG:Ljava/lang/String; = "deprecate_usermanagerinternal_devicepolicy"

.field public static final blacklist DEVICE_OWNER_TYPE_DEFAULT:I = 0x0

.field public static final blacklist DEVICE_OWNER_TYPE_FINANCED:I = 0x1

.field public static final whitelist ENCRYPTION_STATUS_ACTIVATING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE_PER_USER:I = 0x5

.field public static final whitelist ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final whitelist ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final blacklist ERROR_PACKAGE_NAME_NOT_FOUND:I = 0x1

.field public static final blacklist ERROR_VPN_PACKAGE_NOT_FOUND:I = 0x1

.field public static final whitelist EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXEMPT_FROM_HIBERNATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXEMPT_FROM_POWER_RESTRICTIONS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXEMPT_FROM_SUSPENSION:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final greylist-max-o EXTRA_BUGREPORT_NOTIFICATION_TYPE:Ljava/lang/String; = "android.app.extra.bugreport_notification_type"

.field public static final whitelist EXTRA_DELEGATION_SCOPES:Ljava/lang/String; = "android.app.extra.DELEGATION_SCOPES"

.field public static final whitelist EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final whitelist EXTRA_DEVICE_PASSWORD_REQUIREMENT_ONLY:Ljava/lang/String; = "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

.field public static final whitelist EXTRA_FORCE_UPDATE_ROLE_HOLDER:Ljava/lang/String; = "android.app.extra.FORCE_UPDATE_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_LOST_MODE_LOCATION:Ljava/lang/String; = "android.app.extra.LOST_MODE_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PASSWORD_COMPLEXITY:Ljava/lang/String; = "android.app.extra.PASSWORD_COMPLEXITY"

.field public static final whitelist EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final blacklist EXTRA_PROVISIONING_ACTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACTION"

.field public static final whitelist EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final whitelist EXTRA_PROVISIONING_ALLOWED_PROVISIONING_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES"

.field public static final whitelist EXTRA_PROVISIONING_ALLOW_OFFLINE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOW_OFFLINE"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMERS:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMERS"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMER_CONTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMER_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

.field public static final whitelist EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_IMEI:Ljava/lang/String; = "android.app.extra.PROVISIONING_IMEI"

.field public static final whitelist EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

.field public static final whitelist EXTRA_PROVISIONING_KEEP_SCREEN_ON:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_SCREEN_ON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final whitelist EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final whitelist EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final whitelist EXTRA_PROVISIONING_LOGO_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOGO_URI"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_MAIN_COLOR:Ljava/lang/String; = "android.app.extra.PROVISIONING_MAIN_COLOR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_MODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_MODE"

.field public static final whitelist EXTRA_PROVISIONING_ORGANIZATION_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_ORGANIZATION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.extra.PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT"

.field public static final whitelist EXTRA_PROVISIONING_SERIAL_NUMBER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SERIAL_NUMBER"

.field public static final whitelist EXTRA_PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_EDUCATION_SCREENS:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SKIP_USER_CONSENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SUPPORTED_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORTED_MODES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SUPPORT_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORT_URL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final whitelist EXTRA_PROVISIONING_TRIGGER:Ljava/lang/String; = "android.app.extra.PROVISIONING_TRIGGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_USE_MOBILE_DATA:Ljava/lang/String; = "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_ANONYMOUS_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_CA_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_DOMAIN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_DOMAIN"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_EAP_METHOD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_IDENTITY"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PHASE2_AUTH:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_USER_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

.field public static final greylist-max-o EXTRA_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_HASH"

.field public static final blacklist EXTRA_REMOTE_BUGREPORT_NONCE:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_NONCE"

.field public static final whitelist EXTRA_RESOURCE_IDS:Ljava/lang/String; = "android.app.extra.RESOURCE_IDS"

.field public static final whitelist EXTRA_RESOURCE_TYPE:Ljava/lang/String; = "android.app.extra.RESOURCE_TYPE"

.field public static final whitelist EXTRA_RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final whitelist EXTRA_RESOURCE_TYPE_STRING:I = 0x2

.field public static final whitelist EXTRA_RESTRICTION:Ljava/lang/String; = "android.app.extra.RESTRICTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_RESULT_LAUNCH_INTENT:Ljava/lang/String; = "android.app.extra.RESULT_LAUNCH_INTENT"

.field public static final whitelist EXTRA_ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ROLE_HOLDER_STATE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_ROLE_HOLDER_UPDATE_FAILURE_STRATEGY:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_FAILURE_STRATEGY"

.field public static final whitelist EXTRA_ROLE_HOLDER_UPDATE_RESULT_CODE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_RESULT_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY:I = 0x1

.field public static final whitelist FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final whitelist FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final whitelist FLAG_SUPPORTED_MODES_DEVICE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTED_MODES_ORGANIZATION_OWNED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTED_MODES_PERSONALLY_OWNED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ID_TYPE_BASE_INFO:I = 0x1

.field public static final whitelist ID_TYPE_IMEI:I = 0x4

.field public static final whitelist ID_TYPE_INDIVIDUAL_ATTESTATION:I = 0x10

.field public static final whitelist ID_TYPE_MEID:I = 0x8

.field public static final whitelist ID_TYPE_SERIAL:I = 0x2

.field public static final whitelist INSTALLKEY_REQUEST_CREDENTIALS_ACCESS:I = 0x1

.field public static final whitelist INSTALLKEY_SET_USER_SELECTABLE:I = 0x2

.field public static final blacklist IS_DEVICE_OWNER_USER_AWARE:J = 0x125003b4L

.field public static final whitelist KEYGUARD_DISABLE_BIOMETRICS:I = 0x1a0

.field public static final whitelist KEYGUARD_DISABLE_FACE:I = 0x80

.field public static final whitelist KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final whitelist KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final whitelist KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final whitelist KEYGUARD_DISABLE_IRIS:I = 0x100

.field public static final whitelist KEYGUARD_DISABLE_REMOTE_INPUT:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final whitelist KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final whitelist KEYGUARD_DISABLE_SHORTCUTS_ALL:I = 0x200

.field public static final whitelist KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final whitelist KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final whitelist KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final blacklist KEY_GEN_STRONGBOX_UNAVAILABLE:I = 0x1

.field public static final whitelist LEAVE_ALL_SYSTEM_APPS_ENABLED:I = 0x10

.field public static final whitelist LOCK_TASK_FEATURE_BLOCK_ACTIVITY_START_IN_TASK:I = 0x40

.field public static final whitelist LOCK_TASK_FEATURE_GLOBAL_ACTIONS:I = 0x10

.field public static final whitelist LOCK_TASK_FEATURE_HOME:I = 0x4

.field public static final whitelist LOCK_TASK_FEATURE_KEYGUARD:I = 0x20

.field public static final whitelist LOCK_TASK_FEATURE_NONE:I = 0x0

.field public static final whitelist LOCK_TASK_FEATURE_NOTIFICATIONS:I = 0x2

.field public static final whitelist LOCK_TASK_FEATURE_OVERVIEW:I = 0x8

.field public static final whitelist LOCK_TASK_FEATURE_SYSTEM_INFO:I = 0x1

.field public static final greylist-max-o MAKE_USER_DEMO:I = 0x4

.field public static final whitelist MAKE_USER_EPHEMERAL:I = 0x2

.field public static final blacklist MAX_PASSWORD_LENGTH:I = 0x10

.field public static final whitelist MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final whitelist MTE_DISABLED:I = 0x2

.field public static final whitelist MTE_ENABLED:I = 0x1

.field public static final whitelist MTE_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist NEARBY_STREAMING_DISABLED:I = 0x1

.field public static final whitelist NEARBY_STREAMING_ENABLED:I = 0x2

.field public static final whitelist NEARBY_STREAMING_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist NEARBY_STREAMING_SAME_MANAGED_ACCOUNT_ONLY:I = 0x3

.field public static final blacklist NON_ORG_OWNED_PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b0

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_ACCEPTED_NOT_FINISHED:I = 0x2

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_FINISHED_NOT_ACCEPTED:I = 0x3

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_STARTED:I = 0x1

.field public static final blacklist OPERATION_CLEAR_APPLICATION_USER_DATA:I = 0x17

.field public static final blacklist OPERATION_CREATE_AND_MANAGE_USER:I = 0x5

.field public static final blacklist OPERATION_INSTALL_CA_CERT:I = 0x18

.field public static final blacklist OPERATION_INSTALL_KEY_PAIR:I = 0x19

.field public static final blacklist OPERATION_INSTALL_SYSTEM_UPDATE:I = 0x1a

.field public static final blacklist OPERATION_LOCK_NOW:I = 0x1

.field public static final blacklist OPERATION_LOGOUT_USER:I = 0x9

.field public static final blacklist OPERATION_REBOOT:I = 0x7

.field public static final blacklist OPERATION_REMOVE_ACTIVE_ADMIN:I = 0x1b

.field public static final blacklist OPERATION_REMOVE_KEY_PAIR:I = 0x1c

.field public static final blacklist OPERATION_REMOVE_USER:I = 0x6

.field public static final blacklist OPERATION_REQUEST_BUGREPORT:I = 0x1d

.field public static final whitelist OPERATION_SAFETY_REASON_DRIVING_DISTRACTION:I = 0x1

.field public static final blacklist OPERATION_SAFETY_REASON_NONE:I = -0x1

.field public static final blacklist OPERATION_SET_ALWAYS_ON_VPN_PACKAGE:I = 0x1e

.field public static final blacklist OPERATION_SET_APPLICATION_HIDDEN:I = 0xf

.field public static final blacklist OPERATION_SET_APPLICATION_RESTRICTIONS:I = 0x10

.field public static final blacklist OPERATION_SET_APP_FUNCTIONS_POLICY:I = 0x2a

.field public static final blacklist OPERATION_SET_CAMERA_DISABLED:I = 0x1f

.field public static final blacklist OPERATION_SET_CONTENT_PROTECTION_POLICY:I = 0x29

.field public static final blacklist OPERATION_SET_FACTORY_RESET_PROTECTION_POLICY:I = 0x20

.field public static final blacklist OPERATION_SET_GLOBAL_PRIVATE_DNS:I = 0x21

.field public static final blacklist OPERATION_SET_KEEP_UNINSTALLED_PACKAGES:I = 0x11

.field public static final blacklist OPERATION_SET_KEYGUARD_DISABLED:I = 0xc

.field public static final blacklist OPERATION_SET_LOCK_TASK_FEATURES:I = 0x12

.field public static final blacklist OPERATION_SET_LOCK_TASK_PACKAGES:I = 0x13

.field public static final blacklist OPERATION_SET_LOGOUT_ENABLED:I = 0x22

.field public static final blacklist OPERATION_SET_MASTER_VOLUME_MUTED:I = 0x23

.field public static final blacklist OPERATION_SET_OVERRIDE_APNS_ENABLED:I = 0x24

.field public static final blacklist OPERATION_SET_PACKAGES_SUSPENDED:I = 0x14

.field public static final blacklist OPERATION_SET_PERMISSION_GRANT_STATE:I = 0x25

.field public static final blacklist OPERATION_SET_PERMISSION_POLICY:I = 0x26

.field public static final blacklist OPERATION_SET_RESTRICTIONS_PROVIDER:I = 0x27

.field public static final blacklist OPERATION_SET_STATUS_BAR_DISABLED:I = 0xd

.field public static final blacklist OPERATION_SET_SYSTEM_SETTING:I = 0xb

.field public static final blacklist OPERATION_SET_SYSTEM_UPDATE_POLICY:I = 0xe

.field public static final blacklist OPERATION_SET_TRUST_AGENT_CONFIGURATION:I = 0x15

.field public static final blacklist OPERATION_SET_USER_CONTROL_DISABLED_PACKAGES:I = 0x16

.field public static final blacklist OPERATION_SET_USER_RESTRICTION:I = 0xa

.field public static final blacklist OPERATION_START_USER_IN_BACKGROUND:I = 0x3

.field public static final blacklist OPERATION_STOP_USER:I = 0x4

.field public static final blacklist OPERATION_SWITCH_USER:I = 0x2

.field public static final blacklist OPERATION_UNINSTALL_CA_CERT:I = 0x28

.field public static final blacklist OPERATION_WIPE_DATA:I = 0x8

.field public static final blacklist ORG_OWNED_PROFILE_KEYGUARD_FEATURES_PARENT_ONLY:I = 0x207

.field public static final whitelist PASSWORD_COMPLEXITY_HIGH:I = 0x50000

.field public static final whitelist PASSWORD_COMPLEXITY_LOW:I = 0x10000

.field public static final whitelist PASSWORD_COMPLEXITY_MEDIUM:I = 0x30000

.field public static final whitelist PASSWORD_COMPLEXITY_NONE:I = 0x0

.field public static final whitelist PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final whitelist PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final whitelist PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final whitelist PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final greylist-max-o PASSWORD_QUALITY_MANAGED:I = 0x80000

.field public static final whitelist PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final whitelist PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final whitelist PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final whitelist PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final whitelist PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final whitelist PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final whitelist PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final whitelist PERMISSION_POLICY_AUTO_DENY:I = 0x2

.field public static final whitelist PERMISSION_POLICY_AUTO_GRANT:I = 0x1

.field public static final whitelist PERMISSION_POLICY_PROMPT:I = 0x0

.field public static final whitelist PERSONAL_APPS_NOT_SUSPENDED:I = 0x0

.field public static final whitelist PERSONAL_APPS_SUSPENDED_EXPLICITLY:I = 0x1

.field public static final whitelist PERSONAL_APPS_SUSPENDED_PROFILE_TIMEOUT:I = 0x2

.field public static final whitelist POLICY_DISABLE_CAMERA:Ljava/lang/String; = "policy_disable_camera"

.field public static final whitelist POLICY_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "policy_disable_screen_capture"

.field public static final greylist-max-o POLICY_SUSPEND_PACKAGES:Ljava/lang/String; = "policy_suspend_packages"

.field public static final blacklist PREFERENTIAL_NETWORK_SERVICE_ENABLED_DEFAULT:Z = false

.field private static final blacklist PREFIX_OPERATION:Ljava/lang/String; = "OPERATION_"

.field private static final blacklist PREFIX_OPERATION_SAFETY_REASON:Ljava/lang/String; = "OPERATION_SAFETY_REASON_"

.field public static final whitelist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final whitelist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final whitelist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final whitelist PRIVATE_DNS_MODE_UNKNOWN:I = 0x0

.field public static final whitelist PRIVATE_DNS_SET_ERROR_FAILURE_SETTING:I = 0x2

.field public static final whitelist PRIVATE_DNS_SET_ERROR_HOST_NOT_SERVING:I = 0x1

.field public static final whitelist PRIVATE_DNS_SET_NO_ERROR:I = 0x0

.field public static final greylist-max-o PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x3b7

.field public static final whitelist PROVISIONING_MODE_FULLY_MANAGED_DEVICE:I = 0x1

.field public static final whitelist PROVISIONING_MODE_MANAGED_PROFILE:I = 0x2

.field public static final whitelist PROVISIONING_MODE_MANAGED_PROFILE_ON_PERSONAL_DEVICE:I = 0x3

.field public static final whitelist PROVISIONING_TRIGGER_CLOUD_ENROLLMENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_MANAGED_ACCOUNT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_NFC:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_PERSISTENT_DEVICE_OWNER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_QR_CODE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_DEVICE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_PROFILE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_USER:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_USER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT:I = 0x2

.field public static final whitelist RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final whitelist RESULT_DEVICE_OWNER_SET:I = 0x7b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_PROVISIONING_DISABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_RECOVERABLE_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_UNRECOVERABLE_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_ROLE_HOLDER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_WORK_PROFILE_CREATED:I = 0x7a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FAIL_PROVISIONING:I = 0x1

.field public static final blacklist ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FALLBACK_TO_PLATFORM_PROVISIONING:I = 0x2

.field public static final whitelist SKIP_SETUP_WIZARD:I = 0x1

.field public static final whitelist STATE_USER_PROFILE_COMPLETE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_PROFILE_FINALIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_COMPLETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_FINALIZED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_INCOMPLETE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_UNMANAGED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_ACCOUNTS_NOT_EMPTY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_CANNOT_ADD_MANAGED_PROFILE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_DEVICE_ADMIN_NOT_SUPPORTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HAS_DEVICE_OWNER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HAS_PAIRED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HEADLESS_ONLY_SYSTEM_USER:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HEADLESS_SYSTEM_USER_MODE_NOT_SUPPORTED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_MANAGED_USERS_NOT_SUPPORTED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_NONSYSTEM_USER_EXISTS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SYSTEM_USER:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_PROVISIONING_NOT_ALLOWED_FOR_NON_DEVELOPER_USERS:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATUS_SPLIT_SYSTEM_USER_DEVICE_SYSTEM_USER:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_SYSTEM_USER:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_HAS_PROFILE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_NOT_RUNNING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_SETUP_COMPLETED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final whitelist WIFI_SECURITY_ENTERPRISE_192:I = 0x3

.field public static final whitelist WIFI_SECURITY_ENTERPRISE_EAP:I = 0x2

.field public static final whitelist WIFI_SECURITY_OPEN:I = 0x0

.field public static final whitelist WIFI_SECURITY_PERSONAL:I = 0x1

.field public static final whitelist WIPE_EUICC:I = 0x4

.field public static final whitelist WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final whitelist WIPE_RESET_PROTECTION_DATA:I = 0x2

.field public static final whitelist WIPE_SILENTLY:I = 0x8

.field private static final blacklist sDpmCaches:Landroid/os/IpcDataCache$Config;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDeviceOwnerCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParentInstance:Z

.field private final blacklist mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

.field private final greylist-max-o mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$LUdrwt8Jx0bonx1X6f37TGTF57U(Landroid/app/admin/DevicePolicyManager;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$8(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$MGb-gyGqPsB9dc3FF2ObORbsQqU(Landroid/app/admin/DevicePolicyManager;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$9(Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ULUlbd3fPEgbQcOfSSjlnF46EhY(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$4(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$c72A6mjF6wXGDLfFtUO4ts1Ax5I(Landroid/app/admin/DevicePolicyManager;Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$3(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iQlPbk67p92pVw-QalfA214w4MU(Landroid/app/admin/DevicePolicyManager;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$5(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nVmQiPYzZZXLSUQct8uCT5VLfJM(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$10(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$op1DQ6k9WkYHgBGjHBdld3rNwDw(Landroid/app/admin/DevicePolicyManager;Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$2(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteCallback(Landroid/app/admin/DevicePolicyManager;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 332
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    .line 4454
    new-instance v0, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v1, "system_server"

    const-string v2, "DevicePolicyManagerCaches"

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4456
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v0

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 4454
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    .line 342
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;
    .param p3, "parentInstance"    # Z

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9477
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 9478
    const-string v2, "getKeyguardDisabledFeatures"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    .line 9936
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 9937
    const-string/jumbo v2, "hasDeviceOwner"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    .line 10319
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 10321
    const-string v2, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    .line 10392
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 10393
    const-string/jumbo v2, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    .line 15131
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 15132
    const-string v2, "getDeviceOwnerOrganizationName"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    .line 15150
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 15151
    const-string v2, "getOrganizationNameForUser"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    .line 15554
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 15555
    const-string/jumbo v2, "isNetworkLoggingEnabled"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    .line 348
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 349
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 350
    iput-boolean p3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 351
    new-instance v0, Landroid/app/admin/DevicePolicyResourcesManager;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    .line 352
    return-void
.end method

.method public static blacklist disableLocalCaches()V
    .registers 1

    .line 4465
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->disableAllForCurrentProcess()V

    .line 4466
    return-void
.end method

.method private blacklist executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    .line 16413
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p4, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;-><init>(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16414
    return-void
.end method

.method private blacklist executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 7018
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 7030
    return-void
.end method

.method private blacklist extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "deviceManagerConfig"    # Ljava/lang/String;

    .line 18048
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18049
    const/4 v0, 0x0

    return-object v0

    .line 18051
    :cond_8
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 18052
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 18054
    :cond_18
    return-object p1
.end method

.method private static greylist-max-o getCaCertAlias([B)Ljava/lang/String;
    .registers 4
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 8371
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 8372
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 8374
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;
    .registers 4
    .param p1, "callingUserOnly"    # Z

    .line 9845
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 9847
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 9848
    :catch_b
    move-exception v0

    .line 9849
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9852
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;
    .registers 3
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 17504
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getService()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private blacklist intArrayToSet([I)Ljava/util/Set;
    .registers 7
    .param p1, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16937
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16938
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, p1, v2

    .line 16939
    .local v3, "item":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16938
    .end local v3    # "item":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 16941
    :cond_15
    return-object v0
.end method

.method public static blacklist invalidateBinderCaches()V
    .registers 1

    .line 4460
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->invalidateCache()V

    .line 4461
    return-void
.end method

.method private greylist-max-o isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUserOnly"    # Z

    .line 9816
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 9817
    return v0

    .line 9819
    :cond_4
    invoke-direct {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 9820
    .local v1, "deviceOwner":Landroid/content/ComponentName;
    if-nez v1, :cond_b

    .line 9821
    return v0

    .line 9823
    :cond_b
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isDeviceOwnerAppOnContextUser(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9827
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 9828
    return v0

    .line 9830
    :cond_4
    const/4 v1, 0x0

    .line 9831
    .local v1, "deviceOwner":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_1b

    .line 9833
    :try_start_9
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponentOnUser(I)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_15

    move-object v1, v2

    .line 9836
    goto :goto_1b

    .line 9834
    :catch_15
    move-exception v0

    .line 9835
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 9838
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    if-nez v1, :cond_1e

    .line 9839
    return v0

    .line 9841
    :cond_1e
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isMtePolicyEnforced()Z
    .registers 1

    .line 4251
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v0

    return v0
.end method

.method private blacklist isParentInstance()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    return v0
.end method

.method public static blacklist isValidOperationSafetyReason(I)Z
    .registers 2
    .param p0, "reason"    # I

    .line 4478
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$executeCallback$0(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 6
    .param p0, "error"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 7019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7021
    .local v0, "token":J
    if-eqz p0, :cond_f

    .line 7022
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    .line 7024
    :cond_f
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    .line 7027
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7028
    nop

    .line 7029
    return-void

    .line 7027
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7028
    throw v2
.end method

.method static synthetic blacklist lambda$executeCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/Boolean;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 7018
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeCallback$11(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V
    .registers 3
    .param p0, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 16413
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;->onInstallUpdateError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$isPreferentialNetworkServiceEnabled$6(Landroid/app/admin/PreferentialNetworkServiceConfig;)Z
    .registers 2
    .param p0, "c"    # Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 13258
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$10(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15556
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 15557
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 15556
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$2(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 6
    .param p1, "query"    # Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9479
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 9480
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->isParentInstance()Z

    move-result v3

    .line 9479
    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3(Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "query"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9938
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$4(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "arg"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10322
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$5(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "query"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10394
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$8(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "query"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15133
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$9(Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15152
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setPermissionGrantState$7(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "result"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 14273
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static blacklist operationSafetyReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 4472
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_SAFETY_REASON_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist operationToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "operation"    # I

    .line 3995
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setActiveAdminInternal(Landroid/content/ComponentName;ZILjava/lang/String;)V
    .registers 7
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "provisioningContext"    # Ljava/lang/String;

    .line 9538
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9540
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9548
    goto :goto_10

    .line 9546
    :catch_a
    move-exception v0

    .line 9547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method private greylist-max-r throwIfParentInstance(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionName"    # Ljava/lang/String;

    .line 15439
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-nez v0, :cond_5

    .line 15442
    return-void

    .line 15440
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be called on the parent instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist wipeDataInternal(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;
    .param p3, "factoryReset"    # Z

    .line 6908
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_22

    .line 6910
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    move v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "flags":I
    .end local p2    # "wipeReasonForUser":Ljava/lang/String;
    .end local p3    # "factoryReset":Z
    .local v3, "flags":I
    .local v4, "wipeReasonForUser":Ljava/lang/String;
    .local v6, "factoryReset":Z
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->wipeDataWithReason(Ljava/lang/String;ILjava/lang/String;ZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 6914
    goto :goto_25

    .line 6912
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v3    # "flags":I
    .end local v4    # "wipeReasonForUser":Ljava/lang/String;
    .end local v6    # "factoryReset":Z
    .restart local p1    # "flags":I
    .restart local p2    # "wipeReasonForUser":Ljava/lang/String;
    .restart local p3    # "factoryReset":Z
    :catch_18
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object p1, v0

    .line 6913
    .end local p2    # "wipeReasonForUser":Ljava/lang/String;
    .end local p3    # "factoryReset":Z
    .restart local v3    # "flags":I
    .restart local v4    # "wipeReasonForUser":Ljava/lang/String;
    .restart local v6    # "factoryReset":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 6908
    .end local v3    # "flags":I
    .end local v4    # "wipeReasonForUser":Ljava/lang/String;
    .end local v6    # "factoryReset":Z
    .local p1, "flags":I
    .restart local p2    # "wipeReasonForUser":Ljava/lang/String;
    .restart local p3    # "factoryReset":Z
    :cond_22
    move v3, p1

    move-object v4, p2

    move v6, p3

    .line 6916
    .end local p1    # "flags":I
    .end local p2    # "wipeReasonForUser":Ljava/lang/String;
    .end local p3    # "factoryReset":Z
    .restart local v3    # "flags":I
    .restart local v4    # "wipeReasonForUser":Ljava/lang/String;
    .restart local v6    # "factoryReset":Z
    :goto_25
    return-void
.end method


# virtual methods
.method public whitelist acknowledgeDeviceCompliant()V
    .registers 3

    .line 17181
    const-string v0, "acknowledgeDeviceCompliant"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17182
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 17184
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeDeviceCompliant()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 17187
    goto :goto_15

    .line 17185
    :catch_f
    move-exception v0

    .line 17186
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17189
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist acknowledgeNewUserDisclaimer()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 4518
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 4520
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeNewUserDisclaimer(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 4523
    goto :goto_16

    .line 4521
    :catch_10
    move-exception v0

    .line 4522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4525
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 11369
    const-string v0, "addCrossProfileIntentFilter"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11370
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 11372
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 11376
    goto :goto_1b

    .line 11374
    :catch_15
    move-exception v0

    .line 11375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11378
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 13777
    const-string v0, "addCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13778
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13780
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 13781
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 13780
    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 13782
    :catch_16
    move-exception v0

    .line 13783
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13786
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 16094
    const-string v0, "addOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16095
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 16097
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 16098
    :catch_10
    move-exception v0

    .line 16099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .line 10498
    const-string v0, "addPersistentPreferredActivity"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10499
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 10501
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 10505
    goto :goto_1b

    .line 10503
    :catch_15
    move-exception v0

    .line 10504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10507
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 12239
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    .line 12241
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12242
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 12241
    const/4 v5, 0x1

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "key":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "key":Ljava/lang/String;
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 12245
    goto :goto_23

    .line 12243
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/String;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "key":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object p1, v0

    .line 12244
    .end local p2    # "key":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "key":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 12239
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/String;
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "key":Ljava/lang/String;
    :cond_21
    move-object v2, p1

    move-object v4, p2

    .line 12247
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "key":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "key":Ljava/lang/String;
    :goto_23
    return-void
.end method

.method public blacklist addUserRestriction(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "systemEntity"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "targetUser"    # I

    .line 12267
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12269
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 12273
    goto :goto_11

    .line 12271
    :catch_b
    move-exception v0

    .line 12272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist addUserRestrictionGlobally(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 12320
    const-string v0, "addUserRestrictionGlobally"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12321
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 12323
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 12326
    goto :goto_1b

    .line 12324
    :catch_15
    move-exception v0

    .line 12325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "systemEntity"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 12347
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12349
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionGloballyFromSystem(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 12353
    goto :goto_11

    .line 12351
    :catch_b
    move-exception v0

    .line 12352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public greylist-max-o approveCaCert(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z

    .line 7530
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 7532
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 7533
    :catch_b
    move-exception v0

    .line 7534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 16
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 15659
    const-string v0, "bindDeviceAdminServiceAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15662
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 15663
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    .line 15662
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v6, v0

    .line 15664
    .local v6, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 15665
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 15666
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 15667
    invoke-static {p4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v7

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_31} :catch_3b

    .line 15665
    move-object v2, p1

    move-object v5, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "serviceIntent":Landroid/content/Intent;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v5, "serviceIntent":Landroid/content/Intent;
    :try_start_33
    invoke-interface/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;JI)Z

    move-result p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_38

    return p1

    .line 15668
    .end local v6    # "sd":Landroid/app/IServiceConnection;
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "serviceIntent":Landroid/content/Intent;
    :catch_3b
    move-exception v0

    move-object v2, p1

    move-object v5, p2

    move-object p1, v0

    .line 15669
    .end local p2    # "serviceIntent":Landroid/content/Intent;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_3f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 16
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 15681
    const-string v0, "bindDeviceAdminServiceAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15684
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 15685
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v2

    .line 15684
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v6, v0

    .line 15686
    .local v6, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 15687
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 15688
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 15689
    invoke-virtual {p4}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v7

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_31} :catch_3b

    .line 15687
    move-object v2, p1

    move-object v5, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "serviceIntent":Landroid/content/Intent;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v5, "serviceIntent":Landroid/content/Intent;
    :try_start_33
    invoke-interface/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;JI)Z

    move-result p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_38

    return p1

    .line 15690
    .end local v6    # "sd":Landroid/app/IServiceConnection;
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "serviceIntent":Landroid/content/Intent;
    :catch_3b
    move-exception v0

    move-object v2, p1

    move-object v5, p2

    move-object p1, v0

    .line 15691
    .end local p2    # "serviceIntent":Landroid/content/Intent;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_3f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist calculateHasIncompatibleAccounts()V
    .registers 3

    .line 18082
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 18084
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->calculateHasIncompatibleAccounts()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 18087
    goto :goto_10

    .line 18085
    :catch_a
    move-exception v0

    .line 18086
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18089
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist canAdminGrantSensorsPermissions()Z
    .registers 3

    .line 17577
    const-string v0, "canAdminGrantSensorsPermissions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17578
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 17579
    const/4 v0, 0x0

    return v0

    .line 17582
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->canAdminGrantSensorsPermissions()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return v0

    .line 17583
    :catch_12
    move-exception v0

    .line 17584
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 17225
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 17227
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 17228
    :catch_b
    move-exception v0

    .line 17229
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17232
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canUsbDataSignalingBeDisabled()Z
    .registers 3

    .line 17738
    const-string v0, "canUsbDataSignalingBeDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17739
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17741
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->canUsbDataSignalingBeDisabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 17742
    :catch_10
    move-exception v0

    .line 17743
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17746
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14359
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 14360
    :catch_7
    move-exception v0

    .line 14361
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    .line 15846
    const-string v0, "clearAppData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15847
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15848
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15850
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Landroid/app/admin/DevicePolicyManager$2;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$2;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    .line 15859
    nop

    .line 15860
    return-void

    .line 15857
    :catch_17
    move-exception v0

    .line 15858
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearAuditLogEventCallback()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14792
    const-string v0, "clearAuditLogEventCallback"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14794
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setAuditLogEventsCallback(Ljava/lang/String;Landroid/app/admin/IAuditLogEventsCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    .line 14797
    nop

    .line 14798
    return-void

    .line 14795
    :catch_13
    move-exception v0

    .line 14796
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11397
    const-string v0, "clearCrossProfileIntentFilters"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11398
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 11400
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 11403
    goto :goto_1b

    .line 11401
    :catch_15
    move-exception v0

    .line 11402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11405
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist clearDeviceOwnerApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9911
    const-string v0, "clearDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9912
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 9914
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 9917
    goto :goto_15

    .line 9915
    :catch_f
    move-exception v0

    .line 9916
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9919
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist clearOrganizationId()V
    .registers 3

    .line 17336
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    .line 17337
    return-void

    .line 17340
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->clearOrganizationIdForUser(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 17343
    nop

    .line 17344
    return-void

    .line 17341
    :catch_10
    move-exception v0

    .line 17342
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 10549
    const-string v0, "clearPackagePersistentPreferredActivities"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10550
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 10552
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 10554
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10552
    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 10558
    goto :goto_1b

    .line 10556
    :catch_15
    move-exception v0

    .line 10557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist clearProfileOwner(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10031
    const-string v0, "clearProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10032
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 10034
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 10037
    goto :goto_15

    .line 10035
    :catch_f
    move-exception v0

    .line 10036
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10039
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6423
    const-string v0, "clearResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6424
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 6426
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 6427
    :catch_16
    move-exception v0

    .line 6428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6431
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 3

    .line 13933
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13934
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_a

    .line 13935
    return-void

    .line 13938
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->clearSystemUpdatePolicyFreezePeriodRecord()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 13941
    nop

    .line 13942
    return-void

    .line 13939
    :catch_11
    move-exception v0

    .line 13940
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 12404
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    .line 12406
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12407
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 12406
    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "key":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "key":Ljava/lang/String;
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 12410
    goto :goto_23

    .line 12408
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/String;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "key":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object p1, v0

    .line 12409
    .end local p2    # "key":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "key":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 12404
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/String;
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "key":Ljava/lang/String;
    :cond_21
    move-object v2, p1

    move-object v4, p2

    .line 12412
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "key":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "key":Ljava/lang/String;
    :goto_23
    return-void
.end method

.method public blacklist clearUserRestriction(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "systemEntity"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "targetUser"    # I

    .line 12432
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12434
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 12438
    goto :goto_11

    .line 12436
    :catch_b
    move-exception v0

    .line 12437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "systemEntity"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 12459
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12461
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionGloballyFromSystem(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 12465
    goto :goto_11

    .line 12463
    :catch_b
    move-exception v0

    .line 12464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "restriction"    # Ljava/lang/String;

    .line 12553
    const-string v0, "createAdminSupportIntent"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12554
    const/4 v0, 0x0

    .line 12555
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_25

    .line 12557
    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .line 12558
    if-eqz v0, :cond_1e

    .line 12559
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12560
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 12559
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 12564
    :cond_1e
    goto :goto_25

    .line 12562
    :catch_1f
    move-exception v1

    .line 12563
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 12566
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-object v0
.end method

.method public whitelist createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I

    .line 11902
    const-string v0, "createAndManageUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11904
    :try_start_5
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_7} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_7} :catch_17

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "profileOwner":Landroid/content/ComponentName;
    .end local p4    # "adminExtras":Landroid/os/PersistableBundle;
    .end local p5    # "flags":I
    .local v2, "admin":Landroid/content/ComponentName;
    .local v3, "name":Ljava/lang/String;
    .local v4, "profileOwner":Landroid/content/ComponentName;
    .local v5, "adminExtras":Landroid/os/PersistableBundle;
    .local v6, "flags":I
    :try_start_c
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    .line 11907
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .line 11905
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .line 11907
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    .end local v5    # "adminExtras":Landroid/os/PersistableBundle;
    .end local v6    # "flags":I
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "profileOwner":Landroid/content/ComponentName;
    .restart local p4    # "adminExtras":Landroid/os/PersistableBundle;
    .restart local p5    # "flags":I
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object p1, v0

    .line 11908
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "profileOwner":Landroid/content/ComponentName;
    .end local p4    # "adminExtras":Landroid/os/PersistableBundle;
    .end local p5    # "flags":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    .restart local v5    # "adminExtras":Landroid/os/PersistableBundle;
    .restart local v6    # "flags":I
    .local p1, "re":Landroid/os/RemoteException;
    :goto_1e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 11905
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    .end local v5    # "adminExtras":Landroid/os/PersistableBundle;
    .end local v6    # "flags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "profileOwner":Landroid/content/ComponentName;
    .restart local p4    # "adminExtras":Landroid/os/PersistableBundle;
    .restart local p5    # "flags":I
    :catch_23
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object p1, v0

    .line 11906
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "profileOwner":Landroid/content/ComponentName;
    .end local p4    # "adminExtras":Landroid/os/PersistableBundle;
    .end local p5    # "flags":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    .restart local v5    # "adminExtras":Landroid/os/PersistableBundle;
    .restart local v6    # "flags":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_2a
    new-instance p2, Landroid/os/UserManager$UserOperationException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget p4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, p3, p4}, Landroid/os/UserManager$UserOperationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public whitelist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;)Landroid/os/UserHandle;
    .registers 6
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17372
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 17373
    const/4 v0, 0x0

    return-object v0

    .line 17376
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 17377
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 17376
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 17380
    :catch_13
    move-exception v0

    .line 17381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17378
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 17379
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1
.end method

.method public whitelist createManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;)Landroid/os/UserHandle;
    .registers 6
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .line 17408
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 17409
    const/4 v0, 0x0

    return-object v0

    .line 17412
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->createManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 17415
    :catch_13
    move-exception v0

    .line 17416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17413
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 17414
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1
.end method

.method public whitelist createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p1, "nfcIntent"    # Landroid/content/Intent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17811
    invoke-static {p1}, Landroid/app/admin/ProvisioningIntentHelper;->createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 12786
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12787
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 12789
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 12790
    :catch_16
    move-exception v0

    .line 12791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 12761
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12762
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 12764
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 12767
    goto :goto_1b

    .line 12765
    :catch_15
    move-exception v0

    .line 12766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist finalizeCreateManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "managedProfileUser"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .line 17438
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    .line 17439
    return-void

    .line 17442
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->finalizeCreateManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 17445
    nop

    .line 17446
    return-void

    .line 17443
    :catch_c
    move-exception v0

    .line 17444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .registers 5
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17488
    const-string/jumbo v0, "managedProfileUser can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17489
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 17493
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 17496
    nop

    .line 17497
    return-void

    .line 17494
    :catch_11
    move-exception v0

    .line 17495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find DevicePolicyManagerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist forceNetworkLogs()J
    .registers 3

    .line 14846
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_7

    .line 14847
    const-wide/16 v0, -0x1

    return-wide v0

    .line 14850
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceNetworkLogs()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 14851
    :catch_e
    move-exception v0

    .line 14852
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 15358
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 15361
    nop

    .line 15362
    return-void

    .line 15359
    :catch_7
    move-exception v0

    .line 15360
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o forceSecurityLogs()J
    .registers 3

    .line 14864
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_7

    .line 14865
    const-wide/16 v0, 0x0

    return-wide v0

    .line 14868
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceSecurityLogs()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 14869
    :catch_e
    move-exception v0

    .line 14870
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceSetMaxPolicyStorageLimit(I)V
    .registers 4
    .param p1, "storageLimit"    # I

    .line 18308
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 18310
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->forceSetMaxPolicyStorageLimit(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 18313
    goto :goto_16

    .line 18311
    :catch_10
    move-exception v0

    .line 18312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 15431
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->forceUpdateUserSetupComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 15434
    nop

    .line 15435
    return-void

    .line 15432
    :catch_7
    move-exception v0

    .line 15433
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;
    .registers 16
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySpec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .param p4, "idAttestationFlags"    # I

    .line 8057
    const-string v0, "generateKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8059
    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    invoke-direct {v0, p3}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/security/keystore/KeyGenParameterSpec;)V

    move-object v6, v0

    .line 8061
    .local v6, "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    new-instance v8, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v8}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 8064
    .local v8, "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 8065
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_d8
    .catch Landroid/security/KeyChainException; {:try_start_6 .. :try_end_19} :catch_ca
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_19} :catch_b6
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_19} :catch_79

    .line 8064
    move-object v3, p1

    move-object v5, p2

    move v7, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p4    # "idAttestationFlags":I
    .local v3, "admin":Landroid/content/ComponentName;
    .local v5, "algorithm":Ljava/lang/String;
    .local v7, "idAttestationFlags":I
    :try_start_1c
    invoke-interface/range {v2 .. v8}, Landroid/app/admin/IDevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result p1

    .line 8067
    .local p1, "success":Z
    if-nez p1, :cond_2a

    .line 8068
    sget-object p2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string p4, "Error generating key via DevicePolicyManagerService."

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8069
    return-object v1

    .line 8072
    :cond_2a
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    .line 8073
    .local p2, "alias":Ljava/lang/String;
    iget-object p4, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p4, p2}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p4
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_75
    .catch Landroid/security/KeyChainException; {:try_start_1c .. :try_end_34} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_34} :catch_6f
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_34} :catch_6c

    .line 8074
    .local p4, "keyPair":Ljava/security/KeyPair;
    const/4 v2, 0x0

    .line 8076
    .local v2, "outputChain":[Ljava/security/cert/Certificate;
    :try_start_35
    invoke-static {v8}, Landroid/security/keystore/AttestationUtils;->isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8077
    invoke-static {v8}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_3f
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_35 .. :try_end_3f} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3f} :catch_75
    .catch Landroid/security/KeyChainException; {:try_start_35 .. :try_end_3f} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3f} :catch_6f
    .catch Landroid/os/ServiceSpecificException; {:try_start_35 .. :try_end_3f} :catch_6c

    move-object v2, v0

    .line 8083
    :cond_40
    nop

    .line 8084
    :try_start_41
    new-instance v0, Landroid/security/AttestedKeyPair;

    invoke-direct {v0, p4, v2}, Landroid/security/AttestedKeyPair;-><init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V

    return-object v0

    .line 8079
    :catch_47
    move-exception v0

    .line 8080
    .local v0, "e":Landroid/security/keystore/KeyAttestationException;
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing attestation chain for alias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8081
    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v9, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6b} :catch_75
    .catch Landroid/security/KeyChainException; {:try_start_41 .. :try_end_6b} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_6b} :catch_6f
    .catch Landroid/os/ServiceSpecificException; {:try_start_41 .. :try_end_6b} :catch_6c

    .line 8082
    return-object v1

    .line 8092
    .end local v0    # "e":Landroid/security/keystore/KeyAttestationException;
    .end local v2    # "outputChain":[Ljava/security/cert/Certificate;
    .end local v6    # "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v8    # "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local p1    # "success":Z
    .end local p2    # "alias":Ljava/lang/String;
    .end local p4    # "keyPair":Ljava/security/KeyPair;
    :catch_6c
    move-exception v0

    move-object p1, v0

    goto :goto_7e

    .line 8089
    :catch_6f
    move-exception v0

    move-object p1, v0

    goto :goto_bb

    .line 8087
    :catch_72
    move-exception v0

    move-object p1, v0

    goto :goto_cf

    .line 8085
    :catch_75
    move-exception v0

    move-object p1, v0

    goto/16 :goto_dd

    .line 8092
    .end local v3    # "admin":Landroid/content/ComponentName;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v7    # "idAttestationFlags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .local p2, "algorithm":Ljava/lang/String;
    .local p4, "idAttestationFlags":I
    :catch_79
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move-object p1, v0

    .line 8093
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p4    # "idAttestationFlags":I
    .restart local v3    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "algorithm":Ljava/lang/String;
    .restart local v7    # "idAttestationFlags":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_7e
    sget-object p2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    iget p4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "Key Generation failure: %d"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8094
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch p2, :pswitch_data_e2

    .line 8098
    new-instance p2, Ljava/lang/RuntimeException;

    iget p4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 8099
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "Unknown error while generating key: %d"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8096
    :pswitch_ae
    new-instance p2, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string p4, "No StrongBox for key generation."

    invoke-direct {p2, p4}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8089
    .end local v3    # "admin":Landroid/content/ComponentName;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v7    # "idAttestationFlags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p4    # "idAttestationFlags":I
    :catch_b6
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move-object p1, v0

    .line 8090
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p4    # "idAttestationFlags":I
    .restart local v3    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "algorithm":Ljava/lang/String;
    .restart local v7    # "idAttestationFlags":I
    .local p1, "e":Ljava/lang/InterruptedException;
    :goto_bb
    sget-object p2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string p4, "Interrupted while generating key"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8091
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .end local p1    # "e":Ljava/lang/InterruptedException;
    goto :goto_d6

    .line 8087
    .end local v3    # "admin":Landroid/content/ComponentName;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v7    # "idAttestationFlags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p4    # "idAttestationFlags":I
    :catch_ca
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move-object p1, v0

    .line 8088
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p4    # "idAttestationFlags":I
    .restart local v3    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "algorithm":Ljava/lang/String;
    .restart local v7    # "idAttestationFlags":I
    .local p1, "e":Landroid/security/KeyChainException;
    :goto_cf
    sget-object p2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string p4, "Failed to generate key"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8101
    .end local p1    # "e":Landroid/security/KeyChainException;
    :goto_d6
    nop

    .line 8102
    return-object v1

    .line 8085
    .end local v3    # "admin":Landroid/content/ComponentName;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v7    # "idAttestationFlags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p4    # "idAttestationFlags":I
    :catch_d8
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move-object p1, v0

    .line 8086
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p4    # "idAttestationFlags":I
    .restart local v3    # "admin":Landroid/content/ComponentName;
    .restart local v5    # "algorithm":Ljava/lang/String;
    .restart local v7    # "idAttestationFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_dd
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_ae
    .end packed-switch
.end method

.method public whitelist getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .registers 3

    .line 12905
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 12916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "parentInstance"    # Z

    .line 12925
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 12927
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12928
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12927
    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 12929
    :catch_11
    move-exception v0

    .line 12930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getActiveAdmins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4597
    const-string v0, "getActiveAdmins"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4598
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getActiveAdminsAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4607
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 4609
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 4610
    :catch_b
    move-exception v0

    .line 4611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4614
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15279
    const-string v0, "getAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15281
    :try_start_5
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    .line 15282
    :catch_11
    move-exception v0

    .line 15283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 6028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 6041
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 6042
    const/4 v0, 0x0

    return v0

    .line 6046
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 6047
    :catch_d
    move-exception v0

    .line 6048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16719
    const-string v0, "getAllCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16720
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    .line 16722
    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getAllCrossProfilePackages(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1b

    return-object v0

    .line 16723
    :catch_1b
    move-exception v0

    .line 16724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16727
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAlwaysOnVpnLockdownWhitelist(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8670
    const-string v0, "getAlwaysOnVpnLockdownWhitelist"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8671
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 8673
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 8674
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 8675
    .local v0, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_13

    :goto_12
    goto :goto_19

    :cond_13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_1a

    goto :goto_12

    :goto_19
    return-object v1

    .line 8676
    .end local v0    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1a
    move-exception v0

    .line 8677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8680
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    return-object v1
.end method

.method public blacklist getAlwaysOnVpnPackage()Ljava/lang/String;
    .registers 3

    .line 8713
    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8714
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 8716
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    .line 8717
    :catch_14
    move-exception v0

    .line 8718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8721
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8693
    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8694
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8696
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 8697
    :catch_10
    move-exception v0

    .line 8698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppFunctionsPolicy()I
    .registers 4

    .line 4437
    const-string v0, "getAppFunctionsPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4438
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_20

    .line 4440
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4441
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    .line 4440
    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getAppFunctionsPolicy(Ljava/lang/String;I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    return v0

    .line 4442
    :catch_1a
    move-exception v0

    .line 4443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getApplicationExemptions(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 16917
    const-string v0, "getApplicationExemptions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16918
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_e

    .line 16919
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 16922
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationExemptions(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->intArrayToSet([I)Ljava/util/Set;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_18} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return-object v0

    .line 16931
    :catch_19
    move-exception v0

    .line 16932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16923
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 16924
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_4a

    .line 16928
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error getting application exemptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 16926
    :pswitch_40
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method public whitelist getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 12179
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 12181
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 12183
    :catch_13
    move-exception v0

    .line 12184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10684
    const-string v0, "getApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10685
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10687
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 10688
    :catch_10
    move-exception v0

    .line 10689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9096
    const-string v0, "getAutoTimeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9097
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9099
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 9100
    :catch_16
    move-exception v0

    .line 9101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimePolicy()I
    .registers 3

    .line 9187
    const-string v0, "getAutoTimePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9188
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9190
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimePolicy(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 9191
    :catch_16
    move-exception v0

    .line 9192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimeRequired()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9043
    const-string v0, "getAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9044
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 9046
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 9047
    :catch_10
    move-exception v0

    .line 9048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9051
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9239
    const-string v0, "getAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9240
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9242
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 9243
    :catch_16
    move-exception v0

    .line 9244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9247
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimeZonePolicy()I
    .registers 3

    .line 9329
    const-string v0, "getAutoTimeZonePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9330
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9332
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeZonePolicy(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 9333
    :catch_16
    move-exception v0

    .line 9334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 15703
    const-string v0, "getBindDeviceAdminTargetUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15705
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 15706
    :catch_c
    move-exception v0

    .line 15707
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11321
    const-string v0, "getBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11322
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11324
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 11325
    :catch_10
    move-exception v0

    .line 11326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11343
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 11345
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 11346
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 11345
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 11347
    :catch_f
    move-exception v0

    .line 11348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCameraDisabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8800
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8806
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 8808
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 8810
    :catch_13
    move-exception v0

    .line 8811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8814
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8429
    const-string v0, "getCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8430
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8432
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 8433
    :catch_10
    move-exception v0

    .line 8434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getContentProtectionPolicy(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4347
    const-string v0, "getContentProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4348
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_20

    .line 4350
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4351
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    .line 4350
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    return v0

    .line 4352
    :catch_1a
    move-exception v0

    .line 4353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4356
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCredentialManagerPolicy()Landroid/app/admin/PackagePolicy;
    .registers 3

    .line 11008
    const-string v0, "getCredentialManagerPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11009
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 11011
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCredentialManagerPolicy(I)Landroid/app/admin/PackagePolicy;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    .line 11012
    :catch_14
    move-exception v0

    .line 11013
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11016
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16625
    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16626
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_23

    .line 16628
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 16629
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    .line 16628
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 16630
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_17

    const/4 v1, 0x0

    goto :goto_1c

    :cond_17
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v1

    .line 16631
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1d
    move-exception v0

    .line 16632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16635
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16556
    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16557
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1f

    .line 16559
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 16560
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_13

    const/4 v1, 0x0

    goto :goto_18

    :cond_13
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_19

    :goto_18
    return-object v1

    .line 16561
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_19
    move-exception v0

    .line 16562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16565
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10927
    const-string v0, "getCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10928
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10930
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 10931
    :catch_10
    move-exception v0

    .line 10932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10935
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10954
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 10956
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 10957
    :catch_f
    move-exception v0

    .line 10958
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11220
    const-string v0, "getCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11221
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11223
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 11224
    :catch_10
    move-exception v0

    .line 11225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11228
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11246
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 11248
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 11249
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 11248
    return v0

    .line 11250
    :catch_f
    move-exception v0

    .line 11251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16684
    const-string v0, "getCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16685
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 16687
    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    .line 16688
    :catch_15
    move-exception v0

    .line 16689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13837
    const-string v0, "getCrossProfileWidgetProviders"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13838
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1f

    .line 13840
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 13841
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 13840
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_19

    .line 13842
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_18

    .line 13843
    return-object v0

    .line 13847
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    goto :goto_1f

    .line 13845
    :catch_19
    move-exception v0

    .line 13846
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13849
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentFailedPasswordAttempts()I
    .registers 2

    .line 6119
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public greylist getCurrentFailedPasswordAttempts(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .line 6134
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 6136
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 6137
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 6136
    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(Ljava/lang/String;IZ)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 6138
    :catch_13
    move-exception v0

    .line 6139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16740
    const-string v0, "getDefaultCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16741
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 16743
    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    .line 16744
    :catch_15
    move-exception v0

    .line 16745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegationScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8511
    const-string v0, "getDelegatePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8512
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8514
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 8515
    :catch_10
    move-exception v0

    .line 8516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8487
    const-string v0, "getDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8488
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8490
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 8491
    :catch_10
    move-exception v0

    .line 8492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8495
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwner()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9931
    const-string v0, "getDeviceOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9932
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 9933
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public whitelist getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9812
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;
    .registers 2

    .line 9798
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .registers 3

    .line 10120
    const-string v0, "getDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10121
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10123
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 10124
    :catch_10
    move-exception v0

    .line 10125
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10128
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwnerNameOnAnyUser()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9967
    const-string v0, "getDeviceOwnerNameOnAnyUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9968
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 9970
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 9971
    :catch_10
    move-exception v0

    .line 9972
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9975
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15147
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17633
    const-string v0, "getDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17634
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17636
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 17637
    :catch_10
    move-exception v0

    .line 17638
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17641
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceOwnerUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9863
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 9865
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    .line 9867
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    .line 9868
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    return-object v1

    .line 9872
    .end local v0    # "userId":I
    :cond_13
    goto :goto_1a

    .line 9870
    :catch_14
    move-exception v0

    .line 9871
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9874
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getDeviceOwnerUserId()I
    .registers 3

    .line 9881
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 9883
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 9884
    :catch_b
    move-exception v0

    .line 9885
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9888
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/16 v0, -0x2710

    return v0
.end method

.method public whitelist getDevicePolicyManagementRoleHolderPackage()Ljava/lang/String;
    .registers 3

    .line 17986
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x104003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17988
    .local v0, "devicePolicyManagementConfig":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDevicePolicyManagementRoleHolderUpdaterPackage()Ljava/lang/String;
    .registers 3

    .line 18002
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x104025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18004
    .local v0, "devicePolicyManagementUpdaterConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18005
    const/4 v1, 0x0

    return-object v1

    .line 18007
    :cond_11
    return-object v0
.end method

.method public whitelist getDevicePolicyState()Landroid/app/admin/DevicePolicyState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18121
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 18123
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDevicePolicyState()Landroid/app/admin/DevicePolicyState;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 18124
    :catch_b
    move-exception v0

    .line 18125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15923
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 15924
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 15923
    return-object v0

    .line 15925
    :catch_c
    move-exception v0

    .line 15926
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getDoNotAskCredentialsOnBoot()Z
    .registers 3

    .line 6152
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 6154
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 6155
    :catch_b
    move-exception v0

    .line 6156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16045
    const-string v0, "getEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16047
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 16048
    :catch_c
    move-exception v0

    .line 16049
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEnforcingAdmin(ILjava/lang/String;)Landroid/app/admin/EnforcingAdmin;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "identifier"    # Ljava/lang/String;

    .line 12610
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12612
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getEnforcingAdmin(ILjava/lang/String;)Landroid/app/admin/EnforcingAdmin;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 12613
    :catch_b
    move-exception v0

    .line 12614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 12580
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 12582
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 12583
    :catch_b
    move-exception v0

    .line 12584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12587
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnforcingAdminsForRestriction(ILjava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/admin/EnforcingAdmin;",
            ">;"
        }
    .end annotation

    .line 12637
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 12639
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getEnforcingAdminsForRestriction(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-object v0

    .line 12641
    :catch_10
    move-exception v0

    .line 12642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12645
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEnrollmentSpecificId()Ljava/lang/String;
    .registers 3

    .line 17283
    const-string v0, "getEnrollmentSpecificId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17284
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    .line 17285
    const-string v0, ""

    return-object v0

    .line 17289
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    return-object v0

    .line 17290
    :catch_19
    move-exception v0

    .line 17291
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6965
    const-string v0, "getFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6966
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 6968
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 6969
    :catch_10
    move-exception v0

    .line 6970
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFinancedDeviceKioskRoleHolder()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18195
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 18197
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getFinancedDeviceKioskRoleHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 18198
    :catch_11
    move-exception v0

    .line 18199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9366
    const-string v0, "getForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9367
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 9369
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 9370
    :catch_10
    move-exception v0

    .line 9371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9374
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16445
    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16446
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    .line 16447
    const/4 v0, 0x0

    return-object v0

    .line 16451
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return-object v0

    .line 16452
    :catch_13
    move-exception v0

    .line 16453
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16425
    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16426
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    .line 16427
    const/4 v0, 0x0

    return v0

    .line 16431
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v0

    .line 16432
    :catch_13
    move-exception v0

    .line 16433
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGlobalProxyAdmin()Landroid/content/ComponentName;
    .registers 3

    .line 7153
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 7155
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 7156
    :catch_f
    move-exception v0

    .line 7157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHeadlessDeviceOwnerMode()I
    .registers 3

    .line 18345
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 18347
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getHeadlessDeviceOwnerMode(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 18348
    :catch_11
    move-exception v0

    .line 18349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 7632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7633
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v1, "getInstalledCaCerts"

    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7634
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_5f

    .line 7636
    :try_start_e
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 7637
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 7638
    .local v1, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_32} :catch_59

    .line 7640
    .local v3, "alias":Ljava/lang/String;
    :try_start_32
    invoke-virtual {v1, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_59

    .line 7643
    goto :goto_57

    .line 7641
    :catch_3e
    move-exception v4

    .line 7642
    .local v4, "ce":Ljava/security/cert/CertificateException;
    :try_start_3f
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not encode certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_57} :catch_59

    .line 7644
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    :goto_57
    goto :goto_26

    .line 7647
    .end local v1    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_58
    goto :goto_5f

    .line 7645
    :catch_59
    move-exception v1

    .line 7646
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7649
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public whitelist getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11786
    const-string v0, "getKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11787
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 11789
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return-object v0

    .line 11790
    :catch_16
    move-exception v0

    .line 11791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKeyPairGrants(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 8165
    const-string v0, "getKeyPairGrants"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8168
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/ParcelableGranteeMap;->getPackagesByUid()Ljava/util/Map;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v0

    .line 8169
    :catch_16
    move-exception v0

    .line 8170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8172
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9474
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 9485
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 9486
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 9488
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastBugReportRequestTime()J
    .registers 3

    .line 15744
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 15745
    :catch_7
    move-exception v0

    .line 15746
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastNetworkLogRetrievalTime()J
    .registers 3

    .line 15765
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 15766
    :catch_7
    move-exception v0

    .line 15767
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSecurityLogRetrievalTime()J
    .registers 3

    .line 15725
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 15726
    :catch_7
    move-exception v0

    .line 15727
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLockTaskFeatures(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13196
    const-string v0, "getLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13197
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13199
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    .line 13200
    :catch_16
    move-exception v0

    .line 13201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13094
    const-string v0, "getLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13095
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13097
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    return-object v0

    .line 13098
    :catch_16
    move-exception v0

    .line 13099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogoutUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 12110
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLogoutUserId()I

    move-result v0

    .line 12111
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v1

    .line 12112
    .end local v0    # "userId":I
    :catch_11
    move-exception v0

    .line 12113
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14518
    const-string v0, "getLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14519
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 14521
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 14522
    :catch_10
    move-exception v0

    .line 14523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14526
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 14562
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 14564
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 14565
    :catch_b
    move-exception v0

    .line 14566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14569
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getManagedProfileCallerIdAccessPolicy()Landroid/app/admin/PackagePolicy;
    .registers 3

    .line 11059
    const-string v0, "getManagedProfileCallerIdAccessPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11060
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11062
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getManagedProfileCallerIdAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 11063
    :catch_10
    move-exception v0

    .line 11064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11067
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getManagedProfileContactsAccessPolicy()Landroid/app/admin/PackagePolicy;
    .registers 3

    .line 11134
    const-string v0, "getManagedProfileContactsAccessPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11135
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 11136
    const/4 v0, 0x0

    return-object v0

    .line 11139
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getManagedProfileContactsAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object v0

    .line 11140
    :catch_12
    move-exception v0

    .line 11141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17150
    const-string v0, "getManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17151
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17153
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-wide v0

    .line 17154
    :catch_10
    move-exception v0

    .line 17155
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17158
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;
    .registers 3

    .line 12065
    const-string v0, "getManagedSubscriptionsPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12067
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 12068
    :catch_c
    move-exception v0

    .line 12069
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxPolicyStorageLimit()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18285
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 18287
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaxPolicyStorageLimit(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 18288
    :catch_11
    move-exception v0

    .line 18289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6229
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 6236
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 6238
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 6240
    :catch_d
    move-exception v0

    .line 6241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6244
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6556
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 6562
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 6564
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-wide v0

    .line 6565
    :catch_d
    move-exception v0

    .line 6566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6569
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14920
    const-string v0, "getMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14921
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 14923
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 14924
    :catch_10
    move-exception v0

    .line 14925
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14928
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getMinimumRequiredWifiSecurityLevel()I
    .registers 3

    .line 17847
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17848
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 17849
    const/4 v0, 0x0

    return v0

    .line 17852
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return v0

    .line 17853
    :catch_12
    move-exception v0

    .line 17854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMtePolicy()I
    .registers 3

    .line 4231
    const-string/jumbo v0, "setMtePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4232
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 4234
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getMtePolicy(Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 4235
    :catch_17
    move-exception v0

    .line 4236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNearbyAppStreamingPolicy()I
    .registers 2

    .line 8983
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 8988
    const-string v0, "getNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8989
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 8990
    const/4 v0, 0x0

    return v0

    .line 8993
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return v0

    .line 8994
    :catch_12
    move-exception v0

    .line 8995
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNearbyNotificationStreamingPolicy()I
    .registers 2

    .line 8936
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 8941
    const-string v0, "getNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8942
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 8943
    const/4 v0, 0x0

    return v0

    .line 8946
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return v0

    .line 8947
    :catch_12
    move-exception v0

    .line 8948
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOrganizationColor(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15060
    const-string v0, "getOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15062
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 15063
    :catch_c
    move-exception v0

    .line 15064
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getOrganizationColorForUser(I)I
    .registers 4
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15080
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15081
    :catch_7
    move-exception v0

    .line 15082
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15123
    const-string v0, "getOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15125
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-object v0

    .line 15126
    :catch_12
    move-exception v0

    .line 15127
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "userHandle"    # I

    .line 15163
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 16185
    const-string v0, "getOverrideApns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16186
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 16188
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 16189
    :catch_10
    move-exception v0

    .line 16190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15807
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 15808
    :catch_b
    move-exception v0

    .line 15809
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14637
    const-string v0, "getParentProfileInstance"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14638
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 14639
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 14642
    new-instance v1, Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v1

    .line 14640
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The current user does not have a parent profile."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .registers 6
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 14881
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 14883
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 14887
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    .line 14884
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a parent profile."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPasswordComplexity()I
    .registers 3

    .line 5915
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 5916
    const/4 v0, 0x0

    return v0

    .line 5920
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordComplexity(Z)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 5921
    :catch_f
    move-exception v0

    .line 5922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPasswordExpiration(Landroid/content/ComponentName;)J
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5729
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 5731
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-wide v0

    .line 5732
    :catch_11
    move-exception v0

    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5736
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5701
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 5703
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-wide v0

    .line 5704
    :catch_11
    move-exception v0

    .line 5705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5708
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5757
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5764
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5766
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5767
    :catch_d
    move-exception v0

    .line 5768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5771
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMaximumLength(I)I
    .registers 4
    .param p1, "quality"    # I

    .line 5783
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5784
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.secure_lock_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 5785
    const/4 v1, 0x0

    return v1

    .line 5787
    :cond_10
    const/16 v1, 0x10

    return v1
.end method

.method public whitelist getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5010
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5016
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5018
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5019
    :catch_d
    move-exception v0

    .line 5020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5023
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5285
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5291
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5293
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5294
    :catch_d
    move-exception v0

    .line 5295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5194
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5200
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5202
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5203
    :catch_d
    move-exception v0

    .line 5204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3
    .param p1, "userHandle"    # I

    .line 5579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 5591
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 5593
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 5594
    :catch_b
    move-exception v0

    .line 5595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5598
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5557
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5563
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5565
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5566
    :catch_d
    move-exception v0

    .line 5567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5376
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5382
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5384
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5385
    :catch_d
    move-exception v0

    .line 5386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5389
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5466
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5472
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5474
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5475
    :catch_d
    move-exception v0

    .line 5476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5102
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5108
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 5110
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5111
    :catch_d
    move-exception v0

    .line 5112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordQuality(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4923
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4929
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 4931
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 4932
    :catch_d
    move-exception v0

    .line 4933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4936
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14107
    const-string v0, "getPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14109
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-object v0

    .line 14110
    :catch_12
    move-exception v0

    .line 14111
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .line 14315
    const-string v0, "getPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14317
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    .line 14319
    :catch_12
    move-exception v0

    .line 14320
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermissionPolicy(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14160
    const-string v0, "getPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14162
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 14163
    :catch_c
    move-exception v0

    .line 14164
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermittedAccessibilityServices(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11502
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11503
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11505
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 11506
    :catch_10
    move-exception v0

    .line 11507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11510
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11451
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11452
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11454
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 11455
    :catch_10
    move-exception v0

    .line 11456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11741
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11742
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11744
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 11745
    :catch_10
    move-exception v0

    .line 11746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11749
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethods()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11682
    const-string v0, "getPermittedInputMethods"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11683
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 11685
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    .line 11686
    :catch_14
    move-exception v0

    .line 11687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11690
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11593
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 11595
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 11596
    :catch_13
    move-exception v0

    .line 11597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11653
    const-string v0, "getPermittedInputMethodsForCurrentUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11654
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 11656
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    .line 11657
    :catch_14
    move-exception v0

    .line 11658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11661
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17081
    const-string v0, "getPersonalAppsSuspendedReasons"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17082
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17084
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 17085
    :catch_10
    move-exception v0

    .line 17086
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17089
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPolicyExemptApps()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17776
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 17779
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    .line 17780
    :catch_15
    move-exception v0

    .line 17781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 18022
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18023
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    .line 18025
    :try_start_7
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 18026
    :catch_e
    move-exception v0

    .line 18027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18030
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPolicySizeForAdmin(Landroid/app/admin/EnforcingAdmin;)I
    .registers 4
    .param p1, "admin"    # Landroid/app/admin/EnforcingAdmin;

    .line 18325
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 18327
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPolicySizeForAdmin(Ljava/lang/String;Landroid/app/admin/EnforcingAdmin;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 18328
    :catch_11
    move-exception v0

    .line 18329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18332
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .line 13299
    const-string v0, "getPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13300
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_10

    .line 13301
    sget-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 13304
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 13305
    :catch_17
    move-exception v0

    .line 13306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProfileOwner()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10283
    const-string v0, "getProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10284
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 10309
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 10311
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 10312
    :catch_b
    move-exception v0

    .line 10313
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10316
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 10294
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 10296
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 10297
    :catch_f
    move-exception v0

    .line 10298
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10301
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProfileOwnerName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10358
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 10360
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 10361
    :catch_11
    move-exception v0

    .line 10362
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10365
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10381
    const-string v0, "getProfileOwnerNameAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10382
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10384
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 10385
    :catch_10
    move-exception v0

    .line 10386
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10389
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 10330
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_d

    .line 10331
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0

    .line 10333
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProfileWithMinimumFailedPasswordsForWipe(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 6258
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 6260
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 6262
    :catch_d
    move-exception v0

    .line 6263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/16 v0, -0x2710

    return v0
.end method

.method public blacklist getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;
    .registers 11
    .param p1, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7092
    .local p2, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 7093
    .local v0, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 7094
    .local v1, "hostName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 7096
    .local v2, "port":I
    if-nez p2, :cond_15

    .line 7097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .local v3, "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_36

    .line 7099
    .end local v3    # "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7100
    .restart local v3    # "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7101
    .local v5, "exclDomain":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7102
    .end local v5    # "exclDomain":Ljava/lang/String;
    goto :goto_22

    .line 7104
    :cond_36
    :goto_36
    invoke-static {v1, v2, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    .line 7107
    .local v4, "info":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_6b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 7111
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 7108
    :cond_6b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public greylist-max-o getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    .line 9558
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    .line 9560
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 9563
    goto :goto_14

    .line 9561
    :catch_e
    move-exception v0

    .line 9562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9565
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist getRequiredPasswordComplexity()I
    .registers 4

    .line 6007
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 6008
    const/4 v0, 0x0

    return v0

    .line 6012
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 6013
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 6012
    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getRequiredPasswordComplexity(Ljava/lang/String;Z)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return v0

    .line 6014
    :catch_15
    move-exception v0

    .line 6015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6638
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 6645
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 6647
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-wide v0

    .line 6648
    :catch_d
    move-exception v0

    .line 6649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public whitelist getResources()Landroid/app/admin/DevicePolicyResourcesManager;
    .registers 2

    .line 17930
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    return-object v0
.end method

.method public whitelist getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8890
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8895
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 8897
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 8898
    :catch_d
    move-exception v0

    .line 8899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8902
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 12132
    const-string v0, "getSecondaryUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12134
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 12135
    :catch_c
    move-exception v0

    .line 12136
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14471
    const-string/jumbo v0, "getShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14472
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 14474
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return-object v0

    .line 14475
    :catch_17
    move-exception v0

    .line 14476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 14540
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 14542
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 14543
    :catch_b
    move-exception v0

    .line 14544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16030
    const-string/jumbo v0, "getStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16032
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 16033
    :catch_d
    move-exception v0

    .line 16034
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStorageEncryption(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7468
    const-string/jumbo v0, "getStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7469
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 7471
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 7472
    :catch_15
    move-exception v0

    .line 7473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStorageEncryptionStatus()I
    .registers 2

    .line 7502
    const-string/jumbo v0, "getStorageEncryptionStatus"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7503
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    return v0
.end method

.method public greylist getStorageEncryptionStatus(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 7509
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 7511
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 7512
    :catch_11
    move-exception v0

    .line 7513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7516
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSubscriptionIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 18244
    const-string/jumbo v0, "getSubscriptionIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 18245
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    .line 18247
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getSubscriptionIds(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->intArrayToSet([I)Ljava/util/Set;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    return-object v0

    .line 18248
    :catch_1b
    move-exception v0

    .line 18249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public whitelist getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 3

    .line 13915
    const-string/jumbo v0, "getSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13916
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13918
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 13919
    :catch_11
    move-exception v0

    .line 13920
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13923
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .registers 3

    .line 16260
    const-string/jumbo v0, "getTransferOwnershipBundle"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16262
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 16263
    :catch_d
    move-exception v0

    .line 16264
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 10857
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 10865
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 10867
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 10869
    :catch_d
    move-exception v0

    .line 10870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10873
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17007
    const-string/jumbo v0, "getUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17008
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 17010
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return-object v0

    .line 17011
    :catch_17
    move-exception v0

    .line 17012
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17015
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserProvisioningState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15181
    const-string/jumbo v0, "getUserProvisioningState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15182
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 15184
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState(I)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 15185
    :catch_17
    move-exception v0

    .line 15186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12500
    const/4 v0, 0x0

    .line 12501
    .local v0, "ret":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1b

    .line 12503
    :try_start_5
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12504
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 12503
    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 12507
    goto :goto_1b

    .line 12505
    :catch_15
    move-exception v1

    .line 12506
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 12509
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    if-nez v0, :cond_23

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_24

    :cond_23
    move-object v1, v0

    :goto_24
    return-object v1
.end method

.method public whitelist getUserRestrictionsGlobally()Landroid/os/Bundle;
    .registers 4

    .line 12525
    const-string v0, "createAdminSupportIntent"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12526
    const/4 v0, 0x0

    .line 12527
    .local v0, "ret":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1e

    .line 12529
    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictionsGlobally(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_18

    move-object v0, v1

    .line 12532
    goto :goto_1e

    .line 12530
    :catch_18
    move-exception v1

    .line 12531
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 12534
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    if-nez v0, :cond_26

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_27

    :cond_26
    move-object v1, v0

    :goto_27
    return-object v1
.end method

.method public whitelist getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14401
    const-string/jumbo v0, "getWifiMacAddress"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14403
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 14404
    :catch_13
    move-exception v0

    .line 14405
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .registers 3

    .line 17893
    const-string/jumbo v0, "getWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17894
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    .line 17895
    const/4 v0, 0x0

    return-object v0

    .line 17898
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getWifiSsidPolicy(Ljava/lang/String;)Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    return-object v0

    .line 17899
    :catch_19
    move-exception v0

    .line 17900
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist grantKeyPairToApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8133
    const-string/jumbo v0, "grantKeyPairToApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8135
    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 8136
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_1a

    .line 8135
    const/4 v6, 0x1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "alias":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "alias":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return p1

    .line 8137
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "alias":Ljava/lang/String;
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 8138
    .end local p2    # "alias":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8140
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist grantKeyPairToWifiAuth(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 8229
    const-string/jumbo v0, "grantKeyPairToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8231
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return v0

    .line 8232
    :catch_14
    move-exception v0

    .line 8233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8235
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 7683
    const-string/jumbo v0, "hasCaCertInstalled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7684
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 7686
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 7687
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_27
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_1a} :catch_1e

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 7690
    :catch_1e
    move-exception v0

    .line 7691
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 7688
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_27
    move-exception v0

    .line 7689
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7694
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist hasDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 10428
    const-string/jumbo v0, "hasDeviceIdentifierAccess"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10429
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 10430
    return v0

    .line 10432
    :cond_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1b

    .line 10434
    :try_start_e
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v0

    .line 10435
    :catch_15
    move-exception v0

    .line 10436
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10439
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1b
    return v0
.end method

.method public whitelist hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .line 4679
    const-string/jumbo v0, "hasGrantedPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4680
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 4682
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 4683
    :catch_15
    move-exception v0

    .line 4684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasKeyPair(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 7948
    const-string/jumbo v0, "hasKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7950
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 7951
    :catch_13
    move-exception v0

    .line 7952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13461
    const-string/jumbo v0, "hasLockdownAdminConfiguredNetworks"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13462
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13464
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 13465
    :catch_11
    move-exception v0

    .line 13466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasManagedProfileCallerIdAccess(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 11082
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    .line 11083
    const/4 v0, 0x1

    return v0

    .line 11086
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->hasManagedProfileCallerIdAccess(ILjava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 11088
    :catch_11
    move-exception v0

    .line 11089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasManagedProfileContactsAccess(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 11156
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 11158
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->hasManagedProfileContactsAccess(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 11160
    :catch_f
    move-exception v0

    .line 11161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11164
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o hasUserSetupCompleted()Z
    .registers 3

    .line 10046
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 10048
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 10049
    :catch_b
    move-exception v0

    .line 10050
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10053
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist installCaCert(Landroid/content/ComponentName;[B)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 7580
    const-string/jumbo v0, "installCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7581
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 7583
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 7584
    :catch_17
    move-exception v0

    .line 7585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7588
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 12816
    const-string/jumbo v0, "installExistingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12817
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 12819
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 12821
    :catch_17
    move-exception v0

    .line 12822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12825
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .registers 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    .line 7744
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "privKey":Ljava/security/PrivateKey;
    .end local p4    # "alias":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v3, "privKey":Ljava/security/PrivateKey;
    .local v5, "alias":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 7863
    move-object/from16 v1, p3

    const-string/jumbo v0, "installKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7864
    and-int/lit8 v0, p5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    move v11, v0

    .line 7866
    .local v11, "requestAccess":Z
    and-int/lit8 v0, p5, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_19

    move v12, v3

    goto :goto_1a

    :cond_19
    move v12, v2

    .line 7869
    .local v12, "isUserSelectable":Z
    :goto_1a
    :try_start_1a
    new-array v0, v3, [Ljava/security/cert/Certificate;

    aget-object v4, v1, v2

    aput-object v4, v0, v2

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    .line 7870
    .local v8, "pemCert":[B
    const/4 v0, 0x0

    .line 7871
    .local v0, "pemChain":[B
    array-length v4, v1

    if-le v4, v3, :cond_36

    .line 7872
    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/Certificate;

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v3

    move-object v0, v3

    move-object v9, v0

    goto :goto_37

    .line 7871
    :cond_36
    move-object v9, v0

    .line 7874
    .end local v0    # "pemChain":[B
    .local v9, "pemChain":[B
    :goto_37
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_41} :catch_7a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_41} :catch_6e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1a .. :try_end_41} :catch_6e
    .catch Ljava/security/cert/CertificateException; {:try_start_1a .. :try_end_41} :catch_63
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_41} :catch_63

    .line 7875
    move-object/from16 v13, p2

    :try_start_43
    invoke-virtual {v0, v13, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v7

    .line 7876
    .local v7, "pkcs8Key":[B
    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object/from16 v10, p4

    invoke-interface/range {v4 .. v12}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_5c} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_43 .. :try_end_5c} :catch_5f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_43 .. :try_end_5c} :catch_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_5c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5c} :catch_5d

    return v0

    .line 7882
    .end local v7    # "pkcs8Key":[B
    .end local v8    # "pemCert":[B
    .end local v9    # "pemChain":[B
    :catch_5d
    move-exception v0

    goto :goto_66

    .line 7880
    :catch_5f
    move-exception v0

    goto :goto_71

    .line 7878
    :catch_61
    move-exception v0

    goto :goto_7d

    .line 7882
    :catch_63
    move-exception v0

    move-object/from16 v13, p2

    .line 7883
    .local v0, "e":Ljava/lang/Exception;
    :goto_66
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not pem-encode certificate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 7880
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v0

    move-object/from16 v13, p2

    .line 7881
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_71
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to obtain private key material"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7884
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 7885
    :goto_79
    return v2

    .line 7878
    :catch_7a
    move-exception v0

    move-object/from16 v13, p2

    .line 7879
    .local v0, "e":Landroid/os/RemoteException;
    :goto_7d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "requestAccess"    # Z

    .line 7798
    const/4 v0, 0x2

    .line 7799
    .local v0, "flags":I
    if-eqz p5, :cond_7

    .line 7800
    or-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_8

    .line 7799
    :cond_7
    move v6, v0

    .line 7802
    .end local v0    # "flags":I
    .local v6, "flags":I
    :goto_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "privKey":Ljava/security/PrivateKey;
    .end local p3    # "certs":[Ljava/security/cert/Certificate;
    .end local p4    # "alias":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v3, "privKey":Ljava/security/PrivateKey;
    .local v4, "certs":[Ljava/security/cert/Certificate;
    .local v5, "alias":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public whitelist installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFilePath"    # Landroid/net/Uri;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    .line 16379
    const-string/jumbo v0, "installUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16380
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 16381
    return-void

    .line 16383
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "r"

    .line 16384
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_18} :catch_4a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_3a

    .line 16385
    .local v0, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_18
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 16386
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$3;

    invoke-direct {v3, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$3;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 16385
    invoke-interface {v1, p1, v2, v0, v3}, Landroid/app/admin/IDevicePolicyManager;->installUpdateFromFile(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2e

    .line 16394
    if-eqz v0, :cond_59

    :try_start_2a
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_4a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3a

    goto :goto_59

    .line 16383
    :catchall_2e
    move-exception v1

    if-eqz v0, :cond_39

    :try_start_31
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v2

    :try_start_36
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "updateFilePath":Landroid/net/Uri;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    :cond_39
    :goto_39
    throw v1
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 16402
    .end local v0    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "updateFilePath":Landroid/net/Uri;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    :catch_3a
    move-exception v0

    .line 16403
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16404
    nop

    .line 16405
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 16404
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    goto :goto_5a

    .line 16396
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4a
    move-exception v0

    .line 16397
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16398
    nop

    .line 16400
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 16398
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 16407
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_59
    :goto_59
    nop

    .line 16408
    :goto_5a
    return-void

    .line 16394
    :catch_5b
    move-exception v0

    .line 16395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 11474
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 11476
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 11478
    :catch_b
    move-exception v0

    .line 11479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActivePasswordSufficient()Z
    .registers 5

    .line 5836
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 5838
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 5839
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 5838
    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return v0

    .line 5840
    :catch_17
    move-exception v0

    .line 5841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5844
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActivePasswordSufficientForDeviceRequirement()Z
    .registers 3

    .line 5880
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-eqz v0, :cond_17

    .line 5883
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 5885
    :try_start_8
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 5886
    :catch_f
    move-exception v0

    .line 5887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 5881
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only callable on the parent instance"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4555
    const-string/jumbo v0, "isAdminActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4564
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 4566
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 4567
    :catch_b
    move-exception v0

    .line 4568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4571
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAffiliatedUser()Z
    .registers 3

    .line 15296
    const-string/jumbo v0, "isAffiliatedUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15298
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCallingUserAffiliated()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 15299
    :catch_d
    move-exception v0

    .line 15300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAffiliatedUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 15310
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15311
    :catch_7
    move-exception v0

    .line 15312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled()Z
    .registers 3

    .line 8647
    const-string/jumbo v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8648
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 8650
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 8651
    :catch_15
    move-exception v0

    .line 8652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8655
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8624
    const-string/jumbo v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8625
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 8631
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 8632
    :catch_11
    move-exception v0

    .line 8633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 12737
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 12739
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 12741
    :catch_13
    move-exception v0

    .line 12742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12745
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAuditLogEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14745
    const-string/jumbo v0, "isAuditLogEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14747
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAuditLogEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 14748
    :catch_13
    move-exception v0

    .line 14749
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15485
    const-string/jumbo v0, "isBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15487
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 15488
    :catch_d
    move-exception v0

    .line 15489
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isCaCertApproved(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 7546
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 7548
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 7549
    :catch_b
    move-exception v0

    .line 7550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCallerApplicationRestrictionsManagingPackage()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10708
    const-string/jumbo v0, "isCallerApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10709
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 10711
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 10712
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10711
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 10713
    :catch_17
    move-exception v0

    .line 10714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10717
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17060
    const-string/jumbo v0, "isCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17061
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 17063
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 17064
    :catch_11
    move-exception v0

    .line 17065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17068
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isComplianceAcknowledgementRequired()Z
    .registers 3

    .line 17207
    const-string/jumbo v0, "isComplianceAcknowledgementRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17208
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 17210
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isComplianceAcknowledgementRequired()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 17211
    :catch_11
    move-exception v0

    .line 17212
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17215
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCurrentInputMethodSetByOwner()Z
    .registers 3

    .line 15784
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15785
    :catch_7
    move-exception v0

    .line 15786
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceFinanced()Z
    .registers 3

    .line 18172
    const-string/jumbo v0, "isDeviceFinanced"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 18173
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 18175
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceFinanced(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 18176
    :catch_17
    move-exception v0

    .line 18177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDeviceIdAttestationSupported()Z
    .registers 3

    .line 8294
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8295
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.device_id_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist isDeviceManaged()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9952
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceOwnerApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9761
    const-string/jumbo v0, "isDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9762
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->systemServerRoleControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9763
    const-wide/32 v0, 0x125003b4

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9764
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnContextUser(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 9766
    :cond_1a
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9789
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9777
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isDevicePotentiallyStolen()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17913
    const-string/jumbo v0, "isDevicePotentiallyStolen"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17914
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    .line 17915
    const/4 v0, 0x0

    return v0

    .line 17918
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isDevicePotentiallyStolen(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    return v0

    .line 17919
    :catch_19
    move-exception v0

    .line 17920
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceProvisioned()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15375
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15376
    :catch_7
    move-exception v0

    .line 15377
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceProvisioningConfigApplied()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15416
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15417
    :catch_7
    move-exception v0

    .line 15418
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDpcDownloaded()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17945
    const-string/jumbo v0, "isDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17946
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 17948
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDpcDownloaded()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 17949
    :catch_11
    move-exception v0

    .line 17950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17953
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEphemeralUser(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12147
    const-string/jumbo v0, "isEphemeralUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12149
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 12150
    :catch_d
    move-exception v0

    .line 12151
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .registers 3

    .line 15823
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15824
    :catch_7
    move-exception v0

    .line 15825
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFinancedDevice()Z
    .registers 4

    .line 17654
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 17655
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_f} :catch_16

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    nop

    .line 17654
    :goto_15
    return v0

    .line 17657
    :catch_16
    move-exception v1

    .line 17662
    .local v1, "e":Ljava/lang/IllegalStateException;
    return v0
.end method

.method public greylist-max-o isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 11620
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 11622
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 11624
    :catch_d
    move-exception v0

    .line 11625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11628
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKeyPairGrantedToWifiAuth(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 8278
    const-string/jumbo v0, "isKeyPairGrantedToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8280
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 8281
    :catch_13
    move-exception v0

    .line 8282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8284
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLockTaskPermitted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 13111
    const-string/jumbo v0, "isLockTaskPermitted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13112
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13114
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 13115
    :catch_11
    move-exception v0

    .line 13116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLogoutEnabled()Z
    .registers 3

    .line 15885
    const-string/jumbo v0, "isLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15887
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isLogoutEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 15888
    :catch_d
    move-exception v0

    .line 15889
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isManagedKiosk()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16783
    const-string/jumbo v0, "isManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16784
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 16786
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isManagedKiosk()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 16787
    :catch_11
    move-exception v0

    .line 16788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16791
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isManagedProfile(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14373
    const-string/jumbo v0, "isManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14375
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 14376
    :catch_d
    move-exception v0

    .line 14377
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13655
    const-string/jumbo v0, "isMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13656
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13658
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 13659
    :catch_11
    move-exception v0

    .line 13660
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13663
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 14944
    const-string v0, "getMeteredDataDisabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14945
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 14947
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 14948
    :catch_10
    move-exception v0

    .line 14949
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14952
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15572
    const-string/jumbo v0, "isNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15573
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isNewUserDisclaimerAcknowledged()Z
    .registers 3

    .line 4537
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 4539
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 4540
    :catch_11
    move-exception v0

    .line 4541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4544
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 11762
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 11764
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 11765
    :catch_b
    move-exception v0

    .line 11766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isOnboardingBugreportV2FlagEnabled()Z
    .registers 2

    .line 18213
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->onboardingBugreportV2Enabled()Z

    move-result v0

    return v0
.end method

.method public greylist isOnboardingConsentlessBugreportFlagEnabled()Z
    .registers 2

    .line 18224
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->onboardingConsentlessBugreports()Z

    move-result v0

    return v0
.end method

.method public whitelist isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 3

    .line 10410
    const-string/jumbo v0, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10411
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 10412
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 10414
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16230
    const-string/jumbo v0, "isOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16231
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 16233
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 16234
    :catch_11
    move-exception v0

    .line 16235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageAllowedToAccessCalendar(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 16593
    const-string/jumbo v0, "isPackageAllowedToAccessCalendar"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16594
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 16596
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 16597
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    .line 16596
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 16598
    :catch_15
    move-exception v0

    .line 16599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10196
    const-string/jumbo v0, "isPackageSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10197
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2b

    .line 10199
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 10202
    :catch_17
    move-exception v0

    .line 10203
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException checking isPackageSuspended"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10204
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10200
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_25
    move-exception v0

    .line 10201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I

    .line 6088
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 6090
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 6092
    :catch_b
    move-exception v0

    .line 6093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6096
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferentialNetworkServiceEnabled()Z
    .registers 3

    .line 13257
    const-string/jumbo v0, "isPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13258
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfileOwnerApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10262
    const-string/jumbo v0, "isProfileOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10263
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 10265
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 10266
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_23

    .line 10267
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_25

    if-eqz v2, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 10266
    :goto_24
    return v1

    .line 10268
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :catch_25
    move-exception v0

    .line 10269
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10272
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    return v1
.end method

.method public whitelist isProvisioningAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 14334
    const-string/jumbo v0, "isProvisioningAllowed"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14336
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 14337
    :catch_13
    move-exception v0

    .line 14338
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4581
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 4583
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 4584
    :catch_b
    move-exception v0

    .line 4585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4588
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6452
    const-string/jumbo v0, "isResetPasswordTokenActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6453
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 6455
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 6456
    :catch_17
    move-exception v0

    .line 6457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6460
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSafeOperation(I)Z
    .registers 4
    .param p1, "reason"    # I

    .line 4495
    const-string/jumbo v0, "isSafeOperation"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4496
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 4499
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSafeOperation(I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v0

    .line 4500
    :catch_13
    move-exception v0

    .line 4501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13006
    const-string/jumbo v0, "isSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13007
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13009
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 13010
    :catch_11
    move-exception v0

    .line 13011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13014
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14713
    const-string/jumbo v0, "isSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14715
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 14716
    :catch_13
    move-exception v0

    .line 14717
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStatusBarDisabled()Z
    .registers 3

    .line 14027
    const-string/jumbo v0, "isStatusBarDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14029
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isStatusBarDisabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 14030
    :catch_13
    move-exception v0

    .line 14031
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 10341
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 10343
    :try_start_4
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 10344
    :catch_d
    move-exception v0

    .line 10345
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10348
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUnattendedManagedKiosk()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16815
    const-string/jumbo v0, "isUnattendedManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16816
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 16818
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isUnattendedManagedKiosk()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 16819
    :catch_11
    move-exception v0

    .line 16820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16823
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 13743
    const-string/jumbo v0, "isUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13744
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 13746
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 13747
    :catch_11
    move-exception v0

    .line 13748
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13751
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUninstallInQueue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 15325
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 15326
    :catch_7
    move-exception v0

    .line 15327
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUniqueDeviceAttestationSupported()Z
    .registers 3

    .line 8308
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8309
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.device_unique_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist isUsbDataSignalingEnabled()Z
    .registers 3

    .line 17721
    const-string/jumbo v0, "isUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17722
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 17724
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 17725
    :catch_17
    move-exception v0

    .line 17726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6065
    const-string/jumbo v0, "isUsingUnifiedPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6066
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 6068
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 6069
    :catch_11
    move-exception v0

    .line 6070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6073
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist listForegroundAffiliatedUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 17758
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17761
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 17762
    :catch_10
    move-exception v0

    .line 17763
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist lockNow()V
    .registers 2

    .line 6710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->lockNow(I)V

    .line 6711
    return-void
.end method

.method public whitelist lockNow(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 6765
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 6767
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->lockNow(ILjava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 6770
    goto :goto_18

    .line 6768
    :catch_12
    move-exception v0

    .line 6769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6772
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist logoutUser()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 12089
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->logoutUserInternal()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 12090
    :catch_7
    move-exception v0

    .line 12091
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist logoutUser(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12018
    const-string/jumbo v0, "logoutUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12020
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 12021
    :catch_d
    move-exception v0

    .line 12022
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o myUserId()I
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist notifyPendingSystemUpdate(J)V
    .registers 5
    .param p1, "updateReceivedTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14052
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14053
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 14055
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdateInfo;->of(J)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 14058
    goto :goto_1a

    .line 14056
    :catch_14
    move-exception v0

    .line 14057
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14060
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist notifyPendingSystemUpdate(JZ)V
    .registers 6
    .param p1, "updateReceivedTime"    # J
    .param p3, "isSecurityPatch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14080
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14081
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 14083
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1, p2, p3}, Landroid/app/admin/SystemUpdateInfo;->of(JZ)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 14087
    goto :goto_1a

    .line 14085
    :catch_14
    move-exception v0

    .line 14086
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14089
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4625
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public greylist packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4635
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 4637
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 4638
    :catch_b
    move-exception v0

    .line 4639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
    .registers 6
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .line 17535
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_23

    .line 17537
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_f} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 17542
    goto :goto_23

    .line 17540
    :catch_10
    move-exception v0

    .line 17541
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17538
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 17539
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1

    .line 17544
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist reboot(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14418
    const-string/jumbo v0, "reboot"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14420
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 14423
    nop

    .line 14424
    return-void

    .line 14421
    :catch_d
    move-exception v0

    .line 14422
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4658
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4659
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 4661
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 4664
    goto :goto_1a

    .line 4662
    :catch_14
    move-exception v0

    .line 4663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 13810
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13811
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 13813
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 13815
    :catch_17
    move-exception v0

    .line 13816
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13819
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .line 7914
    const-string/jumbo v0, "removeKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7916
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 7917
    :catch_13
    move-exception v0

    .line 7918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeManagedProfile()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17467
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    .line 17471
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->removeManagedProfile(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 17472
    :catch_f
    move-exception v0

    .line 17473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17468
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find DevicePolicyManagerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOverrideApn(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I

    .line 16163
    const-string/jumbo v0, "removeOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16164
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 16166
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 16167
    :catch_11
    move-exception v0

    .line 16168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 11922
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11924
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 11925
    :catch_d
    move-exception v0

    .line 11926
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9616
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9618
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedBiometricAttempt(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9621
    goto :goto_10

    .line 9619
    :catch_a
    move-exception v0

    .line 9620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9623
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public greylist reportFailedPasswordAttempt(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9587
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 9589
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 9592
    goto :goto_12

    .line 9590
    :catch_c
    move-exception v0

    .line 9591
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9594
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public greylist-max-o reportKeyguardDismissed(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9644
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9646
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9649
    goto :goto_10

    .line 9647
    :catch_a
    move-exception v0

    .line 9648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9651
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public greylist-max-o reportKeyguardSecured(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9658
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9660
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9663
    goto :goto_10

    .line 9661
    :catch_a
    move-exception v0

    .line 9662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .registers 5
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I

    .line 9572
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9574
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9577
    goto :goto_10

    .line 9575
    :catch_a
    move-exception v0

    .line 9576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9579
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9630
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9632
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9635
    goto :goto_10

    .line 9633
    :catch_a
    move-exception v0

    .line 9634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9637
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public greylist reportSuccessfulPasswordAttempt(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 9602
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 9604
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 9607
    goto :goto_10

    .line 9605
    :catch_a
    move-exception v0

    .line 9606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9609
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist requestBugreport(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8832
    const-string/jumbo v0, "requestBugreport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8833
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 8835
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 8836
    :catch_11
    move-exception v0

    .line 8837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 17556
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 17558
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->resetDefaultCrossProfileIntentFilters(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 17561
    goto :goto_10

    .line 17559
    :catch_a
    move-exception v0

    .line 17560
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17563
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist resetPassword(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6346
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6347
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 6349
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 6350
    :catch_11
    move-exception v0

    .line 6351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6354
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .registers 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I

    .line 6499
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6500
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_29

    .line 6502
    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_1e

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "token":[B
    .end local p4    # "flags":I
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "password":Ljava/lang/String;
    .local v5, "token":[B
    .local v6, "flags":I
    :try_start_16
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return p1

    .line 6504
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_24

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "token":[B
    .end local v6    # "flags":I
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "password":Ljava/lang/String;
    .restart local p3    # "token":[B
    .restart local p4    # "flags":I
    :catch_1e
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object p1, v0

    .line 6505
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "token":[B
    .end local p4    # "flags":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v5    # "token":[B
    .restart local v6    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_24
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 6508
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "token":[B
    .end local v6    # "flags":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "password":Ljava/lang/String;
    .restart local p3    # "token":[B
    .restart local p4    # "flags":I
    :cond_29
    move-object v2, p1

    .end local p1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState()V
    .registers 3

    .line 18065
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 18067
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 18070
    goto :goto_10

    .line 18068
    :catch_a
    move-exception v0

    .line 18069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18072
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .line 15616
    const-string/jumbo v0, "retrieveNetworkLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15618
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 15619
    :catch_13
    move-exception v0

    .line 15620
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 14981
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14983
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 14984
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 14983
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 14985
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_19

    .line 14986
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1b

    return-object v1

    .line 14988
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 14990
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_1b
    move-exception v0

    .line 14991
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 14823
    const-string/jumbo v0, "retrieveSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14825
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 14826
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 14825
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 14827
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_19

    .line 14828
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1b

    return-object v1

    .line 14831
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 14833
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_1b
    move-exception v0

    .line 14834
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist revokeKeyPairFromApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8202
    const-string/jumbo v0, "revokeKeyPairFromApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8204
    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 8205
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_1a

    .line 8204
    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "alias":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "alias":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return p1

    .line 8206
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "alias":Ljava/lang/String;
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 8207
    .end local p2    # "alias":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8209
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist revokeKeyPairFromWifiAuth(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 8255
    const-string/jumbo v0, "revokeKeyPairFromWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8257
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return v0

    .line 8258
    :catch_14
    move-exception v1

    .line 8259
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8261
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist sendLostModeLocationUpdate(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 7001
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7002
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_17

    .line 7003
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 7004
    return-void

    .line 7007
    :cond_17
    :try_start_17
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 7008
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 7009
    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_26

    .line 7012
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    nop

    .line 7013
    return-void

    .line 7010
    :catch_26
    move-exception v0

    .line 7011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .line 12879
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_22

    .line 12881
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "accountType":Ljava/lang/String;
    .end local p3    # "disabled":Z
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "accountType":Ljava/lang/String;
    .local v5, "disabled":Z
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 12885
    goto :goto_25

    .line 12883
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "disabled":Z
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "accountType":Ljava/lang/String;
    .restart local p3    # "disabled":Z
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object p1, v0

    .line 12884
    .end local p2    # "accountType":Ljava/lang/String;
    .end local p3    # "disabled":Z
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "disabled":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 12879
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "disabled":Z
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "accountType":Ljava/lang/String;
    .restart local p3    # "disabled":Z
    :cond_22
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 12887
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "accountType":Ljava/lang/String;
    .end local p3    # "disabled":Z
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "disabled":Z
    :goto_25
    return-void
.end method

.method public greylist setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .line 9497
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 9498
    return-void
.end method

.method public greylist-max-r setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .line 9511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdminInternal(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 9512
    return-void
.end method

.method public blacklist setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V
    .registers 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "provisioningContext"    # Ljava/lang/String;

    .line 9529
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdminInternal(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 9530
    return-void
.end method

.method public whitelist setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9999
    const-string/jumbo v0, "setActiveProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10000
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 10002
    :try_start_b
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    .line 10003
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v0, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 10004
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1c

    return v1

    .line 10005
    .end local v0    # "myUserId":I
    :catch_1c
    move-exception v0

    .line 10006
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10009
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_22
    return v1
.end method

.method public whitelist setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15263
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15264
    if-eqz p2, :cond_1a

    .line 15268
    :try_start_8
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14

    .line 15271
    nop

    .line 15272
    return-void

    .line 15269
    :catch_14
    move-exception v0

    .line 15270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ids must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8561
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V

    .line 8562
    return-void
.end method

.method public whitelist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8594
    .local p4, "lockdownAllowlist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8595
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4a

    .line 8597
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 8598
    if-nez p4, :cond_10

    const/4 v1, 0x0

    goto :goto_15

    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8597
    :goto_15
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19

    .line 8609
    goto :goto_4a

    .line 8607
    :catch_19
    move-exception v0

    .line 8608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8599
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 8600
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_4c

    .line 8604
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error setting always-on VPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 8602
    :pswitch_40
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8611
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method public whitelist setAppFunctionsPolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 4415
    const-string/jumbo v0, "setAppFunctionsPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4416
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 4418
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAppFunctionsPolicy(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 4421
    goto :goto_1c

    .line 4419
    :catch_16
    move-exception v0

    .line 4420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4423
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setApplicationExemptions(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 16880
    .local p2, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "setApplicationExemptions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16881
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_50

    .line 16883
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 16884
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v2

    .line 16883
    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationExemptions(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_1e} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 16895
    goto :goto_50

    .line 16893
    :catch_1f
    move-exception v0

    .line 16894
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16885
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 16886
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_52

    .line 16890
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error setting application exemptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 16888
    :pswitch_46
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16897
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_50
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_46
    .end packed-switch
.end method

.method public whitelist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .line 12698
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_23

    .line 12700
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_19

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "hidden":Z
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "hidden":Z
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return p1

    .line 12702
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hidden":Z
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "hidden":Z
    :catch_19
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object p1, v0

    .line 12703
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "hidden":Z
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "hidden":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 12706
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hidden":Z
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "hidden":Z
    :cond_23
    move-object v2, p1

    .end local p1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .line 10774
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_22

    .line 10776
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "settings":Landroid/os/Bundle;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "settings":Landroid/os/Bundle;
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 10780
    goto :goto_25

    .line 10778
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "settings":Landroid/os/Bundle;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "settings":Landroid/os/Bundle;
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 10779
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "settings":Landroid/os/Bundle;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "settings":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 10774
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "settings":Landroid/os/Bundle;
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "settings":Landroid/os/Bundle;
    :cond_22
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 10782
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "settings":Landroid/os/Bundle;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "settings":Landroid/os/Bundle;
    :goto_25
    return-void
.end method

.method public whitelist setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10655
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10656
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1f

    .line 10658
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10663
    goto :goto_1f

    .line 10659
    :cond_13
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_19

    .line 10661
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 10662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public whitelist setAuditLogEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14729
    const-string/jumbo v0, "setAuditLogEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14731
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAuditLogEnabled(Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 14734
    goto :goto_16

    .line 14732
    :catch_12
    move-exception v0

    .line 14733
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14735
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist setAuditLogEventCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 14768
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;>;"
    const-string/jumbo v0, "setAuditLogEventCallback"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14769
    new-instance v0, Landroid/app/admin/DevicePolicyManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/admin/DevicePolicyManager$1;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14777
    .local v0, "wrappedCallback":Landroid/app/admin/IAuditLogEventsCallback;
    :try_start_b
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setAuditLogEventsCallback(Ljava/lang/String;Landroid/app/admin/IAuditLogEventsCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    .line 14780
    nop

    .line 14781
    return-void

    .line 14778
    :catch_18
    move-exception v1

    .line 14779
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 9069
    const-string/jumbo v0, "setAutoTimeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9070
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_33

    .line 9072
    :try_start_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->setAutoTimeEnabledCoexistence()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9073
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9074
    if-eqz p2, :cond_1c

    const/4 v2, 0x2

    goto :goto_1d

    .line 9075
    :cond_1c
    const/4 v2, 0x1

    .line 9073
    :goto_1d
    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimePolicy(Ljava/lang/String;I)V

    goto :goto_2c

    .line 9077
    :cond_21
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_2d

    .line 9081
    :goto_2c
    goto :goto_33

    .line 9079
    :catch_2d
    move-exception v0

    .line 9080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9083
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method public whitelist setAutoTimePolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 9163
    const-string/jumbo v0, "setAutoTimePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9164
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9166
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimePolicy(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 9169
    goto :goto_1c

    .line 9167
    :catch_16
    move-exception v0

    .line 9168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9027
    const-string/jumbo v0, "setAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9028
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 9030
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 9033
    goto :goto_16

    .line 9031
    :catch_10
    move-exception v0

    .line 9032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9035
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 9213
    const-string/jumbo v0, "setAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9214
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_33

    .line 9216
    :try_start_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->setAutoTimeZoneEnabledCoexistence()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9217
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9218
    if-eqz p2, :cond_1c

    const/4 v2, 0x2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x1

    .line 9217
    :goto_1d
    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeZonePolicy(Ljava/lang/String;I)V

    goto :goto_2c

    .line 9220
    :cond_21
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_2d

    .line 9224
    :goto_2c
    goto :goto_33

    .line 9222
    :catch_2d
    move-exception v0

    .line 9223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9226
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method public whitelist setAutoTimeZonePolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 9305
    const-string/jumbo v0, "setAutoTimeZonePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9306
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 9308
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeZonePolicy(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 9311
    goto :goto_1c

    .line 9309
    :catch_16
    move-exception v0

    .line 9310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9313
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 15463
    const-string/jumbo v0, "setBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15465
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 15468
    nop

    .line 15469
    return-void

    .line 15466
    :catch_d
    move-exception v0

    .line 15467
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 11298
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11299
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11301
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 11304
    goto :goto_16

    .line 11302
    :catch_10
    move-exception v0

    .line 11303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setCameraDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 8777
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 8779
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 8783
    goto :goto_18

    .line 8781
    :catch_12
    move-exception v0

    .line 8782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8785
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8403
    const-string/jumbo v0, "setCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8404
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8406
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 8409
    goto :goto_16

    .line 8407
    :catch_10
    move-exception v0

    .line 8408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8411
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 17038
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17039
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 17041
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 17044
    goto :goto_1c

    .line 17042
    :catch_16
    move-exception v0

    .line 17043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17046
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z

    .line 13439
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13440
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13442
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 13443
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 13442
    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 13446
    goto :goto_1c

    .line 13444
    :catch_16
    move-exception v0

    .line 13445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setContentProtectionPolicy(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 4319
    const-string/jumbo v0, "setContentProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4320
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 4322
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 4325
    goto :goto_1c

    .line 4323
    :catch_16
    move-exception v0

    .line 4324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/admin/PackagePolicy;

    .line 10985
    const-string/jumbo v0, "setCredentialManagerPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10986
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10988
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10991
    goto :goto_16

    .line 10989
    :catch_10
    move-exception v0

    .line 10990
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10993
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16529
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16530
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1f

    .line 16532
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez p2, :cond_10

    const/4 v1, 0x0

    goto :goto_15

    .line 16533
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16532
    :goto_15
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19

    .line 16536
    goto :goto_1f

    .line 16534
    :catch_19
    move-exception v0

    .line 16535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16538
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public whitelist setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10897
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10898
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10900
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10903
    goto :goto_16

    .line 10901
    :catch_10
    move-exception v0

    .line 10902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11190
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11191
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11193
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 11196
    goto :goto_16

    .line 11194
    :catch_10
    move-exception v0

    .line 11195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11198
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16658
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16659
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 16661
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 16664
    goto :goto_1b

    .line 16662
    :catch_15
    move-exception v0

    .line 16663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setDefaultDialerApplication(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10622
    const-string/jumbo v0, "setDefaultDialerApplication"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10623
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10625
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setDefaultDialerApplication(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10628
    goto :goto_16

    .line 10626
    :catch_10
    move-exception v0

    .line 10627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10630
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 10592
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 10594
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 10598
    goto :goto_18

    .line 10596
    :catch_12
    move-exception v0

    .line 10597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8462
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8463
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 8465
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 8468
    goto :goto_16

    .line 8466
    :catch_10
    move-exception v0

    .line 8467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8470
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o setDeviceOwner(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 9700
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 9702
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    return v0

    .line 9704
    :catch_c
    move-exception v0

    .line 9705
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9708
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "info"    # Ljava/lang/CharSequence;

    .line 10106
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10107
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10109
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10112
    goto :goto_16

    .line 10110
    :catch_10
    move-exception v0

    .line 10111
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10114
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist setDeviceOwnerOnly(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 9722
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 9724
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 9726
    :catch_c
    move-exception v0

    .line 9727
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9730
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_12
    return v1
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I

    .line 17606
    const-string/jumbo v0, "setDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17607
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17609
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerType(Landroid/content/ComponentName;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 17612
    goto :goto_16

    .line 17610
    :catch_10
    move-exception v0

    .line 17611
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17614
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setDeviceProvisioningConfigApplied()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15395
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 15398
    nop

    .line 15399
    return-void

    .line 15396
    :catch_7
    move-exception v0

    .line 15397
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDpcDownloaded(Z)V
    .registers 4
    .param p1, "downloaded"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17968
    const-string/jumbo v0, "setDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17969
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17971
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setDpcDownloaded(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 17974
    goto :goto_16

    .line 17972
    :catch_10
    move-exception v0

    .line 17973
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 16015
    const-string/jumbo v0, "setEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16017
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 16020
    nop

    .line 16021
    return-void

    .line 16018
    :catch_d
    move-exception v0

    .line 16019
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 6935
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6936
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 6938
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 6941
    goto :goto_1c

    .line 6939
    :catch_16
    move-exception v0

    .line 6940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6943
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public greylist-max-o setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "forceEphemeralUsers"    # Z

    .line 9348
    const-string/jumbo v0, "setForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9349
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 9351
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 9354
    goto :goto_16

    .line 9352
    :catch_10
    move-exception v0

    .line 9353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9356
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setGlobalPrivateDnsModeOpportunistic(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 16289
    const-string/jumbo v0, "setGlobalPrivateDnsModeOpportunistic"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16291
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x2

    if-nez v0, :cond_c

    .line 16292
    return v1

    .line 16296
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 16297
    :catch_14
    move-exception v0

    .line 16298
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGlobalPrivateDnsModeSpecifiedHost(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privateDnsHost"    # Ljava/lang/String;

    .line 16334
    const-string/jumbo v0, "setGlobalPrivateDnsModeSpecifiedHost"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16335
    const-string v0, "dns resolver is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16337
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_11

    .line 16338
    const/4 v0, 0x2

    return v0

    .line 16341
    :cond_11
    invoke-static {p2}, Lcom/android/internal/net/NetworkUtilsInternal;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 16342
    invoke-static {p2}, Landroid/net/PrivateDnsConnectivityChecker;->canConnectToPrivateDnsServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 16343
    const/4 v0, 0x1

    return v0

    .line 16348
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    return v0

    .line 16350
    :catch_27
    move-exception v0

    .line 16351
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 7057
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7058
    if-eqz p2, :cond_47

    .line 7061
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_45

    .line 7065
    :try_start_c
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p2, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7066
    const/4 v0, 0x0

    .line 7067
    .local v0, "hostSpec":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "exclSpec":Ljava/lang/String;
    goto :goto_32

    .line 7069
    .end local v0    # "hostSpec":Ljava/lang/String;
    .end local v1    # "exclSpec":Ljava/lang/String;
    :cond_17
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v0, v1}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7072
    nop

    .line 7073
    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 7074
    .local v0, "proxyParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 7075
    .local v1, "hostSpec":Ljava/lang/String;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v1

    move-object v1, v2

    .line 7077
    .local v0, "hostSpec":Ljava/lang/String;
    .local v1, "exclSpec":Ljava/lang/String;
    :goto_32
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 7070
    .end local v0    # "hostSpec":Ljava/lang/String;
    .end local v1    # "exclSpec":Ljava/lang/String;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "proxySpec":Ljava/net/Proxy;
    .end local p3    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_3f

    .line 7078
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "proxySpec":Ljava/net/Proxy;
    .restart local p3    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3f
    move-exception v0

    .line 7079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7082
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_45
    const/4 v0, 0x0

    return-object v0

    .line 7059
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 13363
    const-string/jumbo v0, "setGlobalSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13364
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 13366
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 13369
    goto :goto_16

    .line 13367
    :catch_10
    move-exception v0

    .line 13368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11814
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11815
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 11817
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 11820
    goto :goto_1c

    .line 11818
    :catch_16
    move-exception v0

    .line 11819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11822
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 15
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p4, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;Z)Z"
        }
    .end annotation

    .line 8348
    .local p3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const-string/jumbo v0, "setKeyPairCertificate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8350
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_8
    new-array v2, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    move-object v7, v2

    .line 8351
    .local v7, "pemCert":[B
    const/4 v2, 0x0

    .line 8352
    .local v2, "pemChain":[B
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_61
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_1c} :catch_55
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_55

    if-le v3, v0, :cond_40

    .line 8353
    nop

    .line 8354
    :try_start_1f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p3, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v3, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 8353
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_33} :catch_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_1f .. :try_end_33} :catch_36
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_36

    move-object v2, v0

    move-object v8, v2

    goto :goto_41

    .line 8360
    .end local v2    # "pemChain":[B
    .end local v7    # "pemCert":[B
    :catch_36
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move v9, p4

    goto :goto_59

    .line 8358
    :catch_3b
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move v9, p4

    goto :goto_65

    .line 8352
    .restart local v2    # "pemChain":[B
    .restart local v7    # "pemCert":[B
    :cond_40
    move-object v8, v2

    .line 8356
    .end local v2    # "pemChain":[B
    .local v8, "pemChain":[B
    :goto_41
    :try_start_41
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_49} :catch_61
    .catch Ljava/security/cert/CertificateException; {:try_start_41 .. :try_end_49} :catch_55
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_55

    move-object v4, p1

    move-object v6, p2

    move v9, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "alias":Ljava/lang/String;
    .end local p4    # "isUserSelectable":Z
    .local v4, "admin":Landroid/content/ComponentName;
    .local v6, "alias":Ljava/lang/String;
    .local v9, "isUserSelectable":Z
    :try_start_4c
    invoke-interface/range {v3 .. v9}, Landroid/app/admin/IDevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result p1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_50} :catch_53
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_51

    return p1

    .line 8360
    .end local v7    # "pemCert":[B
    .end local v8    # "pemChain":[B
    :catch_51
    move-exception v0

    goto :goto_59

    .line 8358
    :catch_53
    move-exception v0

    goto :goto_65

    .line 8360
    .end local v4    # "admin":Landroid/content/ComponentName;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v9    # "isUserSelectable":Z
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "alias":Ljava/lang/String;
    .restart local p4    # "isUserSelectable":Z
    :catch_55
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move v9, p4

    .line 8361
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "alias":Ljava/lang/String;
    .end local p4    # "isUserSelectable":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "admin":Landroid/content/ComponentName;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v9    # "isUserSelectable":Z
    :goto_59
    sget-object p1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string p2, "Could not pem-encode certificate"

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8363
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 8358
    .end local v4    # "admin":Landroid/content/ComponentName;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v9    # "isUserSelectable":Z
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "alias":Ljava/lang/String;
    .restart local p4    # "isUserSelectable":Z
    :catch_61
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move v9, p4

    .line 8359
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "alias":Ljava/lang/String;
    .end local p4    # "isUserSelectable":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "admin":Landroid/content/ComponentName;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v9    # "isUserSelectable":Z
    :goto_65
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 13967
    const-string/jumbo v0, "setKeyguardDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13969
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 13970
    :catch_d
    move-exception v0

    .line 13971
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .line 9449
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 9451
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 9452
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 9451
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 9455
    goto :goto_18

    .line 9453
    :catch_12
    move-exception v0

    .line 9454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9457
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z

    .line 13537
    const-string/jumbo v0, "setLocationEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13538
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 13540
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 13543
    goto :goto_16

    .line 13541
    :catch_10
    move-exception v0

    .line 13542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13545
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .line 13169
    const-string/jumbo v0, "setLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13170
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13172
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 13175
    goto :goto_1c

    .line 13173
    :catch_16
    move-exception v0

    .line 13174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 13068
    const-string/jumbo v0, "setLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13069
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13071
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 13074
    goto :goto_1c

    .line 13072
    :catch_16
    move-exception v0

    .line 13073
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 15871
    const-string/jumbo v0, "setLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15873
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 15876
    nop

    .line 15877
    return-void

    .line 15874
    :catch_d
    move-exception v0

    .line 15875
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 14499
    const-string/jumbo v0, "setLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14500
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 14502
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 14505
    goto :goto_16

    .line 14503
    :catch_10
    move-exception v0

    .line 14504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14507
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setManagedProfileCallerIdAccessPolicy(Landroid/app/admin/PackagePolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/admin/PackagePolicy;

    .line 11039
    const-string/jumbo v0, "setManagedProfileCallerIdAccessPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11040
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11042
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setManagedProfileCallerIdAccessPolicy(Landroid/app/admin/PackagePolicy;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 11045
    goto :goto_16

    .line 11043
    :catch_10
    move-exception v0

    .line 11044
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11047
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setManagedProfileContactsAccessPolicy(Landroid/app/admin/PackagePolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/admin/PackagePolicy;

    .line 11113
    const-string/jumbo v0, "setManagedProfileContactsAccessPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11114
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11116
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setManagedProfileContactsAccessPolicy(Landroid/app/admin/PackagePolicy;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 11119
    goto :goto_16

    .line 11117
    :catch_10
    move-exception v0

    .line 11118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMillis"    # J

    .line 17131
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17132
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17134
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 17137
    goto :goto_16

    .line 17135
    :catch_10
    move-exception v0

    .line 17136
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17139
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setManagedSubscriptionsPolicy(Landroid/app/admin/ManagedSubscriptionsPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 12048
    const-string/jumbo v0, "setManagedSubscriptionsPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12050
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setManagedSubscriptionsPolicy(Landroid/app/admin/ManagedSubscriptionsPolicy;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 12053
    nop

    .line 12054
    return-void

    .line 12051
    :catch_d
    move-exception v0

    .line 12052
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 13637
    const-string/jumbo v0, "setMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13638
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 13640
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 13643
    goto :goto_16

    .line 13641
    :catch_10
    move-exception v0

    .line 13642
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13645
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setMaxPolicyStorageLimit(I)V
    .registers 4
    .param p1, "storageLimit"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18266
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 18268
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setMaxPolicyStorageLimit(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 18271
    goto :goto_16

    .line 18269
    :catch_10
    move-exception v0

    .line 18270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .line 6200
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 6202
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 6203
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 6202
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 6206
    goto :goto_18

    .line 6204
    :catch_12
    move-exception v0

    .line 6205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .line 6532
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_20

    .line 6534
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeMs":J
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "timeMs":J
    :try_start_10
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;Ljava/lang/String;JZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 6537
    goto :goto_22

    .line 6535
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeMs":J
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeMs":J
    :catch_17
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-object p1, v0

    .line 6536
    .end local p2    # "timeMs":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeMs":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 6532
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeMs":J
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeMs":J
    :cond_20
    move-object v2, p1

    move-wide v4, p2

    .line 6539
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeMs":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeMs":J
    :goto_22
    return-void
.end method

.method public whitelist setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14900
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14901
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 14903
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 14904
    :catch_11
    move-exception v0

    .line 14905
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14908
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    return-object p2
.end method

.method public whitelist setMinimumRequiredWifiSecurityLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 17831
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17832
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 17834
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setMinimumRequiredWifiSecurityLevel(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 17837
    goto :goto_1c

    .line 17835
    :catch_16
    move-exception v0

    .line 17836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setMtePolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 4180
    const-string/jumbo v0, "setMtePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4181
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 4183
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setMtePolicy(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 4186
    goto :goto_1c

    .line 4184
    :catch_16
    move-exception v0

    .line 4185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist setMtePolicy(Ljava/lang/String;I)V
    .registers 5
    .param p1, "systemEntity"    # Ljava/lang/String;
    .param p2, "policy"    # I

    .line 4207
    const-string/jumbo v0, "setMtePolicyForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4208
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 4210
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMtePolicyBySystem(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 4213
    goto :goto_16

    .line 4211
    :catch_10
    move-exception v0

    .line 4212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setNearbyAppStreamingPolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 8961
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8962
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 8963
    return-void

    .line 8966
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyAppStreamingPolicy(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 8969
    nop

    .line 8970
    return-void

    .line 8967
    :catch_12
    move-exception v0

    .line 8968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNearbyNotificationStreamingPolicy(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 8913
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8914
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 8915
    return-void

    .line 8918
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyNotificationStreamingPolicy(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 8921
    nop

    .line 8922
    return-void

    .line 8919
    :catch_12
    move-exception v0

    .line 8920
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 15546
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15548
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 15551
    nop

    .line 15552
    return-void

    .line 15549
    :catch_13
    move-exception v0

    .line 15550
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNextOperationSafety(II)V
    .registers 5
    .param p1, "operation"    # I
    .param p2, "reason"    # I

    .line 17244
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 17246
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNextOperationSafety(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 17249
    goto :goto_10

    .line 17247
    :catch_a
    move-exception v0

    .line 17248
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17251
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setOrganizationColor(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15014
    const-string/jumbo v0, "setOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15017
    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 15018
    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 15021
    nop

    .line 15022
    return-void

    .line 15019
    :catch_10
    move-exception v0

    .line 15020
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setOrganizationColorForUser(II)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15041
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 15042
    :try_start_3
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 15045
    nop

    .line 15046
    return-void

    .line 15043
    :catch_a
    move-exception v0

    .line 15044
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOrganizationId(Ljava/lang/String;)V
    .registers 4
    .param p1, "enterpriseId"    # Ljava/lang/String;

    .line 17306
    const-string/jumbo v0, "setOrganizationId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17307
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17308
    return-void
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 17319
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    .line 17320
    return-void

    .line 17323
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 17326
    nop

    .line 17327
    return-void

    .line 17324
    :catch_c
    move-exception v0

    .line 17325
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 15101
    const-string/jumbo v0, "setOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15103
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 15106
    nop

    .line 15107
    return-void

    .line 15104
    :catch_13
    move-exception v0

    .line 15105
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 16210
    const-string/jumbo v0, "setOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16211
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 16213
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 16216
    goto :goto_16

    .line 16214
    :catch_10
    move-exception v0

    .line 16215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16218
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z

    .line 10163
    const-string/jumbo v0, "setPackagesSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10164
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 10166
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return-object v0

    .line 10168
    :catch_17
    move-exception v0

    .line 10169
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10172
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1d
    return-object p2
.end method

.method public whitelist setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .line 5672
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_20

    .line 5674
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 5675
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17

    .line 5674
    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeout":J
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "timeout":J
    :try_start_10
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 5678
    goto :goto_22

    .line 5676
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeout":J
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeout":J
    :catch_17
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-object p1, v0

    .line 5677
    .end local p2    # "timeout":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeout":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 5672
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeout":J
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeout":J
    :cond_20
    move-object v2, p1

    move-wide v4, p2

    .line 5680
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeout":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeout":J
    :goto_22
    return-void
.end method

.method public whitelist setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 5628
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5630
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5633
    goto :goto_12

    .line 5631
    :catch_c
    move-exception v0

    .line 5632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5635
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4982
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 4984
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 4987
    goto :goto_12

    .line 4985
    :catch_c
    move-exception v0

    .line 4986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4989
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5251
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5253
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5256
    goto :goto_12

    .line 5254
    :catch_c
    move-exception v0

    .line 5255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5159
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5161
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5164
    goto :goto_12

    .line 5162
    :catch_c
    move-exception v0

    .line 5163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5523
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5525
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5528
    goto :goto_12

    .line 5526
    :catch_c
    move-exception v0

    .line 5527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5342
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5344
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5347
    goto :goto_12

    .line 5345
    :catch_c
    move-exception v0

    .line 5346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5433
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5435
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5438
    goto :goto_12

    .line 5436
    :catch_c
    move-exception v0

    .line 5437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5067
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 5069
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 5072
    goto :goto_12

    .line 5070
    :catch_c
    move-exception v0

    .line 5071
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5074
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4895
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 4897
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 4900
    goto :goto_12

    .line 4898
    :catch_c
    move-exception v0

    .line 4899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4902
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    .line 14268
    const-string/jumbo v0, "setPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14270
    :try_start_6
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 14272
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1d} :catch_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_1d} :catch_4c

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permission":Ljava/lang/String;
    .end local p4    # "grantState":I
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "permission":Ljava/lang/String;
    .local v6, "grantState":I
    :try_start_21
    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 14276
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;-><init>()V

    .line 14277
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 14276
    const-wide/16 p3, 0x4e20

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14280
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_45} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_45} :catch_46

    return p1

    .line 14283
    .end local v0    # "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :catch_46
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .line 14281
    :catch_49
    move-exception v0

    move-object p1, v0

    goto :goto_5e

    .line 14283
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "grantState":I
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "permission":Ljava/lang/String;
    .restart local p4    # "grantState":I
    :catch_4c
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object p1, v0

    .line 14284
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permission":Ljava/lang/String;
    .end local p4    # "grantState":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    .restart local v6    # "grantState":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_52
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14281
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "grantState":I
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "permission":Ljava/lang/String;
    .restart local p4    # "grantState":I
    :catch_58
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object p1, v0

    .line 14282
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permission":Ljava/lang/String;
    .end local p4    # "grantState":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    .restart local v6    # "grantState":I
    .local p1, "re":Landroid/os/RemoteException;
    :goto_5e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setPermissionPolicy(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 14144
    const-string/jumbo v0, "setPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14146
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 14149
    nop

    .line 14150
    return-void

    .line 14147
    :catch_13
    move-exception v0

    .line 14148
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 11429
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11430
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 11432
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 11433
    :catch_11
    move-exception v0

    .line 11434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 11720
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11721
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 11723
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 11724
    :catch_11
    move-exception v0

    .line 11725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 11560
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 11562
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 11563
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 11562
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 11564
    :catch_13
    move-exception v0

    .line 11565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11568
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z

    .line 17102
    const-string/jumbo v0, "setPersonalAppsSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17103
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 17105
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 17108
    goto :goto_16

    .line 17106
    :catch_10
    move-exception v0

    .line 17107
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17110
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .line 13280
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13281
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 13282
    return-void

    .line 13285
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 13288
    nop

    .line 13289
    return-void

    .line 13286
    :catch_12
    move-exception v0

    .line 13287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPreferentialNetworkServiceEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 13234
    const-string/jumbo v0, "setPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13235
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 13237
    .local v0, "configBuilder":Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    invoke-virtual {v0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 13238
    if-eqz p1, :cond_14

    .line 13239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 13241
    :cond_14
    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 13242
    return-void
.end method

.method public whitelist setProfileEnabled(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10219
    const-string/jumbo v0, "setProfileEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10220
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10222
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10225
    goto :goto_16

    .line 10223
    :catch_10
    move-exception v0

    .line 10224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 10242
    const-string/jumbo v0, "setProfileName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10243
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 10245
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 10248
    goto :goto_16

    .line 10246
    :catch_10
    move-exception v0

    .line 10247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist setProfileOwner(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10073
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 10075
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 10076
    :catch_b
    move-exception v0

    .line 10077
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10080
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setProfileOwnerCanAccessDeviceIds(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16474
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 16475
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_11

    .line 16480
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V

    .line 16482
    return-void

    .line 16476
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This method is deprecated. use markProfileOwnerOnOrganizationOwnedDevice instead."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "isProfileOwnerOnOrganizationOwnedDevice"    # Z

    .line 16498
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    .line 16499
    return-void

    .line 16502
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 16506
    nop

    .line 16507
    return-void

    .line 16504
    :catch_10
    move-exception v0

    .line 16505
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 7136
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7137
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 7139
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 7142
    goto :goto_16

    .line 7140
    :catch_10
    move-exception v0

    .line 7141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setRequiredPasswordComplexity(I)V
    .registers 5
    .param p1, "passwordComplexity"    # I

    .line 5975
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    .line 5976
    return-void

    .line 5980
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 5981
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 5980
    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setRequiredPasswordComplexity(Ljava/lang/String;IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 5984
    nop

    .line 5985
    return-void

    .line 5982
    :catch_14
    move-exception v0

    .line 5983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 6610
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_20

    .line 6612
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 6613
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17

    .line 6612
    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeoutMs":J
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "timeoutMs":J
    :try_start_10
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 6616
    goto :goto_22

    .line 6614
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeoutMs":J
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeoutMs":J
    :catch_17
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-object p1, v0

    .line 6615
    .end local p2    # "timeoutMs":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeoutMs":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 6610
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "timeoutMs":J
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "timeoutMs":J
    :cond_20
    move-object v2, p1

    move-wide v4, p2

    .line 6618
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "timeoutMs":J
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "timeoutMs":J
    :goto_22
    return-void
.end method

.method public whitelist setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B

    .line 6394
    const-string/jumbo v0, "setResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6395
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 6397
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 6398
    :catch_17
    move-exception v0

    .line 6399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6402
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 13618
    const-string/jumbo v0, "setRestrictionsProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13619
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 13621
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 13624
    goto :goto_16

    .line 13622
    :catch_10
    move-exception v0

    .line 13623
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13626
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 8867
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    .line 8869
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 8870
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 8869
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 8873
    goto :goto_18

    .line 8871
    :catch_12
    move-exception v0

    .line 8872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8875
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12963
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12964
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 12966
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;ZLandroid/os/PersistableBundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    .line 12969
    goto :goto_17

    .line 12967
    :catch_11
    move-exception v0

    .line 12968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12971
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist setSecondaryLockscreenEnabled(ZLandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "options"    # Landroid/os/PersistableBundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12989
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12990
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 12992
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;ZLandroid/os/PersistableBundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    .line 12995
    goto :goto_17

    .line 12993
    :catch_11
    move-exception v0

    .line 12994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12997
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 13593
    const-string/jumbo v0, "setSecureSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13595
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 13597
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 13600
    goto :goto_16

    .line 13598
    :catch_10
    move-exception v0

    .line 13599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 14692
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14694
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 14697
    nop

    .line 14698
    return-void

    .line 14695
    :catch_13
    move-exception v0

    .line 14696
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 14447
    const-string/jumbo v0, "setShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14448
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 14450
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 14453
    goto :goto_1c

    .line 14451
    :catch_16
    move-exception v0

    .line 14452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14455
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 15990
    const-string/jumbo v0, "setStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15992
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 15995
    nop

    .line 15996
    return-void

    .line 15993
    :catch_d
    move-exception v0

    .line 15994
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 14000
    const-string/jumbo v0, "setStatusBarDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14002
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 14003
    :catch_13
    move-exception v0

    .line 14004
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setStorageEncryption(Landroid/content/ComponentName;Z)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7442
    const-string/jumbo v0, "setStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7443
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 7445
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 7446
    :catch_11
    move-exception v0

    .line 7447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7450
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 13408
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    .line 13410
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 13413
    goto :goto_12

    .line 13411
    :catch_c
    move-exception v0

    .line 13412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 13899
    const-string/jumbo v0, "setSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13900
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13902
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 13905
    goto :goto_1c

    .line 13903
    :catch_16
    move-exception v0

    .line 13904
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13907
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setTime(Landroid/content/ComponentName;J)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J

    .line 13487
    const-string/jumbo v0, "setTime"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13488
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 13490
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setTime(Landroid/content/ComponentName;Ljava/lang/String;J)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 13491
    :catch_17
    move-exception v0

    .line 13492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13495
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;

    .line 13515
    const-string/jumbo v0, "setTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13516
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 13518
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v0

    .line 13519
    :catch_17
    move-exception v0

    .line 13520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    .line 10823
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_22

    .line 10825
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 10826
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 10825
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "target":Landroid/content/ComponentName;
    .end local p3    # "configuration":Landroid/os/PersistableBundle;
    .local v2, "admin":Landroid/content/ComponentName;
    .local v4, "target":Landroid/content/ComponentName;
    .local v5, "configuration":Landroid/os/PersistableBundle;
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 10829
    goto :goto_25

    .line 10827
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "target":Landroid/content/ComponentName;
    .end local v5    # "configuration":Landroid/os/PersistableBundle;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "target":Landroid/content/ComponentName;
    .restart local p3    # "configuration":Landroid/os/PersistableBundle;
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 10828
    .end local p2    # "target":Landroid/content/ComponentName;
    .end local p3    # "configuration":Landroid/os/PersistableBundle;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "target":Landroid/content/ComponentName;
    .restart local v5    # "configuration":Landroid/os/PersistableBundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 10823
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v4    # "target":Landroid/content/ComponentName;
    .end local v5    # "configuration":Landroid/os/PersistableBundle;
    .local p1, "admin":Landroid/content/ComponentName;
    .restart local p2    # "target":Landroid/content/ComponentName;
    .restart local p3    # "configuration":Landroid/os/PersistableBundle;
    :cond_22
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 10831
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "target":Landroid/content/ComponentName;
    .end local p3    # "configuration":Landroid/os/PersistableBundle;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v4    # "target":Landroid/content/ComponentName;
    .restart local v5    # "configuration":Landroid/os/PersistableBundle;
    :goto_25
    return-void
.end method

.method public whitelist setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .line 13706
    const-string/jumbo v0, "setUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13707
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 13709
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 13713
    goto :goto_1c

    .line 13711
    :catch_16
    move-exception v0

    .line 13712
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13715
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setUsbDataSignalingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 17701
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17702
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 17704
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 17707
    goto :goto_1c

    .line 17705
    :catch_16
    move-exception v0

    .line 17706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17709
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16981
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16982
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 16984
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 16987
    goto :goto_1c

    .line 16985
    :catch_16
    move-exception v0

    .line 16986
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16989
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public whitelist setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 13860
    const-string/jumbo v0, "setUserIcon"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13862
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 13865
    nop

    .line 13866
    return-void

    .line 13863
    :catch_d
    move-exception v0

    .line 13864
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserProvisioningState(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "userHandle"    # I

    .line 15202
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    .line 15204
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 15207
    goto :goto_10

    .line 15205
    :catch_a
    move-exception v0

    .line 15206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setUserProvisioningState(ILandroid/os/UserHandle;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15236
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    .line 15237
    return-void
.end method

.method public whitelist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;

    .line 17870
    const-string/jumbo v0, "setWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17871
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    .line 17872
    return-void

    .line 17875
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setWifiSsidPolicy(Ljava/lang/String;Landroid/app/admin/WifiSsidPolicy;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    .line 17878
    nop

    .line 17880
    return-void

    .line 17876
    :catch_18
    move-exception v0

    .line 17877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18100
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 18102
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 18103
    :catch_b
    move-exception v0

    .line 18104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .registers 13
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    .line 11280
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    .end local p1    # "actualLookupKey":Ljava/lang/String;
    .end local p2    # "actualContactId":J
    .end local p4    # "originalIntent":Landroid/content/Intent;
    .local v1, "actualLookupKey":Ljava/lang/String;
    .local v2, "actualContactId":J
    .local v7, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 11282
    return-void
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .registers 17
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;

    .line 11264
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    .line 11266
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 11270
    goto :goto_16

    .line 11268
    :catch_10
    move-exception v0

    .line 11269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 11964
    const-string/jumbo v0, "startUserInBackground"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11966
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 11967
    :catch_d
    move-exception v0

    .line 11968
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startViewCalendarEventInManagedProfile(JJJZI)Z
    .registers 20
    .param p1, "eventId"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "allDay"    # Z
    .param p8, "flags"    # I

    .line 16843
    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16844
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_25

    .line 16846
    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Landroid/app/admin/IDevicePolicyManager;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1e} :catch_1f

    return v0

    .line 16848
    :catch_1f
    move-exception v0

    .line 16849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16852
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 11987
    const-string/jumbo v0, "stopUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11989
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 11990
    :catch_d
    move-exception v0

    .line 11991
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 11941
    const-string/jumbo v0, "switchUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11943
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 11944
    :catch_d
    move-exception v0

    .line 11945
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;

    .line 15965
    const-string/jumbo v0, "transferOwnership"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15967
    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 15970
    nop

    .line 15971
    return-void

    .line 15968
    :catch_d
    move-exception v0

    .line 15969
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist triggerDevicePolicyEngineMigration(Z)Z
    .registers 4
    .param p1, "forceMigration"    # Z

    .line 18143
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 18145
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->triggerDevicePolicyEngineMigration(Z)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 18146
    :catch_b
    move-exception v0

    .line 18147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 18150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7662
    const-string/jumbo v0, "uninstallAllUserCaCerts"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7663
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2e

    .line 7665
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 7666
    invoke-virtual {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 7665
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    .line 7669
    goto :goto_2e

    .line 7667
    :catch_28
    move-exception v0

    .line 7668
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7671
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist uninstallCaCert(Landroid/content/ComponentName;[B)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 7607
    const-string/jumbo v0, "uninstallCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7608
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2d

    .line 7610
    :try_start_a
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0

    .line 7611
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_1d} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1e

    .end local v0    # "alias":Ljava/lang/String;
    goto :goto_2c

    .line 7614
    :catch_1e
    move-exception v0

    .line 7615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7612
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v0

    .line 7613
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7616
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_2c
    nop

    .line 7618
    :cond_2d
    return-void
.end method

.method public greylist-max-o uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 15337
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 15340
    nop

    .line 15341
    return-void

    .line 15338
    :catch_7
    move-exception v0

    .line 15339
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 16131
    const-string/jumbo v0, "updateOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16132
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 16134
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 16135
    :catch_11
    move-exception v0

    .line 16136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist wipeData(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 6820
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;Z)V

    .line 6823
    return-void
.end method

.method public whitelist wipeData(ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "reason"    # Ljava/lang/CharSequence;

    .line 6862
    const-string/jumbo v0, "reason string is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6863
    const-string/jumbo v0, "reason string is empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 6864
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const-string v2, "WIPE_SILENTLY cannot be set"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6865
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;Z)V

    .line 6866
    return-void
.end method

.method public whitelist wipeDevice(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 6892
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;Z)V

    .line 6895
    return-void
.end method
