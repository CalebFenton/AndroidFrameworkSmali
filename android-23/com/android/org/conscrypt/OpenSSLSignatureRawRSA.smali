.class public Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 87
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@7
    .line 88
    .local v1, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@d
    .line 100
    .end local v1    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@f
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@12
    move-result-object v4

    #@13
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@16
    move-result v0

    #@17
    .line 101
    .local v0, "maxSize":I
    new-array v4, v0, [B

    #@19
    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@1b
    .line 102
    const/4 v4, 0x0

    #@1c
    iput v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@1e
    .line 85
    return-void

    #@1f
    .line 89
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@21
    if-eqz v4, :cond_1

    #@23
    move-object v2, p1

    #@24
    .line 90
    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@26
    .line 91
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@29
    move-result-object v4

    #@2a
    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2c
    goto :goto_0

    #@2d
    .line 92
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_1
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@2f
    if-eqz v4, :cond_2

    #@31
    move-object v3, p1

    #@32
    .line 93
    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    #@34
    .line 94
    .local v3, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@3a
    goto :goto_0

    #@3b
    .line 96
    .end local v3    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_2
    new-instance v4, Ljava/security/InvalidKeyException;

    #@3d
    const-string/jumbo v5, "Need RSA private key"

    #@40
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@2
    if-eqz v3, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 108
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@7
    .line 109
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@d
    .line 118
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :goto_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@f
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@12
    move-result-object v3

    #@13
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@16
    move-result v0

    #@17
    .line 119
    .local v0, "maxSize":I
    new-array v3, v0, [B

    #@19
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@1b
    .line 120
    const/4 v3, 0x0

    #@1c
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@1e
    .line 106
    return-void

    #@1f
    .line 110
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    #@21
    if-eqz v3, :cond_1

    #@23
    move-object v2, p1

    #@24
    .line 111
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    #@26
    .line 112
    .local v2, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2c
    goto :goto_0

    #@2d
    .line 114
    .end local v2    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2f
    const-string/jumbo v4, "Need RSA public key"

    #@32
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    return-void
.end method

.method protected engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 129
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 131
    new-instance v2, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v3, "Need RSA private key"

    #@a
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 134
    :cond_0
    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 135
    new-instance v2, Ljava/security/SignatureException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "input length "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " != "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 136
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@2f
    array-length v4, v4

    #@30
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 136
    const-string/jumbo v4, " (modulus size)"

    #@37
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@45
    array-length v2, v2

    #@46
    new-array v1, v2, [B

    #@48
    .line 141
    .local v1, "outputBuffer":[B
    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@4a
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@4c
    .line 142
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4e
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@51
    move-result-object v4

    #@52
    const/4 v5, 0x1

    #@53
    .line 141
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 147
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@58
    .line 143
    return-object v1

    #@59
    .line 144
    :catch_0
    move-exception v0

    #@5a
    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    #@5c
    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@5f
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 146
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@61
    .line 147
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@63
    .line 146
    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    .line 56
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@6
    .line 58
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@8
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@a
    array-length v2, v2

    #@b
    if-le v1, v2, :cond_0

    #@d
    .line 59
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    #@10
    .line 60
    return-void

    #@11
    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@13
    aput-byte p1, v1, v0

    #@15
    .line 55
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@2
    .line 69
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@4
    add-int/2addr v1, p3

    #@5
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@7
    .line 71
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@9
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@b
    array-length v2, v2

    #@c
    if-le v1, v2, :cond_0

    #@e
    .line 72
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    #@11
    .line 73
    return-void

    #@12
    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@14
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 67
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 11
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 153
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    if-nez v7, :cond_0

    #@5
    .line 155
    new-instance v7, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v8, "Need RSA public key"

    #@a
    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v7

    #@e
    .line 158
    :cond_0
    iget-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    #@10
    if-eqz v7, :cond_1

    #@12
    .line 159
    return v10

    #@13
    .line 164
    :cond_1
    array-length v7, p1

    #@14
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@16
    array-length v8, v8

    #@17
    if-le v7, v8, :cond_2

    #@19
    .line 165
    new-instance v7, Ljava/security/SignatureException;

    #@1b
    new-instance v8, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v9, "Input signature length is too large: "

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    array-length v9, p1

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    .line 166
    const-string/jumbo v9, " > "

    #@2f
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    .line 166
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@35
    array-length v9, v9

    #@36
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@41
    throw v7

    #@42
    .line 169
    :cond_2
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@44
    array-length v7, v7

    #@45
    new-array v5, v7, [B

    #@47
    .line 173
    .local v5, "outputBuffer":[B
    :try_start_0
    array-length v7, p1

    #@48
    .line 174
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4a
    invoke-virtual {v8}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@4d
    move-result-object v8

    #@4e
    const/4 v9, 0x1

    #@4f
    .line 173
    invoke-static {v7, p1, v5, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    move-result v6

    #@53
    .line 181
    .local v6, "resultSize":I
    :try_start_1
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@55
    if-ne v6, v7, :cond_4

    #@57
    const/4 v4, 0x1

    #@58
    .line 182
    .local v4, "matches":Z
    :goto_0
    const/4 v3, 0x0

    #@59
    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_5

    #@5b
    .line 183
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    #@5d
    aget-byte v7, v7, v3

    #@5f
    aget-byte v8, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    if-eq v7, v8, :cond_3

    #@63
    .line 184
    const/4 v4, 0x0

    #@64
    .line 182
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_1

    #@67
    .line 177
    .end local v3    # "i":I
    .end local v4    # "matches":Z
    .end local v6    # "resultSize":I
    :catch_0
    move-exception v0

    #@68
    .line 191
    .local v0, "e":Ljava/lang/Exception;
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@6a
    .line 178
    return v10

    #@6b
    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@6c
    .line 176
    .local v1, "e":Ljava/security/SignatureException;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    .line 188
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v2

    #@6e
    .line 189
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/security/SignatureException;

    #@70
    invoke-direct {v7, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@73
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@74
    .line 190
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@75
    .line 191
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@77
    .line 190
    throw v7

    #@78
    .line 181
    .restart local v6    # "resultSize":I
    :cond_4
    const/4 v4, 0x0

    #@79
    .restart local v4    # "matches":Z
    goto :goto_0

    #@7a
    .line 191
    .restart local v3    # "i":I
    :cond_5
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    #@7c
    .line 187
    return v4
.end method
