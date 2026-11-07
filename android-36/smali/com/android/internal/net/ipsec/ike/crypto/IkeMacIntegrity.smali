.class public Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
.source "IkeMacIntegrity.java"


# static fields
.field private static final blacklist IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChecksumLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    .line 49
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "hmac(sha1)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "xcbc(aes)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "cmac(aes)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "hmac(sha256)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "hmac(sha384)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "hmac(sha512)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/String;ZI)V
    .registers 6
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;
    .param p4, "isJceSupported"    # Z
    .param p5, "checksumLength"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;-><init>(IILjava/lang/String;Z)V

    .line 72
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->mChecksumLength:I

    .line 73
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .registers 9
    .param p0, "integrityTransform"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 82
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;->id:I

    .line 84
    .local v1, "algorithmId":I
    const/4 v0, 0x0

    .line 85
    .local v0, "keyLength":I
    const-string v2, ""

    .line 86
    .local v2, "algorithmName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 87
    .local v3, "isJceSupported":Z
    const/4 v4, 0x0

    .line 89
    .local v4, "checksumLength":I
    sparse-switch v1, :sswitch_data_74

    .line 124
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized Integrity Algorithm ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :sswitch_23
    const/16 v0, 0x40

    .line 120
    const-string v2, "HmacSHA512"

    .line 121
    const/16 v4, 0x20

    .line 122
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_65

    .line 114
    :sswitch_2e
    const/16 v0, 0x30

    .line 115
    const-string v2, "HmacSHA384"

    .line 116
    const/16 v4, 0x18

    .line 117
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_65

    .line 109
    :sswitch_39
    const/16 v0, 0x20

    .line 110
    const-string v2, "HmacSHA256"

    .line 111
    const/16 v4, 0x10

    .line 112
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_65

    .line 104
    :sswitch_44
    const/16 v0, 0x10

    .line 105
    const-string v2, "AESCMAC"

    .line 106
    const/16 v4, 0xc

    .line 107
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_65

    .line 98
    :sswitch_4f
    const/16 v0, 0x10

    .line 99
    const/4 v3, 0x0

    .line 100
    const-string v2, "ALGO_NAME_JCE_UNSUPPORTED"

    .line 101
    const/16 v4, 0xc

    .line 102
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_65

    .line 93
    :sswitch_5b
    const/16 v0, 0x14

    .line 94
    const-string v2, "HmacSHA1"

    .line 95
    const/16 v4, 0xc

    .line 96
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    .line 128
    .end local v0    # "keyLength":I
    .local v2, "keyLength":I
    .local v3, "algorithmName":Ljava/lang/String;
    .local v4, "isJceSupported":Z
    .local v5, "checksumLength":I
    :goto_65
    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;-><init>(IILjava/lang/String;ZI)V

    return-object v0

    .line 91
    .end local v5    # "checksumLength":I
    .restart local v0    # "keyLength":I
    .local v2, "algorithmName":Ljava/lang/String;
    .local v3, "isJceSupported":Z
    .local v4, "checksumLength":I
    :sswitch_6b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Integrity algorithm is not found."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_6b
        0x2 -> :sswitch_5b
        0x5 -> :sswitch_4f
        0x8 -> :sswitch_44
        0xc -> :sswitch_39
        0xd -> :sswitch_2e
        0xe -> :sswitch_23
    .end sparse-switch
.end method

.method public static blacklist getIpSecAlgorithmName(I)Ljava/lang/String;
    .registers 2
    .param p0, "ikeAlgoId"    # I

    .line 184
    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist buildIpSecAlgorithmWithKey([B)Landroid/net/IpSecAlgorithm;
    .registers 5
    .param p1, "key"    # [B

    .line 197
    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getAlgorithmId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 208
    new-instance v0, Landroid/net/IpSecAlgorithm;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getAlgorithmId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->mChecksumLength:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    .line 208
    return-object v0

    .line 205
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getAlgorithmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in IPsec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected key with length of : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received key with length of : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateChecksum([B[B)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "dataToAuthenticate"    # [B

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_13

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->signBytes([B[B)[B

    move-result-object v0

    .line 173
    .local v0, "signedBytes":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->mChecksumLength:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 165
    .end local v0    # "signedBytes":[B
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getChecksumLen()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->mChecksumLength:I

    return v0
.end method

.method public bridge synthetic blacklist getKeyLength()I
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getKeyLength()I

    move-result v0

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 219
    const-string v0, "Integrity Algorithm."

    return-object v0
.end method

.method public blacklist signBytes([B[B)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getAlgorithmId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 136
    :try_start_7
    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mac([B[BZ)[B

    move-result-object v0
    :try_end_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_11} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 137
    :catch_12
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to generate MAC: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->signBytes([B[B)[B

    move-result-object v0

    return-object v0
.end method
