.class public Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawECDSA.java"


# instance fields
.field private blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 44
    return-void
.end method

.method private static blacklist verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 64
    .local v0, "pkeyType":I
    const/16 v1, 0x198

    if-ne v0, v1, :cond_d

    .line 67
    return-object p0

    .line 65
    :cond_d
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Non-EC key used to initialize EC signature."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 73
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 78
    return-void
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

    .line 83
    return-void
.end method

.method protected whitelist test-api engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_49

    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 93
    .local v0, "output_size":I
    new-array v1, v0, [B

    .line 95
    .local v1, "outputBuffer":[B
    :try_start_10
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_sign([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    .line 97
    .local v2, "bytes_written":I
    if-ltz v2, :cond_32

    .line 103
    if-eq v2, v0, :cond_2b

    .line 104
    new-array v3, v2, [B

    .line 105
    .local v3, "newBuffer":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_3c
    .catchall {:try_start_10 .. :try_end_2a} :catchall_3a

    .line 106
    move-object v1, v3

    .line 108
    .end local v3    # "newBuffer":[B
    :cond_2b
    nop

    .line 112
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    return-object v1

    .line 98
    :cond_32
    :try_start_32
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Could not compute signature."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v0    # "output_size":I
    .end local v1    # "outputBuffer":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    throw v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_3c
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 112
    .end local v2    # "bytes_written":I
    .restart local v0    # "output_size":I
    .restart local v1    # "outputBuffer":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    :catchall_3a
    move-exception v2

    goto :goto_43

    .line 109
    :catch_3c
    move-exception v2

    .line 110
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3d
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "output_size":I
    .end local v1    # "outputBuffer":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    throw v3
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_3a

    .line 112
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "output_size":I
    .restart local v1    # "outputBuffer":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    :goto_43
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 113
    throw v2

    .line 89
    .end local v0    # "output_size":I
    .end local v1    # "outputBuffer":[B
    :cond_49
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No key provided"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 48
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 53
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 54
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_39

    .line 124
    :try_start_4
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_verify([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_2c
    .catchall {:try_start_4 .. :try_end_14} :catchall_2a

    .line 126
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 129
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 133
    :goto_1c
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 129
    return v1

    .line 127
    :cond_22
    :try_start_22
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Could not verify signature."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    .end local p1    # "sigBytes":[B
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2c
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 133
    .end local v0    # "result":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    .restart local p1    # "sigBytes":[B
    :catchall_2a
    move-exception v0

    goto :goto_33

    .line 130
    :catch_2c
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2d
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    .end local p1    # "sigBytes":[B
    throw v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
    .restart local p1    # "sigBytes":[B
    :goto_33
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 134
    throw v0

    .line 120
    :cond_39
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No key provided"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
