.class public final Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private blacklist inputBuffer:[B

.field private blacklist inputIsTooLong:Z

.field private blacklist inputOffset:I

.field private blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_e

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 94
    .local v0, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 95
    .end local v0    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    goto :goto_2a

    :cond_e
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1c

    .line 96
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 97
    .local v0, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 98
    .end local v0    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    goto :goto_2a

    :cond_1c
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_3c

    .line 99
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 100
    .local v0, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 101
    .end local v0    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    nop

    .line 106
    :goto_2a
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 107
    .local v0, "maxSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 109
    return-void

    .line 102
    .end local v0    # "maxSize":I
    :cond_3c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 113
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_e

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 115
    .local v0, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 116
    .end local v0    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    goto :goto_1c

    :cond_e
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2e

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 118
    .local v0, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 119
    .end local v0    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    nop

    .line 124
    :goto_1c
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 125
    .local v0, "maxSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 127
    return-void

    .line 120
    .end local v0    # "maxSize":I
    :cond_2e
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method protected whitelist test-api engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_5a

    .line 141
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-nez v0, :cond_2c

    .line 146
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 148
    .local v0, "outputBuffer":[B
    const/4 v1, 0x0

    :try_start_e
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 149
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    .line 148
    const/4 v5, 0x1

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_22
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    .line 150
    nop

    .line 154
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 150
    return-object v0

    .line 154
    :catchall_20
    move-exception v2

    goto :goto_29

    .line 151
    :catch_22
    move-exception v2

    .line 152
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_23
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "outputBuffer":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    throw v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    .line 154
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "outputBuffer":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    :goto_29
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 155
    throw v2

    .line 142
    .end local v0    # "outputBuffer":[B
    :cond_2c
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (modulus size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_5a
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need RSA private key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .line 61
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 63
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 65
    return-void

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    .line 69
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 73
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 74
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 76
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_12

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 78
    return-void

    .line 81
    :cond_12
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 9
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_76

    .line 165
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 166
    return v1

    .line 171
    :cond_a
    array-length v0, p1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-gt v0, v2, :cond_4f

    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 180
    .local v0, "outputBuffer":[B
    :try_start_15
    array-length v2, p1

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 181
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    .line 180
    const/4 v4, 0x1

    invoke-static {v2, p1, v0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2
    :try_end_21
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_21} :catch_42
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_3d
    .catchall {:try_start_15 .. :try_end_21} :catchall_3b

    .line 186
    .local v2, "resultSize":I
    nop

    .line 188
    :try_start_22
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v2, v3, :cond_27

    goto :goto_28

    :cond_27
    move v4, v1

    .line 189
    .local v4, "matches":Z
    :goto_28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v2, :cond_37

    .line 190
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v5, v5, v3

    aget-byte v6, v0, v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_45
    .catchall {:try_start_22 .. :try_end_31} :catchall_3b

    if-eq v5, v6, :cond_34

    .line 191
    const/4 v4, 0x0

    .line 189
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 194
    .end local v3    # "i":I
    :cond_37
    nop

    .line 198
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 194
    return v4

    .line 198
    .end local v2    # "resultSize":I
    .end local v4    # "matches":Z
    :catchall_3b
    move-exception v2

    goto :goto_4c

    .line 184
    :catch_3d
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 198
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 185
    return v1

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v2

    .line 183
    .local v2, "e":Ljava/security/SignatureException;
    nop

    .end local v0    # "outputBuffer":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    .end local p1    # "sigBytes":[B
    :try_start_44
    throw v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_3b

    .line 195
    .end local v2    # "e":Ljava/security/SignatureException;
    .restart local v0    # "outputBuffer":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    .restart local p1    # "sigBytes":[B
    :catch_45
    move-exception v2

    .line 196
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_46
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "outputBuffer":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    .end local p1    # "sigBytes":[B
    throw v3
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_3b

    .line 198
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "outputBuffer":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
    .restart local p1    # "sigBytes":[B
    :goto_4c
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 199
    throw v2

    .line 172
    .end local v0    # "outputBuffer":[B
    :cond_4f
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input signature length is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_76
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need RSA public key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
