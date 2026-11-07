.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEPRECATE_DPM_SUPERVISION_APIS:Ljava/lang/String; = "android.app.supervision.flags.deprecate_dpm_supervision_apis"

.field public static final blacklist FLAG_ENABLE_APP_APPROVAL:Ljava/lang/String; = "android.app.supervision.flags.enable_app_approval"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_APP_SERVICE:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_app_service"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_PIN_RECOVERY_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_pin_recovery_screen"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_SETTINGS_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_settings_screen"

.field public static final blacklist FLAG_ENABLE_SYNC_WITH_DPM:Ljava/lang/String; = "android.app.supervision.flags.enable_sync_with_dpm"

.field public static final blacklist FLAG_ENABLE_WEB_CONTENT_FILTERS_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_web_content_filters_screen"

.field public static final blacklist FLAG_SUPERVISION_API:Ljava/lang/String; = "android.app.supervision.flags.supervision_api"

.field public static final blacklist FLAG_SUPERVISION_API_ON_WEAR:Ljava/lang/String; = "android.app.supervision.flags.supervision_api_on_wear"

.field public static final blacklist FLAG_SUPERVISION_MANAGER_APIS:Ljava/lang/String; = "android.app.supervision.flags.supervision_manager_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deprecateDpmSupervisionApis()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->deprecateDpmSupervisionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppApproval()Z
    .registers 1

    .line 39
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableAppApproval()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionAppService()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionAppService()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionPinRecoveryScreen()Z
    .registers 1

    .line 53
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionPinRecoveryScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionSettingsScreen()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionSettingsScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSyncWithDpm()Z
    .registers 1

    .line 67
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSyncWithDpm()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableWebContentFiltersScreen()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableWebContentFiltersScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionApi()Z
    .registers 1

    .line 81
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionApiOnWear()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionApiOnWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionManagerApis()Z
    .registers 1

    .line 95
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionManagerApis()Z

    move-result v0

    return v0
.end method
