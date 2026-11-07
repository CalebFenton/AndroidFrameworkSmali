.class public abstract Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLBaseDHKeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/crypto/KeyAgreementSpi;"
    }
.end annotation


# instance fields
.field private blacklist mExpectedResultLength:I

.field private blacklist mPrivateKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mResult:[B


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 51
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private blacklist checkCompleted()V
    .registers 3

    .line 156
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    if-eqz v0, :cond_5

    .line 159
    return-void

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract blacklist computeKey([BLjava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract blacklist convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract blacklist convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    if-eqz v0, :cond_93

    .line 58
    if-eqz p2, :cond_8b

    .line 62
    if-eqz p1, :cond_83

    .line 65
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_66

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "openSslPublicKey":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    new-array v1, v1, [B

    .line 71
    .local v1, "buffer":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->computeKey([BLjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 73
    .local v2, "actualResultLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5e

    .line 75
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    if-ne v2, v3, :cond_26

    .line 77
    move-object v3, v1

    .local v3, "result":[B
    goto :goto_35

    .line 78
    .end local v3    # "result":[B
    :cond_26
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    if-ge v2, v3, :cond_39

    .line 80
    new-array v3, v2, [B

    .line 81
    .restart local v3    # "result":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    :goto_35
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    .line 89
    const/4 v4, 0x0

    return-object v4

    .line 84
    .end local v3    # "result":[B
    :cond_39
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Engine produced a longer than expected result. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_5e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Engine returned -1"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v0    # "openSslPublicKey":Ljava/lang/Object;, "TT;"
    .end local v1    # "buffer":[B
    .end local v2    # "actualResultLength":I
    :cond_66
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_83
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DH only has one phase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .registers 7
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    .line 106
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 107
    .local v0, "available":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v1, v1

    if-gt v1, v0, :cond_17

    .line 112
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v1, v1

    return v1

    .line 108
    :cond_17
    new-instance v1, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 124
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    .line 125
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .registers 2

    .line 118
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    .line 119
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    return-object v0
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

    .line 130
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    if-eqz p1, :cond_33

    .line 133
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_16

    .line 137
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "privateKey":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->getOutputSize(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    .line 139
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    .line 140
    return-void

    .line 134
    .end local v0    # "privateKey":Ljava/lang/Object;, "TT;"
    :cond_16
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_33
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;, "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<TT;>;"
    if-nez p2, :cond_6

    .line 152
    invoke-virtual {p0, p1, p3}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 153
    return-void

    .line 150
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist getOutputSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
