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
.field private ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final evp_md:J

.field private keyBytes:[B

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@8
    .line 54
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    #@a
    .line 55
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    #@c
    .line 53
    return-void
.end method

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMac;)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JI)V

    #@3
    return-void
.end method

.method private final resetContext()V
    .locals 4

    #@0
    .prologue
    .line 83
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    #@9
    .line 84
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 85
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    #@f
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    #@11
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    #@14
    .line 88
    :cond_0
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    #@16
    .line 82
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    #@2
    .line 145
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B

    #@5
    move-result-object v1

    #@6
    .line 146
    .local v1, "output":[B
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@9
    .line 147
    return-object v1
.end method

.method protected engineGetMacLength()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    #@2
    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
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
    .line 66
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 67
    new-instance v0, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v1, "key must be a SecretKey"

    #@9
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 70
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 71
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@11
    const-string/jumbo v1, "unknown parameter type"

    #@14
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 74
    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    #@1e
    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    #@20
    if-nez v0, :cond_2

    #@22
    .line 76
    new-instance v0, Ljava/security/InvalidKeyException;

    #@24
    const-string/jumbo v1, "key cannot be encoded"

    #@27
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@2e
    .line 65
    return-void
.end method

.method protected engineReset()V
    .locals 0

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    #@3
    .line 151
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    #@b
    .line 92
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 110
    return-void

    #@7
    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 114
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@10
    .line 115
    return-void

    #@11
    .line 118
    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    #@14
    move-result-wide v0

    #@15
    .line 119
    .local v0, "baseAddress":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v5, v0, v8

    #@19
    if-nez v5, :cond_2

    #@1b
    .line 122
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@1e
    .line 123
    return-void

    #@1f
    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@22
    move-result v4

    #@23
    .line 128
    .local v4, "position":I
    if-gez v4, :cond_3

    #@25
    .line 129
    new-instance v5, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v8, "Negative position"

    #@2a
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 131
    :cond_3
    int-to-long v8, v4

    #@2f
    add-long v6, v0, v8

    #@31
    .line 132
    .local v6, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@34
    move-result v3

    #@35
    .line 133
    .local v3, "len":I
    if-gez v3, :cond_4

    #@37
    .line 134
    new-instance v5, Ljava/lang/RuntimeException;

    #@39
    const-string/jumbo v8, "Negative remaining amount"

    #@3c
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v5

    #@40
    .line 137
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    #@42
    .line 138
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    #@45
    .line 139
    add-int v5, v4, v3

    #@47
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4a
    .line 104
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    #@2
    .line 100
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    #@5
    .line 98
    return-void
.end method
