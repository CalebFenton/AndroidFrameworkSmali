.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$RSA;,
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;
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
    .line 113
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 112
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@f
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@16
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@1d
    .line 118
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
    .line 119
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
    .line 123
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
    .line 124
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
    .line 125
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
    .line 128
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
    .line 129
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
    .line 132
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
    .line 133
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
    .line 135
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
    .line 136
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@96
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@99
    .line 138
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@9b
    .line 139
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
    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a9
    .line 140
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@ab
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@ae
    .line 86
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    #@3
    .line 152
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@6
    .line 165
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    #@8
    .line 164
    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 535
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 543
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
    .line 538
    :pswitch_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@23
    const v1, 0x500000c8

    #@26
    .line 537
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@29
    .line 534
    :pswitch_2
    return-void

    #@2a
    .line 535
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
    .line 643
    packed-switch p0, :pswitch_data_0

    #@3
    .line 657
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
    .line 645
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
    .line 646
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
    .line 647
    const-string/jumbo v2, " bits. Supported: "

    #@3e
    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 647
    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    #@44
    .line 646
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
    .line 651
    :pswitch_2
    const/16 v0, 0x200

    #@52
    if-lt p1, v0, :cond_0

    #@54
    const/16 v0, 0x2000

    #@56
    if-le p1, v0, :cond_1

    #@58
    .line 652
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@5a
    const-string/jumbo v1, "RSA key size must be >= 512 and <= 8192"

    #@5d
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 642
    :cond_1
    return-void

    #@62
    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 550
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
    .line 551
    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    .line 553
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 557
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
    .line 559
    :catch_0
    move-exception v0

    #@17
    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 587
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    #@5
    .line 591
    .local v8, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@7
    packed-switch v10, :pswitch_data_0

    #@a
    .line 606
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
    .line 593
    :pswitch_1
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 594
    .local v4, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2a
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@2d
    .line 595
    .local v3, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2f
    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@32
    .line 596
    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    #@34
    const-wide/16 v12, 0x0

    #@36
    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    #@39
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3c
    .line 597
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    #@3e
    const-wide/16 v12, 0x0

    #@40
    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    #@43
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@46
    .line 598
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@48
    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    #@4b
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    #@4e
    move-result-object v5

    #@4f
    .line 609
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
    .line 611
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
    .line 610
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@65
    .line 612
    if-eqz v1, :cond_0

    #@67
    :try_start_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@6a
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    #@6c
    throw v11

    #@6d
    .line 601
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "signature":[B
    :pswitch_2
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    .line 602
    .restart local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@71
    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@73
    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@76
    .line 603
    .restart local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    #@77
    new-array v5, v10, [B

    #@79
    .restart local v5    # "signature":[B
    goto :goto_0

    #@7a
    .line 612
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
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
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
    .line 613
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
    .line 615
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
    .line 616
    .local v6, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@b6
    .line 617
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@b9
    .line 618
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
    .line 619
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
    .line 620
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@d8
    .line 621
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@db
    move-result-object v7

    #@dc
    .line 623
    .local v7, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@de
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@e1
    .line 624
    .local v2, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e4
    .line 625
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e7
    .line 626
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@e9
    invoke-direct {v10, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@ec
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@ef
    .line 627
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
    .line 612
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
    .line 591
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
    .line 573
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    #@5
    .line 574
    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    #@8
    .line 575
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@a
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    #@11
    .line 576
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@13
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    #@1a
    .line 577
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@1c
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    #@23
    .line 578
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@25
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    #@2c
    .line 579
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2e
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    #@35
    .line 580
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    #@38
    .line 581
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
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
    .line 799
    new-instance v0, Ljava/util/HashSet;

    #@3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 800
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
    .line 801
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v8

    #@14
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 800
    add-int/lit8 v5, v5, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 803
    .end local v1    # "keymasterDigest":I
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@1c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 805
    .local v3, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@22
    move-result-object v5

    #@23
    .line 804
    array-length v6, v5

    #@24
    :goto_1
    if-ge v4, v6, :cond_1

    #@26
    aget v1, v5, v4

    #@28
    .line 806
    .restart local v1    # "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 804
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_1

    #@32
    .line 808
    .end local v1    # "keymasterDigest":I
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@34
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@37
    .line 809
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@3a
    .line 810
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
    .line 678
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@5
    move-result v8

    #@6
    and-int/lit8 v8, v8, 0x4

    #@8
    if-nez v8, :cond_0

    #@a
    .line 680
    return-object v10

    #@b
    .line 682
    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 684
    return-object v10

    #@12
    .line 686
    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@15
    move-result v8

    #@16
    if-nez v8, :cond_2

    #@18
    .line 688
    return-object v10

    #@19
    .line 690
    :cond_2
    packed-switch p0, :pswitch_data_0

    #@1c
    .line 792
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
    .line 694
    :pswitch_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 695
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    .line 693
    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    #@41
    move-result-object v0

    #@42
    .line 697
    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    #@43
    .line 698
    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    #@44
    .line 699
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
    .line 700
    .local v3, "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@5b
    move-result v6

    #@5c
    .line 701
    .local v6, "outputSizeBits":I
    if-ne v6, p1, :cond_5

    #@5e
    .line 703
    move v2, v3

    #@5f
    .line 704
    move v1, v6

    #@60
    .line 733
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_4
    if-ne v2, v11, :cond_8

    #@62
    .line 734
    return-object v10

    #@63
    .line 708
    .restart local v3    # "keymasterDigest":I
    .restart local v6    # "outputSizeBits":I
    :cond_5
    if-ne v2, v11, :cond_6

    #@65
    .line 710
    move v2, v3

    #@66
    .line 711
    move v1, v6

    #@67
    goto :goto_0

    #@68
    .line 715
    :cond_6
    if-ge v1, p1, :cond_7

    #@6a
    .line 718
    if-le v6, v1, :cond_3

    #@6c
    .line 719
    move v2, v3

    #@6d
    .line 720
    move v1, v6

    #@6e
    goto :goto_0

    #@6f
    .line 725
    :cond_7
    if-ge v6, v1, :cond_3

    #@71
    .line 726
    if-lt v6, p1, :cond_3

    #@73
    .line 727
    move v2, v3

    #@74
    .line 728
    move v1, v6

    #@75
    goto :goto_0

    #@76
    .line 736
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
    .line 737
    const-string/jumbo v9, "WithECDSA"

    #@86
    .line 736
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
    .line 748
    .end local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "bestDigestOutputSizeBits":I
    .end local v2    # "bestKeymasterDigest":I
    .end local v4    # "keymasterDigest$iterator":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    .line 747
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@96
    move-result-object v8

    #@97
    .line 749
    const/4 v9, 0x5

    #@98
    .line 746
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@9b
    move-result v7

    #@9c
    .line 750
    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_9

    #@9e
    .line 752
    return-object v10

    #@9f
    .line 756
    :cond_9
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    .line 757
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    .line 755
    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    #@aa
    move-result-object v0

    #@ab
    .line 764
    .restart local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    #@ad
    .line 765
    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    #@ae
    .line 766
    .restart local v2    # "bestKeymasterDigest":I
    const/4 v1, -0x1

    #@af
    .line 767
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
    .line 768
    .restart local v3    # "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@c6
    move-result v6

    #@c7
    .line 769
    .restart local v6    # "outputSizeBits":I
    if-gt v6, v5, :cond_a

    #@c9
    .line 773
    if-ne v2, v11, :cond_b

    #@cb
    .line 775
    move v2, v3

    #@cc
    .line 776
    move v1, v6

    #@cd
    goto :goto_1

    #@ce
    .line 779
    :cond_b
    if-le v6, v1, :cond_a

    #@d0
    .line 780
    move v2, v3

    #@d1
    .line 781
    move v1, v6

    #@d2
    goto :goto_1

    #@d3
    .line 785
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_c
    if-ne v2, v11, :cond_d

    #@d5
    .line 786
    return-object v10

    #@d6
    .line 788
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
    .line 789
    const-string/jumbo v9, "WithRSA"

    #@e6
    .line 788
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
    .line 690
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
    .line 631
    packed-switch p0, :pswitch_data_0

    #@3
    .line 637
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
    .line 633
    :pswitch_1
    const/16 v0, 0x100

    #@1f
    return v0

    #@20
    .line 635
    :pswitch_2
    const/16 v0, 0x800

    #@22
    return v0

    #@23
    .line 631
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
    .line 371
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@3
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@6
    move-result-object v0

    #@7
    .line 372
    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@9
    packed-switch v6, :pswitch_data_0

    #@c
    .line 429
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
    .line 375
    :pswitch_1
    const/4 v4, 0x0

    #@29
    .line 376
    .local v4, "publicExponent":Ljava/math/BigInteger;
    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@2b
    if-eqz v6, :cond_4

    #@2d
    move-object v5, v0

    #@2e
    .line 377
    check-cast v5, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@30
    .line 378
    .local v5, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@32
    if-ne v6, v8, :cond_3

    #@34
    .line 379
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@37
    move-result v6

    #@38
    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@3a
    .line 385
    :cond_0
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    #@3d
    move-result-object v4

    #@3e
    .line 390
    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_1
    if-nez v4, :cond_2

    #@40
    .line 391
    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    #@42
    .line 393
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
    .line 394
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@4d
    .line 395
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
    .line 394
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@64
    throw v6

    #@65
    .line 380
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
    .line 381
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
    .line 382
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@7d
    .line 381
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    .line 382
    const-string/jumbo v8, " and "

    #@84
    .line 381
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    .line 383
    const-string/jumbo v8, ": "

    #@8f
    .line 381
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    .line 383
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@95
    .line 381
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    .line 383
    const-string/jumbo v8, " vs "

    #@9c
    .line 381
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    .line 383
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@a3
    move-result v8

    #@a4
    .line 381
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
    .line 386
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_4
    if-eqz v0, :cond_1

    #@b2
    .line 387
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@b4
    .line 388
    const-string/jumbo v7, "RSA may only use RSAKeyGenParameterSpec"

    #@b7
    .line 387
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v6

    #@bb
    .line 397
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
    .line 398
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@c5
    .line 399
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
    .line 400
    const-string/jumbo v8, ". Maximum supported value: "

    #@d8
    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    .line 400
    sget-object v8, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    #@de
    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 398
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v6

    #@ea
    .line 402
    :cond_6
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@ec
    .line 370
    :cond_7
    :goto_0
    return-void

    #@ed
    .line 406
    :pswitch_2
    instance-of v6, v0, Ljava/security/spec/ECGenParameterSpec;

    #@ef
    if-eqz v6, :cond_a

    #@f1
    move-object v2, v0

    #@f2
    .line 407
    check-cast v2, Ljava/security/spec/ECGenParameterSpec;

    #@f4
    .line 408
    .local v2, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@f7
    move-result-object v1

    #@f8
    .line 409
    .local v1, "curveName":Ljava/lang/String;
    sget-object v6, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    #@fa
    .line 410
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@fc
    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    .line 409
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    move-result-object v3

    #@104
    check-cast v3, Ljava/lang/Integer;

    #@106
    .line 411
    .local v3, "ecSpecKeySizeBits":Ljava/lang/Integer;
    if-nez v3, :cond_8

    #@108
    .line 412
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@10a
    .line 413
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
    .line 414
    const-string/jumbo v8, ". Supported: "

    #@11d
    .line 413
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    .line 414
    sget-object v8, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    #@123
    .line 413
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v7

    #@127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v7

    #@12b
    .line 412
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v6

    #@12f
    .line 416
    :cond_8
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@131
    if-ne v6, v8, :cond_9

    #@133
    .line 417
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@136
    move-result v6

    #@137
    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@139
    goto :goto_0

    #@13a
    .line 418
    :cond_9
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@13c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@13f
    move-result v7

    #@140
    if-eq v6, v7, :cond_7

    #@142
    .line 419
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
    .line 420
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@152
    .line 419
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v7

    #@156
    .line 420
    const-string/jumbo v8, " and "

    #@159
    .line 419
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v7

    #@161
    .line 421
    const-string/jumbo v8, ": "

    #@164
    .line 419
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v7

    #@168
    .line 421
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@16a
    .line 419
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v7

    #@16e
    .line 421
    const-string/jumbo v8, " vs "

    #@171
    .line 419
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
    .line 423
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "ecSpecKeySizeBits":Ljava/lang/Integer;
    :cond_a
    if-eqz v0, :cond_7

    #@183
    .line 424
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@185
    .line 425
    const-string/jumbo v7, "EC may only use ECGenParameterSpec"

    #@188
    .line 424
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@18b
    throw v6

    #@18c
    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private resetAll()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 354
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@4
    .line 355
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@6
    .line 356
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@9
    .line 357
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@b
    .line 358
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@d
    .line 359
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@f
    .line 360
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@11
    .line 361
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@13
    .line 362
    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@15
    .line 363
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@17
    .line 364
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    #@19
    .line 365
    iput-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@1b
    .line 366
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@1d
    .line 367
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1f
    .line 353
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 20

    #@0
    .prologue
    .line 435
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@a
    if-nez v2, :cond_1

    #@c
    .line 436
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v17, "Not initialized"

    #@11
    move-object/from16 v0, v17

    #@13
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 439
    :cond_1
    move-object/from16 v0, p0

    #@19
    iget-boolean v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@1b
    if-eqz v2, :cond_2

    #@1d
    const/4 v6, 0x1

    #@1e
    .line 440
    .local v6, "flags":I
    :goto_0
    and-int/lit8 v2, v6, 0x1

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 441
    move-object/from16 v0, p0

    #@24
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@26
    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    #@29
    move-result-object v2

    #@2a
    sget-object v17, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@2c
    move-object/from16 v0, v17

    #@2e
    if-eq v2, v0, :cond_3

    #@30
    .line 442
    new-instance v2, Ljava/lang/IllegalStateException;

    #@32
    .line 443
    const-string/jumbo v17, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    #@35
    .line 442
    move-object/from16 v0, v17

    #@37
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 439
    .end local v6    # "flags":I
    :cond_2
    const/4 v6, 0x0

    #@3c
    .restart local v6    # "flags":I
    goto :goto_0

    #@3d
    .line 447
    :cond_3
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@3f
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@42
    .line 448
    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    move-object/from16 v0, p0

    #@44
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@46
    int-to-long v0, v2

    #@47
    move-wide/from16 v18, v0

    #@49
    const v2, 0x30000003

    #@4c
    move-wide/from16 v0, v18

    #@4e
    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@51
    .line 449
    move-object/from16 v0, p0

    #@53
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@55
    const v17, 0x10000002

    #@58
    move/from16 v0, v17

    #@5a
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@5d
    .line 450
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@61
    const v17, 0x20000001

    #@64
    move/from16 v0, v17

    #@66
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@69
    .line 451
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@6d
    const v17, 0x20000004

    #@70
    move/from16 v0, v17

    #@72
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@75
    .line 452
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@79
    const v17, 0x20000006

    #@7c
    move/from16 v0, v17

    #@7e
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@81
    .line 453
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@85
    const v17, 0x20000006

    #@88
    move/from16 v0, v17

    #@8a
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@8d
    .line 454
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@91
    const v17, 0x20000005

    #@94
    move/from16 v0, v17

    #@96
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@99
    .line 457
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@9d
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@a0
    move-result v2

    #@a1
    .line 458
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@a5
    move-object/from16 v17, v0

    #@a7
    invoke-virtual/range {v17 .. v17}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@aa
    move-result v17

    #@ab
    .line 456
    move/from16 v0, v17

    #@ad
    invoke-static {v4, v2, v0}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    #@b0
    .line 459
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@b4
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    #@b7
    move-result-object v2

    #@b8
    const v17, 0x60000190

    #@bb
    move/from16 v0, v17

    #@bd
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@c0
    .line 461
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@c4
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@c7
    move-result-object v2

    #@c8
    .line 460
    const v17, 0x60000191

    #@cb
    move/from16 v0, v17

    #@cd
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@d0
    .line 463
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@d4
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@d7
    move-result-object v2

    #@d8
    .line 462
    const v17, 0x60000192

    #@db
    move/from16 v0, v17

    #@dd
    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@e0
    .line 464
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    #@e5
    .line 468
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@ed
    move/from16 v17, v0

    #@ef
    add-int/lit8 v17, v17, 0x7

    #@f1
    div-int/lit8 v17, v17, 0x8

    #@f3
    .line 467
    move/from16 v0, v17

    #@f5
    invoke-static {v2, v0}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@f8
    move-result-object v5

    #@f9
    .line 470
    .local v5, "additionalEntropy":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v17, "USRPKEY_"

    #@101
    move-object/from16 v0, v17

    #@103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@10b
    move-object/from16 v17, v0

    #@10d
    move-object/from16 v0, v17

    #@10f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    .line 471
    .local v3, "privateKeyAlias":Ljava/lang/String;
    const/16 v16, 0x0

    #@119
    .line 473
    .local v16, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@121
    move-object/from16 v17, v0

    #@123
    move-object/from16 v0, v17

    #@125
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@128
    .line 474
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    #@12a
    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@12d
    .line 475
    .local v7, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@131
    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    #@134
    move-result v13

    #@135
    .line 481
    .local v13, "errorCode":I
    const/4 v2, 0x1

    #@136
    if-eq v13, v2, :cond_5

    #@138
    .line 482
    new-instance v2, Ljava/security/ProviderException;

    #@13a
    .line 483
    const-string/jumbo v17, "Failed to generate key pair"

    #@13d
    invoke-static {v13}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@140
    move-result-object v18

    #@141
    .line 482
    move-object/from16 v0, v17

    #@143
    move-object/from16 v1, v18

    #@145
    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@148
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@149
    .line 527
    .end local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v13    # "errorCode":I
    :catchall_0
    move-exception v2

    #@14a
    .line 528
    if-nez v16, :cond_4

    #@14c
    .line 529
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@150
    move-object/from16 v17, v0

    #@152
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@156
    move-object/from16 v18, v0

    #@158
    invoke-static/range {v17 .. v18}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@15b
    .line 527
    :cond_4
    throw v2

    #@15c
    .line 489
    .restart local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v13    # "errorCode":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@160
    .line 488
    invoke-static {v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@163
    move-result-object v15

    #@164
    .line 494
    .local v15, "result":Ljava/security/KeyPair;
    :try_start_2
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@168
    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@16b
    move-result-object v17

    #@16c
    invoke-interface/range {v17 .. v17}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@16f
    move-result-object v17

    #@170
    move-object/from16 v0, v17

    #@172
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@175
    move-result v2

    #@176
    if-nez v2, :cond_6

    #@178
    .line 495
    new-instance v2, Ljava/security/ProviderException;

    #@17a
    .line 496
    new-instance v17, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v18, "Generated key pair algorithm does not match requested algorithm: "

    #@182
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v17

    #@186
    .line 497
    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@189
    move-result-object v18

    #@18a
    invoke-interface/range {v18 .. v18}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@18d
    move-result-object v18

    #@18e
    .line 496
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v17

    #@192
    .line 497
    const-string/jumbo v18, " vs "

    #@195
    .line 496
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v17

    #@199
    .line 497
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@19d
    move-object/from16 v18, v0

    #@19f
    .line 496
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v17

    #@1a3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v17

    #@1a7
    .line 495
    move-object/from16 v0, v17

    #@1a9
    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@1ac
    throw v2

    #@1ad
    .line 490
    .end local v15    # "result":Ljava/security/KeyPair;
    :catch_0
    move-exception v11

    #@1ae
    .line 491
    .local v11, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/security/ProviderException;

    #@1b0
    const-string/jumbo v17, "Failed to load generated key pair from keystore"

    #@1b3
    move-object/from16 v0, v17

    #@1b5
    invoke-direct {v2, v0, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b8
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b9
    .line 502
    .end local v11    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v15    # "result":Ljava/security/KeyPair;
    :cond_6
    :try_start_3
    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@1bc
    move-result-object v2

    #@1bd
    invoke-virtual {v15}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@1c0
    move-result-object v17

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move-object/from16 v1, v17

    #@1c5
    invoke-direct {v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c8
    move-result-object v8

    #@1c9
    .line 509
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    :try_start_4
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1cc
    move-result-object v9

    #@1cd
    .line 515
    .local v9, "certBytes":[B
    :try_start_5
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1d1
    .line 516
    new-instance v17, Ljava/lang/StringBuilder;

    #@1d3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1d6
    const-string/jumbo v18, "USRCERT_"

    #@1d9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v17

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@1e1
    move-object/from16 v18, v0

    #@1e3
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v17

    #@1e7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v17

    #@1eb
    .line 518
    const/16 v18, -0x1

    #@1ed
    .line 515
    move-object/from16 v0, v17

    #@1ef
    move/from16 v1, v18

    #@1f1
    invoke-virtual {v2, v0, v9, v1, v6}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@1f4
    move-result v14

    #@1f5
    .line 520
    .local v14, "insertErrorCode":I
    const/4 v2, 0x1

    #@1f6
    if-eq v14, v2, :cond_7

    #@1f8
    .line 521
    new-instance v2, Ljava/security/ProviderException;

    #@1fa
    const-string/jumbo v17, "Failed to store self-signed certificate"

    #@1fd
    .line 522
    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@200
    move-result-object v18

    #@201
    .line 521
    move-object/from16 v0, v17

    #@203
    move-object/from16 v1, v18

    #@205
    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@208
    throw v2

    #@209
    .line 503
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "certBytes":[B
    .end local v14    # "insertErrorCode":I
    :catch_1
    move-exception v10

    #@20a
    .line 504
    .local v10, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/ProviderException;

    #@20c
    const-string/jumbo v17, "Failed to generate self-signed certificate"

    #@20f
    move-object/from16 v0, v17

    #@211
    invoke-direct {v2, v0, v10}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@214
    throw v2

    #@215
    .line 510
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v12

    #@216
    .line 511
    .local v12, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/ProviderException;

    #@218
    .line 512
    const-string/jumbo v17, "Failed to obtain encoded form of self-signed certificate"

    #@21b
    .line 511
    move-object/from16 v0, v17

    #@21d
    invoke-direct {v2, v0, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@220
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@221
    .line 525
    .end local v12    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v9    # "certBytes":[B
    .restart local v14    # "insertErrorCode":I
    :cond_7
    const/16 v16, 0x1

    #@223
    .line 528
    if-nez v16, :cond_8

    #@225
    .line 529
    move-object/from16 v0, p0

    #@227
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@229
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    #@22d
    move-object/from16 v17, v0

    #@22f
    move-object/from16 v0, v17

    #@231
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@234
    .line 526
    :cond_8
    return-object v15
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    .line 171
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
    .line 172
    const-string/jumbo v2, " required to initialize this KeyPairGenerator"

    #@25
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 17
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@3
    .line 180
    const/4 v12, 0x0

    #@4
    .line 182
    .local v12, "success":Z
    if-nez p1, :cond_1

    #@6
    .line 183
    :try_start_0
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    .line 184
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
    .line 185
    const-string/jumbo v15, " or "

    #@21
    .line 184
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v14

    #@25
    .line 185
    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    #@27
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v15

    #@2b
    .line 184
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v14

    #@2f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v14

    #@33
    .line 183
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@36
    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 346
    :catchall_0
    move-exception v13

    #@38
    .line 347
    if-nez v12, :cond_0

    #@3a
    .line 348
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@3d
    .line 346
    :cond_0
    throw v13

    #@3e
    .line 189
    :cond_1
    const/4 v4, 0x0

    #@3f
    .line 190
    .local v4, "encryptionAtRestRequired":Z
    :try_start_1
    move-object/from16 v0, p0

    #@41
    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    #@43
    .line 191
    .local v6, "keymasterAlgorithm":I
    move-object/from16 v0, p1

    #@45
    instance-of v13, v0, Landroid/security/keystore/KeyGenParameterSpec;

    #@47
    if-eqz v13, :cond_3

    #@49
    .line 192
    move-object/from16 v0, p1

    #@4b
    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    #@4d
    move-object v9, v0

    #@4e
    .line 285
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
    .line 286
    move-object/from16 v0, p0

    #@58
    iput-object v9, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@5a
    .line 287
    move-object/from16 v0, p0

    #@5c
    iput v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@5e
    .line 288
    move-object/from16 v0, p0

    #@60
    iput-boolean v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    #@62
    .line 289
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    #@65
    move-result v13

    #@66
    move-object/from16 v0, p0

    #@68
    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@6a
    .line 290
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    #@6d
    .line 291
    move-object/from16 v0, p0

    #@6f
    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@71
    const/4 v14, -0x1

    #@72
    if-ne v13, v14, :cond_2

    #@74
    .line 292
    invoke-static {v6}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    #@77
    move-result v13

    #@78
    move-object/from16 v0, p0

    #@7a
    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@7c
    .line 294
    :cond_2
    move-object/from16 v0, p0

    #@7e
    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    #@80
    invoke-static {v6, v13}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(II)V

    #@83
    .line 296
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@86
    move-result-object v13

    #@87
    if-nez v13, :cond_8

    #@89
    .line 297
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@8b
    const-string/jumbo v14, "KeyStore entry alias not provided"

    #@8e
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@91
    throw v13

    #@92
    .line 193
    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v4    # "encryptionAtRestRequired":Z
    :cond_3
    move-object/from16 v0, p1

    #@94
    instance-of v13, v0, Landroid/security/KeyPairGeneratorSpec;

    #@96
    if-eqz v13, :cond_7

    #@98
    .line 195
    move-object/from16 v0, p1

    #@9a
    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    #@9c
    move-object v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    .line 198
    .local v8, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    :try_start_2
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    move-result-object v11

    #@a1
    .line 199
    .local v11, "specKeyAlgorithm":Ljava/lang/String;
    if-eqz v11, :cond_4

    #@a3
    .line 203
    :try_start_3
    invoke-static {v11}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a6
    move-result v6

    #@a7
    .line 210
    :cond_4
    packed-switch v6, :pswitch_data_0

    #@aa
    .line 256
    :pswitch_0
    :try_start_4
    new-instance v13, Ljava/security/ProviderException;

    #@ac
    .line 257
    new-instance v14, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v15, "Unsupported algorithm: "

    #@b4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v14

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    #@bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v14

    #@c4
    .line 256
    invoke-direct {v13, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v13
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c8
    .line 275
    .end local v4    # "encryptionAtRestRequired":Z
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@c9
    .line 276
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@cb
    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    #@ce
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@cf
    .line 205
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "encryptionAtRestRequired":Z
    .restart local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@d0
    .line 206
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@d2
    .line 207
    const-string/jumbo v14, "Invalid key type in parameters"

    #@d5
    .line 206
    invoke-direct {v13, v14, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d8
    throw v13

    #@d9
    .line 212
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@db
    .line 213
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    #@de
    move-result-object v13

    #@df
    .line 214
    const/16 v14, 0xc

    #@e1
    .line 212
    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    #@e4
    .line 218
    .local v10, "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x6

    #@e5
    new-array v13, v13, [Ljava/lang/String;

    #@e7
    .line 219
    const-string/jumbo v14, "NONE"

    #@ea
    const/4 v15, 0x0

    #@eb
    aput-object v14, v13, v15

    #@ed
    .line 220
    const-string/jumbo v14, "SHA-1"

    #@f0
    const/4 v15, 0x1

    #@f1
    aput-object v14, v13, v15

    #@f3
    .line 221
    const-string/jumbo v14, "SHA-224"

    #@f6
    const/4 v15, 0x2

    #@f7
    aput-object v14, v13, v15

    #@f9
    .line 222
    const-string/jumbo v14, "SHA-256"

    #@fc
    const/4 v15, 0x3

    #@fd
    aput-object v14, v13, v15

    #@ff
    .line 223
    const-string/jumbo v14, "SHA-384"

    #@102
    const/4 v15, 0x4

    #@103
    aput-object v14, v13, v15

    #@105
    .line 224
    const-string/jumbo v14, "SHA-512"

    #@108
    const/4 v15, 0x5

    #@109
    aput-object v14, v13, v15

    #@10b
    .line 218
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@10e
    .line 260
    :goto_1
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    #@111
    move-result v13

    #@112
    const/4 v14, -0x1

    #@113
    if-eq v13, v14, :cond_5

    #@115
    .line 261
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    #@118
    move-result v13

    #@119
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@11c
    .line 263
    :cond_5
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@11f
    move-result-object v13

    #@120
    if-eqz v13, :cond_6

    #@122
    .line 265
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    #@125
    move-result-object v13

    #@126
    .line 264
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@129
    .line 267
    :cond_6
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    #@12c
    move-result-object v13

    #@12d
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@130
    .line 268
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    #@133
    move-result-object v13

    #@134
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@137
    .line 269
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    #@13a
    move-result-object v13

    #@13b
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@13e
    .line 270
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    #@141
    move-result-object v13

    #@142
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@145
    .line 271
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->isEncryptionRequired()Z

    #@148
    move-result v4

    #@149
    .line 272
    .local v4, "encryptionAtRestRequired":Z
    const/4 v13, 0x0

    #@14a
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@14d
    .line 274
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    #@150
    move-result-object v9

    #@151
    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    goto/16 :goto_0

    #@153
    .line 227
    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v4, "encryptionAtRestRequired":Z
    :pswitch_2
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@155
    .line 228
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    #@158
    move-result-object v13

    #@159
    .line 229
    const/16 v14, 0xf

    #@15b
    .line 227
    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    #@15e
    .line 234
    .restart local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x7

    #@15f
    new-array v13, v13, [Ljava/lang/String;

    #@161
    .line 235
    const-string/jumbo v14, "NONE"

    #@164
    const/4 v15, 0x0

    #@165
    aput-object v14, v13, v15

    #@167
    .line 236
    const-string/jumbo v14, "MD5"

    #@16a
    const/4 v15, 0x1

    #@16b
    aput-object v14, v13, v15

    #@16d
    .line 237
    const-string/jumbo v14, "SHA-1"

    #@170
    const/4 v15, 0x2

    #@171
    aput-object v14, v13, v15

    #@173
    .line 238
    const-string/jumbo v14, "SHA-224"

    #@176
    const/4 v15, 0x3

    #@177
    aput-object v14, v13, v15

    #@179
    .line 239
    const-string/jumbo v14, "SHA-256"

    #@17c
    const/4 v15, 0x4

    #@17d
    aput-object v14, v13, v15

    #@17f
    .line 240
    const-string/jumbo v14, "SHA-384"

    #@182
    const/4 v15, 0x5

    #@183
    aput-object v14, v13, v15

    #@185
    .line 241
    const-string/jumbo v14, "SHA-512"

    #@188
    const/4 v15, 0x6

    #@189
    aput-object v14, v13, v15

    #@18b
    .line 234
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@18e
    .line 244
    const/4 v13, 0x3

    #@18f
    new-array v13, v13, [Ljava/lang/String;

    #@191
    .line 245
    const-string/jumbo v14, "NoPadding"

    #@194
    const/4 v15, 0x0

    #@195
    aput-object v14, v13, v15

    #@197
    .line 246
    const-string/jumbo v14, "PKCS1Padding"

    #@19a
    const/4 v15, 0x1

    #@19b
    aput-object v14, v13, v15

    #@19d
    .line 247
    const-string/jumbo v14, "OAEPPadding"

    #@1a0
    const/4 v15, 0x2

    #@1a1
    aput-object v14, v13, v15

    #@1a3
    .line 244
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@1a6
    .line 248
    const/4 v13, 0x2

    #@1a7
    new-array v13, v13, [Ljava/lang/String;

    #@1a9
    .line 249
    const-string/jumbo v14, "PKCS1"

    #@1ac
    const/4 v15, 0x0

    #@1ad
    aput-object v14, v13, v15

    #@1af
    .line 250
    const-string/jumbo v14, "PSS"

    #@1b2
    const/4 v15, 0x1

    #@1b3
    aput-object v14, v13, v15

    #@1b5
    .line 248
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@1b8
    .line 253
    const/4 v13, 0x0

    #@1b9
    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1bc
    goto/16 :goto_1

    #@1be
    .line 279
    .end local v8    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@1c0
    .line 280
    new-instance v14, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    const-string/jumbo v15, "Unsupported params class: "

    #@1c8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v14

    #@1cc
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1cf
    move-result-object v15

    #@1d0
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d3
    move-result-object v15

    #@1d4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v14

    #@1d8
    .line 281
    const-string/jumbo v15, ". Supported: "

    #@1db
    .line 280
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v14

    #@1df
    .line 281
    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    #@1e1
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e4
    move-result-object v15

    #@1e5
    .line 280
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v14

    #@1e9
    .line 282
    const-string/jumbo v15, ", "

    #@1ec
    .line 280
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v14

    #@1f0
    .line 282
    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    #@1f2
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f5
    move-result-object v15

    #@1f6
    .line 280
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v14

    #@1fa
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v14

    #@1fe
    .line 279
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@201
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@202
    .line 302
    .end local v4    # "encryptionAtRestRequired":Z
    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_8
    :try_start_8
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    #@205
    move-result-object v5

    #@206
    .line 304
    .local v5, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@209
    move-result v13

    #@20a
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@20d
    move-result-object v13

    #@20e
    move-object/from16 v0, p0

    #@210
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    #@212
    .line 305
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    #@215
    move-result-object v13

    #@216
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@219
    move-result-object v13

    #@21a
    move-object/from16 v0, p0

    #@21c
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    #@21e
    .line 307
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    #@221
    move-result-object v13

    #@222
    .line 306
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@225
    move-result-object v13

    #@226
    move-object/from16 v0, p0

    #@228
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@22a
    .line 308
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@22d
    move-result v13

    #@22e
    and-int/lit8 v13, v13, 0x1

    #@230
    if-eqz v13, :cond_a

    #@232
    .line 309
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    #@235
    move-result v13

    #@236
    .line 308
    if-eqz v13, :cond_a

    #@238
    .line 310
    move-object/from16 v0, p0

    #@23a
    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    #@23c
    const/4 v13, 0x0

    #@23d
    array-length v15, v14

    #@23e
    :goto_2
    if-ge v13, v15, :cond_a

    #@240
    aget v7, v14, v13

    #@242
    .line 311
    .local v7, "keymasterPadding":I
    invoke-static {v7}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    #@245
    move-result v16

    #@246
    if-nez v16, :cond_9

    #@248
    .line 314
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@24a
    .line 315
    new-instance v14, Ljava/lang/StringBuilder;

    #@24c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@24f
    const-string/jumbo v15, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    #@252
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v14

    #@256
    .line 317
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@259
    move-result-object v15

    #@25a
    .line 315
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v14

    #@25e
    .line 319
    const-string/jumbo v15, ". See "

    #@261
    .line 315
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v14

    #@265
    .line 319
    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    #@267
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26a
    move-result-object v15

    #@26b
    .line 315
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v14

    #@26f
    .line 320
    const-string/jumbo v15, " documentation."

    #@272
    .line 315
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v14

    #@276
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v14

    #@27a
    .line 314
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@27d
    throw v13
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@27e
    .line 338
    .end local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v7    # "keymasterPadding":I
    :catch_2
    move-exception v3

    #@27f
    .line 339
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    :try_start_9
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@281
    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    #@284
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@285
    .line 310
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v7    # "keymasterPadding":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    #@287
    goto :goto_2

    #@288
    .line 325
    .end local v7    # "keymasterPadding":I
    :cond_a
    :try_start_a
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    #@28b
    move-result-object v13

    #@28c
    .line 324
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@28f
    move-result-object v13

    #@290
    move-object/from16 v0, p0

    #@292
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    #@294
    .line 326
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@297
    move-result v13

    #@298
    if-eqz v13, :cond_c

    #@29a
    .line 327
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@29d
    move-result-object v13

    #@29e
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@2a1
    move-result-object v13

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    #@2a6
    .line 335
    :goto_3
    new-instance v13, Landroid/security/keymaster/KeymasterArguments;

    #@2a8
    invoke-direct {v13}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@2ab
    .line 336
    move-object/from16 v0, p0

    #@2ad
    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2af
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@2b2
    move-result v14

    #@2b3
    .line 337
    move-object/from16 v0, p0

    #@2b5
    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2b7
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@2ba
    move-result v15

    #@2bb
    .line 335
    invoke-static {v13, v14, v15}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@2be
    .line 342
    :try_start_b
    move-object/from16 v0, p0

    #@2c0
    iput-object v5, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    #@2c2
    .line 343
    move-object/from16 v0, p2

    #@2c4
    move-object/from16 v1, p0

    #@2c6
    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@2c8
    .line 344
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@2cb
    move-result-object v13

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@2d0
    .line 345
    const/4 v12, 0x1

    #@2d1
    .line 347
    if-nez v12, :cond_b

    #@2d3
    .line 348
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    #@2d6
    .line 177
    :cond_b
    return-void

    #@2d7
    .line 329
    :cond_c
    :try_start_c
    sget-object v13, Llibcore/util/EmptyArray;->INT:[I

    #@2d9
    move-object/from16 v0, p0

    #@2db
    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2dd
    goto :goto_3

    #@2de
    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
