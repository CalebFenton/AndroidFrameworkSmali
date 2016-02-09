.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    #@3
    return-void
.end method

.method private checkCompleted()V
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Key agreement not completed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 50
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 51
    new-instance v4, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v5, "Not initialized"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 53
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 54
    new-instance v4, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v5, "ECDH only has one phase"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 57
    :cond_1
    if-nez p1, :cond_2

    #@1c
    .line 58
    new-instance v4, Ljava/security/InvalidKeyException;

    #@1e
    const-string/jumbo v5, "key == null"

    #@21
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4

    #@25
    .line 60
    :cond_2
    instance-of v4, p1, Ljava/security/PublicKey;

    #@27
    if-nez v4, :cond_3

    #@29
    .line 61
    new-instance v4, Ljava/security/InvalidKeyException;

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Not a public key: "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@46
    throw v4

    #@47
    .line 63
    :cond_3
    check-cast p1, Ljava/security/PublicKey;

    #@49
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@4c
    move-result-object v2

    #@4d
    .line 65
    .local v2, "openSslPublicKey":Lcom/android/org/conscrypt/OpenSSLKey;
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    #@4f
    new-array v1, v4, [B

    #@51
    .line 69
    .local v1, "buffer":[B
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@54
    move-result-object v4

    #@55
    .line 70
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@57
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5a
    move-result-object v5

    #@5b
    .line 66
    invoke-static {v1, v6, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@5e
    move-result v0

    #@5f
    .line 72
    .local v0, "actualResultLength":I
    const/4 v4, -0x1

    #@60
    if-ne v0, v4, :cond_4

    #@62
    .line 73
    new-instance v4, Ljava/lang/RuntimeException;

    #@64
    new-instance v5, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v6, "Engine returned "

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 74
    :cond_4
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    #@7e
    if-ne v0, v4, :cond_5

    #@80
    .line 76
    move-object v3, v1

    #@81
    .line 86
    .local v3, "result":[B
    :goto_0
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@83
    .line 88
    return-object v7

    #@84
    .line 77
    .end local v3    # "result":[B
    :cond_5
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    #@86
    if-ge v0, v4, :cond_6

    #@88
    .line 79
    new-array v3, v0, [B

    #@8a
    .line 80
    .restart local v3    # "result":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@8c
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@8e
    array-length v5, v5

    #@8f
    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@92
    goto :goto_0

    #@93
    .line 83
    .end local v3    # "result":[B
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    #@95
    new-instance v5, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v6, "Engine produced a longer than expected result. Expected: "

    #@9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    .line 84
    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    #@a3
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    .line 84
    const-string/jumbo v6, ", actual: "

    #@aa
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v4
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    #@3
    .line 95
    array-length v1, p1

    #@4
    sub-int v0, v1, p2

    #@6
    .line 96
    .local v0, "available":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@8
    array-length v1, v1

    #@9
    if-le v1, v0, :cond_0

    #@b
    .line 97
    new-instance v1, Ljavax/crypto/ShortBufferException;

    #@d
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Needed: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@1b
    array-length v3, v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, ", available: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 97
    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@35
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@37
    array-length v2, v2

    #@38
    const/4 v3, 0x0

    #@39
    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 102
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@3e
    array-length v1, v1

    #@3f
    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    #@3
    .line 114
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    #@5
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@c
    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 1

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    #@3
    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    #@5
    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    if-nez p1, :cond_0

    #@2
    .line 120
    new-instance v2, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v3, "key == null"

    #@7
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 122
    :cond_0
    instance-of v2, p1, Ljava/security/PrivateKey;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 123
    new-instance v2, Ljava/security/InvalidKeyException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Not a private key: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 126
    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    #@2f
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@32
    move-result-object v1

    #@33
    .line 127
    .local v1, "openSslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@35
    .line 128
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@38
    move-result-object v3

    #@39
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@3c
    move-result-wide v4

    #@3d
    .line 127
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@40
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    #@43
    move-result v0

    #@44
    .line 129
    .local v0, "fieldSizeBits":I
    add-int/lit8 v2, v0, 0x7

    #@46
    div-int/lit8 v2, v2, 0x8

    #@48
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    #@4a
    .line 130
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4c
    .line 118
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    if-eqz p2, :cond_0

    #@2
    .line 138
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    const-string/jumbo v1, "No algorithm parameters supported"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 140
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@e
    .line 135
    return-void
.end method
