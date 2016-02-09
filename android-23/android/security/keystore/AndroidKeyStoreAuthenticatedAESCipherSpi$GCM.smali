.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final IV_LENGTH_BYTES:I = 0xc

.field private static final MAX_SUPPORTED_TAG_LENGTH_BITS:I = 0x80

.field static final MIN_SUPPORTED_TAG_LENGTH_BITS:I = 0x60


# instance fields
.field private mTagLengthBits:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    #@0
    .prologue
    .line 62
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;-><init>(II)V

    #@5
    .line 59
    const/16 v0, 0x80

    #@7
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@9
    .line 61
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    #@3
    .line 216
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@5
    int-to-long v0, v0

    #@6
    const v2, 0x300003eb

    #@9
    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@c
    .line 214
    return-void
.end method

.method protected final createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 193
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@2
    .line 194
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, p1, p2, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;)V

    #@8
    .line 193
    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    #@b
    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 177
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@2
    .line 178
    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    #@7
    .line 177
    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    #@a
    .line 180
    .local v0, "streamer":Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 181
    return-object v0

    #@11
    .line 185
    :cond_0
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-direct {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;)V

    #@17
    return-object v1
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 156
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    #@4
    move-result-object v2

    #@5
    .line 157
    .local v2, "iv":[B
    if-eqz v2, :cond_0

    #@7
    array-length v4, v2

    #@8
    if-lez v4, :cond_0

    #@a
    .line 159
    :try_start_0
    const-string/jumbo v4, "GCM"

    #@d
    invoke-static {v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@10
    move-result-object v3

    #@11
    .line 160
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    #@13
    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@15
    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    #@18
    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 161
    return-object v3

    #@1c
    .line 165
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v1

    #@1d
    .line 166
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v4, Ljava/security/ProviderException;

    #@1f
    .line 167
    const-string/jumbo v5, "Failed to initialize GCM AlgorithmParameters"

    #@22
    .line 166
    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v4

    #@26
    .line 162
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v0

    #@27
    .line 163
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/ProviderException;

    #@29
    .line 164
    const-string/jumbo v5, "Failed to obtain GCM AlgorithmParameters"

    #@2c
    .line 163
    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2f
    throw v4

    #@30
    .line 170
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v5
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 201
    const/16 v0, 0xc

    #@e
    return v0

    #@f
    .line 204
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final getTagLengthBits()I
    .locals 1

    #@0
    .prologue
    .line 220
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@2
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
    .line 78
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 79
    new-instance v0, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    #@b
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 77
    :cond_0
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
    .line 123
    if-nez p1, :cond_1

    #@3
    .line 124
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 126
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@b
    const-string/jumbo v3, "IV required when decrypting. Use GCMParameterSpec or GCM AlgorithmParameters to provide it."

    #@e
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 129
    :cond_0
    return-void

    #@13
    .line 132
    :cond_1
    const-string/jumbo v2, "GCM"

    #@16
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 133
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@22
    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Unsupported AlgorithmParameters algorithm: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 135
    const-string/jumbo v4, ". Supported: GCM"

    #@39
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 133
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 140
    :cond_2
    :try_start_0
    const-class v2, Ljavax/crypto/spec/GCMParameterSpec;

    #@47
    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 150
    .local v1, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@50
    .line 122
    return-void

    #@51
    .line 141
    .end local v1    # "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :catch_0
    move-exception v0

    #@52
    .line 142
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@55
    move-result v2

    #@56
    if-nez v2, :cond_3

    #@58
    .line 144
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "IV and tag length required when decrypting, but not found in parameters: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@71
    throw v2

    #@72
    .line 147
    :cond_3
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    #@75
    .line 148
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0xc

    #@2
    .line 88
    if-nez p1, :cond_1

    #@4
    .line 89
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 91
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@c
    .line 92
    const-string/jumbo v4, "GCMParameterSpec must be provided when decrypting"

    #@f
    .line 91
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 94
    :cond_0
    return-void

    #@14
    .line 96
    :cond_1
    instance-of v3, p1, Ljavax/crypto/spec/GCMParameterSpec;

    #@16
    if-nez v3, :cond_2

    #@18
    .line 97
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@1a
    const-string/jumbo v4, "Only GCMParameterSpec supported"

    #@1d
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    :cond_2
    move-object v1, p1

    #@22
    .line 99
    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    #@24
    .line 100
    .local v1, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    #@27
    move-result-object v0

    #@28
    .line 101
    .local v0, "iv":[B
    if-nez v0, :cond_3

    #@2a
    .line 102
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@2c
    const-string/jumbo v4, "Null IV in GCMParameterSpec"

    #@2f
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 103
    :cond_3
    array-length v3, v0

    #@34
    if-eq v3, v6, :cond_4

    #@36
    .line 104
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "Unsupported IV length: "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 105
    array-length v5, v0

    #@45
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 105
    const-string/jumbo v5, " bytes. Only "

    #@4c
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 106
    const-string/jumbo v5, " bytes long IV supported"

    #@57
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@62
    throw v3

    #@63
    .line 108
    :cond_4
    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    #@66
    move-result v2

    #@67
    .line 109
    .local v2, "tagLengthBits":I
    const/16 v3, 0x60

    #@69
    if-lt v2, v3, :cond_5

    #@6b
    .line 110
    const/16 v3, 0x80

    #@6d
    if-le v2, v3, :cond_6

    #@6f
    .line 112
    :cond_5
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@71
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v5, "Unsupported tag length: "

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, " bits"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 114
    const-string/jumbo v5, ". Supported lengths: 96, 104, 112, 120, 128"

    #@8b
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    .line 112
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@96
    throw v3

    #@97
    .line 111
    :cond_6
    rem-int/lit8 v3, v2, 0x8

    #@99
    if-nez v3, :cond_5

    #@9b
    .line 116
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    #@9e
    .line 117
    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@a0
    .line 86
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    #@0
    .prologue
    .line 67
    const/16 v0, 0x80

    #@2
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    #@4
    .line 68
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetAll()V

    #@7
    .line 66
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetWhilePreservingInitState()V

    #@3
    .line 72
    return-void
.end method
