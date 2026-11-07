.class public Lcom/google/android/rappor/HmacDrbg;
.super Ljava/lang/Object;
.source "HmacDrbg.java"


# static fields
.field private static final blacklist BYTE_ARRAY_0:[B

.field private static final blacklist BYTE_ARRAY_1:[B

.field private static final blacklist DIGEST_NUM_BYTES:I = 0x20

.field public static final blacklist ENTROPY_INPUT_SIZE_BYTES:I = 0x30

.field private static final blacklist MAX_BYTES_PER_REQUEST:I = 0x3a9

.field public static final blacklist MAX_BYTES_TOTAL:I = 0x2710

.field public static final blacklist MAX_PERSONALIZATION_STRING_LENGTH_BYTES:I = 0x14

.field public static final blacklist SECURITY_STRENGTH:I = 0x100


# instance fields
.field private blacklist bytesGenerated:I

.field private blacklist hmac:Ljavax/crypto/Mac;

.field private blacklist value:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 76
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lcom/google/android/rappor/HmacDrbg;->BYTE_ARRAY_0:[B

    .line 77
    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/google/android/rappor/HmacDrbg;->BYTE_ARRAY_1:[B

    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .registers 6
    .param p1, "entropyInput"    # [B
    .param p2, "personalizationString"    # [B

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p2}, Lcom/google/android/rappor/HmacDrbg;->emptyIfNull([B)[B

    move-result-object v0

    filled-new-array {p1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/rappor/HmacDrbg;->bytesConcat([[B)[B

    move-result-object v0

    .line 92
    .local v0, "seedMaterial":[B
    const/16 v1, 0x20

    new-array v2, v1, [B

    invoke-direct {p0, v2}, Lcom/google/android/rappor/HmacDrbg;->setKey([B)V

    .line 95
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    .line 96
    iget-object v1, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 99
    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->hmacDrbgUpdate([B)V

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    .line 102
    return-void
.end method

.method private static varargs blacklist bytesConcat([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 253
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 252
    .end local v4    # "array":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 255
    :cond_d
    new-array v1, v0, [B

    .line 256
    .local v1, "result":[B
    const/4 v3, 0x0

    .line 257
    .local v3, "pos":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 258
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    array-length v7, v6

    add-int/2addr v3, v7

    .line 257
    .end local v6    # "array":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 261
    :cond_1f
    return-object v1
.end method

.method private static blacklist emptyIfNull([B)[B
    .registers 2
    .param p0, "b"    # [B

    .line 108
    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_7

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0
.end method

.method public static blacklist generateEntropyInput()[B
    .registers 2

    .line 206
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 207
    .local v0, "result":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 208
    return-object v0
.end method

.method private blacklist hash([B)[B
    .registers 4
    .param p1, "x"    # [B

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 133
    :catch_7
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist hmacDrbgGenerate([BII)V
    .registers 9
    .param p1, "out"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 182
    const/4 v0, 0x0

    .line 185
    .local v0, "bytesWritten":I
    :goto_1
    if-ge v0, p3, :cond_1d

    .line 187
    iget-object v1, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    invoke-direct {p0, v1}, Lcom/google/android/rappor/HmacDrbg;->hash([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    .line 191
    sub-int v1, p3, v0

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    const/4 v3, 0x0

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    add-int/2addr v0, v1

    .line 194
    .end local v1    # "bytesToWrite":I
    goto :goto_1

    .line 197
    :cond_1d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/rappor/HmacDrbg;->hmacDrbgUpdate([B)V

    .line 198
    return-void
.end method

.method private blacklist hmacDrbgUpdate([B)V
    .registers 5
    .param p1, "providedData"    # [B

    .line 149
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    sget-object v1, Lcom/google/android/rappor/HmacDrbg;->BYTE_ARRAY_0:[B

    invoke-static {p1}, Lcom/google/android/rappor/HmacDrbg;->emptyIfNull([B)[B

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/rappor/HmacDrbg;->bytesConcat([[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->hash([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->setKey([B)V

    .line 153
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->hash([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    .line 156
    if-nez p1, :cond_22

    .line 157
    return-void

    .line 163
    :cond_22
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    sget-object v1, Lcom/google/android/rappor/HmacDrbg;->BYTE_ARRAY_1:[B

    filled-new-array {v0, v1, p1}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/rappor/HmacDrbg;->bytesConcat([[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->hash([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->setKey([B)V

    .line 167
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    invoke-direct {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->hash([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->value:[B

    .line 168
    return-void
.end method

.method private blacklist setKey([B)V
    .registers 4
    .param p1, "key"    # [B

    .line 118
    const-string v0, "HmacSHA256"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/rappor/HmacDrbg;->hmac:Ljavax/crypto/Mac;

    .line 119
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 120
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v0, p0, Lcom/google/android/rappor/HmacDrbg;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_14

    .line 121
    :catch_13
    move-exception v0

    :goto_14
    nop

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist nextBytes([B)V
    .registers 4
    .param p1, "out"    # [B

    .line 224
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/rappor/HmacDrbg;->nextBytes([BII)V

    .line 225
    return-void
.end method

.method public blacklist nextBytes([BII)V
    .registers 7
    .param p1, "out"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 231
    if-nez p3, :cond_3

    .line 232
    return-void

    .line 234
    :cond_3
    iget v0, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    add-int/2addr v0, p3

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_2a

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "bytesWritten":I
    :goto_b
    if-ge v0, p3, :cond_23

    .line 240
    sub-int v1, p3, v0

    const/16 v2, 0x3a9

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 241
    .local v1, "bytesToWrite":I
    add-int v2, p2, v0

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/rappor/HmacDrbg;->hmacDrbgGenerate([BII)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    .line 242
    add-int/2addr v0, v1

    .line 243
    .end local v1    # "bytesToWrite":I
    goto :goto_b

    .line 245
    .end local v0    # "bytesWritten":I
    :catchall_1c
    move-exception v0

    iget v1, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    .line 246
    throw v0

    .line 245
    :cond_23
    iget v0, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/rappor/HmacDrbg;->bytesGenerated:I

    .line 246
    nop

    .line 247
    return-void

    .line 235
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot generate more than a total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist nextBytes(I)[B
    .registers 3
    .param p1, "length"    # I

    .line 215
    new-array v0, p1, [B

    .line 216
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lcom/google/android/rappor/HmacDrbg;->nextBytes([B)V

    .line 217
    return-object v0
.end method
