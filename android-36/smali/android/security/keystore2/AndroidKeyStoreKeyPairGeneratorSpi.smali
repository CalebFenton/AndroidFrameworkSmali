.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$ED25519;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final blacklist ALGORITHM_ED25519:I = 0x4b4

.field private static final blacklist ALGORITHM_XDH:I = 0x4b3

.field private static final blacklist CURVE_ED_25519:Ljava/lang/String;

.field private static final blacklist CURVE_X_25519:Ljava/lang/String;

.field private static final blacklist EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final blacklist RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final blacklist RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final blacklist RSA_MIN_KEY_SIZE:I = 0x200

.field private static final blacklist SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyPairGeneratorSpi"


# instance fields
.field private blacklist mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private blacklist mEcCurveName:Ljava/lang/String;

.field private blacklist mEntryAlias:Ljava/lang/String;

.field private blacklist mEntryNamespace:I

.field private blacklist mJcaKeyAlgorithm:Ljava/lang/String;

.field private blacklist mKeySizeBits:I

.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mKeymasterAlgorithm:I

.field private blacklist mKeymasterBlockModes:[I

.field private blacklist mKeymasterDigests:[I

.field private blacklist mKeymasterEncryptionPaddings:[I

.field private blacklist mKeymasterMgf1Digests:[I

.field private blacklist mKeymasterPurposes:[I

.field private blacklist mKeymasterSignaturePaddings:[I

.field private final blacklist mOriginalKeymasterAlgorithm:I

.field private blacklist mRSAPublicExponent:Ljava/lang/Long;

.field private blacklist mRng:Ljava/security/SecureRandom;

.field private blacklist mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uq-ej-_uP9op_zzRJcYZYnWQBFU(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    .line 155
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    .line 156
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    .line 161
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp224r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp256r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "prime256v1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp384r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-521"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp521r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 184
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    .line 185
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "keymasterAlgorithm"    # I

    .line 213
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 214
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 215
    return-void
.end method

.method private blacklist addAlgorithmSpecificParameters(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 995
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v0, :pswitch_data_34

    .line 1004
    :pswitch_5
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :pswitch_20
    goto :goto_32

    .line 997
    :pswitch_21
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 998
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 997
    const v2, 0x500000c8

    invoke-static {v2, v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    nop

    .line 1006
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_21
        :pswitch_5
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist addAttestationParameters(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 740
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const-string v0, "Unable to retrieve MEID"

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v1

    .line 742
    .local v1, "challenge":[B
    if-eqz v1, :cond_1b1

    .line 743
    const v2, -0x6ffffd3c

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 749
    sget-object v2, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 750
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_29

    :cond_27
    sget-object v2, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    .line 751
    .local v2, "platformReportedBrand":Ljava/lang/String;
    :goto_29
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 753
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 751
    const v4, -0x6ffffd3a

    invoke-static {v4, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v3, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 757
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_46

    :cond_44
    sget-object v3, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    .line 758
    .local v3, "platformReportedDevice":Ljava/lang/String;
    :goto_46
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 760
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 758
    const v5, -0x6ffffd39

    invoke-static {v5, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v4, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 764
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_63

    :cond_61
    sget-object v4, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    .line 765
    .local v4, "platformReportedProduct":Ljava/lang/String;
    :goto_63
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 765
    const v6, -0x6ffffd38

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v5, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 771
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_80

    :cond_7e
    sget-object v5, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    .line 772
    .local v5, "platformReportedManufacturer":Ljava/lang/String;
    :goto_80
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 774
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 772
    const v7, -0x6ffffd34

    invoke-static {v7, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v6, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 778
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_9d

    :cond_9b
    sget-object v6, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    .line 779
    .local v6, "platformReportedModel":Ljava/lang/String;
    :goto_9d
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 781
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 779
    const v8, -0x6ffffd33

    invoke-static {v8, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v2    # "platformReportedBrand":Ljava/lang/String;
    .end local v3    # "platformReportedDevice":Ljava/lang/String;
    .end local v4    # "platformReportedProduct":Ljava/lang/String;
    .end local v5    # "platformReportedManufacturer":Ljava/lang/String;
    .end local v6    # "platformReportedModel":Ljava/lang/String;
    :cond_ad
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v2

    .line 786
    .local v2, "idTypes":[I
    array-length v3, v2

    if-nez v3, :cond_b7

    .line 787
    return-void

    .line 789
    :cond_b7
    new-instance v3, Landroid/util/ArraySet;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 790
    .local v3, "idTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_c0
    if-ge v6, v4, :cond_ce

    aget v7, v2, v6

    .line 791
    .local v7, "idType":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v7    # "idType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_c0

    .line 793
    :cond_ce
    const/4 v4, 0x0

    .line 794
    .local v4, "telephonyService":Landroid/telephony/TelephonyManager;
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e5

    .line 795
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 797
    :cond_e5
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v6

    .line 798
    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 799
    if-eqz v4, :cond_1a9

    .line 803
    :cond_f5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 804
    .local v7, "idType":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_1b2

    .line 852
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown device ID type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :pswitch_125
    const v8, 0x700002d0

    invoke-static {v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    goto/16 :goto_1a7

    .line 832
    :pswitch_131
    :try_start_131
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v8
    :try_end_135
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_131 .. :try_end_135} :catch_136

    .line 836
    .local v8, "meid":Ljava/lang/String;
    goto :goto_13e

    .line 833
    .end local v8    # "meid":Ljava/lang/String;
    :catch_136
    move-exception v8

    .line 834
    .local v8, "e":Ljava/lang/UnsupportedOperationException;
    const-string v9, "AndroidKeyStoreKeyPairGeneratorSpi"

    invoke-static {v9, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    const/4 v9, 0x0

    move-object v8, v9

    .line 837
    .local v8, "meid":Ljava/lang/String;
    :goto_13e
    if-eqz v8, :cond_151

    .line 840
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 842
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 840
    const v10, -0x6ffffd35

    invoke-static {v10, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    goto :goto_1a7

    .line 838
    :cond_151
    new-instance v5, Landroid/security/keystore/DeviceIdAttestationException;

    invoke-direct {v5, v0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 812
    .end local v8    # "meid":Ljava/lang/String;
    :pswitch_157
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, "imei":Ljava/lang/String;
    if-eqz v8, :cond_189

    .line 816
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 818
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 816
    const v10, -0x6ffffd36

    invoke-static {v10, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v9

    .line 821
    .local v9, "secondImei":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a7

    .line 822
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 824
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 822
    const v11, -0x6ffffd2d

    invoke-static {v11, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    .line 814
    .end local v9    # "secondImei":Ljava/lang/String;
    :cond_189
    new-instance v0, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v5, "Unable to retrieve IMEI"

    invoke-direct {v0, v5}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    .end local v8    # "imei":Ljava/lang/String;
    :pswitch_191
    nop

    .line 808
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 806
    const v9, -0x6ffffd37

    invoke-static {v9, v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    nop

    .line 854
    .end local v7    # "idType":Ljava/lang/Integer;
    :cond_1a7
    :goto_1a7
    goto/16 :goto_f9

    .line 800
    :cond_1a9
    new-instance v0, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v5, "Unable to access telephony service"

    invoke-direct {v0, v5}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    .end local v2    # "idTypes":[I
    .end local v3    # "idTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_1b1
    return-void

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_191
        :pswitch_157
        :pswitch_131
        :pswitch_125
    .end packed-switch
.end method

.method private blacklist buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;
    .registers 6
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 435
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 436
    .local v0, "attestKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 437
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 439
    :try_start_14
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    .line 440
    .local v1, "attestKey":Landroid/system/keystore2/KeyEntryResponse;
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 441
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V

    .line 442
    invoke-direct {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    :try_end_27
    .catch Landroid/security/KeyStoreException; {:try_start_14 .. :try_end_27} :catch_29

    .line 445
    .end local v1    # "attestKey":Landroid/system/keystore2/KeyEntryResponse;
    nop

    .line 446
    return-object v0

    .line 443
    :catch_29
    move-exception v1

    .line 444
    .local v1, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Invalid attestKeyAlias"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 448
    .end local v0    # "attestKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;
    .registers 12
    .param p1, "legacySpec"    # Landroid/security/KeyPairGeneratorSpec;
    .param p2, "keymasterAlgorithm"    # I

    .line 507
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_ba

    .line 553
    :pswitch_4
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_1f
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 510
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 515
    .local v1, "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 522
    goto :goto_7a

    .line 524
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :pswitch_3e
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 525
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 531
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "MD5"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 541
    const-string v2, "PKCS1Padding"

    const-string v3, "OAEPPadding"

    const-string v4, "NoPadding"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 545
    const-string v2, "PKCS1"

    const-string v3, "PSS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 550
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 551
    nop

    .line 557
    :goto_7a
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_88

    .line 558
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 560
    :cond_88
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 561
    nop

    .line 562
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 561
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 564
    :cond_96
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 565
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 566
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 567
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 568
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 570
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    return-object v0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 4
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 453
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 457
    return-void

    .line 454
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "AttestKey specified but no attestation challenge provided"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 4
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 390
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_18

    .line 391
    :cond_10
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PURPOSE_ATTEST_KEY may not be specified with any other purposes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V
    .registers 5
    .param p1, "keyAuths"    # [Landroid/system/keystore2/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;-><init>()V

    .line 464
    .local v0, "isAttestKeyPurpose":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/system/keystore2/Authorization;>;"
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 468
    return-void

    .line 465
    :cond_10
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid attestKey, does not have PURPOSE_ATTEST_KEY"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 6
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .param p2, "key"    # Landroid/system/keystore2/KeyEntryResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 472
    iget-object v0, p2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget v0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 473
    .local v0, "attestKeyInStrongBox":Z
    :goto_a
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v1

    if-eq v1, v0, :cond_22

    .line 474
    if-eqz v0, :cond_1a

    .line 475
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid security level: Cannot sign non-StrongBox key with StrongBox attestKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1a
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid security level: Cannot sign StrongBox key with non-StrongBox attestKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_22
    return-void
.end method

.method private blacklist checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 4
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 402
    return-void

    .line 405
    :cond_9
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 406
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1c

    goto :goto_25

    .line 407
    :cond_1c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "x25519 may only be used for key agreement."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 410
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->hasOnlyAllowedPurposeForEd25519(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_42

    .line 411
    :cond_3a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ed25519 may not be used for key agreement."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_42
    :goto_42
    return-void
.end method

.method private static blacklist checkValidKeySize(IIZLjava/lang/String;)V
    .registers 7
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .param p2, "isStrongBoxBacked"    # Z
    .param p3, "mEcCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1025
    packed-switch p0, :pswitch_data_a8

    .line 1048
    :pswitch_3
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :pswitch_1c
    if-eqz p2, :cond_42

    const/16 v0, 0x100

    if-ne p1, v0, :cond_23

    goto :goto_42

    .line 1028
    :cond_23
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported StrongBox EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: 256"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_42
    :goto_42
    if-eqz p2, :cond_64

    invoke-static {p3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_64

    .line 1033
    :cond_4b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported StrongBox EC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_64
    :goto_64
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_9e

    .line 1037
    :cond_71
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :pswitch_96
    const/16 v0, 0x200

    if-lt p1, v0, :cond_9f

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_9f

    .line 1050
    :goto_9e
    return-void

    .line 1043
    :cond_9f
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_96
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist constructKeyGenerationArguments()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, 0x30000003

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const v1, 0x10000002

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    .line 868
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 869
    invoke-static {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->keySizeAndNameToEcCurve(ILjava/lang/String;)I

    move-result v1

    .line 868
    const v2, 0x1000000a

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_34
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 878
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 883
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 911
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 916
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 922
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 924
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 925
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 926
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    .line 925
    const v2, 0x60000190

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_83
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_9b

    .line 930
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 932
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    .line 930
    const v2, 0x60000191

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_9b
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 936
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 938
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    .line 936
    const v2, 0x60000192

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_b3
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 942
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 944
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    .line 942
    const v2, 0x600003f1

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_cb
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 948
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 950
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 948
    const v2, 0x600003f0

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_e3
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_fb

    .line 954
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 956
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    .line 954
    const v2, -0x7ffffc12

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBignum(ILjava/math/BigInteger;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_fb
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_117

    .line 960
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 962
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    .line 960
    const v2, -0x6ffffc11

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_117
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_130

    .line 967
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 969
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    .line 967
    const v2, 0x30000195

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_130
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Ljava/util/List;)V

    .line 975
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 976
    const v1, 0x700000ca

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_145
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAttestationParameters(Ljava/util/List;)V

    .line 981
    return-object v0
.end method

.method private static blacklist getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1189
    .local v0, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1a

    aget v5, v1, v4

    .line 1190
    .local v5, "keymasterDigest":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v5    # "keymasterDigest":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1192
    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1194
    .local v1, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    array-length v4, v2

    :goto_24
    if-ge v3, v4, :cond_32

    aget v5, v2, v3

    .line 1195
    .restart local v5    # "keymasterDigest":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1194
    .end local v5    # "keymasterDigest":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1197
    :cond_32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1198
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1199
    return-object v2
.end method

.method private static blacklist getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .registers 13
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 1069
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1071
    return-object v1

    .line 1073
    :cond_a
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1075
    return-object v1

    .line 1077
    :cond_11
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1079
    return-object v1

    .line 1081
    :cond_18
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_f2

    .line 1181
    :pswitch_1c
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :pswitch_35
    nop

    .line 1084
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v2, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1087
    .local v2, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 1088
    .local v3, "bestKeymasterDigest":I
    const/4 v4, -0x1

    .line 1089
    .local v4, "bestDigestOutputSizeBits":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1090
    .local v6, "keymasterDigest":I
    invoke-static {v6}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v7

    .line 1091
    .local v7, "outputSizeBits":I
    if-ne v7, p1, :cond_61

    .line 1093
    move v3, v6

    .line 1094
    move v4, v7

    .line 1095
    goto :goto_74

    .line 1098
    :cond_61
    if-ne v3, v0, :cond_66

    .line 1100
    move v3, v6

    .line 1101
    move v4, v7

    goto :goto_73

    .line 1105
    :cond_66
    if-ge v4, p1, :cond_6d

    .line 1108
    if-le v7, v4, :cond_73

    .line 1109
    move v3, v6

    .line 1110
    move v4, v7

    goto :goto_73

    .line 1115
    :cond_6d
    if-ge v7, v4, :cond_73

    if-lt v7, p1, :cond_73

    .line 1117
    move v3, v6

    .line 1118
    move v4, v7

    .line 1122
    .end local v6    # "keymasterDigest":I
    .end local v7    # "outputSizeBits":I
    :cond_73
    :goto_73
    goto :goto_48

    .line 1123
    :cond_74
    :goto_74
    if-ne v3, v0, :cond_77

    .line 1124
    return-object v1

    .line 1126
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WithECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1134
    .end local v2    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "bestKeymasterDigest":I
    .end local v4    # "bestDigestOutputSizeBits":I
    :pswitch_8f
    nop

    .line 1137
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    .line 1135
    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    .line 1139
    .local v2, "pkcs1SignaturePaddingSupported":Z
    if-nez v2, :cond_a0

    .line 1141
    return-object v1

    .line 1144
    :cond_a0
    nop

    .line 1145
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    .line 1146
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v4

    .line 1144
    invoke-static {v3, v4}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1153
    .local v3, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v4, p1, -0xf0

    .line 1154
    .local v4, "maxDigestOutputSizeBits":I
    const/4 v5, -0x1

    .line 1155
    .local v5, "bestKeymasterDigest":I
    const/4 v6, -0x1

    .line 1156
    .local v6, "bestDigestOutputSizeBits":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1157
    .local v8, "keymasterDigest":I
    invoke-static {v8}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v9

    .line 1158
    .local v9, "outputSizeBits":I
    if-le v9, v4, :cond_cc

    .line 1160
    goto :goto_b5

    .line 1162
    :cond_cc
    if-ne v5, v0, :cond_d1

    .line 1164
    move v5, v8

    .line 1165
    move v6, v9

    goto :goto_d5

    .line 1168
    :cond_d1
    if-le v9, v6, :cond_d5

    .line 1169
    move v5, v8

    .line 1170
    move v6, v9

    .line 1173
    .end local v8    # "keymasterDigest":I
    .end local v9    # "outputSizeBits":I
    :cond_d5
    :goto_d5
    goto :goto_b5

    .line 1174
    :cond_d6
    if-ne v5, v0, :cond_d9

    .line 1175
    return-object v1

    .line 1177
    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WithRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_1c
        :pswitch_35
    .end packed-switch
.end method

.method private static blacklist getDefaultKeySize(I)I
    .registers 4
    .param p0, "keymasterAlgorithm"    # I

    .line 1009
    packed-switch p0, :pswitch_data_22

    .line 1015
    :pswitch_3
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :pswitch_1c
    const/16 v0, 0x100

    return v0

    .line 1013
    :pswitch_1f
    const/16 v0, 0x800

    return v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I
    .registers 7
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "legacySpec"    # Landroid/security/KeyPairGeneratorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 489
    invoke-virtual {p2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "specKeyAlgorithm":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 493
    nop

    .line 494
    :try_start_7
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_b} :catch_d

    move p1, v1

    .line 499
    goto :goto_16

    .line 496
    :catch_d
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Invalid key type in parameters"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 501
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    :goto_16
    return p1
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .registers 3

    .line 986
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 987
    :catch_5
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist hasOnlyAllowedPurposeForEd25519(I)Z
    .registers 6
    .param p0, "purpose"    # I

    .line 425
    const/16 v0, 0x8c

    .line 427
    .local v0, "allowedPurposes":I
    and-int/lit16 v1, p0, 0x8c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 428
    .local v1, "hasAllowedPurpose":Z
    :goto_b
    and-int/lit16 v4, p0, -0x8d

    if-eqz v4, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v3

    .line 429
    .local v4, "hasDisallowedPurpose":Z
    :goto_12
    if-eqz v1, :cond_17

    if-nez v4, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2
.end method

.method private blacklist initAlgorithmSpecificParameters()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 594
    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const-string v2, " vs "

    const-string v3, ": "

    const-string v4, " and "

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_1c4

    .line 661
    :pswitch_12
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :pswitch_2d
    instance-of v1, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_ef

    .line 630
    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 631
    .local v1, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 632
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v7, 0x4b3

    if-ne v6, v7, :cond_54

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 633
    const-string/jumbo v7, "x25519"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_54

    .line 634
    :cond_4c
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "XDH algorithm only supports x25519 curve."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_54
    :goto_54
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v7, 0x4b4

    if-ne v6, v7, :cond_6d

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 637
    const-string v7, "ed25519"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    goto :goto_6d

    .line 638
    :cond_65
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Ed25519 algorithm only supports ed25519 curve."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_6d
    :goto_6d
    sget-object v6, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 642
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 643
    .local v6, "ecSpecKeySizeBits":Ljava/lang/Integer;
    if-eqz v6, :cond_c8

    .line 648
    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v7, v5, :cond_8a

    .line 649
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_f1

    .line 650
    :cond_8a
    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v5, v7, :cond_93

    goto :goto_f1

    .line 651
    :cond_93
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EC key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 644
    :cond_c8
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported EC curve name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    .end local v1    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v6    # "ecSpecKeySizeBits":Ljava/lang/Integer;
    :cond_ef
    if-nez v0, :cond_f3

    :goto_f1
    goto/16 :goto_17d

    .line 656
    :cond_f3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "EC may only use ECGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :pswitch_fb
    const/4 v1, 0x0

    .line 597
    .local v1, "publicExponent":Ljava/math/BigInteger;
    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v6, :cond_154

    .line 598
    move-object v6, v0

    check-cast v6, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 599
    .local v6, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v7, v5, :cond_10e

    .line 600
    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_116

    .line 601
    :cond_10e
    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v8

    if-ne v7, v8, :cond_11b

    .line 606
    :goto_116
    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .end local v6    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    goto :goto_156

    .line 602
    .restart local v6    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_11b
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 604
    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 607
    .end local v6    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_154
    if-nez v0, :cond_1bc

    :goto_156
    nop

    .line 611
    if-nez v1, :cond_15b

    .line 612
    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 614
    :cond_15b
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1a3

    .line 618
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eq v2, v5, :cond_17e

    sget-object v2, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 619
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_17e

    .line 625
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 626
    nop

    .line 663
    .end local v1    # "publicExponent":Ljava/math/BigInteger;
    :goto_17d
    return-void

    .line 620
    .restart local v1    # "publicExponent":Ljava/math/BigInteger;
    :cond_17e
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported RSA public exponent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Maximum supported value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_1a3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA public exponent must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_1bc
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_12
        :pswitch_2d
    .end packed-switch
.end method

.method private static blacklist isCurve25519(Ljava/lang/String;)Z
    .registers 3
    .param p0, "ecCurveName"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 418
    return v0

    .line 420
    :cond_4
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 420
    :cond_15
    return v0
.end method

.method private blacklist isPropertyEmptyOrUnknown(Ljava/lang/String;)Z
    .registers 3
    .param p1, "property"    # Ljava/lang/String;

    .line 1203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method private static blacklist keySizeAndNameToEcCurve(ILjava/lang/String;)I
    .registers 5
    .param p0, "keySizeBits"    # I
    .param p1, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 219
    sparse-switch p0, :sswitch_data_2c

    .line 232
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC curve keysize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :sswitch_1c
    const/4 v0, 0x3

    return v0

    .line 228
    :sswitch_1e
    const/4 v0, 0x2

    return v0

    .line 223
    :sswitch_20
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 224
    const/4 v0, 0x4

    return v0

    .line 226
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 221
    :sswitch_2a
    const/4 v0, 0x0

    return v0

    :sswitch_data_2c
    .sparse-switch
        0xe0 -> :sswitch_2a
        0x100 -> :sswitch_20
        0x180 -> :sswitch_1e
        0x209 -> :sswitch_1c
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$checkAttestKeyPurpose$0(Landroid/system/keystore2/Authorization;)Z
    .registers 3
    .param p0, "x"    # Landroid/system/keystore2/Authorization;

    .line 461
    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, 0x20000001

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 462
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 461
    :goto_17
    return v0
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 874
    nop

    .line 875
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 874
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$2(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "blockMode"    # Ljava/lang/Integer;

    .line 879
    nop

    .line 880
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 879
    const v1, 0x20000004

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$3(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "mgf1Digest"    # Ljava/lang/Integer;

    .line 889
    nop

    .line 890
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 889
    const v1, 0x200000cb

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$4(ILjava/util/List;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "defaultMgf1Digest"    # I
    .param p1, "params"    # Ljava/util/List;
    .param p2, "digest"    # Ljava/lang/Integer;

    .line 903
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_15

    .line 904
    nop

    .line 905
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 904
    const v1, 0x200000cb

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_15
    return-void
.end method

.method private synthetic blacklist lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "params"    # Ljava/util/List;
    .param p2, "padding"    # Ljava/lang/Integer;

    .line 884
    nop

    .line 885
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 884
    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 888
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 899
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getMgf1DigestSetterFlag()Z

    move-result v0

    if-nez v0, :cond_36

    .line 900
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 902
    .local v0, "defaultMgf1Digest":I
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 910
    .end local v0    # "defaultMgf1Digest":I
    :cond_36
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$6(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "padding"    # Ljava/lang/Integer;

    .line 912
    nop

    .line 913
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 912
    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$7(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "digest"    # Ljava/lang/Integer;

    .line 917
    nop

    .line 918
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 917
    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method private blacklist resetAll()V
    .registers 3

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 575
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    .line 576
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 577
    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 578
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    .line 579
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    .line 580
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 581
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 582
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    .line 583
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 584
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 585
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 586
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 587
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 588
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 589
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 590
    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 15

    .line 667
    const-string v1, "Failed to delete newly generated key after generation failed unexpectedly."

    const-string v2, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v0, "generateKeyPair"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_d2

    .line 673
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1d

    .line 674
    move v0, v3

    goto :goto_1e

    .line 675
    :cond_1d
    move v0, v4

    :goto_1e
    move v5, v0

    .line 678
    .local v5, "securityLevel":I
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_29

    .line 680
    goto :goto_2a

    .line 681
    :cond_29
    move v4, v6

    :goto_2a
    move v11, v4

    .line 683
    .local v11, "flags":I
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v13, 0x7

    add-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x8

    .line 684
    invoke-static {v0, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v12

    .line 687
    .local v12, "additionalEntropy":[B
    new-instance v8, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v8}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 688
    .local v8, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v0, v8, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 689
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_47

    .line 690
    move v3, v6

    goto :goto_48

    .line 691
    :cond_47
    nop

    :goto_48
    iput v3, v8, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 692
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    int-to-long v3, v0

    iput-wide v3, v8, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 693
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 695
    const/4 v3, 0x0

    .line 697
    .local v3, "success":Z
    :try_start_53
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v5}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v7

    .line 699
    .local v7, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    iget-object v9, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 700
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Ljava/util/Collection;

    move-result-object v10

    .line 699
    invoke-virtual/range {v7 .. v12}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    move-object v4, v0

    .line 702
    .local v4, "metadata":Landroid/system/keystore2/KeyMetadata;
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 703
    invoke-static {v8, v4, v7, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object v0

    move-object v6, v0

    .line 705
    .local v6, "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    const/4 v3, 0x1

    .line 706
    new-instance v9, Ljava/security/KeyPair;

    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_75
    .catch Landroid/security/KeyStoreException; {:try_start_53 .. :try_end_75} :catch_95
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_53 .. :try_end_75} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_75} :catch_8c
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_53 .. :try_end_75} :catch_8c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_53 .. :try_end_75} :catch_8c
    .catchall {:try_start_53 .. :try_end_75} :catchall_88

    .line 723
    if-nez v3, :cond_87

    .line 725
    :try_start_77
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v8}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_7c
    .catch Landroid/security/KeyStoreException; {:try_start_77 .. :try_end_7c} :catch_7d

    .line 731
    goto :goto_87

    .line 726
    :catch_7d
    move-exception v0

    .line 727
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v10

    if-eq v10, v13, :cond_87

    .line 728
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_87
    :goto_87
    return-object v9

    .line 723
    .end local v4    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local v6    # "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .end local v7    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :catchall_88
    move-exception v0

    move v4, v3

    move-object v3, v0

    goto :goto_bf

    .line 718
    :catch_8c
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8d
    new-instance v4, Ljava/security/ProviderException;

    const-string v6, "Failed to construct key object from newly generated key pair."

    invoke-direct {v4, v6, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "success":Z
    .end local v5    # "securityLevel":I
    .end local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v11    # "flags":I
    .end local v12    # "additionalEntropy":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    throw v4

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "success":Z
    .restart local v5    # "securityLevel":I
    .restart local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v11    # "flags":I
    .restart local v12    # "additionalEntropy":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    :catch_95
    move-exception v0

    .line 708
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v4

    packed-switch v4, :pswitch_data_da

    .line 712
    new-instance v4, Ljava/security/ProviderException;

    goto :goto_a8

    .line 710
    :pswitch_a0
    new-instance v4, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v6, "Failed to generated key pair."

    invoke-direct {v4, v6, v0}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "success":Z
    .end local v5    # "securityLevel":I
    .end local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v11    # "flags":I
    .end local v12    # "additionalEntropy":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    throw v4

    .line 712
    .restart local v3    # "success":Z
    .restart local v5    # "securityLevel":I
    .restart local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v11    # "flags":I
    .restart local v12    # "additionalEntropy":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    :goto_a8
    const-string v6, "Failed to generate key pair."

    invoke-direct {v4, v6, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    .local v4, "p":Ljava/security/ProviderException;
    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_bd

    .line 714
    new-instance v6, Landroid/security/keystore/SecureKeyImportUnavailableException;

    invoke-direct {v6, v4}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "success":Z
    .end local v5    # "securityLevel":I
    .end local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v11    # "flags":I
    .end local v12    # "additionalEntropy":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    throw v6

    .line 716
    .restart local v3    # "success":Z
    .restart local v5    # "securityLevel":I
    .restart local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v11    # "flags":I
    .restart local v12    # "additionalEntropy":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    :cond_bd
    nop

    .end local v3    # "success":Z
    .end local v5    # "securityLevel":I
    .end local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v11    # "flags":I
    .end local v12    # "additionalEntropy":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    throw v4
    :try_end_bf
    .catchall {:try_start_8d .. :try_end_bf} :catchall_88

    .line 723
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .local v4, "success":Z
    .restart local v5    # "securityLevel":I
    .restart local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v11    # "flags":I
    .restart local v12    # "additionalEntropy":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    :goto_bf
    if-nez v4, :cond_d1

    .line 725
    :try_start_c1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v8}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_c6
    .catch Landroid/security/KeyStoreException; {:try_start_c1 .. :try_end_c6} :catch_c7

    .line 731
    goto :goto_d1

    .line 726
    :catch_c7
    move-exception v0

    .line 727
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v6

    if-eq v6, v13, :cond_d1

    .line 728
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_d1
    :goto_d1
    throw v3

    .line 669
    .end local v4    # "success":Z
    .end local v5    # "securityLevel":I
    .end local v8    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v11    # "flags":I
    .end local v12    # "additionalEntropy":[B
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_da
    .packed-switch -0x44
        :pswitch_a0
    .end packed-switch
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 241
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 14
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, "success":Z
    const-string v1, " or "

    if-eqz p1, :cond_230

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "encryptionAtRestRequired":Z
    :try_start_9
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v4, 0x4b3

    if-eq v3, v4, :cond_19

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v4, 0x4b4

    if-ne v3, v4, :cond_16

    goto :goto_19

    .line 263
    :cond_16
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v3, 0x3

    .line 264
    .local v3, "keymasterAlgorithm":I
    :goto_1a
    instance-of v4, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v4, :cond_22

    .line 265
    move-object v1, p1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    goto :goto_34

    .line 266
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_22
    instance-of v4, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v4, :cond_17b

    .line 268
    move-object v1, p1

    check-cast v1, Landroid/security/KeyPairGeneratorSpec;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_22e

    .line 270
    .local v1, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    :try_start_29
    invoke-direct {p0, v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I

    move-result v4

    move v3, v4

    .line 272
    invoke-direct {p0, v1, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_32} :catch_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_32} :catch_174
    .catchall {:try_start_29 .. :try_end_32} :catchall_22e

    .line 275
    .local v4, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    nop

    .line 276
    .end local v1    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    move-object v1, v4

    .line 300
    .end local v4    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :goto_34
    :try_start_34
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 301
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    .line 302
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 303
    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 304
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 305
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    .line 306
    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_58

    .line 307
    invoke-static {v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 309
    :cond_58
    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v5

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(IIZLjava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_22e

    if-eqz v4, :cond_16c

    .line 318
    :try_start_6b
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    .line 321
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    .line 322
    nop

    .line 323
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 324
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e1

    .line 325
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 326
    iget-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_a0
    if-ge v7, v6, :cond_e1

    aget v8, v5, v7

    .line 327
    .local v8, "keymasterPadding":I
    nop

    .line 328
    invoke-static {v8}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 326
    .end local v8    # "keymasterPadding":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    .line 330
    .restart local v8    # "keymasterPadding":I
    :cond_ae
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 333
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". See "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Landroid/security/keystore/KeyGenParameterSpec;

    .line 335
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " documentation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v2    # "encryptionAtRestRequired":Z
    .end local v3    # "keymasterAlgorithm":I
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v5

    .line 340
    .end local v8    # "keymasterPadding":I
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v2    # "encryptionAtRestRequired":Z
    .restart local v3    # "keymasterAlgorithm":I
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_e1
    nop

    .line 341
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 342
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 343
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_101

    .line 345
    :cond_fd
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    .line 347
    :goto_101
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_131

    .line 350
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v5

    .line 351
    .local v5, "mgfDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, "offset":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_118
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_130

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 354
    .local v8, "digest":Ljava/lang/String;
    iget-object v9, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v6

    .line 355
    nop

    .end local v8    # "digest":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 356
    goto :goto_118

    .line 357
    .end local v5    # "mgfDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "offset":I
    :cond_130
    goto :goto_13d

    .line 359
    :cond_131
    const-string v5, "SHA-1"

    .line 360
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 366
    :goto_13d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_147
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_147} :catch_165
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_147} :catch_165
    .catchall {:try_start_6b .. :try_end_147} :catchall_22e

    .line 369
    nop

    .line 371
    :try_start_148
    iput-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 372
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 373
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 375
    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 376
    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 377
    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V
    :try_end_15e
    .catchall {:try_start_148 .. :try_end_15e} :catchall_22e

    .line 379
    const/4 v0, 0x1

    .line 381
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v2    # "encryptionAtRestRequired":Z
    .end local v3    # "keymasterAlgorithm":I
    .end local v4    # "jcaKeyAlgorithm":Ljava/lang/String;
    if-nez v0, :cond_164

    .line 382
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    .line 385
    :cond_164
    return-void

    .line 367
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v2    # "encryptionAtRestRequired":Z
    .restart local v3    # "keymasterAlgorithm":I
    :catch_165
    move-exception v4

    .line 368
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_166
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v5

    .line 313
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_16c
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "KeyStore entry alias not provided"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v4

    .line 273
    .restart local v0    # "success":Z
    .local v1, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_174
    move-exception v4

    .line 274
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v5

    .line 276
    .end local v1    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_17b
    instance-of v4, p1, Ljava/security/spec/NamedParameterSpec;

    if-eqz v4, :cond_1ed

    .line 277
    move-object v4, p1

    check-cast v4, Ljava/security/spec/NamedParameterSpec;

    .line 281
    .local v4, "namedSpec":Ljava/security/spec/NamedParameterSpec;
    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c0

    .line 282
    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    .line 283
    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    goto :goto_1c0

    .line 289
    :cond_1a3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported algorithm specified via NamedParameterSpec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1

    .line 284
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_1c0
    :goto_1c0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This KeyPairGenerator cannot be initialized using NamedParameterSpec. use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Landroid/security/keystore/KeyGenParameterSpec;

    .line 286
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v6, Landroid/security/KeyPairGeneratorSpec;

    .line 287
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v5

    .line 294
    .end local v4    # "namedSpec":Ljava/security/spec/NamedParameterSpec;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_1ed
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported params class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    invoke-interface {p1}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    .line 296
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/KeyPairGeneratorSpec;

    .line 297
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1

    .line 381
    .end local v2    # "encryptionAtRestRequired":Z
    .end local v3    # "keymasterAlgorithm":I
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catchall_22e
    move-exception v1

    goto :goto_25d

    .line 254
    :cond_230
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must supply params of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyGenParameterSpec;

    .line 255
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Landroid/security/KeyPairGeneratorSpec;

    .line 256
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2
    :try_end_25d
    .catchall {:try_start_166 .. :try_end_25d} :catchall_22e

    .line 381
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :goto_25d
    if-nez v0, :cond_262

    .line 382
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    .line 384
    :cond_262
    throw v1
.end method
