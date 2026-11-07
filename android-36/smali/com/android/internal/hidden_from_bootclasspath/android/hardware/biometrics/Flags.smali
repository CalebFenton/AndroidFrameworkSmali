.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_KEY_AGREEMENT_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.add_key_agreement_crypto_object"

.field public static final blacklist FLAG_CUSTOM_BIOMETRIC_PROMPT:Ljava/lang/String; = "android.hardware.biometrics.custom_biometric_prompt"

.field public static final blacklist FLAG_EFFECTIVE_USER_BP:Ljava/lang/String; = "android.hardware.biometrics.effective_user_bp"

.field public static final blacklist FLAG_GET_OP_ID_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.get_op_id_crypto_object"

.field public static final blacklist FLAG_IDENTITY_CHECK_API:Ljava/lang/String; = "android.hardware.biometrics.identity_check_api"

.field public static final blacklist FLAG_MANDATORY_BIOMETRICS:Ljava/lang/String; = "android.hardware.biometrics.mandatory_biometrics"

.field public static final blacklist FLAG_PRIVATE_SPACE_BP:Ljava/lang/String; = "android.hardware.biometrics.private_space_bp"

.field public static final blacklist FLAG_SCREEN_OFF_UNLOCK_UDFPS:Ljava/lang/String; = "android.hardware.biometrics.screen_off_unlock_udfps"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addKeyAgreementCryptoObject()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->addKeyAgreementCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist customBiometricPrompt()Z
    .registers 1

    .line 35
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->customBiometricPrompt()Z

    move-result v0

    return v0
.end method

.method public static blacklist effectiveUserBp()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->effectiveUserBp()Z

    move-result v0

    return v0
.end method

.method public static blacklist getOpIdCryptoObject()Z
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->getOpIdCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist identityCheckApi()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->identityCheckApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist mandatoryBiometrics()Z
    .registers 1

    .line 63
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->mandatoryBiometrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist privateSpaceBp()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->privateSpaceBp()Z

    move-result v0

    return v0
.end method

.method public static blacklist screenOffUnlockUdfps()Z
    .registers 1

    .line 77
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->screenOffUnlockUdfps()Z

    move-result v0

    return v0
.end method
