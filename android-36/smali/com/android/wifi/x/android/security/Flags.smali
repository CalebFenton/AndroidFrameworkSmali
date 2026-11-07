.class public final Lcom/android/wifi/x/android/security/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags; = null

.field public static final blacklist FLAG_AAPM_API:Ljava/lang/String; = "android.security.aapm_api"

.field public static final blacklist FLAG_AFL_API:Ljava/lang/String; = "android.security.afl_api"

.field public static final blacklist FLAG_ASM_RESTRICTIONS_ENABLED:Ljava/lang/String; = "android.security.asm_restrictions_enabled"

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_CONFIGURATION:Ljava/lang/String; = "android.security.certificate_transparency_configuration"

.field public static final blacklist FLAG_CONTENT_URI_PERMISSION_APIS:Ljava/lang/String; = "android.security.content_uri_permission_apis"

.field public static final blacklist FLAG_ENABLE_INTENT_MATCHING_FLAGS:Ljava/lang/String; = "android.security.enable_intent_matching_flags"

.field public static final blacklist FLAG_ENFORCE_INTENT_FILTER_MATCH:Ljava/lang/String; = "android.security.enforce_intent_filter_match"

.field public static final blacklist FLAG_FRP_ENFORCEMENT:Ljava/lang/String; = "android.security.frp_enforcement"

.field public static final blacklist FLAG_FSVERITY_API:Ljava/lang/String; = "android.security.fsverity_api"

.field public static final blacklist FLAG_KEYINFO_UNLOCKED_DEVICE_REQUIRED:Ljava/lang/String; = "android.security.keyinfo_unlocked_device_required"

.field public static final blacklist FLAG_KEYSTORE_GRANT_API:Ljava/lang/String; = "android.security.keystore_grant_api"

.field public static final blacklist FLAG_MGF1_DIGEST_SETTER_V2:Ljava/lang/String; = "android.security.mgf1_digest_setter_v2"

.field public static final blacklist FLAG_PREVENT_INTENT_REDIRECT:Ljava/lang/String; = "android.security.prevent_intent_redirect"

.field public static final blacklist FLAG_SECURE_LOCKDOWN:Ljava/lang/String; = "android.security.secure_lockdown"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aapmApi()Z
    .registers 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 37
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->aapmApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist aflApi()Z
    .registers 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->aflApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist asmRestrictionsEnabled()Z
    .registers 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->asmRestrictionsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist certificateTransparencyConfiguration()Z
    .registers 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->certificateTransparencyConfiguration()Z

    move-result v0

    return v0
.end method

.method public static blacklist contentUriPermissionApis()Z
    .registers 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->contentUriPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIntentMatchingFlags()Z
    .registers 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->enableIntentMatchingFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceIntentFilterMatch()Z
    .registers 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->enforceIntentFilterMatch()Z

    move-result v0

    return v0
.end method

.method public static blacklist frpEnforcement()Z
    .registers 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->frpEnforcement()Z

    move-result v0

    return v0
.end method

.method public static blacklist fsverityApi()Z
    .registers 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->fsverityApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->keyinfoUnlockedDeviceRequired()Z

    move-result v0

    return v0
.end method

.method public static blacklist keystoreGrantApi()Z
    .registers 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->keystoreGrantApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist mgf1DigestSetterV2()Z
    .registers 2

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->mgf1DigestSetterV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventIntentRedirect()Z
    .registers 2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_8
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->preventIntentRedirect()Z

    move-result v0

    return v0
.end method

.method public static blacklist secureLockdown()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/wifi/x/android/security/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/security/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/security/FeatureFlags;->secureLockdown()Z

    move-result v0

    return v0
.end method
