.class public final Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BLOCKLIST_UPDATE_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.blocklist_update_enabled"

.field public static final blacklist FLAG_CREATE_ACCESSIBILITY_OVERLAY_APP_OP_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.create_accessibility_overlay_app_op_enabled"

.field public static final blacklist FLAG_EXPORTED_SETTINGS_ACTIVITY_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.exported_settings_activity_enabled"

.field public static final blacklist FLAG_MANAGE_DEVICE_POLICY_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.manage_device_policy_enabled"

.field public static final blacklist FLAG_PARSE_GROUPS_CONFIG_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.parse_groups_config_enabled"

.field public static final blacklist FLAG_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER_APP_OP_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.rapid_clear_notifications_by_listener_app_op_enabled"

.field public static final blacklist FLAG_SETTING_UI_ENABLED:Ljava/lang/String; = "android.view.contentprotection.flags.setting_ui_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist blocklistUpdateEnabled()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->blocklistUpdateEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist createAccessibilityOverlayAppOpEnabled()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->createAccessibilityOverlayAppOpEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist exportedSettingsActivityEnabled()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->exportedSettingsActivityEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist manageDevicePolicyEnabled()Z
    .registers 1

    .line 47
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->manageDevicePolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist parseGroupsConfigEnabled()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->parseGroupsConfigEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist rapidClearNotificationsByListenerAppOpEnabled()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->rapidClearNotificationsByListenerAppOpEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingUiEnabled()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;->settingUiEnabled()Z

    move-result v0

    return v0
.end method
