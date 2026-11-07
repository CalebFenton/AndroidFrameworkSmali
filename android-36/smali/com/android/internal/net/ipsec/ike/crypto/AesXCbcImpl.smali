.class public Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;
.super Ljava/lang/Object;
.source "AesXCbcImpl.java"


# static fields
.field private static final blacklist AES_CBC:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final blacklist AES_CBC_BLOCK_LEN:I = 0x10

.field private static final blacklist AES_CBC_IV_LEN:I = 0x10

.field private static final blacklist AES_XCBC_96_MAC_LEN:I = 0xc

.field private static final blacklist E_INITIAL:[B

.field private static final blacklist KEY1_SEED_HEX_STRING:Ljava/lang/String; = "01010101010101010101010101010101"

.field private static final blacklist KEY2_SEED_HEX_STRING:Ljava/lang/String; = "02020202020202020202020202020202"

.field private static final blacklist KEY3_SEED_HEX_STRING:Ljava/lang/String; = "03030303030303030303030303030303"


# instance fields
.field private final blacklist mCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->E_INITIAL:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "AES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 54
    return-void
.end method

.method private blacklist encryptAesBlock([B[B)[B
    .registers 9
    .param p1, "keyBytes"    # [B
    .param p2, "dataToEncrypt"    # [B

    .line 141
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 143
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    .local v1, "inputBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 146
    .local v2, "outputBuffer":Ljava/nio/ByteBuffer;
    :try_start_12
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 147
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 148
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 149
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_2c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_2c} :catch_2d
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_2c} :catch_2d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_2c} :catch_2d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_2c} :catch_2d
    .catch Ljavax/crypto/ShortBufferException; {:try_start_12 .. :try_end_2c} :catch_2d

    return-object v3

    .line 150
    :catch_2d
    move-exception v3

    .line 155
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed to sign data: "

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static blacklist padData([BI)[B
    .registers 8
    .param p0, "dataToSign"    # [B
    .param p1, "blockSize"    # I

    .line 128
    array-length v0, p0

    .line 129
    .local v0, "dataLen":I
    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p1

    mul-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 130
    .local v1, "padLen":I
    add-int v2, v0, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 131
    .local v2, "paddedData":Ljava/nio/ByteBuffer;
    new-array v3, v1, [B

    .line 134
    .local v3, "padding":[B
    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 135
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private static blacklist xorByteArrays([B[B)[B
    .registers 6
    .param p0, "message"    # [B
    .param p1, "e"    # [B

    .line 118
    array-length v0, p0

    new-array v0, v0, [B

    .line 120
    .local v0, "output":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 121
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 124
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method


# virtual methods
.method public blacklist mac([B[BZ)[B
    .registers 16
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B
    .param p3, "needTruncation"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 60
    .local v0, "blockSize":I
    array-length v1, p2

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    .line 62
    .local v1, "isPaddingNeeded":Z
    :goto_e
    move-object v3, p2

    .line 63
    .local v3, "paddedData":[B
    if-eqz v1, :cond_15

    .line 64
    invoke-static {p2, v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->padData([BI)[B

    move-result-object v3

    .line 71
    :cond_15
    const-string v4, "01010101010101010101010101010101"

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v4

    .line 72
    .local v4, "key1":[B
    const-string v5, "02020202020202020202020202020202"

    invoke-static {v5}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v5

    .line 73
    .local v5, "key2":[B
    const-string v6, "03030303030303030303030303030303"

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v6

    .line 76
    .local v6, "key3":[B
    sget-object v7, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->E_INITIAL:[B

    .line 78
    .local v7, "e":[B
    array-length v8, v3

    div-int/2addr v8, v0

    .line 83
    .local v8, "numMessageBlocks":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_38
    add-int/lit8 v10, v8, -0x1

    if-ge v9, v10, :cond_50

    .line 84
    mul-int v10, v9, v0

    mul-int v11, v9, v0

    add-int/2addr v11, v0

    invoke-static {v3, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 85
    .local v10, "message":[B
    invoke-static {v10, v7}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v10

    .line 86
    invoke-direct {p0, v4, v10}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v7

    .line 83
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 99
    .end local v9    # "i":I
    .end local v10    # "message":[B
    :cond_50
    array-length v9, v3

    sub-int/2addr v9, v0

    array-length v10, v3

    invoke-static {v3, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 100
    .local v9, "message":[B
    invoke-static {v9, v7}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    .line 101
    if-eqz v1, :cond_62

    .line 102
    invoke-static {v9, v6}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    goto :goto_66

    .line 104
    :cond_62
    invoke-static {v9, v5}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    .line 107
    :goto_66
    invoke-direct {p0, v4, v9}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v10

    .line 110
    .local v10, "encryptedMessage":[B
    if-eqz p3, :cond_72

    .line 111
    const/16 v11, 0xc

    invoke-static {v10, v2, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 114
    :cond_72
    return-object v10
.end method
