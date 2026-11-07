.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
    }
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final blacklist engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final blacklist evpMdRef:J

.field private blacklist evpPkeyCtx:J

.field private blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist signing:Z

.field private final blacklist singleByte:[B


# direct methods
.method private constructor blacklist <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V
    .registers 5
    .param p1, "evpMdRef"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 84
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    .line 85
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 86
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V

    return-void
.end method

.method private blacklist checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 6
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 179
    .local v0, "pkeyType":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v1

    const-string v2, "Signature initialized as "

    packed-switch v1, :pswitch_data_76

    .line 193
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :pswitch_2e
    const/16 v1, 0x198

    if-ne v0, v1, :cond_33

    goto :goto_55

    .line 188
    :cond_33
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (not EC)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :pswitch_52
    const/4 v1, 0x6

    if-ne v0, v1, :cond_56

    .line 195
    :goto_55
    return-void

    .line 182
    :cond_56
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (not RSA)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_52
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V
    .registers 5
    .param p1, "newKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "signing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 199
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 201
    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    .line 203
    :try_start_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_a} :catch_c

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catch_c
    move-exception v0

    .line 205
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist resetContext()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 91
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_1c

    .line 92
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    goto :goto_2a

    .line 94
    :cond_1c
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    .line 96
    :goto_2a
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    invoke-virtual {p0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature;->configureEVP_PKEY_CTX(J)V

    .line 97
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 98
    return-void
.end method


# virtual methods
.method protected blacklist configureEVP_PKEY_CTX(J)V
    .registers 3
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
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

    .line 211
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 212
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 216
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 217
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    return-void
.end method

.method protected whitelist test-api engineSign()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 227
    const-string v0, "Reset of context failed after it was successful once"

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 229
    .local v1, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_4
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_16
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 238
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_b} :catch_d

    .line 241
    nop

    .line 229
    return-object v2

    .line 239
    :catch_d
    move-exception v2

    .line 240
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 237
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catchall_14
    move-exception v2

    goto :goto_1d

    .line 230
    :catch_16
    move-exception v2

    .line 231
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_17
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignature;
    throw v3
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_14

    .line 238
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignature;
    :goto_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_20
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_20} :catch_22

    .line 241
    nop

    .line 242
    throw v2

    .line 239
    :catch_22
    move-exception v2

    .line 240
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    .line 114
    return-void
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    return-void

    .line 136
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 137
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 138
    return-void

    .line 141
    :cond_11
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 142
    .local v0, "baseAddress":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    .line 145
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 146
    return-void

    .line 150
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 151
    .local v2, "position":I
    if-ltz v2, :cond_48

    .line 154
    int-to-long v3, v2

    add-long/2addr v3, v0

    .line 155
    .local v3, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 156
    .local v5, "len":I
    if-ltz v5, :cond_40

    .line 160
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 161
    .local v6, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v7, :cond_37

    .line 162
    invoke-static {v6, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    goto :goto_3a

    .line 164
    :cond_37
    invoke-static {v6, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    .line 166
    :goto_3a
    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-void

    .line 157
    .end local v6    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :cond_40
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 152
    .end local v3    # "ptr":J
    .end local v5    # "len":I
    :cond_48
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Negative position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 119
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_a

    .line 120
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    goto :goto_d

    .line 122
    :cond_a
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    .line 124
    :goto_d
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 248
    const-string v0, "Reset of context failed after it was successful once"

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 250
    .local v1, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_4
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_18
    .catchall {:try_start_4 .. :try_end_a} :catchall_16

    .line 259
    :try_start_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_d} :catch_f

    .line 262
    nop

    .line 250
    return v2

    .line 260
    :catch_f
    move-exception v2

    .line 261
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 258
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catchall_16
    move-exception v2

    goto :goto_1f

    .line 251
    :catch_18
    move-exception v2

    .line 252
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_19
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignature;
    .end local p1    # "sigBytes":[B
    throw v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    .line 259
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLSignature;
    .restart local p1    # "sigBytes":[B
    :goto_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_22
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1f .. :try_end_22} :catch_24

    .line 262
    nop

    .line 263
    throw v2

    .line 260
    :catch_24
    move-exception v2

    .line 261
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected final blacklist getEVP_PKEY_CTX()J
    .registers 3

    .line 271
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    return-wide v0
.end method
