.class public final Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_CREDENTIALS_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_credentials_fix_enabled"

.field public static final blacklist FLAG_CLEAR_SESSION_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_session_enabled"

.field public static final blacklist FLAG_CONFIGURABLE_SELECTOR_UI_ENABLED:Ljava/lang/String; = "android.credentials.flags.configurable_selector_ui_enabled"

.field public static final blacklist FLAG_CREDMAN_BIOMETRIC_API_ENABLED:Ljava/lang/String; = "android.credentials.flags.credman_biometric_api_enabled"

.field public static final blacklist FLAG_FIX_METRIC_DUPLICATION_EMITS:Ljava/lang/String; = "android.credentials.flags.fix_metric_duplication_emits"

.field public static final blacklist FLAG_FRAMEWORK_SESSION_ID_METRIC_BUNDLE:Ljava/lang/String; = "android.credentials.flags.framework_session_id_metric_bundle"

.field public static final blacklist FLAG_HYBRID_FILTER_OPT_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.hybrid_filter_opt_fix_enabled"

.field public static final blacklist FLAG_INSTANT_APPS_ENABLED:Ljava/lang/String; = "android.credentials.flags.instant_apps_enabled"

.field public static final blacklist FLAG_NEW_FRAMEWORK_METRICS:Ljava/lang/String; = "android.credentials.flags.new_framework_metrics"

.field public static final blacklist FLAG_NEW_SETTINGS_INTENTS:Ljava/lang/String; = "android.credentials.flags.new_settings_intents"

.field public static final blacklist FLAG_NEW_SETTINGS_UI:Ljava/lang/String; = "android.credentials.flags.new_settings_ui"

.field public static final blacklist FLAG_PACKAGE_UPDATE_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.package_update_fix_enabled"

.field public static final blacklist FLAG_PROPAGATE_USER_CONTEXT_FOR_INTENT_CREATION:Ljava/lang/String; = "android.credentials.flags.propagate_user_context_for_intent_creation"

.field public static final blacklist FLAG_SAFEGUARD_CANDIDATE_CREDENTIALS_API_CALLER:Ljava/lang/String; = "android.credentials.flags.safeguard_candidate_credentials_api_caller"

.field public static final blacklist FLAG_SELECTOR_UI_IMPROVEMENTS_ENABLED:Ljava/lang/String; = "android.credentials.flags.selector_ui_improvements_enabled"

.field public static final blacklist FLAG_SETTINGS_ACTIVITY_ENABLED:Ljava/lang/String; = "android.credentials.flags.settings_activity_enabled"

.field public static final blacklist FLAG_SETTINGS_W_FIXES:Ljava/lang/String; = "android.credentials.flags.settings_w_fixes"

.field public static final blacklist FLAG_TTL_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.ttl_fix_enabled"

.field public static final blacklist FLAG_WEAR_CREDENTIAL_MANAGER_ENABLED:Ljava/lang/String; = "android.credentials.flags.wear_credential_manager_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearCredentialsFixEnabled()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearCredentialsFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearSessionEnabled()Z
    .registers 1

    .line 57
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearSessionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurableSelectorUiEnabled()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->configurableSelectorUiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist credmanBiometricApiEnabled()Z
    .registers 1

    .line 71
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->credmanBiometricApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixMetricDuplicationEmits()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->fixMetricDuplicationEmits()Z

    move-result v0

    return v0
.end method

.method public static blacklist frameworkSessionIdMetricBundle()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->frameworkSessionIdMetricBundle()Z

    move-result v0

    return v0
.end method

.method public static blacklist hybridFilterOptFixEnabled()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->hybridFilterOptFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist instantAppsEnabled()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->instantAppsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist newFrameworkMetrics()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newFrameworkMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist newSettingsIntents()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newSettingsIntents()Z

    move-result v0

    return v0
.end method

.method public static blacklist newSettingsUi()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newSettingsUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist packageUpdateFixEnabled()Z
    .registers 1

    .line 127
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->packageUpdateFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist propagateUserContextForIntentCreation()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->propagateUserContextForIntentCreation()Z

    move-result v0

    return v0
.end method

.method public static blacklist safeguardCandidateCredentialsApiCaller()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->safeguardCandidateCredentialsApiCaller()Z

    move-result v0

    return v0
.end method

.method public static blacklist selectorUiImprovementsEnabled()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->selectorUiImprovementsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsActivityEnabled()Z
    .registers 1

    .line 155
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->settingsActivityEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsWFixes()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->settingsWFixes()Z

    move-result v0

    return v0
.end method

.method public static blacklist ttlFixEnabled()Z
    .registers 1

    .line 169
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->ttlFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearCredentialManagerEnabled()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->wearCredentialManagerEnabled()Z

    move-result v0

    return v0
.end method
