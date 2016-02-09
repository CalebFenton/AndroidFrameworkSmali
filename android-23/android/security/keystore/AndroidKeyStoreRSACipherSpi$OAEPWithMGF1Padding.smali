.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.super Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OAEPWithMGF1Padding"
.end annotation


# static fields
.field private static final MGF_ALGORITGM_MGF1:Ljava/lang/String; = "MGF1"


# instance fields
.field private mDigestOutputSizeBytes:I

.field private mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    #@0
    .prologue
    .line 169
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    #@4
    .line 165
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    #@7
    .line 170
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    #@9
    .line 172
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@c
    move-result v0

    #@d
    add-int/lit8 v0, v0, 0x7

    #@f
    div-int/lit8 v0, v0, 0x8

    #@11
    .line 171
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    #@13
    .line 168
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    #@3
    .line 297
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    #@5
    const v1, 0x20000005

    #@8
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@b
    .line 295
    return-void
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    #@0
    .prologue
    .line 274
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2
    .line 275
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    #@4
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 276
    const-string/jumbo v5, "MGF1"

    #@b
    .line 277
    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@d
    .line 278
    sget-object v7, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@f
    .line 274
    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@12
    .line 280
    .local v3, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :try_start_0
    const-string/jumbo v4, "OAEP"

    #@15
    invoke-static {v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@18
    move-result-object v2

    #@19
    .line 281
    .local v2, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 282
    return-object v2

    #@1d
    .line 286
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v1

    #@1e
    .line 287
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v4, Ljava/security/ProviderException;

    #@20
    .line 288
    const-string/jumbo v5, "Failed to initialize OAEP AlgorithmParameters with an IV"

    #@23
    .line 287
    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v4

    #@27
    .line 283
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v0

    #@28
    .line 284
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/ProviderException;

    #@2a
    .line 285
    const-string/jumbo v5, "Failed to obtain OAEP AlgorithmParameters"

    #@2d
    .line 284
    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v4
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    #@0
    .prologue
    .line 308
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->isEncrypting()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    if-nez p1, :cond_0

    #@2
    .line 254
    return-void

    #@3
    .line 259
    :cond_0
    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    #@5
    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 264
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    if-nez v1, :cond_1

    #@d
    .line 265
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "OAEP parameters required, but not provided in parameters: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 260
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :catch_0
    move-exception v0

    #@28
    .line 261
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "OAEP parameters required, but not found in parameters: "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v2

    #@42
    .line 268
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@45
    .line 252
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 13
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    if-nez p1, :cond_0

    #@2
    .line 182
    return-void

    #@3
    .line 185
    :cond_0
    instance-of v10, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@5
    if-nez v10, :cond_1

    #@7
    .line 186
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@9
    .line 187
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v12, "Unsupported parameter spec: "

    #@11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    .line 188
    const-string/jumbo v12, ". Only OAEPParameterSpec supported"

    #@1c
    .line 187
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v11

    #@20
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    .line 186
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@27
    throw v10

    #@28
    :cond_1
    move-object v9, p1

    #@29
    .line 190
    check-cast v9, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2b
    .line 191
    .local v9, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    const-string/jumbo v10, "MGF1"

    #@2e
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v10

    #@36
    if-nez v10, :cond_2

    #@38
    .line 192
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@3a
    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v12, "Unsupported MGF: "

    #@42
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v11

    #@4e
    .line 194
    const-string/jumbo v12, ". Only "

    #@51
    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v11

    #@55
    .line 194
    const-string/jumbo v12, "MGF1"

    #@58
    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v11

    #@5c
    .line 194
    const-string/jumbo v12, " supported"

    #@5f
    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v11

    #@63
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v11

    #@67
    .line 192
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v10

    #@6b
    .line 196
    :cond_2
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 199
    .local v1, "jcaDigest":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    move-result v2

    #@73
    .line 204
    .local v2, "keymasterDigest":I
    packed-switch v2, :pswitch_data_0

    #@76
    .line 213
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@78
    .line 214
    new-instance v11, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v12, "Unsupported digest: "

    #@80
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v11

    #@88
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v11

    #@8c
    .line 213
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v10

    #@90
    .line 200
    .end local v2    # "keymasterDigest":I
    :catch_0
    move-exception v0

    #@91
    .line 201
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@93
    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v12, "Unsupported digest: "

    #@9b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v11

    #@9f
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v11

    #@a3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    .line 201
    invoke-direct {v10, v11, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aa
    throw v10

    #@ab
    .line 216
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "keymasterDigest":I
    :pswitch_0
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@ae
    move-result-object v4

    #@af
    .line 217
    .local v4, "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v4, :cond_3

    #@b1
    .line 218
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@b3
    const-string/jumbo v11, "MGF parameters must be provided"

    #@b6
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v10

    #@ba
    .line 221
    :cond_3
    instance-of v10, v4, Ljava/security/spec/MGF1ParameterSpec;

    #@bc
    if-nez v10, :cond_4

    #@be
    .line 222
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@c0
    new-instance v11, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v12, "Unsupported MGF parameters: "

    #@c8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v11

    #@cc
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v11

    #@d0
    .line 223
    const-string/jumbo v12, ". Only MGF1ParameterSpec supported"

    #@d3
    .line 222
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@de
    throw v10

    #@df
    :cond_4
    move-object v5, v4

    #@e0
    .line 225
    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    #@e2
    .line 226
    .local v5, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 227
    .local v3, "mgf1JcaDigest":Ljava/lang/String;
    const-string/jumbo v10, "SHA-1"

    #@e9
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ec
    move-result v10

    #@ed
    if-nez v10, :cond_5

    #@ef
    .line 228
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@f1
    .line 229
    new-instance v11, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v12, "Unsupported MGF1 digest: "

    #@f9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v11

    #@fd
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v11

    #@101
    .line 230
    const-string/jumbo v12, ". Only "

    #@104
    .line 229
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v11

    #@108
    .line 230
    const-string/jumbo v12, "SHA-1"

    #@10b
    .line 229
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v11

    #@10f
    .line 230
    const-string/jumbo v12, " supported"

    #@112
    .line 229
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v11

    #@116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v11

    #@11a
    .line 228
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v10

    #@11e
    .line 232
    :cond_5
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    #@121
    move-result-object v6

    #@122
    .line 233
    .local v6, "pSource":Ljavax/crypto/spec/PSource;
    instance-of v10, v6, Ljavax/crypto/spec/PSource$PSpecified;

    #@124
    if-nez v10, :cond_6

    #@126
    .line 234
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@128
    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v12, "Unsupported source of encoding input P: "

    #@130
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v11

    #@134
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v11

    #@138
    .line 236
    const-string/jumbo v12, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    #@13b
    .line 235
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v11

    #@13f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v11

    #@143
    .line 234
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@146
    throw v10

    #@147
    :cond_6
    move-object v7, v6

    #@148
    .line 238
    check-cast v7, Ljavax/crypto/spec/PSource$PSpecified;

    #@14a
    .line 239
    .local v7, "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v7}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    #@14d
    move-result-object v8

    #@14e
    .line 240
    .local v8, "pSourceValue":[B
    if-eqz v8, :cond_7

    #@150
    array-length v10, v8

    #@151
    if-lez v10, :cond_7

    #@153
    .line 241
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    #@155
    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v12, "Unsupported source of encoding input P: "

    #@15d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v11

    #@161
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v11

    #@165
    .line 243
    const-string/jumbo v12, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    #@168
    .line 242
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v11

    #@16c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v11

    #@170
    .line 241
    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@173
    throw v10

    #@174
    .line 245
    :cond_7
    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    #@176
    .line 247
    invoke-static {v2}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@179
    move-result v10

    #@17a
    add-int/lit8 v10, v10, 0x7

    #@17c
    div-int/lit8 v10, v10, 0x8

    #@17e
    .line 246
    iput v10, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    #@180
    .line 180
    return-void

    #@181
    .line 204
    nop

    #@182
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    #@3
    .line 302
    return-void
.end method
