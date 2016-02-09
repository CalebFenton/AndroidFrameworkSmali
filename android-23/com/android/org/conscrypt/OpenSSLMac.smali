.class public abstract Lcom/android/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA224;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA256;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA384;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA512;
    }
.end annotation


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final evp_md:J

.field private final evp_pkey_type:I

.field private macKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JII)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "evp_pkey_type"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@8
    .line 58
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    #@a
    .line 59
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    #@c
    .line 60
    iput p4, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_pkey_type:I

    #@e
    .line 57
    return-void
.end method

.method synthetic constructor <init>(JIILcom/android/org/conscrypt/OpenSSLMac;)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "evp_pkey_type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JII)V

    #@3
    return-void
.end method

.method private final resetContext()V
    .locals 5

    #@0
    .prologue
    .line 94
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 95
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@c
    .line 97
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->macKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    .line 98
    .local v1, "macKey":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v1, :cond_0

    #@10
    .line 99
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    #@12
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@15
    move-result-object v4

    #@16
    invoke-static {v0, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    #@19
    .line 102
    :cond_0
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@1b
    .line 93
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 2

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 120
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B

    #@5
    move-result-object v1

    #@6
    .line 121
    .local v1, "output":[B
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@9
    .line 122
    return-object v1
.end method

.method protected engineGetMacLength()I
    .locals 1

    #@0
    .prologue
    .line 65
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    #@2
    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 72
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v2, "key must be a SecretKey"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 75
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 76
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@11
    const-string/jumbo v2, "unknown parameter type"

    #@14
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 79
    :cond_1
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 80
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@1e
    .end local p1    # "key":Ljava/security/Key;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->macKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@24
    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@27
    .line 70
    return-void

    #@28
    .line 82
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@2b
    move-result-object v0

    #@2c
    .line 83
    .local v0, "keyBytes":[B
    if-nez v0, :cond_3

    #@2e
    .line 84
    new-instance v1, Ljava/security/InvalidKeyException;

    #@30
    const-string/jumbo v2, "key cannot be encoded"

    #@33
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 87
    :cond_3
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@39
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_pkey_type:I

    #@3b
    invoke-static {v2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    #@3e
    move-result-wide v2

    #@3f
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@42
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->macKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@44
    goto :goto_0
.end method

.method protected engineReset()V
    .locals 0

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@3
    .line 126
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 107
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    #@b
    .line 106
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 114
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@5
    .line 112
    return-void
.end method
