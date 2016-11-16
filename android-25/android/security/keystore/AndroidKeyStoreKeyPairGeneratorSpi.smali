.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field private static final SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mEntryUid:I

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x209

    #@2
    const/16 v5, 0x180

    #@4
    const/16 v4, 0xe0

    #@6
    const/16 v3, 0x100

    #@8
    .line 119
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 118
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@f
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@16
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@1d
    .line 124
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@1f
    const-string/jumbo v1, "p-224"

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 125
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@2b
    const-string/jumbo v1, "secp224r1"

    #@2e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 129
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@37
    const-string/jumbo v1, "p-256"

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v2

    #@3e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 130
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@43
    const-string/jumbo v1, "secp256r1"

    #@46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v2

    #@4a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 131
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@4f
    const-string/jumbo v1, "prime256v1"

    #@52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v2

    #@56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 134
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@5b
    const-string/jumbo v1, "p-384"

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 135
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@67
    const-string/jumbo v1, "secp384r1"

    #@6a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v2

    #@6e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 138
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@73
    const-string/jumbo v1, "p-521"

    #@76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 139
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@7f
    const-string/jumbo v1, "secp521r1"

    #@82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v2

    #@86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 141
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@8b
    sget-object v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@8d
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@90
    move-result-object v1

    #@91
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@94
    .line 142
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@96
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@99
    .line 144
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@9b
    .line 145
    new-instance v1, Ljava/util/HashSet;

    #@9d
    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@9f
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a2
    move-result-object v2

    #@a3
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@a6
    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a9
    .line 146
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@ab
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@ae
    .line 92
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    #@3
    .line 159
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@6
    .line 172
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    #@8
    .line 171
    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 613
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 621
    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unsupported algorithm: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 616
    :pswitch_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@23
    const v1, 0x500000c8

    #@26
    .line 615
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@29
    .line 612
    :pswitch_2
    return-void

    #@2a
    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static checkValidKeySize(II)V
    .locals 3
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 721
    packed-switch p0, :pswitch_data_0

    #@3
    .line 735
    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported algorithm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 723
    :pswitch_1
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 724
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Unsupported EC key size: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 725
    const-string/jumbo v2, " bits. Supported: "

    #@3e
    .line 724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 725
    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@44
    .line 724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 729
    :pswitch_2
    const/16 v0, 0x200

    #@52
    if-lt p1, v0, :cond_0

    #@54
    const/16 v0, 0x2000

    #@56
    if-le p1, v0, :cond_1

    #@58
    .line 730
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@5a
    const-string/jumbo v1, "RSA key size must be >= 512 and <= 8192"

    #@5d
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 720
    :cond_1
    return-void

    #@62
    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructKeyGenerationArguments()Landroid/security/keymaster/KeymasterArguments;
    .locals 5

    #@0
    .prologue
    const v4, 0x20000006

    #@3
    .line 523
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    #@5
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@8
    .line 524
    .local v0, "args":Landroid/security/keymaster/KeymasterArguments;
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@a
    int-to-long v2, v1

    #@b
    const v1, 0x30000003

    #@e
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@11
    .line 525
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@13
    const v2, 0x10000002

    #@16
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@19
    .line 526
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@1b
    const v2, 0x20000001

    #@1e
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@21
    .line 527
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@23
    const v2, 0x20000004

    #@26
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@29
    .line 528
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@2b
    invoke-virtual {v0, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2e
    .line 529
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@30
    invoke-virtual {v0, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@33
    .line 530
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@35
    const v2, 0x20000005

    #@38
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@3b
    .line 533
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@3d
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@40
    move-result v1

    #@41
    .line 534
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@43
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@46
    move-result v2

    #@47
    .line 535
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@49
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    #@4c
    move-result v3

    #@4d
    .line 536
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@4f
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    #@52
    move-result v4

    #@53
    .line 532
    invoke-static {v0, v1, v2, v3, v4}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V

    #@56
    .line 537
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@58
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    #@5b
    move-result-object v1

    #@5c
    const v2, 0x60000190

    #@5f
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@62
    .line 539
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@64
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@67
    move-result-object v1

    #@68
    .line 538
    const v2, 0x60000191

    #@6b
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@6e
    .line 541
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@70
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@73
    move-result-object v1

    #@74
    .line 540
    const v2, 0x60000192

    #@77
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@7a
    .line 542
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    #@7d
    .line 544
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@7f
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    #@82
    move-result v1

    #@83
    if-eqz v1, :cond_0

    #@85
    .line 545
    const v1, 0x700000ca

    #@88
    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@8b
    .line 547
    :cond_0
    return-object v0
.end method

.method private createCertificateChain(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ")",
            "Ljava/lang/Iterable",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    #@5
    move-result-object v1

    #@6
    .line 486
    .local v1, "challenge":[B
    if-eqz v1, :cond_0

    #@8
    .line 487
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    #@a
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@d
    .line 488
    .local v0, "args":Landroid/security/keymaster/KeymasterArguments;
    const v2, -0x6ffffd3c

    #@10
    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    #@13
    .line 489
    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAttestationChain(Ljava/lang/String;Ljava/security/KeyPair;Landroid/security/keymaster/KeymasterArguments;)Ljava/lang/Iterable;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 493
    .end local v0    # "args":Landroid/security/keymaster/KeymasterArguments;
    :cond_0
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateBytes(Ljava/security/KeyPair;)[B

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@1f
    move-result-object v2

    #@20
    return-object v2
.end method

.method private generateKeystoreKeyPair(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BI)V
    .locals 8
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "additionalEntropy"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 498
    new-instance v6, Landroid/security/keymaster/KeyCharacteristics;

    #@2
    invoke-direct {v6}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@5
    .line 499
    .local v6, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@7
    .line 500
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move v5, p4

    #@d
    .line 499
    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@10
    move-result v7

    #@11
    .line 501
    .local v7, "errorCode":I
    const/4 v0, 0x1

    #@12
    if-eq v7, v0, :cond_0

    #@14
    .line 502
    new-instance v0, Ljava/security/ProviderException;

    #@16
    .line 503
    const-string/jumbo v1, "Failed to generate key pair"

    #@19
    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@1c
    move-result-object v2

    #@1d
    .line 502
    invoke-direct {v0, v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v0

    #@21
    .line 497
    :cond_0
    return-void
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@2
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@4
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@6
    invoke-static {v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 629
    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    .line 631
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 635
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 637
    :catch_0
    move-exception v0

    #@17
    .line 643
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method private generateSelfSignedCertificateBytes(Ljava/security/KeyPair;)[B
    .locals 4
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@7
    move-result-object v3

    #@8
    invoke-direct {p0, v2, v3}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 589
    :catch_0
    move-exception v1

    #@12
    .line 590
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/ProviderException;

    #@14
    .line 591
    const-string/jumbo v3, "Failed to obtain encoded form of self-signed certificate"

    #@17
    .line 590
    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v2

    #@1b
    .line 587
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v0

    #@1c
    .line 588
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/ProviderException;

    #@1e
    const-string/jumbo v3, "Failed to generate self-signed certificate"

    #@21
    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v2
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 665
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    #@5
    .line 669
    .local v8, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@7
    packed-switch v10, :pswitch_data_0

    #@a
    .line 684
    :pswitch_0
    new-instance v10, Ljava/security/ProviderException;

    #@c
    new-instance v11, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v12, "Unsupported key algorithm: "

    #@14
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v11

    #@18
    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@1a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v11

    #@22
    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@25
    throw v10

    #@26
    .line 671
    :pswitch_1
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 672
    .local v4, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2a
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@2d
    .line 673
    .local v3, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2f
    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@32
    .line 674
    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    #@34
    const-wide/16 v12, 0x0

    #@36
    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    #@39
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3c
    .line 675
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    #@3e
    const-wide/16 v12, 0x0

    #@40
    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    #@43
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@46
    .line 676
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@48
    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    #@4b
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@4e
    move-result-object v5

    #@4f
    .line 687
    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "signature":[B
    :goto_0
    const/4 v11, 0x0

    #@50
    const/4 v0, 0x0

    #@51
    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@53
    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@56
    move-result-object v10

    #@57
    invoke-direct {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5a
    .line 689
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v1, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@61
    move-result-object v10

    #@62
    .line 688
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@65
    .line 690
    if-eqz v1, :cond_0

    #@67
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@6a
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    #@6c
    throw v11

    #@6d
    .line 679
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "signature":[B
    :pswitch_2
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    .line 680
    .restart local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@71
    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@73
    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@76
    .line 681
    .restart local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    #@77
    new-array v5, v10, [B

    #@79
    .restart local v5    # "signature":[B
    goto :goto_0

    #@7a
    .line 690
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v11

    #@7b
    goto :goto_1

    #@7c
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v10

    #@7d
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_2
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    :catchall_0
    move-exception v11

    #@7f
    move-object v14, v11

    #@80
    move-object v11, v10

    #@81
    move-object v10, v14

    #@82
    :goto_3
    if-eqz v0, :cond_1

    #@84
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@87
    :cond_1
    :goto_4
    if-eqz v11, :cond_3

    #@89
    throw v11

    #@8a
    :catch_2
    move-exception v12

    #@8b
    if-nez v11, :cond_2

    #@8d
    move-object v11, v12

    #@8e
    goto :goto_4

    #@8f
    :cond_2
    if-eq v11, v12, :cond_1

    #@91
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@94
    goto :goto_4

    #@95
    :cond_3
    throw v10

    #@96
    .line 691
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_4
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@98
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@9a
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    #@9d
    move-result-object v11

    #@9e
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@a1
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@a4
    .line 693
    new-instance v6, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@a6
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@a8
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@af
    move-result-object v10

    #@b0
    invoke-direct {v6, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@b3
    .line 694
    .local v6, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@b6
    .line 695
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@b9
    .line 696
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@bb
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@bd
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    #@c0
    move-result-object v11

    #@c1
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@c4
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@c7
    .line 697
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@c9
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@cb
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    #@ce
    move-result-object v11

    #@cf
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@d2
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@d5
    .line 698
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@d8
    .line 699
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@db
    move-result-object v7

    #@dc
    .line 701
    .local v7, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@de
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@e1
    .line 702
    .local v2, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e4
    .line 703
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e7
    .line 704
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@e9
    invoke-direct {v10, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@ec
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@ef
    .line 705
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    #@f1
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@f3
    invoke-direct {v11, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@f6
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f9
    move-result-object v11

    #@fa
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    #@fd
    return-object v10

    #@fe
    .line 690
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    .end local v7    # "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_1
    move-exception v10

    #@ff
    goto :goto_3

    #@100
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_2
    move-exception v10

    #@101
    move-object v0, v1

    #@102
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto :goto_3

    #@103
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_3
    move-exception v10

    #@104
    move-object v0, v1

    #@105
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto/16 :goto_2

    #@107
    .line 669
    nop

    #@108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    #@5
    .line 652
    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    #@8
    .line 653
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@a
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    #@11
    .line 654
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@13
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    #@1a
    .line 655
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@1c
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    #@23
    .line 656
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@25
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    #@2c
    .line 657
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2e
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    #@35
    .line 658
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    #@38
    .line 659
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method private getAttestationChain(Ljava/lang/String;Ljava/security/KeyPair;Landroid/security/keymaster/KeymasterArguments;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "keyPair"    # Ljava/security/KeyPair;
    .param p3, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            "Landroid/security/keymaster/KeymasterArguments;",
            ")",
            "Ljava/lang/Iterable",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    new-instance v2, Landroid/security/keymaster/KeymasterCertificateChain;

    #@2
    invoke-direct {v2}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    #@5
    .line 599
    .local v2, "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@7
    invoke-virtual {v3, p1, p3, v2}, Landroid/security/KeyStore;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    #@a
    move-result v1

    #@b
    .line 600
    .local v1, "errorCode":I
    const/4 v3, 0x1

    #@c
    if-eq v1, v3, :cond_0

    #@e
    .line 601
    new-instance v3, Ljava/security/ProviderException;

    #@10
    const-string/jumbo v4, "Failed to generate attestation certificate chain"

    #@13
    .line 602
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@16
    move-result-object v5

    #@17
    .line 601
    invoke-direct {v3, v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v3

    #@1b
    .line 604
    :cond_0
    invoke-virtual {v2}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    #@1e
    move-result-object v0

    #@1f
    .line 605
    .local v0, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x2

    #@24
    if-ge v3, v4, :cond_1

    #@26
    .line 606
    new-instance v3, Ljava/security/ProviderException;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Attestation certificate chain contained "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 607
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@37
    move-result v5

    #@38
    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 607
    const-string/jumbo v5, " entries. At least two are required."

    #@3f
    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 609
    :cond_1
    return-object v0
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 877
    new-instance v0, Ljava/util/HashSet;

    #@3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 878
    .local v0, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@9
    move-result-object v6

    #@a
    array-length v7, v6

    #@b
    move v5, v4

    #@c
    :goto_0
    if-ge v5, v7, :cond_0

    #@e
    aget v1, v6, v5

    #@10
    .line 879
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v8

    #@14
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 878
    add-int/lit8 v5, v5, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 881
    .end local v1    # "keymasterDigest":I
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@1c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 883
    .local v3, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@22
    move-result-object v5

    #@23
    .line 882
    array-length v6, v5

    #@24
    :goto_1
    if-ge v4, v6, :cond_1

    #@26
    aget v1, v5, v4

    #@28
    .line 884
    .restart local v1    # "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 882
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_1

    #@32
    .line 886
    .end local v1    # "keymasterDigest":I
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@34
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@37
    .line 887
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@3a
    .line 888
    return-object v2
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 12
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 756
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@5
    move-result v8

    #@6
    and-int/lit8 v8, v8, 0x4

    #@8
    if-nez v8, :cond_0

    #@a
    .line 758
    return-object v10

    #@b
    .line 760
    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 762
    return-object v10

    #@12
    .line 764
    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@15
    move-result v8

    #@16
    if-nez v8, :cond_2

    #@18
    .line 766
    return-object v10

    #@19
    .line 768
    :cond_2
    packed-switch p0, :pswitch_data_0

    #@1c
    .line 870
    :pswitch_0
    new-instance v8, Ljava/security/ProviderException;

    #@1e
    new-instance v9, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v10, "Unsupported algorithm: "

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@35
    throw v8

    #@36
    .line 772
    :pswitch_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 773
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    .line 771
    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    #@41
    move-result-object v0

    #@42
    .line 775
    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    #@43
    .line 776
    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    #@44
    .line 777
    .local v1, "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v4

    #@48
    .local v4, "keymasterDigest$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_4

    #@4e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    check-cast v8, Ljava/lang/Integer;

    #@54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v3

    #@58
    .line 778
    .local v3, "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@5b
    move-result v6

    #@5c
    .line 779
    .local v6, "outputSizeBits":I
    if-ne v6, p1, :cond_5

    #@5e
    .line 781
    move v2, v3

    #@5f
    .line 782
    move v1, v6

    #@60
    .line 811
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_4
    if-ne v2, v11, :cond_8

    #@62
    .line 812
    return-object v10

    #@63
    .line 786
    .restart local v3    # "keymasterDigest":I
    .restart local v6    # "outputSizeBits":I
    :cond_5
    if-ne v2, v11, :cond_6

    #@65
    .line 788
    move v2, v3

    #@66
    .line 789
    move v1, v6

    #@67
    goto :goto_0

    #@68
    .line 793
    :cond_6
    if-ge v1, p1, :cond_7

    #@6a
    .line 796
    if-le v6, v1, :cond_3

    #@6c
    .line 797
    move v2, v3

    #@6d
    .line 798
    move v1, v6

    #@6e
    goto :goto_0

    #@6f
    .line 803
    :cond_7
    if-ge v6, v1, :cond_3

    #@71
    .line 804
    if-lt v6, p1, :cond_3

    #@73
    .line 805
    move v2, v3

    #@74
    .line 806
    move v1, v6

    #@75
    goto :goto_0

    #@76
    .line 814
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    .line 815
    const-string/jumbo v9, "WithECDSA"

    #@86
    .line 814
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    return-object v8

    #@8f
    .line 826
    .end local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "bestDigestOutputSizeBits":I
    .end local v2    # "bestKeymasterDigest":I
    .end local v4    # "keymasterDigest$iterator":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    .line 825
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@96
    move-result-object v8

    #@97
    .line 827
    const/4 v9, 0x5

    #@98
    .line 824
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@9b
    move-result v7

    #@9c
    .line 828
    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_9

    #@9e
    .line 830
    return-object v10

    #@9f
    .line 834
    :cond_9
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    .line 835
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    .line 833
    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    #@aa
    move-result-object v0

    #@ab
    .line 842
    .restart local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    #@ad
    .line 843
    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    #@ae
    .line 844
    .restart local v2    # "bestKeymasterDigest":I
    const/4 v1, -0x1

    #@af
    .line 845
    .restart local v1    # "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b2
    move-result-object v4

    #@b3
    .restart local v4    # "keymasterDigest$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b6
    move-result v8

    #@b7
    if-eqz v8, :cond_c

    #@b9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bc
    move-result-object v8

    #@bd
    check-cast v8, Ljava/lang/Integer;

    #@bf
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@c2
    move-result v3

    #@c3
    .line 846
    .restart local v3    # "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@c6
    move-result v6

    #@c7
    .line 847
    .restart local v6    # "outputSizeBits":I
    if-gt v6, v5, :cond_a

    #@c9
    .line 851
    if-ne v2, v11, :cond_b

    #@cb
    .line 853
    move v2, v3

    #@cc
    .line 854
    move v1, v6

    #@cd
    goto :goto_1

    #@ce
    .line 857
    :cond_b
    if-le v6, v1, :cond_a

    #@d0
    .line 858
    move v2, v3

    #@d1
    .line 859
    move v1, v6

    #@d2
    goto :goto_1

    #@d3
    .line 863
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_c
    if-ne v2, v11, :cond_d

    #@d5
    .line 864
    return-object v10

    #@d6
    .line 866
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    #@de
    move-result-object v9

    #@df
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v8

    #@e3
    .line 867
    const-string/jumbo v9, "WithRSA"

    #@e6
    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v8

    #@ea
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v8

    #@ee
    return-object v8

    #@ef
    .line 768
    nop

    #@f0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefaultKeySize(I)I
    .locals 3
    .param p0, "keymasterAlgorithm"    # I

    #@0
    .prologue
    .line 709
    packed-switch p0, :pswitch_data_0

    #@3
    .line 715
    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported algorithm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 711
    :pswitch_1
    const/16 v0, 0x100

    #@1f
    return v0

    #@20
    .line 713
    :pswitch_2
    const/16 v0, 0x800

    #@22
    return v0

    #@23
    .line 709
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 384
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@3
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@6
    move-result-object v0

    #@7
    .line 385
    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@9
    packed-switch v6, :pswitch_data_0

    #@c
    .line 442
    :pswitch_0
    new-instance v6, Ljava/security/ProviderException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Unsupported algorithm: "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6

    #@28
    .line 388
    :pswitch_1
    const/4 v4, 0x0

    #@29
    .line 389
    .local v4, "publicExponent":Ljava/math/BigInteger;
    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@2b
    if-eqz v6, :cond_4

    #@2d
    move-object v5, v0

    #@2e
    .line 390
    nop

    #@2f
    nop

    #@30
    .line 391
    .local v5, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@32
    if-ne v6, v8, :cond_3

    #@34
    .line 392
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@37
    move-result v6

    #@38
    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@3a
    .line 398
    :cond_0
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    #@3d
    move-result-object v4

    #@3e
    .line 403
    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_1
    if-nez v4, :cond_2

    #@40
    .line 404
    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    #@42
    .line 406
    :cond_2
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@44
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@47
    move-result v6

    #@48
    const/4 v7, 0x1

    #@49
    if-ge v6, v7, :cond_5

    #@4b
    .line 407
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@4d
    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "RSA public exponent must be positive: "

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    .line 407
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@64
    throw v6

    #@65
    .line 393
    .restart local v4    # "publicExponent":Ljava/math/BigInteger;
    .restart local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_3
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@67
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@6a
    move-result v7

    #@6b
    if-eq v6, v7, :cond_0

    #@6d
    .line 394
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@6f
    new-instance v7, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v8, "RSA key size must match  between "

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    .line 395
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@7d
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    .line 395
    const-string/jumbo v8, " and "

    #@84
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    .line 396
    const-string/jumbo v8, ": "

    #@8f
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    .line 396
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@95
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    .line 396
    const-string/jumbo v8, " vs "

    #@9c
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    .line 396
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@a3
    move-result v8

    #@a4
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@af
    throw v6

    #@b0
    .line 399
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_4
    if-eqz v0, :cond_1

    #@b2
    .line 400
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@b4
    .line 401
    const-string/jumbo v7, "RSA may only use RSAKeyGenParameterSpec"

    #@b7
    .line 400
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v6

    #@bb
    .line 410
    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    :cond_5
    sget-object v6, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    #@bd
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@c0
    move-result v6

    #@c1
    if-lez v6, :cond_6

    #@c3
    .line 411
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@c5
    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v8, "Unsupported RSA public exponent: "

    #@cd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v7

    #@d5
    .line 413
    const-string/jumbo v8, ". Maximum supported value: "

    #@d8
    .line 412
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    .line 413
    sget-object v8, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    #@de
    .line 412
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 411
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v6

    #@ea
    .line 415
    :cond_6
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@ec
    .line 383
    :cond_7
    :goto_0
    return-void

    #@ed
    .line 419
    :pswitch_2
    instance-of v6, v0, Ljava/security/spec/ECGenParameterSpec;

    #@ef
    if-eqz v6, :cond_a

    #@f1
    move-object v2, v0

    #@f2
    .line 420
    nop

    #@f3
    nop

    #@f4
    .line 421
    .local v2, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@f7
    move-result-object v1

    #@f8
    .line 422
    .local v1, "curveName":Ljava/lang/String;
    sget-object v6, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@fa
    .line 423
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@fc
    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    .line 422
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    move-result-object v3

    #@104
    check-cast v3, Ljava/lang/Integer;

    #@106
    .line 424
    .local v3, "ecSpecKeySizeBits":Ljava/lang/Integer;
    if-nez v3, :cond_8

    #@108
    .line 425
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@10a
    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v8, "Unsupported EC curve name: "

    #@112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v7

    #@116
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    .line 427
    const-string/jumbo v8, ". Supported: "

    #@11d
    .line 426
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    .line 427
    sget-object v8, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@123
    .line 426
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v7

    #@127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v7

    #@12b
    .line 425
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v6

    #@12f
    .line 429
    :cond_8
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@131
    if-ne v6, v8, :cond_9

    #@133
    .line 430
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@136
    move-result v6

    #@137
    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@139
    goto :goto_0

    #@13a
    .line 431
    :cond_9
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@13c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@13f
    move-result v7

    #@140
    if-eq v6, v7, :cond_7

    #@142
    .line 432
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@144
    new-instance v7, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v8, "EC key size must match  between "

    #@14c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v7

    #@150
    .line 433
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@152
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v7

    #@156
    .line 433
    const-string/jumbo v8, " and "

    #@159
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v7

    #@161
    .line 434
    const-string/jumbo v8, ": "

    #@164
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v7

    #@168
    .line 434
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@16a
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v7

    #@16e
    .line 434
    const-string/jumbo v8, " vs "

    #@171
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v7

    #@175
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v7

    #@179
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v7

    #@17d
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@180
    throw v6

    #@181
    .line 436
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "ecSpecKeySizeBits":Ljava/lang/Integer;
    :cond_a
    if-eqz v0, :cond_7

    #@183
    .line 437
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@185
    .line 438
    const-string/jumbo v7, "EC may only use ECGenParameterSpec"

    #@188
    .line 437
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@18b
    throw v6

    #@18c
    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private loadKeystoreKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 5
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 510
    :try_start_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@4
    .line 509
    invoke-static {v2, p1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "result":Ljava/security/KeyPair;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@a
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 512
    new-instance v2, Ljava/security/ProviderException;

    #@1a
    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Generated key pair algorithm does not match requested algorithm: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 514
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 514
    const-string/jumbo v4, " vs "

    #@35
    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 514
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@3b
    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 512
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 517
    .end local v1    # "result":Ljava/security/KeyPair;
    :catch_0
    move-exception v0

    #@48
    .line 518
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/security/ProviderException;

    #@4a
    const-string/jumbo v3, "Failed to load generated key pair from keystore"

    #@4d
    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    throw v2

    #@51
    .line 516
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v1    # "result":Ljava/security/KeyPair;
    :cond_0
    return-object v1
.end method

.method private resetAll()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 366
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@5
    .line 367
    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@7
    .line 368
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@9
    .line 369
    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@b
    .line 370
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@d
    .line 371
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@f
    .line 372
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@11
    .line 373
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@13
    .line 374
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@15
    .line 375
    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@17
    .line 376
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@19
    .line 377
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@1b
    .line 378
    iput-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@1d
    .line 379
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@1f
    .line 380
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@21
    .line 365
    return-void
.end method

.method private storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "certificateBytes"    # [B
    .param p3, "flags"    # I
    .param p4, "failureMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 572
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 575
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@17
    .line 572
    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@1a
    move-result v0

    #@1b
    .line 577
    .local v0, "insertErrorCode":I
    const/4 v1, 0x1

    #@1c
    if-eq v0, v1, :cond_0

    #@1e
    .line 578
    new-instance v1, Ljava/security/ProviderException;

    #@20
    .line 579
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@23
    move-result-object v2

    #@24
    .line 578
    invoke-direct {v1, p4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    .line 571
    :cond_0
    return-void
.end method

.method private storeCertificateChain(ILjava/lang/Iterable;)V
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    .local p2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .line 554
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    const-string/jumbo v4, "USRCERT_"

    #@7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, [B

    #@d
    const-string/jumbo v5, "Failed to store certificate"

    #@10
    .line 553
    invoke-direct {p0, v4, v3, p1, v5}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V

    #@13
    .line 556
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    .line 557
    return-void

    #@1a
    .line 560
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@1c
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1f
    .line 561
    .local v0, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 562
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, [B

    #@2b
    .line 563
    .local v1, "data":[B
    array-length v3, v1

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@30
    goto :goto_0

    #@31
    .line 566
    .end local v1    # "data":[B
    :cond_1
    const-string/jumbo v3, "CACERT_"

    #@34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@37
    move-result-object v4

    #@38
    .line 567
    const-string/jumbo v5, "Failed to store attestation CA certificate"

    #@3b
    .line 566
    invoke-direct {p0, v3, v4, p1, v5}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V

    #@3e
    .line 551
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 448
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3
    if-eqz v5, :cond_0

    #@5
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@7
    if-nez v5, :cond_1

    #@9
    .line 449
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v6, "Not initialized"

    #@e
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 452
    :cond_1
    iget-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@14
    if-eqz v5, :cond_2

    #@16
    const/4 v1, 0x1

    #@17
    .line 453
    .local v1, "flags":I
    :cond_2
    and-int/lit8 v5, v1, 0x1

    #@19
    if-eqz v5, :cond_3

    #@1b
    .line 454
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1d
    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    #@20
    move-result-object v5

    #@21
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@23
    if-eq v5, v6, :cond_3

    #@25
    .line 455
    new-instance v5, Ljava/lang/IllegalStateException;

    #@27
    .line 456
    const-string/jumbo v6, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    #@2a
    .line 455
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 462
    :cond_3
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@30
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@32
    add-int/lit8 v6, v6, 0x7

    #@34
    div-int/lit8 v6, v6, 0x8

    #@36
    .line 461
    invoke-static {v5, v6}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@39
    move-result-object v0

    #@3a
    .line 464
    .local v0, "additionalEntropy":[B
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3c
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@3e
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@40
    invoke-static {v5, v6, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@43
    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "USRPKEY_"

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .line 466
    .local v3, "privateKeyAlias":Ljava/lang/String;
    const/4 v4, 0x0

    #@5a
    .line 469
    .local v4, "success":Z
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Landroid/security/keymaster/KeymasterArguments;

    #@5d
    move-result-object v5

    #@5e
    .line 468
    invoke-direct {p0, v3, v5, v0, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateKeystoreKeyPair(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BI)V

    #@61
    .line 470
    invoke-direct {p0, v3}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->loadKeystoreKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    #@64
    move-result-object v2

    #@65
    .line 472
    .local v2, "keyPair":Ljava/security/KeyPair;
    invoke-direct {p0, v3, v2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->createCertificateChain(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/Iterable;

    #@68
    move-result-object v5

    #@69
    invoke-direct {p0, v1, v5}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificateChain(ILjava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 474
    const/4 v4, 0x1

    #@6d
    .line 477
    if-nez v4, :cond_4

    #@6f
    .line 478
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@71
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@73
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@75
    invoke-static {v5, v6, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@78
    .line 475
    :cond_4
    return-object v2

    #@79
    .line 476
    .end local v2    # "keyPair":Ljava/security/KeyPair;
    :catchall_0
    move-exception v5

    #@7a
    .line 477
    if-nez v4, :cond_5

    #@7c
    .line 478
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@7e
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@80
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@82
    invoke-static {v6, v7, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@85
    .line 476
    :cond_5
    throw v5
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " or "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    #@1a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 180
    const-string/jumbo v2, " required to initialize this KeyPairGenerator"

    #@25
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 18
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@3
    .line 189
    const/4 v12, 0x0

    #@4
    .line 191
    .local v12, "success":Z
    if-nez p1, :cond_1

    #@6
    .line 192
    :try_start_0
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    .line 193
    new-instance v14, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v15, "Must supply params of type "

    #@10
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v14

    #@14
    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    #@16
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v15

    #@1a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v14

    #@1e
    .line 194
    const-string/jumbo v15, " or "

    #@21
    .line 193
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v14

    #@25
    .line 194
    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    #@27
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v15

    #@2b
    .line 193
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v14

    #@2f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v14

    #@33
    .line 192
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@36
    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 358
    :catchall_0
    move-exception v13

    #@38
    .line 359
    if-nez v12, :cond_0

    #@3a
    .line 360
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@3d
    .line 358
    :cond_0
    throw v13

    #@3e
    .line 198
    :cond_1
    const/4 v4, 0x0

    #@3f
    .line 199
    .local v4, "encryptionAtRestRequired":Z
    :try_start_1
    move-object/from16 v0, p0

    #@41
    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    #@43
    .line 200
    .local v6, "keymasterAlgorithm":I
    move-object/from16 v0, p1

    #@45
    instance-of v13, v0, Landroid/security/keystore/KeyGenParameterSpec;

    #@47
    if-eqz v13, :cond_3

    #@49
    .line 201
    move-object/from16 v0, p1

    #@4b
    nop

    #@4c
    nop

    #@4d
    move-object v9, v0

    #@4e
    .line 294
    .end local v4    # "encryptionAtRestRequired":Z
    .local v9, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :goto_0
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@51
    move-result-object v13

    #@52
    move-object/from16 v0, p0

    #@54
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@56
    .line 295
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@59
    move-result v13

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    #@5e
    .line 296
    move-object/from16 v0, p0

    #@60
    iput-object v9, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@62
    .line 297
    move-object/from16 v0, p0

    #@64
    iput v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@66
    .line 298
    move-object/from16 v0, p0

    #@68
    iput-boolean v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@6a
    .line 299
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    #@6d
    move-result v13

    #@6e
    move-object/from16 v0, p0

    #@70
    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@72
    .line 300
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    #@75
    .line 301
    move-object/from16 v0, p0

    #@77
    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@79
    const/4 v14, -0x1

    #@7a
    if-ne v13, v14, :cond_2

    #@7c
    .line 302
    invoke-static {v6}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    #@7f
    move-result v13

    #@80
    move-object/from16 v0, p0

    #@82
    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@84
    .line 304
    :cond_2
    move-object/from16 v0, p0

    #@86
    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@88
    invoke-static {v6, v13}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(II)V

    #@8b
    .line 306
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@8e
    move-result-object v13

    #@8f
    if-nez v13, :cond_8

    #@91
    .line 307
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@93
    const-string/jumbo v14, "KeyStore entry alias not provided"

    #@96
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@99
    throw v13

    #@9a
    .line 202
    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v4    # "encryptionAtRestRequired":Z
    :cond_3
    move-object/from16 v0, p1

    #@9c
    instance-of v13, v0, Landroid/security/KeyPairGeneratorSpec;

    #@9e
    if-eqz v13, :cond_7

    #@a0
    .line 204
    move-object/from16 v0, p1

    #@a2
    nop

    #@a3
    nop

    #@a4
    move-object v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a5
    .line 207
    .local v8, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    :try_start_2
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a8
    move-result-object v11

    #@a9
    .line 208
    .local v11, "specKeyAlgorithm":Ljava/lang/String;
    if-eqz v11, :cond_4

    #@ab
    .line 212
    :try_start_3
    invoke-static {v11}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    move-result v6

    #@af
    .line 219
    :cond_4
    packed-switch v6, :pswitch_data_0

    #@b2
    .line 265
    :pswitch_0
    :try_start_4
    new-instance v13, Ljava/security/ProviderException;

    #@b4
    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v15, "Unsupported algorithm: "

    #@bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v14

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@c4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v14

    #@c8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v14

    #@cc
    .line 265
    invoke-direct {v13, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v13
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d0
    .line 284
    .end local v4    # "encryptionAtRestRequired":Z
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@d1
    .line 285
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@d3
    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    #@d6
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d7
    .line 214
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "encryptionAtRestRequired":Z
    .restart local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@d8
    .line 215
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@da
    .line 216
    const-string/jumbo v14, "Invalid key type in parameters"

    #@dd
    .line 215
    invoke-direct {v13, v14, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e0
    throw v13

    #@e1
    .line 221
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@e3
    .line 222
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    #@e6
    move-result-object v13

    #@e7
    .line 223
    const/16 v14, 0xc

    #@e9
    .line 221
    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    #@ec
    .line 227
    .local v10, "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x6

    #@ed
    new-array v13, v13, [Ljava/lang/String;

    #@ef
    .line 228
    const-string/jumbo v14, "NONE"

    #@f2
    const/4 v15, 0x0

    #@f3
    aput-object v14, v13, v15

    #@f5
    .line 229
    const-string/jumbo v14, "SHA-1"

    #@f8
    const/4 v15, 0x1

    #@f9
    aput-object v14, v13, v15

    #@fb
    .line 230
    const-string/jumbo v14, "SHA-224"

    #@fe
    const/4 v15, 0x2

    #@ff
    aput-object v14, v13, v15

    #@101
    .line 231
    const-string/jumbo v14, "SHA-256"

    #@104
    const/4 v15, 0x3

    #@105
    aput-object v14, v13, v15

    #@107
    .line 232
    const-string/jumbo v14, "SHA-384"

    #@10a
    const/4 v15, 0x4

    #@10b
    aput-object v14, v13, v15

    #@10d
    .line 233
    const-string/jumbo v14, "SHA-512"

    #@110
    const/4 v15, 0x5

    #@111
    aput-object v14, v13, v15

    #@113
    .line 227
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@116
    .line 269
    :goto_1
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    #@119
    move-result v13

    #@11a
    const/4 v14, -0x1

    #@11b
    if-eq v13, v14, :cond_5

    #@11d
    .line 270
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    #@120
    move-result v13

    #@121
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@124
    .line 272
    :cond_5
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@127
    move-result-object v13

    #@128
    if-eqz v13, :cond_6

    #@12a
    .line 274
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@12d
    move-result-object v13

    #@12e
    .line 273
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@131
    .line 276
    :cond_6
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    #@134
    move-result-object v13

    #@135
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@138
    .line 277
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    #@13b
    move-result-object v13

    #@13c
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@13f
    .line 278
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    #@142
    move-result-object v13

    #@143
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@146
    .line 279
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    #@149
    move-result-object v13

    #@14a
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@14d
    .line 280
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->isEncryptionRequired()Z

    #@150
    move-result v4

    #@151
    .line 281
    .local v4, "encryptionAtRestRequired":Z
    const/4 v13, 0x0

    #@152
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@155
    .line 283
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    #@158
    move-result-object v9

    #@159
    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    goto/16 :goto_0

    #@15b
    .line 236
    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v4, "encryptionAtRestRequired":Z
    :pswitch_2
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@15d
    .line 237
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    #@160
    move-result-object v13

    #@161
    .line 238
    const/16 v14, 0xf

    #@163
    .line 236
    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    #@166
    .line 243
    .restart local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x7

    #@167
    new-array v13, v13, [Ljava/lang/String;

    #@169
    .line 244
    const-string/jumbo v14, "NONE"

    #@16c
    const/4 v15, 0x0

    #@16d
    aput-object v14, v13, v15

    #@16f
    .line 245
    const-string/jumbo v14, "MD5"

    #@172
    const/4 v15, 0x1

    #@173
    aput-object v14, v13, v15

    #@175
    .line 246
    const-string/jumbo v14, "SHA-1"

    #@178
    const/4 v15, 0x2

    #@179
    aput-object v14, v13, v15

    #@17b
    .line 247
    const-string/jumbo v14, "SHA-224"

    #@17e
    const/4 v15, 0x3

    #@17f
    aput-object v14, v13, v15

    #@181
    .line 248
    const-string/jumbo v14, "SHA-256"

    #@184
    const/4 v15, 0x4

    #@185
    aput-object v14, v13, v15

    #@187
    .line 249
    const-string/jumbo v14, "SHA-384"

    #@18a
    const/4 v15, 0x5

    #@18b
    aput-object v14, v13, v15

    #@18d
    .line 250
    const-string/jumbo v14, "SHA-512"

    #@190
    const/4 v15, 0x6

    #@191
    aput-object v14, v13, v15

    #@193
    .line 243
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@196
    .line 253
    const/4 v13, 0x3

    #@197
    new-array v13, v13, [Ljava/lang/String;

    #@199
    .line 254
    const-string/jumbo v14, "NoPadding"

    #@19c
    const/4 v15, 0x0

    #@19d
    aput-object v14, v13, v15

    #@19f
    .line 255
    const-string/jumbo v14, "PKCS1Padding"

    #@1a2
    const/4 v15, 0x1

    #@1a3
    aput-object v14, v13, v15

    #@1a5
    .line 256
    const-string/jumbo v14, "OAEPPadding"

    #@1a8
    const/4 v15, 0x2

    #@1a9
    aput-object v14, v13, v15

    #@1ab
    .line 253
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@1ae
    .line 257
    const/4 v13, 0x2

    #@1af
    new-array v13, v13, [Ljava/lang/String;

    #@1b1
    .line 258
    const-string/jumbo v14, "PKCS1"

    #@1b4
    const/4 v15, 0x0

    #@1b5
    aput-object v14, v13, v15

    #@1b7
    .line 259
    const-string/jumbo v14, "PSS"

    #@1ba
    const/4 v15, 0x1

    #@1bb
    aput-object v14, v13, v15

    #@1bd
    .line 257
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@1c0
    .line 262
    const/4 v13, 0x0

    #@1c1
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1c4
    goto/16 :goto_1

    #@1c6
    .line 288
    .end local v8    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@1c8
    .line 289
    new-instance v14, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v15, "Unsupported params class: "

    #@1d0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v14

    #@1d4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d7
    move-result-object v15

    #@1d8
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1db
    move-result-object v15

    #@1dc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v14

    #@1e0
    .line 290
    const-string/jumbo v15, ". Supported: "

    #@1e3
    .line 289
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v14

    #@1e7
    .line 290
    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    #@1e9
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1ec
    move-result-object v15

    #@1ed
    .line 289
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v14

    #@1f1
    .line 291
    const-string/jumbo v15, ", "

    #@1f4
    .line 289
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v14

    #@1f8
    .line 291
    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    #@1fa
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1fd
    move-result-object v15

    #@1fe
    .line 289
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v14

    #@202
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v14

    #@206
    .line 288
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@209
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@20a
    .line 312
    .end local v4    # "encryptionAtRestRequired":Z
    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_8
    :try_start_8
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    #@20d
    move-result-object v5

    #@20e
    .line 314
    .local v5, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@211
    move-result v13

    #@212
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@215
    move-result-object v13

    #@216
    move-object/from16 v0, p0

    #@218
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@21a
    .line 315
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    #@21d
    move-result-object v13

    #@21e
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@221
    move-result-object v13

    #@222
    move-object/from16 v0, p0

    #@224
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@226
    .line 317
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    #@229
    move-result-object v13

    #@22a
    .line 316
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@22d
    move-result-object v13

    #@22e
    move-object/from16 v0, p0

    #@230
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@232
    .line 318
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@235
    move-result v13

    #@236
    and-int/lit8 v13, v13, 0x1

    #@238
    if-eqz v13, :cond_a

    #@23a
    .line 319
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    #@23d
    move-result v13

    #@23e
    .line 318
    if-eqz v13, :cond_a

    #@240
    .line 320
    move-object/from16 v0, p0

    #@242
    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@244
    const/4 v13, 0x0

    #@245
    array-length v15, v14

    #@246
    :goto_2
    if-ge v13, v15, :cond_a

    #@248
    aget v7, v14, v13

    #@24a
    .line 321
    .local v7, "keymasterPadding":I
    invoke-static {v7}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    #@24d
    move-result v16

    #@24e
    if-nez v16, :cond_9

    #@250
    .line 324
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@252
    .line 325
    new-instance v14, Ljava/lang/StringBuilder;

    #@254
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@257
    const-string/jumbo v15, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    #@25a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v14

    #@25e
    .line 327
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@261
    move-result-object v15

    #@262
    .line 325
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v14

    #@266
    .line 329
    const-string/jumbo v15, ". See "

    #@269
    .line 325
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v14

    #@26d
    .line 329
    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    #@26f
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@272
    move-result-object v15

    #@273
    .line 325
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v14

    #@277
    .line 330
    const-string/jumbo v15, " documentation."

    #@27a
    .line 325
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v14

    #@27e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@281
    move-result-object v14

    #@282
    .line 324
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@285
    throw v13
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@286
    .line 350
    .end local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v7    # "keymasterPadding":I
    :catch_2
    move-exception v3

    #@287
    .line 351
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    :try_start_9
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@289
    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    #@28c
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@28d
    .line 320
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v7    # "keymasterPadding":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    #@28f
    goto :goto_2

    #@290
    .line 335
    .end local v7    # "keymasterPadding":I
    :cond_a
    :try_start_a
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    #@293
    move-result-object v13

    #@294
    .line 334
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@297
    move-result-object v13

    #@298
    move-object/from16 v0, p0

    #@29a
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@29c
    .line 336
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@29f
    move-result v13

    #@2a0
    if-eqz v13, :cond_c

    #@2a2
    .line 337
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@2a5
    move-result-object v13

    #@2a6
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@2a9
    move-result-object v13

    #@2aa
    move-object/from16 v0, p0

    #@2ac
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@2ae
    .line 345
    :goto_3
    new-instance v13, Landroid/security/keymaster/KeymasterArguments;

    #@2b0
    invoke-direct {v13}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@2b3
    .line 346
    move-object/from16 v0, p0

    #@2b5
    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2b7
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@2ba
    move-result v14

    #@2bb
    .line 347
    move-object/from16 v0, p0

    #@2bd
    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2bf
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@2c2
    move-result v15

    #@2c3
    .line 348
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2c7
    move-object/from16 v16, v0

    #@2c9
    invoke-virtual/range {v16 .. v16}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    #@2cc
    move-result v16

    #@2cd
    .line 349
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2d1
    move-object/from16 v17, v0

    #@2d3
    invoke-virtual/range {v17 .. v17}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    #@2d6
    move-result v17

    #@2d7
    .line 345
    invoke-static/range {v13 .. v17}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@2da
    .line 354
    :try_start_b
    move-object/from16 v0, p0

    #@2dc
    iput-object v5, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@2de
    .line 355
    move-object/from16 v0, p2

    #@2e0
    move-object/from16 v1, p0

    #@2e2
    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@2e4
    .line 356
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@2e7
    move-result-object v13

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@2ec
    .line 357
    const/4 v12, 0x1

    #@2ed
    .line 359
    if-nez v12, :cond_b

    #@2ef
    .line 360
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@2f2
    .line 186
    :cond_b
    return-void

    #@2f3
    .line 339
    :cond_c
    :try_start_c
    sget-object v13, Llibcore/util/EmptyArray;->INT:[I

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2f9
    goto :goto_3

    #@2fa
    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
