.class public Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
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

.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist iterations:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist usageIndex:I

.field private blacklist use186_3:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 26
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static blacklist calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7

    .line 210
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 211
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 215
    :cond_10
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    return-object v1
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 3

    .line 354
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .registers 10

    .line 361
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 362
    const-string v0, "6767656E"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    .line 365
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x3

    new-array v2, v2, [B

    .line 366
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    array-length p3, p3

    array-length v3, v0

    invoke-static {v0, v4, v2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p3, p4

    .line 368
    aput-byte p3, v2, v1

    .line 370
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    const/4 p4, 0x1

    move v0, p4

    :goto_2c
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_4b

    .line 373
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 374
    invoke-static {p0, v2, p3, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 375
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p4, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 376
    invoke-virtual {v1, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 377
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_48

    return-object v1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 18

    move-object/from16 v0, p0

    const/16 v1, 0x14

    .line 129
    new-array v2, v1, [B

    .line 130
    new-array v3, v1, [B

    .line 131
    new-array v4, v1, [B

    .line 132
    new-array v5, v1, [B

    .line 133
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v7, v6, -0x1

    div-int/lit16 v7, v7, 0xa0

    .line 134
    div-int/lit8 v6, v6, 0x8

    new-array v8, v6, [B

    .line 138
    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SHA-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 145
    :cond_24
    :goto_24
    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 147
    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-static {v9, v2, v3, v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 148
    invoke-static {v2, v10, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 150
    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-static {v9, v4, v4, v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    move v9, v10

    :goto_3b
    if-eq v9, v1, :cond_48

    .line 154
    aget-byte v11, v3, v9

    aget-byte v12, v4, v9

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 157
    :cond_48
    aget-byte v9, v5, v10

    or-int/lit8 v9, v9, -0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    const/16 v9, 0x13

    .line 158
    aget-byte v11, v5, v9

    const/4 v12, 0x1

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    .line 160
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v12, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 162
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_64

    goto :goto_24

    .line 167
    :cond_64
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    .line 168
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    move v13, v10

    :goto_6c
    const/16 v14, 0x1000

    if-ge v13, v14, :cond_24

    move v14, v12

    :goto_71
    if-gt v14, v7, :cond_84

    .line 175
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 176
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    mul-int/lit8 v16, v14, 0x14

    sub-int v1, v6, v16

    invoke-static {v15, v11, v8, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x14

    goto :goto_71

    :cond_84
    mul-int/lit8 v1, v7, 0x14

    sub-int v1, v6, v1

    .line 180
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 181
    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-static {v14, v11, v3, v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    rsub-int/lit8 v14, v1, 0x14

    .line 182
    invoke-static {v3, v14, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v1, v8, v10

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v8, v10

    .line 187
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v12, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 189
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 191
    sget-object v15, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v14, v15, :cond_bc

    goto :goto_d3

    .line 198
    :cond_bc
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_d3

    .line 200
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v9, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 202
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v4, v2, v13}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v3, v1, v9, v0, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    :cond_d3
    :goto_d3
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x14

    goto :goto_6c

    .line 140
    :cond_d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 17

    move-object/from16 v0, p0

    .line 232
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 233
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    .line 241
    iget v3, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 242
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 245
    iget v4, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v5, v4, -0x1

    div-int/2addr v5, v2

    add-int/lit8 v6, v4, -0x1

    .line 248
    rem-int/2addr v6, v2

    .line 250
    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 251
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v7, v6, [B

    .line 255
    :cond_22
    :goto_22
    iget-object v8, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v8, 0x0

    .line 258
    invoke-static {v1, v3, v7, v8}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 260
    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v11, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 263
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 266
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_50

    goto :goto_22

    .line 274
    :cond_50
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    .line 277
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v12, v12, 0x4

    move v13, v8

    :goto_59
    if-ge v13, v12, :cond_22

    move v14, v10

    :goto_5c
    if-gt v14, v5, :cond_6b

    .line 286
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    mul-int v15, v14, v6

    sub-int v15, v4, v15

    .line 287
    invoke-static {v1, v11, v2, v15}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    :cond_6b
    mul-int v14, v5, v6

    sub-int v14, v4, v14

    .line 291
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 292
    invoke-static {v1, v11, v7, v8}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    sub-int v15, v6, v14

    .line 293
    invoke-static {v7, v15, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aget-byte v14, v2, v8

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    aput-byte v14, v2, v8

    .line 299
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v10, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 302
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 305
    sget-object v8, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 308
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v14, v15, :cond_a1

    goto :goto_cf

    .line 314
    :cond_a1
    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 318
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_be

    .line 320
    invoke-static {v1, v8, v9, v3, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 323
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v4, v3, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v2, v8, v9, v1, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    .line 327
    :cond_be
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v8, v9, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v2, v3, v13}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v8, v9, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    :cond_cf
    :goto_cf
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_59
.end method

.method private static blacklist getDefaultN(I)I
    .registers 2

    .line 0
    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 p0, 0x100

    return p0

    :cond_7
    const/16 p0, 0xa0

    return p0
.end method

.method private static blacklist getMinimumIterations(I)I
    .registers 2

    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 p0, 0x28

    return p0

    :cond_7
    add-int/lit8 p0, p0, -0x1

    .line 400
    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    return p0
.end method

.method private static blacklist hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6

    .line 388
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 389
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static blacklist inc([B)V
    .registers 3

    .line 405
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    .line 407
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 408
    aput-byte v1, p0, v0

    if-eqz v1, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 2

    .line 348
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_9

    .line 123
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object p0

    return-object p0

    .line 124
    :cond_9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist init(IILjava/security/SecureRandom;)V
    .registers 4

    .line 60
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 61
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 62
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 63
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 64
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .registers 7

    .line 80
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_80

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_80

    .line 82
    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_80

    if-ne v0, v2, :cond_23

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1b

    goto :goto_23

    .line 88
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 160 for L = 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 224 or 256 for L = 2048"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    if-ne v0, v3, :cond_45

    if-ne v1, v4, :cond_3d

    goto :goto_45

    .line 96
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 256 for L = 3072"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_78

    .line 104
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 105
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 107
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 109
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 110
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void

    .line 101
    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Digest output size too small for value of N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
