.class public final Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearCredentialsFixEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearSessionEnabled()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist configurableSelectorUiEnabled()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist credmanBiometricApiEnabled()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixMetricDuplicationEmits()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist frameworkSessionIdMetricBundle()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hybridFilterOptFixEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist instantAppsEnabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newFrameworkMetrics()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newSettingsIntents()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newSettingsUi()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist packageUpdateFixEnabled()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist propagateUserContextForIntentCreation()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist safeguardCandidateCredentialsApiCaller()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectorUiImprovementsEnabled()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist settingsActivityEnabled()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist settingsWFixes()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ttlFixEnabled()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wearCredentialManagerEnabled()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method
