.class public final Landroid/app/admin/DevicePolicyIdentifiers;
.super Ljava/lang/Object;
.source "DevicePolicyIdentifiers.java"


# static fields
.field public static final whitelist ACCOUNT_MANAGEMENT_DISABLED_POLICY:Ljava/lang/String; = "accountManagementDisabled"

.field public static final whitelist APPLICATION_HIDDEN_POLICY:Ljava/lang/String; = "applicationHidden"

.field public static final whitelist APPLICATION_RESTRICTIONS_POLICY:Ljava/lang/String; = "applicationRestrictions"

.field public static final whitelist APP_FUNCTIONS_POLICY:Ljava/lang/String; = "appFunctions"

.field public static final whitelist AUDIT_LOGGING_POLICY:Ljava/lang/String; = "auditLogging"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_TIMEZONE_POLICY:Ljava/lang/String; = "autoTimezone"

.field public static final whitelist AUTO_TIME_POLICY:Ljava/lang/String; = "autoTime"

.field public static final whitelist BACKUP_SERVICE_POLICY:Ljava/lang/String; = "backupService"

.field public static final whitelist CAMERA_DISABLED_POLICY:Ljava/lang/String; = "cameraDisabled"

.field public static final whitelist CONTENT_PROTECTION_POLICY:Ljava/lang/String; = "contentProtection"

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_POLICY:Ljava/lang/String; = "crossProfileIntentFilter"

.field public static final blacklist CROSS_PROFILE_WIDGET_PROVIDER_POLICY:Ljava/lang/String; = "crossProfileWidgetProvider"

.field public static final whitelist KEYGUARD_DISABLED_FEATURES_POLICY:Ljava/lang/String; = "keyguardDisabledFeatures"

.field public static final whitelist LOCK_TASK_POLICY:Ljava/lang/String; = "lockTask"

.field public static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field public static final whitelist PACKAGES_SUSPENDED_POLICY:Ljava/lang/String; = "packagesSuspended"

.field public static final whitelist PACKAGE_UNINSTALL_BLOCKED_POLICY:Ljava/lang/String; = "packageUninstallBlocked"

.field public static final whitelist PASSWORD_COMPLEXITY_POLICY:Ljava/lang/String; = "passwordComplexity"

.field public static final whitelist PERMISSION_GRANT_POLICY:Ljava/lang/String; = "permissionGrant"

.field public static final blacklist PERMITTED_INPUT_METHODS_POLICY:Ljava/lang/String; = "permittedInputMethods"

.field public static final whitelist PERSISTENT_PREFERRED_ACTIVITY_POLICY:Ljava/lang/String; = "persistentPreferredActivity"

.field public static final blacklist PERSONAL_APPS_SUSPENDED_POLICY:Ljava/lang/String; = "personalAppsSuspended"

.field public static final whitelist RESET_PASSWORD_TOKEN_POLICY:Ljava/lang/String; = "resetPasswordToken"

.field public static final blacklist SCREEN_CAPTURE_DISABLED_POLICY:Ljava/lang/String; = "screenCaptureDisabled"

.field public static final whitelist SECURITY_LOGGING_POLICY:Ljava/lang/String; = "securityLogging"

.field public static final whitelist STATUS_BAR_DISABLED_POLICY:Ljava/lang/String; = "statusBarDisabled"

.field public static final blacklist TRUST_AGENT_CONFIGURATION_POLICY:Ljava/lang/String; = "trustAgentConfiguration"

.field public static final whitelist USB_DATA_SIGNALING_POLICY:Ljava/lang/String; = "usbDataSignaling"

.field public static final whitelist USER_CONTROL_DISABLED_PACKAGES_POLICY:Ljava/lang/String; = "userControlDisabledPackages"

.field public static final blacklist USER_RESTRICTION_PREFIX:Ljava/lang/String; = "userRestriction_"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "restriction"    # Ljava/lang/String;

    .line 219
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userRestriction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
