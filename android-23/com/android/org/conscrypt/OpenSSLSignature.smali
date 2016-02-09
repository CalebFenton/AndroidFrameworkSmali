.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;
    }
.end annotation


# static fields
.field private static synthetic -com_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues:[I


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final evpAlgorithm:J

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private static synthetic -getcom_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@10
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method private constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V
    .locals 1
    .param p1, "algorithm"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@8
    .line 70
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@a
    .line 71
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    #@c
    .line 69
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V
    .locals 1
    .param p1, "algorithm"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V

    #@3
    return-void
.end method

.method private checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@7
    move-result v0

    #@8
    .line 110
    .local v0, "pkeyType":I
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues()[I

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@e
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v1, v1, v2

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    .line 124
    new-instance v1, Ljava/security/InvalidKeyException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Key must be of type "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 112
    :pswitch_0
    const/4 v1, 0x6

    #@34
    if-eq v0, v1, :cond_0

    #@36
    .line 113
    new-instance v1, Ljava/security/InvalidKeyException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Signature initialized as "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 114
    const-string/jumbo v3, " (not RSA)"

    #@4d
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 118
    :pswitch_1
    const/16 v1, 0x198

    #@5b
    if-eq v0, v1, :cond_0

    #@5d
    .line 119
    new-instance v1, Ljava/security/InvalidKeyException;

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "Signature initialized as "

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    .line 120
    const-string/jumbo v3, " (not EC)"

    #@74
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v1

    #@80
    .line 107
    :cond_0
    return-void

    #@81
    .line 110
    nop

    #@82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableDSASignatureNonceHardeningIfApplicable()V
    .locals 3

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    .line 151
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom_android_org_conscrypt_OpenSSLSignature$EngineTypeSwitchesValues()[I

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@8
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    #@b
    move-result v2

    #@c
    aget v1, v1, v2

    #@e
    packed-switch v1, :pswitch_data_0

    #@11
    .line 149
    :goto_0
    return-void

    #@12
    .line 153
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_set_nonce_from_hash(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 151
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V
    .locals 0
    .param p1, "newKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "signing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@3
    .line 130
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    .line 132
    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@7
    .line 133
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@a
    .line 128
    return-void
.end method

.method private final resetContext()V
    .locals 4

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 76
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@c
    .line 77
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 78
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->enableDSASignatureNonceHardeningIfApplicable()V

    #@13
    .line 79
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    #@15
    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    #@18
    .line 83
    :goto_0
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@1a
    .line 74
    return-void

    #@1b
    .line 81
    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    #@1d
    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    #@20
    goto :goto_0
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
    .line 104
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    #@8
    .line 137
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    #@8
    .line 161
    return-void
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
    .line 166
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
    .line 171
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 173
    new-instance v5, Ljava/security/SignatureException;

    #@6
    const-string/jumbo v6, "Need RSA or EC private key"

    #@9
    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 176
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@f
    .line 178
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@14
    move-result-object v5

    #@15
    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@18
    move-result v5

    #@19
    new-array v0, v5, [B

    #@1b
    .line 180
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@1d
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@20
    move-result-object v5

    #@21
    .line 179
    const/4 v6, 0x0

    #@22
    invoke-static {v2, v0, v6, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@25
    move-result v1

    #@26
    .line 182
    .local v1, "bytesWritten":I
    new-array v4, v1, [B

    #@28
    .line 183
    .local v4, "signature":[B
    const/4 v5, 0x0

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-static {v0, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 193
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@30
    .line 185
    return-object v4

    #@31
    .line 186
    .end local v0    # "buffer":[B
    .end local v1    # "bytesWritten":I
    .end local v4    # "signature":[B
    :catch_0
    move-exception v3

    #@32
    .line 187
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/security/SignatureException;

    #@34
    invoke-direct {v5, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 188
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@39
    .line 193
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@3c
    .line 188
    throw v5
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    #@b
    .line 87
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 95
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 96
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@9
    .line 93
    :goto_0
    return-void

    #@a
    .line 98
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@d
    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 8
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 199
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 201
    new-instance v2, Ljava/security/SignatureException;

    #@8
    const-string/jumbo v3, "Need RSA or EC public key"

    #@b
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 205
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@11
    array-length v5, p1

    #@12
    .line 206
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@17
    move-result-object v6

    #@18
    .line 205
    const/4 v7, 0x0

    #@19
    invoke-static {v4, p1, v7, v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BIILcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v1

    #@1d
    .line 207
    .local v1, "result":I
    if-ne v1, v2, :cond_1

    #@1f
    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@22
    .line 207
    return v2

    #@23
    :cond_1
    move v2, v3

    #@24
    goto :goto_0

    #@25
    .line 208
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    #@26
    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    #@28
    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@2d
    .line 215
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@30
    .line 210
    throw v2
.end method
