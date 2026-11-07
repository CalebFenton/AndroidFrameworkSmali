.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "AndroidKeyStoreKeyAgreementSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$ECDH;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyAgreementSpi"


# instance fields
.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

.field private final blacklist mKeymintAlgorithm:I

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationHandle:J

.field private blacklist mOtherPartyKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "keymintAlgorithm"    # I

    .line 87
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 88
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 90
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKeymintAlgorithm:I

    .line 91
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_44

    .line 239
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    if-eqz v0, :cond_9

    .line 240
    return-void

    .line 245
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, 0x20000001

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 252
    :try_start_1c
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 253
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_2e
    .catch Landroid/security/KeyStoreException; {:try_start_1c .. :try_end_2e} :catch_2f

    .line 261
    goto :goto_38

    .line 254
    :catch_2f
    move-exception v1

    .line 256
    .local v1, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 257
    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    .line 258
    .local v2, "e":Ljava/security/InvalidKeyException;
    if-nez v2, :cond_43

    .line 266
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_38
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 267
    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 268
    return-void

    .line 259
    .restart local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .restart local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_43
    throw v2

    .line 237
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist resetAll()V
    .registers 2

    .line 230
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 232
    return-void
.end method

.method private blacklist resetWhilePreservingInitState()V
    .registers 3

    .line 223
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    .line 226
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 227
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V

    .line 133
    if-eqz p1, :cond_7e

    .line 135
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_65

    .line 137
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1c

    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 144
    :cond_14
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key should be of the same type."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    .line 147
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    check-cast v1, Ljava/security/interfaces/ECKey;

    .line 148
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_48

    .line 149
    :cond_40
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key parameters should be same."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_48
    :goto_48
    if-eqz p2, :cond_5d

    .line 154
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-nez v0, :cond_55

    .line 160
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. doPhase() must only be called exactly once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. lastPhase must be set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_65
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only public keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_7e
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .registers 7
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 201
    .local v0, "generatedSecret":[B
    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_10

    .line 204
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v1, v0

    return v1

    .line 202
    :cond_10
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 193
    .local v0, "generatedSecret":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_35

    .line 171
    nop

    .line 173
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_2d

    .line 176
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 178
    .local v0, "otherPartyKeyEncoded":[B
    const-string v1, "engineGenerateSecret"

    invoke-static {v1}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 180
    :try_start_13
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v1
    :try_end_1a
    .catch Landroid/security/KeyStoreException; {:try_start_13 .. :try_end_1a} :catch_20
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 184
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 180
    return-object v1

    .line 184
    :catchall_1e
    move-exception v1

    goto :goto_29

    .line 181
    :catch_20
    move-exception v1

    .line 182
    .local v1, "e":Landroid/security/KeyStoreException;
    :try_start_21
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "otherPartyKeyEncoded":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1e

    .line 184
    .end local v1    # "e":Landroid/security/KeyStoreException;
    .restart local v0    # "otherPartyKeyEncoded":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    :goto_29
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 185
    throw v1

    .line 174
    .end local v0    # "otherPartyKeyEncoded":[B
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Other party key not provided. Call doPhase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :catch_35
    move-exception v0

    .line 170
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 97
    if-eqz p1, :cond_39

    .line 99
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_20

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "success":Z
    :try_start_f
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 110
    const/4 v0, 0x1

    .line 112
    if-nez v0, :cond_18

    .line 113
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 116
    :cond_18
    return-void

    .line 112
    :catchall_19
    move-exception v1

    if-nez v0, :cond_1f

    .line 113
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 115
    :cond_1f
    throw v1

    .line 100
    .end local v0    # "success":Z
    :cond_20
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore private keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_39
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 121
    if-nez p2, :cond_6

    .line 125
    invoke-virtual {p0, p1, p3}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 126
    return-void

    .line 122
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 216
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 219
    throw v0
.end method

.method public blacklist getOperationHandle()J
    .registers 3

    .line 210
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-wide v0
.end method
