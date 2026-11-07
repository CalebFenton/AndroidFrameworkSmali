.class public final Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableCellular2g()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableInstallUnknownSources()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureMemoryTaggingExtension()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtection()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist aflApi()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmOptSystemIntoEnforcement()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmReintroduceGracePeriod()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmToastsEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist blockNullActionIntents()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearStrongAuthOnAddingPrimaryCredential()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableAdaptiveAuthCounterLock()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendEcmToAllSettings()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fsverityApi()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectAbortOrThrowException()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectShowToast()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectDeviceConfigFlags()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureArrayZeroization()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureLockdown()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unlockedStorageApi()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method
