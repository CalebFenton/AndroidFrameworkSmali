.class public final Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags; = null

.field public static final blacklist FLAG_AAPM_API:Ljava/lang/String; = "android.security.aapm_api"

.field public static final blacklist FLAG_AAPM_FEATURE_DISABLE_CELLULAR_2G:Ljava/lang/String; = "android.security.aapm_feature_disable_cellular_2g"

.field public static final blacklist FLAG_AAPM_FEATURE_DISABLE_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "android.security.aapm_feature_disable_install_unknown_sources"

.field public static final blacklist FLAG_AAPM_FEATURE_MEMORY_TAGGING_EXTENSION:Ljava/lang/String; = "android.security.aapm_feature_memory_tagging_extension"

.field public static final blacklist FLAG_AAPM_FEATURE_USB_DATA_PROTECTION:Ljava/lang/String; = "android.security.aapm_feature_usb_data_protection"

.field public static final blacklist FLAG_AFL_API:Ljava/lang/String; = "android.security.afl_api"

.field public static final blacklist FLAG_ASM_OPT_SYSTEM_INTO_ENFORCEMENT:Ljava/lang/String; = "android.security.asm_opt_system_into_enforcement"

.field public static final blacklist FLAG_ASM_REINTRODUCE_GRACE_PERIOD:Ljava/lang/String; = "android.security.asm_reintroduce_grace_period"

.field public static final blacklist FLAG_ASM_RESTRICTIONS_ENABLED:Ljava/lang/String; = "android.security.asm_restrictions_enabled"

.field public static final blacklist FLAG_ASM_TOASTS_ENABLED:Ljava/lang/String; = "android.security.asm_toasts_enabled"

.field public static final blacklist FLAG_BLOCK_NULL_ACTION_INTENTS:Ljava/lang/String; = "android.security.block_null_action_intents"

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_CONFIGURATION:Ljava/lang/String; = "android.security.certificate_transparency_configuration"

.field public static final blacklist FLAG_CLEAR_STRONG_AUTH_ON_ADDING_PRIMARY_CREDENTIAL:Ljava/lang/String; = "android.security.clear_strong_auth_on_adding_primary_credential"

.field public static final blacklist FLAG_CONTENT_URI_PERMISSION_APIS:Ljava/lang/String; = "android.security.content_uri_permission_apis"

.field public static final blacklist FLAG_DISABLE_ADAPTIVE_AUTH_COUNTER_LOCK:Ljava/lang/String; = "android.security.disable_adaptive_auth_counter_lock"

.field public static final blacklist FLAG_ENABLE_INTENT_MATCHING_FLAGS:Ljava/lang/String; = "android.security.enable_intent_matching_flags"

.field public static final blacklist FLAG_ENFORCE_INTENT_FILTER_MATCH:Ljava/lang/String; = "android.security.enforce_intent_filter_match"

.field public static final blacklist FLAG_EXTEND_ECM_TO_ALL_SETTINGS:Ljava/lang/String; = "android.security.extend_ecm_to_all_settings"

.field public static final blacklist FLAG_FRP_ENFORCEMENT:Ljava/lang/String; = "android.security.frp_enforcement"

.field public static final blacklist FLAG_FSVERITY_API:Ljava/lang/String; = "android.security.fsverity_api"

.field public static final blacklist FLAG_INTERNAL_LOG_EVENT_LISTENER:Ljava/lang/String; = "android.security.internal_log_event_listener"

.field public static final blacklist FLAG_KEYINFO_UNLOCKED_DEVICE_REQUIRED:Ljava/lang/String; = "android.security.keyinfo_unlocked_device_required"

.field public static final blacklist FLAG_KEYSTORE_GRANT_API:Ljava/lang/String; = "android.security.keystore_grant_api"

.field public static final blacklist FLAG_MGF1_DIGEST_SETTER_V2:Ljava/lang/String; = "android.security.mgf1_digest_setter_v2"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT:Ljava/lang/String; = "android.security.prevent_intent_redirect"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT_ABORT_OR_THROW_EXCEPTION:Ljava/lang/String; = "android.security.prevent_intent_redirect_abort_or_throw_exception"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT_COLLECT_NESTED_KEYS_ON_SERVER_IF_NOT_COLLECTED:Ljava/lang/String; = "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT_SHOW_TOAST:Ljava/lang/String; = "android.security.prevent_intent_redirect_show_toast"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT_SHOW_TOAST_IF_NESTED_KEYS_NOT_COLLECTED_R_W:Ljava/lang/String; = "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT_THROW_EXCEPTION_IF_NESTED_KEYS_NOT_COLLECTED:Ljava/lang/String; = "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

.field public static final blacklist FLAG_PROTECT_DEVICE_CONFIG_FLAGS:Ljava/lang/String; = "android.security.protect_device_config_flags"

.field public static final blacklist FLAG_SECURE_ARRAY_ZEROIZATION:Ljava/lang/String; = "android.security.secure_array_zeroization"

.field public static final blacklist FLAG_SECURE_LOCKDOWN:Ljava/lang/String; = "android.security.secure_lockdown"

.field public static final blacklist FLAG_SHOULD_TRUST_MANAGER_LISTEN_FOR_PRIMARY_AUTH:Ljava/lang/String; = "android.security.should_trust_manager_listen_for_primary_auth"

.field public static final blacklist FLAG_SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE_PERM_PRIV_FLAG:Ljava/lang/String; = "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

.field public static final blacklist FLAG_UNLOCKED_STORAGE_API:Ljava/lang/String; = "android.security.unlocked_storage_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 332
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aapmApi()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aapmApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist aapmFeatureDisableCellular2g()Z
    .registers 1

    .line 91
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aapmFeatureDisableCellular2g()Z

    move-result v0

    return v0
.end method

.method public static blacklist aapmFeatureDisableInstallUnknownSources()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aapmFeatureDisableInstallUnknownSources()Z

    move-result v0

    return v0
.end method

.method public static blacklist aapmFeatureMemoryTaggingExtension()Z
    .registers 1

    .line 105
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aapmFeatureMemoryTaggingExtension()Z

    move-result v0

    return v0
.end method

.method public static blacklist aapmFeatureUsbDataProtection()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aapmFeatureUsbDataProtection()Z

    move-result v0

    return v0
.end method

.method public static blacklist aflApi()Z
    .registers 1

    .line 119
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->aflApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist asmOptSystemIntoEnforcement()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->asmOptSystemIntoEnforcement()Z

    move-result v0

    return v0
.end method

.method public static blacklist asmReintroduceGracePeriod()Z
    .registers 1

    .line 133
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->asmReintroduceGracePeriod()Z

    move-result v0

    return v0
.end method

.method public static blacklist asmRestrictionsEnabled()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->asmRestrictionsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist asmToastsEnabled()Z
    .registers 1

    .line 147
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->asmToastsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist blockNullActionIntents()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->blockNullActionIntents()Z

    move-result v0

    return v0
.end method

.method public static blacklist certificateTransparencyConfiguration()Z
    .registers 1

    .line 161
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->certificateTransparencyConfiguration()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearStrongAuthOnAddingPrimaryCredential()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->clearStrongAuthOnAddingPrimaryCredential()Z

    move-result v0

    return v0
.end method

.method public static blacklist contentUriPermissionApis()Z
    .registers 1

    .line 175
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->contentUriPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableAdaptiveAuthCounterLock()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->disableAdaptiveAuthCounterLock()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIntentMatchingFlags()Z
    .registers 1

    .line 189
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->enableIntentMatchingFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceIntentFilterMatch()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->enforceIntentFilterMatch()Z

    move-result v0

    return v0
.end method

.method public static blacklist extendEcmToAllSettings()Z
    .registers 1

    .line 203
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->extendEcmToAllSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist frpEnforcement()Z
    .registers 1

    .line 210
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->frpEnforcement()Z

    move-result v0

    return v0
.end method

.method public static blacklist fsverityApi()Z
    .registers 1

    .line 217
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->fsverityApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist internalLogEventListener()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->internalLogEventListener()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 1

    .line 231
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->keyinfoUnlockedDeviceRequired()Z

    move-result v0

    return v0
.end method

.method public static blacklist keystoreGrantApi()Z
    .registers 1

    .line 238
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->keystoreGrantApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist mgf1DigestSetterV2()Z
    .registers 1

    .line 245
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->mgf1DigestSetterV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirect()Z
    .registers 1

    .line 252
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirect()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirectAbortOrThrowException()Z
    .registers 1

    .line 259
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirectAbortOrThrowException()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirectShowToast()Z
    .registers 1

    .line 273
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirectShowToast()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .registers 1

    .line 280
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .registers 1

    .line 287
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z

    move-result v0

    return v0
.end method

.method public static blacklist protectDeviceConfigFlags()Z
    .registers 1

    .line 294
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->protectDeviceConfigFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist secureArrayZeroization()Z
    .registers 1

    .line 301
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->secureArrayZeroization()Z

    move-result v0

    return v0
.end method

.method public static blacklist secureLockdown()Z
    .registers 1

    .line 308
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->secureLockdown()Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .registers 1

    .line 315
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->shouldTrustManagerListenForPrimaryAuth()Z

    move-result v0

    return v0
.end method

.method public static blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .registers 1

    .line 322
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->subscribeToKeyguardLockedStatePermPrivFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist unlockedStorageApi()Z
    .registers 1

    .line 329
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;->unlockedStorageApi()Z

    move-result v0

    return v0
.end method
