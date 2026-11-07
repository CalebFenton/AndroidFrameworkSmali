.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist L:I

.field private blacklist N:I

.field private blacklist certainty:I

.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist iterations:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist usageIndex:I

.field private blacklist use186_3:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 46
    return-void
.end method

.method private static blacklist calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 210
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 211
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 215
    .local v1, "pSub2":Ljava/math/BigInteger;
    :goto_10
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 216
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 217
    .local v3, "g":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    .line 219
    return-object v3

    .line 221
    .end local v2    # "h":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    :cond_22
    goto :goto_10
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 354
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .registers 15
    .param p0, "d"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I

    .line 361
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 362
    .local v0, "e":Ljava/math/BigInteger;
    const-string v1, "6767656E"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    .line 365
    .local v1, "ggen":[B
    array-length v2, p3

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 366
    .local v2, "U":[B
    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    array-length v4, p3

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    array-length v4, v2

    add-int/lit8 v4, v4, -0x3

    int-to-byte v6, p4

    aput-byte v6, v2, v4

    .line 370
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 371
    .local v4, "w":[B
    const/4 v6, 0x1

    .local v6, "count":I
    :goto_30
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_4f

    .line 373
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 374
    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 375
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 376
    .local v7, "W":Ljava/math/BigInteger;
    invoke-virtual {v7, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 377
    .local v8, "g":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_4c

    .line 379
    return-object v8

    .line 371
    .end local v7    # "W":Ljava/math/BigInteger;
    .end local v8    # "g":Ljava/math/BigInteger;
    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 383
    .end local v6    # "count":I
    :cond_4f
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 17

    .line 129
    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    .line 130
    .local v2, "seed":[B
    new-array v3, v1, [B

    .line 131
    .local v3, "part1":[B
    new-array v4, v1, [B

    .line 132
    .local v4, "part2":[B
    new-array v1, v1, [B

    .line 133
    .local v1, "u":[B
    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xa0

    .line 134
    .local v5, "n":I
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v7, v7, 0x8

    new-array v7, v7, [B

    .line 138
    .local v7, "w":[B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SHA-1"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 145
    :goto_26
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 147
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 148
    array-length v8, v2

    invoke-static {v2, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 150
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v8, v4, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 152
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3e
    array-length v10, v1

    if-eq v8, v10, :cond_4c

    .line 154
    aget-byte v10, v3, v8

    aget-byte v11, v4, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 157
    .end local v8    # "i":I
    :cond_4c
    aget-byte v8, v1, v9

    or-int/lit8 v8, v8, -0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 158
    const/16 v8, 0x13

    aget-byte v10, v1, v8

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 160
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 162
    .local v8, "q":Ljava/math/BigInteger;
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_67

    .line 164
    goto :goto_26

    .line 167
    :cond_67
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    .line 168
    .local v10, "offset":[B
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 170
    const/4 v11, 0x0

    .local v11, "counter":I
    :goto_6f
    const/16 v12, 0x1000

    if-ge v11, v12, :cond_d8

    .line 173
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_74
    if-gt v12, v5, :cond_85

    .line 175
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 176
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v7

    array-length v15, v3

    mul-int/2addr v15, v12

    sub-int/2addr v14, v15

    invoke-static {v13, v10, v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_74

    .line 179
    .end local v12    # "k":I
    :cond_85
    array-length v12, v7

    array-length v13, v3

    mul-int/2addr v13, v5

    sub-int/2addr v12, v13

    .line 180
    .local v12, "remaining":I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 181
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v13, v10, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 182
    array-length v13, v3

    sub-int/2addr v13, v12

    invoke-static {v3, v13, v7, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v13, v7, v9

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 187
    .end local v12    # "remaining":I
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 189
    .local v12, "x":Ljava/math/BigInteger;
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 191
    .local v13, "c":Ljava/math/BigInteger;
    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 193
    .local v14, "p":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v15, v6, :cond_bd

    .line 195
    goto :goto_d4

    .line 198
    :cond_bd
    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 200
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v14, v8, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 202
    .local v6, "g":Ljava/math/BigInteger;
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v15, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v15, v2, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v9, v14, v8, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v9

    .line 170
    .end local v6    # "g":Ljava/math/BigInteger;
    .end local v12    # "x":Ljava/math/BigInteger;
    .end local v13    # "c":Ljava/math/BigInteger;
    .end local v14    # "p":Ljava/math/BigInteger;
    :cond_d4
    :goto_d4
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_6f

    .line 205
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v10    # "offset":[B
    .end local v11    # "counter":I
    :cond_d8
    const/4 v6, 0x1

    goto/16 :goto_26

    .line 140
    :cond_db
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private blacklist generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 23

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 233
    .local v1, "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    .line 241
    .local v2, "outlen":I
    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 242
    .local v3, "seedlen":I
    div-int/lit8 v4, v3, 0x8

    new-array v4, v4, [B

    .line 245
    .local v4, "seed":[B
    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v5, v2

    .line 248
    .local v5, "n":I
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    sub-int/2addr v7, v6

    rem-int/2addr v7, v2

    .line 250
    .local v7, "b":I
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    .line 251
    .local v8, "w":[B
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    .line 255
    .local v9, "output":[B
    :goto_25
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 258
    const/4 v10, 0x0

    invoke-static {v1, v4, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 260
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v6, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 263
    .local v11, "U":Ljava/math/BigInteger;
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 266
    .local v12, "q":Ljava/math/BigInteger;
    invoke-direct {v0, v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v13

    if-nez v13, :cond_52

    .line 269
    goto :goto_25

    .line 274
    :cond_52
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    .line 277
    .local v13, "offset":[B
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v14, v14, 0x4

    .line 278
    .local v14, "counterLimit":I
    const/4 v15, 0x0

    .local v15, "counter":I
    :goto_5b
    if-ge v15, v14, :cond_106

    .line 284
    const/16 v16, 0x1

    move/from16 v6, v16

    .local v6, "j":I
    :goto_61
    if-gt v6, v5, :cond_75

    .line 286
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 287
    array-length v10, v8

    move/from16 v17, v2

    .end local v2    # "outlen":I
    .local v17, "outlen":I
    array-length v2, v9

    mul-int/2addr v2, v6

    sub-int/2addr v10, v2

    invoke-static {v1, v13, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 284
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_61

    .end local v17    # "outlen":I
    .restart local v2    # "outlen":I
    :cond_75
    move/from16 v17, v2

    .line 290
    .end local v2    # "outlen":I
    .end local v6    # "j":I
    .restart local v17    # "outlen":I
    array-length v2, v8

    array-length v6, v9

    mul-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 291
    .local v2, "remaining":I
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 292
    const/4 v6, 0x0

    invoke-static {v1, v13, v9, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 293
    array-length v10, v9

    sub-int/2addr v10, v2

    invoke-static {v9, v10, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aget-byte v10, v8, v6

    or-int/lit8 v10, v10, -0x80

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    .line 299
    .end local v2    # "remaining":I
    new-instance v2, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 302
    .local v2, "X":Ljava/math/BigInteger;
    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 305
    .local v6, "c":Ljava/math/BigInteger;
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 308
    .local v10, "p":Ljava/math/BigInteger;
    move-object/from16 v18, v2

    .end local v2    # "X":Ljava/math/BigInteger;
    .local v18, "X":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move/from16 v19, v3

    .end local v3    # "seedlen":I
    .local v19, "seedlen":I
    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v2, v3, :cond_b7

    .line 310
    move-object/from16 v20, v1

    move/from16 v21, v5

    goto :goto_f8

    .line 314
    :cond_b7
    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 318
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_df

    .line 320
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v1, v10, v12, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v2

    .line 321
    .local v2, "g":Ljava/math/BigInteger;
    if-eqz v2, :cond_da

    .line 323
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-object/from16 v20, v1

    .end local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .local v20, "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move/from16 v21, v5

    .end local v5    # "n":I
    .local v21, "n":I
    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v1, v4, v15, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v3, v10, v12, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    .line 321
    .end local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_da
    move-object/from16 v20, v1

    move/from16 v21, v5

    .end local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .restart local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    goto :goto_e3

    .line 318
    .end local v2    # "g":Ljava/math/BigInteger;
    .end local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_df
    move-object/from16 v20, v1

    move/from16 v21, v5

    .line 327
    .end local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .restart local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    :goto_e3
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v10, v12, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 329
    .local v1, "g":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v4, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v10, v12, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    .line 314
    .end local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .local v1, "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_f4
    move-object/from16 v20, v1

    move/from16 v21, v5

    .line 278
    .end local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .end local v6    # "c":Ljava/math/BigInteger;
    .end local v10    # "p":Ljava/math/BigInteger;
    .end local v18    # "X":Ljava/math/BigInteger;
    .restart local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    :goto_f8
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v1, v20

    move/from16 v5, v21

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5b

    .end local v17    # "outlen":I
    .end local v19    # "seedlen":I
    .end local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .local v2, "outlen":I
    .restart local v3    # "seedlen":I
    .restart local v5    # "n":I
    :cond_106
    move-object/from16 v20, v1

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v21, v5

    .line 338
    .end local v1    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v2    # "outlen":I
    .end local v3    # "seedlen":I
    .end local v5    # "n":I
    .end local v11    # "U":Ljava/math/BigInteger;
    .end local v12    # "q":Ljava/math/BigInteger;
    .end local v13    # "offset":[B
    .end local v14    # "counterLimit":I
    .end local v15    # "counter":I
    .restart local v17    # "outlen":I
    .restart local v19    # "seedlen":I
    .restart local v20    # "d":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    const/4 v6, 0x1

    goto/16 :goto_25
.end method

.method private static blacklist getDefaultN(I)I
    .registers 2
    .param p0, "L"    # I

    .line 394
    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 v0, 0x100

    goto :goto_9

    :cond_7
    const/16 v0, 0xa0

    :goto_9
    return v0
.end method

.method private static blacklist getMinimumIterations(I)I
    .registers 3
    .param p0, "L"    # I

    .line 400
    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 v0, 0x28

    goto :goto_e

    :cond_7
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x30

    :goto_e
    return v0
.end method

.method private static blacklist hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6
    .param p0, "d"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outputPos"    # I

    .line 388
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 389
    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 390
    return-void
.end method

.method private static blacklist inc([B)V
    .registers 3
    .param p0, "buf"    # [B

    .line 405
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_14

    .line 407
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 408
    .local v1, "b":B
    aput-byte v1, p0, v0

    .line 410
    if-eqz v1, :cond_11

    .line 412
    goto :goto_14

    .line 405
    .end local v1    # "b":B
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 415
    .end local v0    # "i":I
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 348
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_9

    .line 123
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_d

    .line 124
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 122
    :goto_d
    return-object v0
.end method

.method public blacklist init(IILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .line 60
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 61
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 62
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 63
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 64
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 67
    return-void
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .registers 7
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    .local v0, "L":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    .line 82
    .local v1, "N":I
    const/16 v2, 0x400

    if-lt v0, v2, :cond_80

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_80

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_80

    .line 86
    if-ne v0, v2, :cond_23

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1b

    goto :goto_23

    .line 88
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_23
    :goto_23
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_38

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_38

    if-ne v1, v4, :cond_30

    goto :goto_38

    .line 92
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_38
    :goto_38
    if-ne v0, v3, :cond_45

    if-ne v1, v4, :cond_3d

    goto :goto_45

    .line 96
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_78

    .line 104
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 105
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 107
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 109
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 111
    return-void

    .line 101
    :cond_78
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
