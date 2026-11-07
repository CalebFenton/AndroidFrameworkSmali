.class public final Landroid/app/sdksandbox/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags; = null

.field public static final blacklist FLAG_FIRST_AND_LAST_SDK_SANDBOX_UID_PUBLIC:Ljava/lang/String; = "android.app.sdksandbox.flags.first_and_last_sdk_sandbox_uid_public"

.field public static final blacklist FLAG_GET_EFFECTIVE_TARGET_SDK_VERSION_API:Ljava/lang/String; = "android.app.sdksandbox.flags.get_effective_target_sdk_version_api"

.field public static final blacklist FLAG_SANDBOX_ACTIVITY_SDK_BASED_CONTEXT:Ljava/lang/String; = "android.app.sdksandbox.flags.sandbox_activity_sdk_based_context"

.field public static final blacklist FLAG_SANDBOX_CLIENT_IMPORTANCE_LISTENER:Ljava/lang/String; = "android.app.sdksandbox.flags.sandbox_client_importance_listener"

.field public static final blacklist FLAG_SDK_SANDBOX_DEX_VERIFIER:Ljava/lang/String; = "android.app.sdksandbox.flags.sdk_sandbox_dex_verifier"

.field public static final blacklist FLAG_SDK_SANDBOX_INSTRUMENTATION_INFO:Ljava/lang/String; = "android.app.sdksandbox.flags.sdk_sandbox_instrumentation_info"

.field public static final blacklist FLAG_SDK_SANDBOX_UID_TO_APP_UID_API:Ljava/lang/String; = "android.app.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

.field public static final blacklist FLAG_SDK_SANDBOX_VERIFY_SDK_DEX_FILES:Ljava/lang/String; = "android.app.sdksandbox.flags.sdk_sandbox_verify_sdk_dex_files"

.field public static final blacklist FLAG_SELINUX_INPUT_SELECTOR:Ljava/lang/String; = "android.app.sdksandbox.flags.selinux_input_selector"

.field public static final blacklist FLAG_SELINUX_SDK_SANDBOX_AUDIT:Ljava/lang/String; = "android.app.sdksandbox.flags.selinux_sdk_sandbox_audit"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/app/sdksandbox/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist firstAndLastSdkSandboxUidPublic()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->firstAndLastSdkSandboxUidPublic()Z

    move-result v0

    return v0
.end method

.method public static blacklist getEffectiveTargetSdkVersionApi()Z
    .registers 1

    .line 39
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->getEffectiveTargetSdkVersionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist sandboxActivitySdkBasedContext()Z
    .registers 1

    .line 46
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sandboxActivitySdkBasedContext()Z

    move-result v0

    return v0
.end method

.method public static blacklist sandboxClientImportanceListener()Z
    .registers 1

    .line 53
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sandboxClientImportanceListener()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkSandboxDexVerifier()Z
    .registers 1

    .line 60
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sdkSandboxDexVerifier()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkSandboxInstrumentationInfo()Z
    .registers 1

    .line 67
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sdkSandboxInstrumentationInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkSandboxUidToAppUidApi()Z
    .registers 1

    .line 74
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sdkSandboxUidToAppUidApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkSandboxVerifySdkDexFiles()Z
    .registers 1

    .line 81
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->sdkSandboxVerifySdkDexFiles()Z

    move-result v0

    return v0
.end method

.method public static blacklist selinuxInputSelector()Z
    .registers 1

    .line 88
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->selinuxInputSelector()Z

    move-result v0

    return v0
.end method

.method public static blacklist selinuxSdkSandboxAudit()Z
    .registers 1

    .line 95
    sget-object v0, Landroid/app/sdksandbox/flags/Flags;->FEATURE_FLAGS:Landroid/app/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/sdksandbox/flags/FeatureFlags;->selinuxSdkSandboxAudit()Z

    move-result v0

    return v0
.end method
