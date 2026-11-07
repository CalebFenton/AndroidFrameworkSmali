.class public final Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
.source "IkeCombinedModeCipher.java"


# instance fields
.field private final blacklist mChecksumLen:I


# direct methods
.method constructor blacklist <init>(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "ivLength"    # I
    .param p4, "algorithmName"    # Ljava/lang/String;
    .param p5, "saltLen"    # I

    .line 55
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "algorithmId":I
    .end local p2    # "keyLength":I
    .end local p3    # "ivLength":I
    .end local p4    # "algorithmName":Ljava/lang/String;
    .end local p5    # "saltLen":I
    .local v1, "algorithmId":I
    .local v2, "keyLength":I
    .local v3, "ivLength":I
    .local v4, "algorithmName":Ljava/lang/String;
    .local v5, "saltLen":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;-><init>(IIILjava/lang/String;II)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(IIILjava/lang/String;II)V
    .registers 15
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "ivLength"    # I
    .param p4, "algorithmName"    # Ljava/lang/String;
    .param p5, "saltLen"    # I
    .param p6, "blockSize"    # I

    .line 66
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    .end local p1    # "algorithmId":I
    .end local p2    # "keyLength":I
    .end local p3    # "ivLength":I
    .end local p4    # "algorithmName":Ljava/lang/String;
    .end local p5    # "saltLen":I
    .end local p6    # "blockSize":I
    .local v1, "algorithmId":I
    .local v2, "keyLength":I
    .local v3, "ivLength":I
    .local v4, "algorithmName":Ljava/lang/String;
    .local v6, "saltLen":I
    .local v7, "blockSize":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;-><init>(IIILjava/lang/String;ZII)V

    .line 67
    const/16 p1, 0x10

    sparse-switch v1, :sswitch_data_3a

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized Encryption Algorithm ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :sswitch_29
    iput p1, v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    .line 79
    goto :goto_39

    .line 75
    :sswitch_2c
    iput p1, v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    .line 76
    goto :goto_39

    .line 72
    :sswitch_2f
    const/16 p1, 0xc

    iput p1, v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    .line 73
    goto :goto_39

    .line 69
    :sswitch_34
    const/16 p1, 0x8

    iput p1, v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    .line 70
    nop

    .line 84
    :goto_39
    return-void

    :sswitch_data_3a
    .sparse-switch
        0x12 -> :sswitch_34
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_2c
        0x1c -> :sswitch_29
    .end sparse-switch
.end method

.method private blacklist doCipherAction([B[B[B[BI)[B
    .registers 16
    .param p1, "data"    # [B
    .param p2, "additionalAuthData"    # [B
    .param p3, "keyBytes"    # [B
    .param p4, "ivBytes"    # [B
    .param p5, "opmode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 93
    .local v1, "secretKeyAndSaltBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p3

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mSaltLen:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 94
    .local v2, "secretKeyBytes":[B
    iget v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mSaltLen:I

    new-array v3, v3, [B

    .line 95
    .local v3, "salt":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 100
    .local v4, "key":Ljavax/crypto/spec/SecretKeySpec;
    iget v5, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mSaltLen:I

    array-length v6, p4

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 101
    .local v5, "nonceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getParamSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    invoke-virtual {v6, p5, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 107
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 109
    .local v6, "inputBuffer":Ljava/nio/ByteBuffer;
    array-length v7, p1

    .line 110
    .local v7, "outputLen":I
    if-ne p5, v0, :cond_48

    iget v8, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    add-int/2addr v7, v8

    .line 111
    :cond_48
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 113
    .local v8, "outputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v9, v6, v8}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 114
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_55
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_55} :catch_65
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_55} :catch_56
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_55} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_55} :catch_56
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_55} :catch_56
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_55} :catch_56

    return-object v0

    .line 118
    .end local v1    # "secretKeyAndSaltBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "secretKeyBytes":[B
    .end local v3    # "salt":[B
    .end local v4    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "nonceBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "outputLen":I
    .end local v8    # "outputBuffer":Ljava/nio/ByteBuffer;
    :catch_56
    move-exception v1

    .line 124
    .local v1, "e":Ljava/security/GeneralSecurityException;
    if-ne v0, p5, :cond_5c

    .line 125
    const-string v0, "Failed to encrypt data: "

    goto :goto_5e

    .line 126
    :cond_5c
    const-string v0, "Failed to decrypt data: "

    :goto_5e
    nop

    .line 127
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 115
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_65
    move-exception v0

    .line 117
    .local v0, "e":Ljavax/crypto/AEADBadTagException;
    throw v0
.end method

.method private blacklist getParamSpec([B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "nonce"    # [B

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getAlgorithmId()I

    move-result v0

    sparse-switch v0, :sswitch_data_34

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized Encryption Algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getAlgorithmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :sswitch_24
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 138
    :sswitch_2a
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0

    :sswitch_data_34
    .sparse-switch
        0x12 -> :sswitch_2a
        0x13 -> :sswitch_2a
        0x14 -> :sswitch_2a
        0x1c -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method protected blacklist buildIpSecAlgorithmWithKeyImpl([B)Landroid/net/IpSecAlgorithm;
    .registers 5
    .param p1, "key"    # [B

    .line 206
    new-instance v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getAlgorithmId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public blacklist decrypt([B[B[B[B)[B
    .registers 11
    .param p1, "paddedDataWithChecksum"    # [B
    .param p2, "additionalAuthData"    # [B
    .param p3, "keyBytes"    # [B
    .param p4, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 183
    nop

    .line 184
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "paddedDataWithChecksum":[B
    .end local p2    # "additionalAuthData":[B
    .end local p3    # "keyBytes":[B
    .end local p4    # "ivBytes":[B
    .local v1, "paddedDataWithChecksum":[B
    .local v2, "additionalAuthData":[B
    .local v3, "keyBytes":[B
    .local v4, "ivBytes":[B
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->doCipherAction([B[B[B[BI)[B

    move-result-object p1

    .line 191
    .local p1, "decryptPaddedDataAndAuthTag":[B
    array-length p2, p1

    iget p3, v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    sub-int/2addr p2, p3

    .line 192
    .local p2, "decryptPaddedDataLen":I
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    return-object p3
.end method

.method public blacklist encrypt([B[B[B[B)[B
    .registers 12
    .param p1, "paddedData"    # [B
    .param p2, "additionalAuthData"    # [B
    .param p3, "keyBytes"    # [B
    .param p4, "ivBytes"    # [B

    .line 159
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "paddedData":[B
    .end local p2    # "additionalAuthData":[B
    .end local p3    # "keyBytes":[B
    .end local p4    # "ivBytes":[B
    .local v2, "paddedData":[B
    .local v3, "additionalAuthData":[B
    .local v4, "keyBytes":[B
    .local v5, "ivBytes":[B
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->doCipherAction([B[B[B[BI)[B

    move-result-object p1
    :try_end_a
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    .line 161
    :catch_b
    move-exception v0

    move-object p1, v0

    .line 162
    .local p1, "e":Ljavax/crypto/AEADBadTagException;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Failed to encrypt data: "

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist getChecksumLen()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->mChecksumLen:I

    return v0
.end method
