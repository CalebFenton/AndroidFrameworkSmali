.class public Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
.source "IkeMacPrf.java"


# static fields
.field private static final blacklist PSEUDORANDOM_FUNCTION_AES128_XCBC_KEY_LEN:I = 0x10


# direct methods
.method private constructor blacklist <init>(IILjava/lang/String;Z)V
    .registers 5
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;
    .param p4, "isJceSupported"    # Z

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;-><init>(IILjava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .registers 8
    .param p0, "prfTransform"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    .line 65
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;->id:I

    .line 67
    .local v0, "algorithmId":I
    const/4 v1, 0x0

    .line 68
    .local v1, "keyLength":I
    const-string v2, ""

    .line 69
    .local v2, "algorithmName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 71
    .local v3, "isJceSupported":Z
    packed-switch v0, :pswitch_data_48

    .line 98
    :pswitch_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PRF ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :pswitch_22
    const/16 v1, 0x10

    .line 83
    const-string v2, "AESCMAC"

    .line 84
    goto :goto_41

    .line 94
    :pswitch_27
    const/16 v1, 0x40

    .line 95
    const-string v2, "HmacSHA512"

    .line 96
    goto :goto_41

    .line 90
    :pswitch_2c
    const/16 v1, 0x30

    .line 91
    const-string v2, "HmacSHA384"

    .line 92
    goto :goto_41

    .line 86
    :pswitch_31
    const/16 v1, 0x20

    .line 87
    const-string v2, "HmacSHA256"

    .line 88
    goto :goto_41

    .line 77
    :pswitch_36
    const/16 v1, 0x10

    .line 78
    const/4 v3, 0x0

    .line 79
    const-string v2, "ALGO_NAME_JCE_UNSUPPORTED"

    .line 80
    goto :goto_41

    .line 73
    :pswitch_3c
    const/16 v1, 0x14

    .line 74
    const-string v2, "HmacSHA1"

    .line 75
    nop

    .line 101
    :goto_41
    new-instance v4, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;-><init>(IILjava/lang/String;Z)V

    return-object v4

    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_9
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist modifyAesCmacKeyIfNeeded([B)[B
    .registers 4
    .param p1, "keyBytes"    # [B

    .line 151
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    .line 152
    new-array v0, v1, [B

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object p1

    .line 154
    :cond_b
    return-object p1
.end method

.method private blacklist modifyAesXCbcKeyIfNeeded([B)[B
    .registers 5
    .param p1, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 133
    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_a

    .line 134
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_19

    .line 135
    :cond_a
    array-length v0, p1

    if-le v0, v1, :cond_19

    .line 136
    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;-><init>()V

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mac([B[BZ)[B

    move-result-object p1

    .line 139
    :cond_19
    :goto_19
    return-object p1
.end method


# virtual methods
.method public blacklist generateKeyMat([B[BI)[B
    .registers 5
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B
    .param p3, "keyMaterialLen"    # I

    .line 216
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/net/crypto/KeyGenerationUtils;->prfPlus(Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateRekeyedSKeySeed([B[B[B[B)[B
    .registers 7
    .param p1, "skD"    # [B
    .param p2, "nonceInit"    # [B
    .param p3, "nonceResp"    # [B
    .param p4, "sharedDhKey"    # [B

    .line 194
    array-length v0, p4

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    .line 195
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, "dataToSign":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist generateSKeySeed([B[B[B)[B
    .registers 8
    .param p1, "nonceInit"    # [B
    .param p2, "nonceResp"    # [B
    .param p3, "sharedDhKey"    # [B

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "keyBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_20

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v1

    if-ne v1, v3, :cond_11

    goto :goto_20

    .line 176
    :cond_11
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_39

    .line 169
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 172
    nop

    .line 173
    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 174
    invoke-static {p2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 180
    :goto_39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist getKeyLength()I
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getKeyLength()I

    move-result v0

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 226
    const-string v0, "Pseudorandom Function"

    return-object v0
.end method

.method public blacklist signBytes([B[B)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 108
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->modifyAesXCbcKeyIfNeeded([B)[B

    move-result-object v0

    move-object p1, v0

    .line 109
    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mac([B[BZ)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_16} :catch_17

    return-object v0

    .line 110
    :catch_17
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to generate MAC: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2c

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->modifyAesCmacKeyIfNeeded([B)[B

    move-result-object p1

    .line 117
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->signBytes([B[B)[B

    move-result-object v0

    return-object v0
.end method
