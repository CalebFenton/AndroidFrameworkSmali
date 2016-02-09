.class Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mIvRequired:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I
    .param p3, "ivRequired"    # Z

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    #@3
    .line 108
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    #@5
    .line 109
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    #@7
    .line 110
    iput-boolean p3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@9
    .line 107
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    .line 245
    const-string/jumbo v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    #@13
    .line 244
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 249
    :cond_0
    const v0, 0x10000002

    #@1a
    const/16 v1, 0x20

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@1f
    .line 250
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    #@21
    const v1, 0x20000004

    #@24
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@27
    .line 251
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    #@29
    const v1, 0x20000006

    #@2c
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@2f
    .line 252
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@31
    if-eqz v0, :cond_1

    #@33
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 253
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@39
    const v1, -0x6ffffc17

    #@3c
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    #@3f
    .line 241
    :cond_1
    return-void
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 284
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 289
    add-int/lit8 v0, p1, 0x30

    #@2
    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 300
    iget-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 301
    return-object v4

    #@6
    .line 303
    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@8
    if-eqz v3, :cond_1

    #@a
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@c
    array-length v3, v3

    #@d
    if-lez v3, :cond_1

    #@f
    .line 305
    :try_start_0
    const-string/jumbo v3, "AES"

    #@12
    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@15
    move-result-object v2

    #@16
    .line 306
    .local v2, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    #@18
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@1a
    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@1d
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 307
    return-object v2

    #@21
    .line 311
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v1

    #@22
    .line 312
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v3, Ljava/security/ProviderException;

    #@24
    .line 313
    const-string/jumbo v4, "Failed to initialize AES AlgorithmParameters with an IV"

    #@27
    .line 312
    invoke-direct {v3, v4, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw v3

    #@2b
    .line 308
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v0

    #@2c
    .line 309
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    #@2e
    .line 310
    const-string/jumbo v4, "Failed to obtain AES AlgorithmParameters"

    #@31
    .line 309
    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v3

    #@35
    .line 317
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    return-object v4
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    #@0
    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 228
    const/16 v0, 0x10

    #@10
    return v0

    #@11
    .line 231
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 142
    return-void

    #@5
    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 147
    new-instance v0, Ljava/security/InvalidKeyException;

    #@d
    const-string/jumbo v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    #@10
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 140
    :cond_1
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
    const/4 v4, 0x0

    #@1
    .line 183
    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 184
    if-eqz p1, :cond_0

    #@7
    .line 185
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Unsupported parameters: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 187
    :cond_0
    return-void

    #@22
    .line 191
    :cond_1
    if-nez p1, :cond_3

    #@24
    .line 192
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 194
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@2c
    const-string/jumbo v3, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    #@2f
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 197
    :cond_2
    return-void

    #@34
    .line 200
    :cond_3
    const-string/jumbo v2, "AES"

    #@37
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_4

    #@41
    .line 201
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@43
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "Unsupported AlgorithmParameters algorithm: "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 203
    const-string/jumbo v4, ". Supported: AES"

    #@5a
    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    .line 201
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2

    #@66
    .line 208
    :cond_4
    :try_start_0
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    #@68
    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 218
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@71
    move-result-object v2

    #@72
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@74
    .line 219
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@76
    if-nez v2, :cond_6

    #@78
    .line 220
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@7a
    const-string/jumbo v3, "Null IV in AlgorithmParameters"

    #@7d
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2

    #@81
    .line 209
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    #@82
    .line 210
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@85
    move-result v2

    #@86
    if-nez v2, :cond_5

    #@88
    .line 212
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@8a
    new-instance v3, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v4, "IV required when decrypting, but not found in parameters: "

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a1
    throw v2

    #@a2
    .line 215
    :cond_5
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@a4
    .line 216
    return-void

    #@a5
    .line 182
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    .restart local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_6
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 156
    if-eqz p1, :cond_0

    #@6
    .line 157
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unsupported parameters: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 159
    :cond_0
    return-void

    #@21
    .line 163
    :cond_1
    if-nez p1, :cond_3

    #@23
    .line 164
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2

    #@29
    .line 166
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2b
    .line 167
    const-string/jumbo v1, "IvParameterSpec must be provided when decrypting"

    #@2e
    .line 166
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 169
    :cond_2
    return-void

    #@33
    .line 171
    :cond_3
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    #@35
    if-nez v0, :cond_4

    #@37
    .line 172
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@39
    const-string/jumbo v1, "Only IvParameterSpec supported"

    #@3c
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 174
    :cond_4
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    #@42
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@48
    .line 175
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@4a
    if-nez v0, :cond_5

    #@4c
    .line 176
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4e
    const-string/jumbo v1, "Null IV in IvParameterSpec"

    #@51
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 154
    :cond_5
    return-void
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 128
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unsupported key: "

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    if-eqz p2, :cond_0

    #@14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 128
    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 129
    :cond_0
    const-string/jumbo v0, "null"

    #@2b
    goto :goto_0

    #@2c
    .line 131
    :cond_1
    const-string/jumbo v0, "AES"

    #@2f
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_2

    #@39
    .line 132
    new-instance v0, Ljava/security/InvalidKeyException;

    #@3b
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Unsupported key algorithm: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, ". Only "

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 134
    const-string/jumbo v2, "AES"

    #@59
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 134
    const-string/jumbo v2, " supported"

    #@60
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 132
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 136
    :cond_2
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@6e
    .end local p2    # "key":Ljava/security/Key;
    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@71
    .line 126
    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 260
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@4
    .line 263
    const v1, -0x6ffffc17

    #@7
    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    #@a
    move-result-object v0

    #@b
    .line 264
    .local v0, "returnedIv":[B
    if-eqz v0, :cond_0

    #@d
    array-length v1, v0

    #@e
    if-nez v1, :cond_0

    #@10
    .line 265
    const/4 v0, 0x0

    #@11
    .line 268
    .end local v0    # "returnedIv":[B
    :cond_0
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 269
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@17
    if-nez v1, :cond_2

    #@19
    .line 270
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@1b
    .line 259
    :cond_1
    return-void

    #@1c
    .line 271
    :cond_2
    if-eqz v0, :cond_1

    #@1e
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@20
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 272
    new-instance v1, Ljava/security/ProviderException;

    #@28
    const-string/jumbo v2, "IV in use differs from provided IV"

    #@2b
    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 275
    :cond_3
    if-eqz v0, :cond_1

    #@31
    .line 276
    new-instance v1, Ljava/security/ProviderException;

    #@33
    .line 277
    const-string/jumbo v2, "IV in use despite IV not being used by this transformation"

    #@36
    .line 276
    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
.end method

.method protected final resetAll()V
    .locals 1

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    #@3
    .line 116
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@6
    .line 117
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@9
    .line 114
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    #@0
    .prologue
    .line 122
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    #@3
    .line 121
    return-void
.end method
