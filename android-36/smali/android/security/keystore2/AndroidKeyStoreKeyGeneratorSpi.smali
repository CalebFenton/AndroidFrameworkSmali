.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$DESede;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyGeneratorSpi"


# instance fields
.field private final blacklist mDefaultKeySizeBits:I

.field protected blacklist mKeySizeBits:I

.field private final blacklist mKeyStore:Landroid/security/KeyStore2;

.field private final blacklist mKeymasterAlgorithm:I

.field private blacklist mKeymasterBlockModes:[I

.field private final blacklist mKeymasterDigest:I

.field private blacklist mKeymasterDigests:[I

.field private blacklist mKeymasterPaddings:[I

.field private blacklist mKeymasterPurposes:[I

.field private blacklist mRng:Ljava/security/SecureRandom;

.field private blacklist mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public static synthetic blacklist $r8$lambda$BcSkqVDsbYdzamNOvAwI3W4IZEU(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->lambda$engineGenerateKey$1(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .registers 4
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "defaultKeySizeBits"    # I

    .line 134
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    .line 135
    return-void
.end method

.method protected constructor blacklist <init>(III)V
    .registers 6
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterDigest"    # I
    .param p3, "defaultKeySizeBits"    # I

    .line 140
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 117
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 141
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    .line 142
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    .line 143
    iput p3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    .line 144
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    if-lez v0, :cond_28

    .line 148
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    goto :goto_27

    .line 149
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest algorithm must be specified for HMAC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_27
    :goto_27
    return-void

    .line 145
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$engineGenerateKey$0(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 300
    nop

    .line 301
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method private synthetic blacklist lambda$engineGenerateKey$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "params"    # Ljava/util/List;
    .param p2, "blockMode"    # Ljava/lang/Integer;

    .line 305
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_18

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    if-ne v0, v1, :cond_18

    .line 307
    const v0, 0x30000008

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_18
    nop

    .line 314
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    const v1, 0x20000004

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method static synthetic blacklist lambda$engineGenerateKey$2(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "padding"    # Ljava/lang/Integer;

    .line 318
    nop

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method static synthetic blacklist lambda$engineGenerateKey$3(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "params"    # Ljava/util/List;
    .param p1, "digest"    # Ljava/lang/Integer;

    .line 323
    nop

    .line 324
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method private blacklist resetAll()V
    .registers 3

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 276
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 277
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 278
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    .line 279
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    .line 280
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    .line 281
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 14

    .line 285
    const-string v0, "engineGenerateKey"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 287
    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-eqz v1, :cond_194

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 293
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v0, 0x30000003

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const v0, 0x10000002

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v2, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 304
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;)V

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 317
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v2, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 322
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 328
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v2, 0x80

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_92

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    array-length v0, v0

    if-eqz v0, :cond_92

    .line 330
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    aget v0, v0, v4

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    .line 331
    .local v0, "digestOutputSizeBits":I
    if-eq v0, v3, :cond_71

    .line 336
    const v2, 0x30000008

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 332
    :cond_71
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    aget v4, v6, v4

    .line 334
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    .end local v0    # "digestOutputSizeBits":I
    :cond_92
    :goto_92
    invoke-static {v5, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 343
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 344
    nop

    .line 345
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    .line 344
    const v2, 0x60000190

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_aa
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 349
    nop

    .line 351
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    .line 349
    const v2, 0x60000191

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_bf
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 355
    nop

    .line 357
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    .line 355
    const v2, 0x60000192

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_d4
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ec

    .line 362
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v0

    if-nez v0, :cond_ec

    .line 364
    const v0, 0x70000007

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_ec
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v0

    if-eq v0, v3, :cond_101

    .line 370
    nop

    .line 372
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v0

    .line 370
    const v2, 0x30000195

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_101
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 377
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    .line 380
    .local v7, "additionalEntropy":[B
    const/4 v0, 0x1

    .line 381
    .local v0, "securityLevel":I
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v2

    if-eqz v2, :cond_117

    .line 382
    const/4 v0, 0x2

    move v8, v0

    goto :goto_118

    .line 381
    :cond_117
    move v8, v0

    .line 385
    .end local v0    # "securityLevel":I
    .local v8, "securityLevel":I
    :goto_118
    const/4 v0, 0x0

    .line 386
    .local v0, "flags":I
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v2

    if-eqz v2, :cond_123

    .line 387
    or-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_124

    .line 386
    :cond_123
    move v6, v0

    .line 390
    .end local v0    # "flags":I
    .local v6, "flags":I
    :goto_124
    new-instance v3, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v3}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 391
    .local v3, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 392
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 393
    iget-wide v9, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_13f

    .line 394
    goto :goto_140

    .line 395
    :cond_13f
    const/4 v4, 0x2

    :goto_140
    iput v4, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 398
    const/4 v9, 0x0

    .line 399
    .local v9, "metadata":Landroid/system/keystore2/KeyMetadata;
    const/4 v2, 0x0

    .line 401
    .local v2, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :try_start_147
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v8}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v0

    move-object v2, v0

    .line 402
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0
    :try_end_153
    .catch Landroid/security/KeyStoreException; {:try_start_147 .. :try_end_153} :catch_17c

    move-object v4, v0

    .line 417
    .end local v9    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v4, "metadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 420
    :try_start_155
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iget v9, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v0, v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v0
    :try_end_15d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_155 .. :try_end_15d} :catch_164

    .line 430
    .local v0, "keyAlgorithmJCA":Ljava/lang/String;
    nop

    .line 431
    new-instance v9, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-direct {v9, v3, v4, v0, v2}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 433
    .local v9, "result":Ljavax/crypto/SecretKey;
    return-object v9

    .line 422
    .end local v0    # "keyAlgorithmJCA":Ljava/lang/String;
    .end local v9    # "result":Ljavax/crypto/SecretKey;
    :catch_164
    move-exception v0

    move-object v9, v0

    .line 424
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_166
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v3}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_16b
    .catch Landroid/security/KeyStoreException; {:try_start_166 .. :try_end_16b} :catch_16c

    .line 428
    goto :goto_174

    .line 425
    :catch_16c
    move-exception v0

    .line 426
    .local v0, "kse":Landroid/security/KeyStoreException;
    const-string v10, "AndroidKeyStoreKeyGeneratorSpi"

    const-string v11, "Failed to delete key after generating successfully but failed to get the algorithm string."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0    # "kse":Landroid/security/KeyStoreException;
    :goto_174
    new-instance v0, Ljava/security/ProviderException;

    const-string v10, "Failed to obtain JCA secret key algorithm name"

    invoke-direct {v0, v10, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 408
    .end local v4    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v9, "metadata":Landroid/system/keystore2/KeyMetadata;
    :catch_17c
    move-exception v0

    .line 409
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v4

    packed-switch v4, :pswitch_data_19c

    .line 415
    new-instance v4, Ljava/security/ProviderException;

    const-string v10, "Keystore key generation failed"

    invoke-direct {v4, v10, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 413
    :pswitch_18c
    new-instance v4, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v10, "Failed to generate key"

    invoke-direct {v4, v10}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v2    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    .end local v3    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v6    # "flags":I
    .end local v7    # "additionalEntropy":[B
    .end local v8    # "securityLevel":I
    .end local v9    # "metadata":Landroid/system/keystore2/KeyMetadata;
    :cond_194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_19c
    .packed-switch -0x44
        :pswitch_18c
    .end packed-switch
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "success":Z
    if-eqz p1, :cond_1a3

    :try_start_6
    instance-of v1, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v1, :cond_1a3

    .line 177
    move-object v1, p1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 178
    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19b

    .line 182
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 183
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 185
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    goto :goto_25

    :cond_23
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    :goto_25
    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 186
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    if-lez v2, :cond_180

    .line 189
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    rem-int/lit8 v2, v2, 0x8
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_1c8

    if-nez v2, :cond_165

    .line 195
    :try_start_31
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    .line 196
    nop

    .line 197
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    .line 198
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_156

    .line 202
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    .line 203
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_aa

    .line 204
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 205
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    array-length v5, v2

    move v6, v4

    :goto_6a
    if-ge v6, v5, :cond_aa

    aget v7, v2, v6

    .line 206
    .local v7, "keymasterBlockMode":I
    invoke-static {v7}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 205
    .end local v7    # "keymasterBlockMode":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 208
    .restart local v7    # "keymasterBlockMode":I
    :cond_77
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". See "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyGenParameterSpec;

    .line 212
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " documentation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 217
    .end local v7    # "keymasterBlockMode":I
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_aa
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v5, 0x21

    if-ne v2, v5, :cond_bf

    .line 218
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_b7

    goto :goto_bf

    .line 219
    :cond_b7
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "3DES key size must be 168 bits."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 223
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_bf
    :goto_bf
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v5, 0x80

    if-ne v2, v5, :cond_131

    .line 224
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v5, 0x40

    if-lt v2, v5, :cond_129

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v5, 0x200

    if-gt v2, v5, :cond_129

    .line 234
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    .line 235
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_146

    .line 238
    nop

    .line 239
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    .line 240
    .local v2, "keymasterDigestsFromSpec":[I
    array-length v5, v2

    if-ne v5, v3, :cond_f2

    aget v3, v2, v4

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    if-ne v3, v4, :cond_f2

    .line 248
    .end local v2    # "keymasterDigestsFromSpec":[I
    goto :goto_146

    .line 242
    .restart local v2    # "keymasterDigestsFromSpec":[I
    :cond_f2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported digests specification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 244
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    .line 245
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supported for this HMAC key algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 225
    .end local v2    # "keymasterDigestsFromSpec":[I
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_129
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "HMAC key sizes must be within 64-512 bits, inclusive."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 251
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_131
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 252
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_146

    .line 254
    :cond_142
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    .line 261
    :cond_146
    :goto_146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_14e
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_14e} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_14e} :catch_15e
    .catchall {:try_start_31 .. :try_end_14e} :catchall_1c8

    .line 264
    nop

    .line 266
    const/4 v0, 0x1

    .line 268
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-nez v0, :cond_155

    .line 269
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 272
    :cond_155
    return-void

    .line 199
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_156
    :try_start_156
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Signature paddings not supported for symmetric key algorithms"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2
    :try_end_15e
    .catch Ljava/lang/IllegalStateException; {:try_start_156 .. :try_end_15e} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_15e} :catch_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_1c8

    .line 262
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_15e
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_15f
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 190
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_165
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be a multiple of 8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 187
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_180
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 179
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_19b
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "KeyStore entry alias not provided"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 174
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_1a3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize without a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/security/keystore/KeyGenParameterSpec;

    .line 175
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1
    :try_end_1c8
    .catchall {:try_start_15f .. :try_end_1c8} :catchall_1c8

    .line 268
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catchall_1c8
    move-exception v1

    if-nez v0, :cond_1ce

    .line 269
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 271
    :cond_1ce
    throw v1
.end method
