.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSAPSS;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final evpMdRef:J

.field private evpPkeyCtx:J

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

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
    .param p1, "evpMdRef"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@8
    .line 82
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@a
    .line 83
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    #@c
    .line 81
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V
    .locals 1
    .param p1, "evpMdRef"    # J
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
    .line 174
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@7
    move-result v0

    #@8
    .line 176
    .local v0, "pkeyType":I
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I

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
    .line 190
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
    .line 178
    :pswitch_0
    const/4 v1, 0x6

    #@34
    if-eq v0, v1, :cond_0

    #@36
    .line 179
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
    .line 180
    const-string/jumbo v3, " (not RSA)"

    #@4d
    .line 179
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
    .line 184
    :pswitch_1
    const/16 v1, 0x198

    #@5b
    if-eq v0, v1, :cond_0

    #@5d
    .line 185
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
    .line 186
    const-string/jumbo v3, " (not EC)"

    #@74
    .line 185
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
    .line 173
    :cond_0
    return-void

    #@81
    .line 176
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
    .line 216
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    .line 217
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I

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
    .line 215
    :goto_0
    return-void

    #@12
    .line 219
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
    .line 217
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
    .line 195
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@3
    .line 196
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    .line 198
    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@7
    .line 199
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@a
    .line 194
    return-void
.end method

.method private final resetContext()V
    .locals 4

    #@0
    .prologue
    .line 87
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 88
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 89
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->enableDSASignatureNonceHardeningIfApplicable()V

    #@10
    .line 90
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    #@12
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@1b
    move-result-wide v2

    #@1c
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    #@1e
    .line 94
    :goto_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    #@20
    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;->configureEVP_PKEY_CTX(J)V

    #@23
    .line 95
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@25
    .line 86
    return-void

    #@26
    .line 92
    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    #@28
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2a
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@31
    move-result-wide v2

    #@32
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    #@34
    goto :goto_0
.end method


# virtual methods
.method protected configureEVP_PKEY_CTX(J)V
    .locals 0
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 106
    return-void
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
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
    .line 204
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    #@8
    .line 203
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
    .line 228
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    #@8
    .line 227
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 233
    return-void
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 240
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_0
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v2

    #@6
    .line 248
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@9
    .line 240
    return-object v2

    #@a
    .line 241
    :catch_0
    move-exception v1

    #@b
    .line 242
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    #@d
    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 243
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@12
    .line 248
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@15
    .line 243
    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 111
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    #@b
    .line 109
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 131
    return-void

    #@7
    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 135
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@10
    .line 136
    return-void

    #@11
    .line 139
    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    #@14
    move-result-wide v0

    #@15
    .line 140
    .local v0, "baseAddress":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v5, v0, v8

    #@19
    if-nez v5, :cond_2

    #@1b
    .line 143
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@1e
    .line 144
    return-void

    #@1f
    .line 148
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@22
    move-result v4

    #@23
    .line 149
    .local v4, "position":I
    if-gez v4, :cond_3

    #@25
    .line 150
    new-instance v5, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v8, "Negative position"

    #@2a
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 152
    :cond_3
    int-to-long v8, v4

    #@2f
    add-long v6, v0, v8

    #@31
    .line 153
    .local v6, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@34
    move-result v3

    #@35
    .line 154
    .local v3, "len":I
    if-gez v3, :cond_4

    #@37
    .line 155
    new-instance v5, Ljava/lang/RuntimeException;

    #@39
    const-string/jumbo v8, "Negative remaining amount"

    #@3c
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v5

    #@40
    .line 158
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@42
    .line 159
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@44
    if-eqz v5, :cond_5

    #@46
    .line 160
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    #@49
    .line 164
    :goto_0
    add-int v5, v4, v3

    #@4b
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4e
    .line 125
    return-void

    #@4f
    .line 162
    :cond_5
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    #@52
    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 117
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 118
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@9
    .line 115
    :goto_0
    return-void

    #@a
    .line 120
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@d
    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 4
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 256
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_0
    array-length v2, p1

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, p1, v3, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    .line 264
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@b
    .line 256
    return v2

    #@c
    .line 257
    :catch_0
    move-exception v1

    #@d
    .line 258
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    #@f
    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 259
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@14
    .line 264
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    #@17
    .line 259
    throw v2
.end method

.method protected final getEVP_PKEY_CTX()J
    .locals 2

    #@0
    .prologue
    .line 273
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    #@2
    return-wide v0
.end method
