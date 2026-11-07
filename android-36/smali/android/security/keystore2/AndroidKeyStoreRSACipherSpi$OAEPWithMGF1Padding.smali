.class abstract Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OAEPWithMGF1Padding"
.end annotation


# static fields
.field private static final blacklist MGF_ALGORITHM_MGF1:Ljava/lang/String; = "MGF1"


# instance fields
.field private blacklist mDigestOutputSizeBytes:I

.field private blacklist mKeymasterDigest:I

.field private blacklist mKeymasterMgf1Digest:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "keymasterDigest"    # I

    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 168
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterMgf1Digest:I

    .line 172
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 173
    nop

    .line 174
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    .line 175
    return-void
.end method

.method private static blacklist isMgfDigestTagPresentInKeyProperties([Landroid/system/keystore2/Authorization;)Z
    .registers 7
    .param p0, "keyCharacteristics"    # [Landroid/system/keystore2/Authorization;

    .line 293
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_15

    aget-object v3, p0, v2

    .line 294
    .local v3, "authorization":Landroid/system/keystore2/Authorization;
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v4, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v5, 0x200000cb

    if-ne v4, v5, :cond_12

    .line 295
    const/4 v0, 0x1

    return v0

    .line 293
    .end local v3    # "authorization":Landroid/system/keystore2/Authorization;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 299
    :cond_15
    return v1
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V
    .registers 5
    .param p2, "keyCharacteristics"    # [Landroid/system/keystore2/Authorization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/Authorization;",
            ")V"
        }
    .end annotation

    .line 305
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-super {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V

    .line 306
    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {p2}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->isMgfDigestTagPresentInKeyProperties([Landroid/system/keystore2/Authorization;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 315
    const v0, 0x200000cb

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterMgf1Digest:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_21
    return-void
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    .line 271
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 273
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterMgf1Digest:I

    .line 275
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToMGF1ParameterSpec(I)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "MGF1"

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 278
    .local v0, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :try_start_15
    const-string v1, "OAEP"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 279
    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1e} :catch_28
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 280
    return-object v1

    .line 284
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_1f
    move-exception v1

    .line 285
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to initialize OAEP AlgorithmParameters with an IV"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 281
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_28
    move-exception v1

    .line 282
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to obtain OAEP AlgorithmParameters"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .registers 2

    .line 334
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected final blacklist getTransform()Ljava/lang/String;
    .registers 2

    .line 339
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    packed-switch v0, :pswitch_data_18

    .line 351
    const-string v0, "RSA/ECB/OAEPPadding"

    return-object v0

    .line 349
    :pswitch_8
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    return-object v0

    .line 347
    :pswitch_b
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    return-object v0

    .line 345
    :pswitch_e
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    return-object v0

    .line 343
    :pswitch_11
    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    return-object v0

    .line 341
    :pswitch_14
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method protected final blacklist initAlgorithmSpecificParameters()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .registers 6
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 251
    if-nez p1, :cond_3

    .line 252
    return-void

    .line 257
    :cond_3
    :try_start_3
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_b
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_b} :catch_2b

    .line 261
    .local v0, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    nop

    .line 262
    if-eqz v0, :cond_12

    .line 266
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 267
    return-void

    .line 263
    :cond_12
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAEP parameters required, but not provided in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v0    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :catch_2b
    move-exception v0

    .line 259
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAEP parameters required, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 15
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 183
    const-string v0, "Unsupported digest: "

    if-nez p1, :cond_5

    .line 184
    return-void

    .line 187
    :cond_5
    instance-of v1, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v1, :cond_11c

    .line 192
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 193
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MGF1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 198
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "jcaDigest":Ljava/lang/String;
    :try_start_1c
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_d7

    .line 205
    .local v3, "keymasterDigest":I
    nop

    .line 206
    packed-switch v3, :pswitch_data_13c

    .line 215
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :pswitch_3b
    nop

    .line 218
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 219
    .local v0, "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz v0, :cond_cf

    .line 223
    instance-of v4, v0, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v4, :cond_b0

    .line 227
    move-object v4, v0

    check-cast v4, Ljava/security/spec/MGF1ParameterSpec;

    .line 228
    .local v4, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "mgf1JcaDigest":Ljava/lang/String;
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v6

    .line 230
    .local v6, "pSource":Ljavax/crypto/spec/PSource;
    instance-of v7, v6, Ljavax/crypto/spec/PSource$PSpecified;

    const-string v8, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    const-string v9, "Unsupported source of encoding input P: "

    if-eqz v7, :cond_95

    .line 235
    move-object v7, v6

    check-cast v7, Ljavax/crypto/spec/PSource$PSpecified;

    .line 236
    .local v7, "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v7}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v10

    .line 237
    .local v10, "pSourceValue":[B
    if-eqz v10, :cond_81

    array-length v11, v10

    if-gtz v11, :cond_66

    goto :goto_81

    .line 238
    :cond_66
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 242
    :cond_81
    :goto_81
    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 243
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterMgf1Digest:I

    .line 244
    nop

    .line 245
    invoke-static {v3}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    .line 246
    return-void

    .line 231
    .end local v7    # "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v10    # "pSourceValue":[B
    :cond_95
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 224
    .end local v4    # "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "mgf1JcaDigest":Ljava/lang/String;
    .end local v6    # "pSource":Ljavax/crypto/spec/PSource;
    :cond_b0
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported MGF parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Only MGF1ParameterSpec supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_cf
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "MGF parameters must be provided"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    .end local v0    # "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v3    # "keymasterDigest":I
    :catch_d7
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 194
    .end local v2    # "jcaDigest":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_ef
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported MGF: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Only "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_11c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameter spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only OAEPParameterSpec supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_13c
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method protected final blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 2
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 324
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 325
    return-void
.end method
