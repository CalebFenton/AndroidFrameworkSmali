.class public final Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
.source "IkeNormalModeCipher.java"


# static fields
.field static final blacklist AES_CTR_INITIAL_COUNTER:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->AES_CTR_INITIAL_COUNTER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor blacklist <init>(IIILjava/lang/String;)V
    .registers 11
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "ivLength"    # I
    .param p4, "algorithmName"    # Ljava/lang/String;

    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "algorithmId":I
    .end local p2    # "keyLength":I
    .end local p3    # "ivLength":I
    .end local p4    # "algorithmName":Ljava/lang/String;
    .local v1, "algorithmId":I
    .local v2, "keyLength":I
    .local v3, "ivLength":I
    .local v4, "algorithmName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;-><init>(IIILjava/lang/String;I)V

    .line 47
    return-void
.end method

.method constructor blacklist <init>(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "ivLength"    # I
    .param p4, "algorithmName"    # Ljava/lang/String;
    .param p5, "saltLen"    # I

    .line 52
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .end local p1    # "algorithmId":I
    .end local p2    # "keyLength":I
    .end local p3    # "ivLength":I
    .end local p4    # "algorithmName":Ljava/lang/String;
    .end local p5    # "saltLen":I
    .local v1, "algorithmId":I
    .local v2, "keyLength":I
    .local v3, "ivLength":I
    .local v4, "algorithmName":Ljava/lang/String;
    .local v6, "saltLen":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;-><init>(IIILjava/lang/String;ZII)V

    .line 60
    return-void
.end method

.method private static blacklist concatenateByteArray([B[B)[B
    .registers 6
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .line 138
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 139
    .local v0, "result":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v0
.end method

.method private blacklist doCipherAction([B[B[BI)[B
    .registers 13
    .param p1, "data"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "ivBytes"    # [B
    .param p4, "opmode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getKeyLength()I

    move-result v0

    array-length v1, p2

    if-ne v0, v1, :cond_5f

    .line 72
    :try_start_7
    array-length v0, p2

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->mSaltLen:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 73
    .local v0, "secretKeyBytes":[B
    array-length v1, v0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 75
    .local v1, "salt":[B
    invoke-static {v1, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->concatenateByteArray([B[B)[B

    move-result-object v2

    .line 76
    .local v2, "nonce":[B
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getAlgorithmId()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_29

    .line 77
    sget-object v3, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->AES_CTR_INITIAL_COUNTER:[B

    invoke-static {v2, v3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->concatenateByteArray([B[B)[B

    move-result-object v3

    move-object v2, v3

    .line 80
    :cond_29
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 82
    .local v4, "iv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p4, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 85
    .local v5, "inputBuffer":Ljava/nio/ByteBuffer;
    array-length v6, p1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 87
    .local v6, "outputBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v7, v5, v6}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7
    :try_end_4e
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_4e} :catch_4f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_4e} :catch_4f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_4e} :catch_4f
    .catch Ljavax/crypto/ShortBufferException; {:try_start_7 .. :try_end_4e} :catch_4f

    return-object v7

    .line 89
    .end local v0    # "secretKeyBytes":[B
    .end local v1    # "salt":[B
    .end local v2    # "nonce":[B
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "outputBuffer":Ljava/nio/ByteBuffer;
    :catch_4f
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const/4 v1, 0x1

    if-ne v1, p4, :cond_56

    .line 95
    const-string v1, "Failed to encrypt data: "

    goto :goto_58

    .line 96
    :cond_56
    const-string v1, "Failed to decrypt data: "

    :goto_58
    nop

    .line 97
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 65
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist buildIpSecAlgorithmWithKeyImpl([B)Landroid/net/IpSecAlgorithm;
    .registers 4
    .param p1, "key"    # [B

    .line 134
    new-instance v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getAlgorithmId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public blacklist decrypt([B[B[B)[B
    .registers 5
    .param p1, "encryptedData"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->doCipherAction([B[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist encrypt([B[B[B)[B
    .registers 7
    .param p1, "paddedData"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "ivBytes"    # [B

    .line 111
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->doCipherAction([B[B[BI)[B

    move-result-object v0
    :try_end_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to encrypt data: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
