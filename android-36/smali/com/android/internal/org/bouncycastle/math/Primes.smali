.class public abstract Lcom/android/internal/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;,
        Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field public static final blacklist SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 5
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    .line 360
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    .line 364
    return-void

    .line 362
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 16
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .line 156
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 158
    if-eqz p1, :cond_cd

    .line 162
    const/4 v0, 0x1

    if-lt p2, v0, :cond_c5

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 169
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    .line 171
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 173
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    .line 176
    :cond_24
    move-object v0, p0

    .line 177
    .local v0, "w":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 178
    .local v1, "wSubOne":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 180
    .local v2, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 181
    .local v3, "a":I
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 183
    .local v4, "m":Ljava/math/BigInteger;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, p2, :cond_c0

    .line 185
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v6, v2, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 186
    .local v6, "b":Ljava/math/BigInteger;
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 188
    .local v7, "g":Ljava/math/BigInteger;
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_53

    .line 190
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v8

    return-object v8

    .line 193
    :cond_53
    invoke-virtual {v6, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 195
    .local v8, "z":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bc

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 197
    goto :goto_bc

    .line 200
    :cond_66
    const/4 v9, 0x0

    .line 202
    .local v9, "primeToBase":Z
    move-object v10, v8

    .line 203
    .local v10, "x":Ljava/math/BigInteger;
    const/4 v11, 0x1

    .local v11, "j":I
    :goto_69
    if-ge v11, v3, :cond_86

    .line 205
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v12, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 207
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 209
    const/4 v9, 0x1

    .line 210
    goto :goto_86

    .line 213
    :cond_79
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 215
    goto :goto_86

    .line 218
    :cond_82
    move-object v10, v8

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    .line 221
    .end local v11    # "j":I
    :cond_86
    :goto_86
    if-nez v9, :cond_bc

    .line 223
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a0

    .line 225
    move-object v10, v8

    .line 226
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v11, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 228
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a0

    .line 230
    move-object v10, v8

    .line 234
    :cond_a0
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 236
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-lez v11, :cond_b7

    .line 238
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    .line 241
    :cond_b7
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    .line 183
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v7    # "g":Ljava/math/BigInteger;
    .end local v8    # "z":Ljava/math/BigInteger;
    .end local v9    # "primeToBase":Z
    .end local v10    # "x":Ljava/math/BigInteger;
    :cond_bc
    :goto_bc
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3a

    .line 245
    .end local v5    # "i":I
    :cond_c0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v5

    return-object v5

    .line 164
    .end local v0    # "w":Ljava/math/BigInteger;
    .end local v1    # "wSubOne":Ljava/math/BigInteger;
    .end local v2    # "wSubTwo":Ljava/math/BigInteger;
    .end local v3    # "a":I
    .end local v4    # "m":Ljava/math/BigInteger;
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist extract32([B)I
    .registers 6
    .param p0, "bs"    # [B

    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, "result":I
    const/4 v1, 0x4

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 592
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 594
    array-length v3, p0

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 595
    .local v3, "b":I
    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v3, v4

    or-int/2addr v0, v4

    .line 592
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 598
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method public static blacklist generateSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .registers 5
    .param p0, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "inputSeed"    # [B

    .line 122
    if-eqz p0, :cond_23

    .line 126
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1b

    .line 130
    if-eqz p2, :cond_13

    array-length v0, p2

    if-eqz v0, :cond_13

    .line 135
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0

    .line 132
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 2
    .param p0, "candidate"    # Ljava/math/BigInteger;

    .line 259
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 261
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static blacklist hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6
    .param p0, "d"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outPos"    # I

    .line 603
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 604
    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 605
    return-void
.end method

.method private static blacklist hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .registers 8
    .param p0, "d"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "seed"    # [B
    .param p2, "count"    # I

    .line 609
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 610
    .local v0, "dLen":I
    mul-int v1, p2, v0

    .line 611
    .local v1, "pos":I
    new-array v2, v1, [B

    .line 612
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    const/4 v4, 0x1

    if-ge v3, p2, :cond_16

    .line 614
    sub-int/2addr v1, v0

    .line 615
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 616
    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 618
    .end local v3    # "i":I
    :cond_16
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method private static blacklist implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 7
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 371
    const v0, 0xd4c2086

    .line 372
    .local v0, "m":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 373
    .local v1, "r":I
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0xb

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0xd

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x13

    if-eqz v2, :cond_178

    rem-int/lit8 v2, v1, 0x17

    if-nez v2, :cond_37

    goto/16 :goto_178

    .line 379
    :cond_37
    const v0, 0x37ed0ed

    .line 380
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 381
    rem-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_177

    rem-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_177

    rem-int/lit8 v2, v1, 0x25

    if-eqz v2, :cond_177

    rem-int/lit8 v2, v1, 0x29

    if-eqz v2, :cond_177

    rem-int/lit8 v2, v1, 0x2b

    if-nez v2, :cond_5d

    goto/16 :goto_177

    .line 386
    :cond_5d
    const v0, 0x23cd611f

    .line 387
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 388
    rem-int/lit8 v2, v1, 0x2f

    if-eqz v2, :cond_176

    rem-int/lit8 v2, v1, 0x35

    if-eqz v2, :cond_176

    rem-int/lit8 v2, v1, 0x3b

    if-eqz v2, :cond_176

    rem-int/lit8 v2, v1, 0x3d

    if-eqz v2, :cond_176

    rem-int/lit8 v2, v1, 0x43

    if-nez v2, :cond_83

    goto/16 :goto_176

    .line 393
    :cond_83
    const v0, 0x20691a3

    .line 394
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 395
    rem-int/lit8 v2, v1, 0x47

    if-eqz v2, :cond_175

    rem-int/lit8 v2, v1, 0x49

    if-eqz v2, :cond_175

    rem-int/lit8 v2, v1, 0x4f

    if-eqz v2, :cond_175

    rem-int/lit8 v2, v1, 0x53

    if-nez v2, :cond_a5

    goto/16 :goto_175

    .line 400
    :cond_a5
    const v0, 0x55a60cb

    .line 401
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 402
    rem-int/lit8 v2, v1, 0x59

    if-eqz v2, :cond_174

    rem-int/lit8 v2, v1, 0x61

    if-eqz v2, :cond_174

    rem-int/lit8 v2, v1, 0x65

    if-eqz v2, :cond_174

    rem-int/lit8 v2, v1, 0x67

    if-nez v2, :cond_c7

    goto/16 :goto_174

    .line 407
    :cond_c7
    const v0, 0x9f9f361

    .line 408
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 409
    rem-int/lit8 v2, v1, 0x6b

    if-eqz v2, :cond_173

    rem-int/lit8 v2, v1, 0x6d

    if-eqz v2, :cond_173

    rem-int/lit8 v2, v1, 0x71

    if-eqz v2, :cond_173

    rem-int/lit8 v2, v1, 0x7f

    if-nez v2, :cond_e9

    goto/16 :goto_173

    .line 414
    :cond_e9
    const v0, 0x1627b25d

    .line 415
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 416
    rem-int/lit16 v2, v1, 0x83

    if-eqz v2, :cond_172

    rem-int/lit16 v2, v1, 0x89

    if-eqz v2, :cond_172

    rem-int/lit16 v2, v1, 0x8b

    if-eqz v2, :cond_172

    rem-int/lit16 v2, v1, 0x95

    if-nez v2, :cond_10a

    goto :goto_172

    .line 421
    :cond_10a
    const v0, 0x2676ed77

    .line 422
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 423
    rem-int/lit16 v2, v1, 0x97

    if-eqz v2, :cond_171

    rem-int/lit16 v2, v1, 0x9d

    if-eqz v2, :cond_171

    rem-int/lit16 v2, v1, 0xa3

    if-eqz v2, :cond_171

    rem-int/lit16 v2, v1, 0xa7

    if-nez v2, :cond_12b

    goto :goto_171

    .line 428
    :cond_12b
    const v0, 0x3fcf739d

    .line 429
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 430
    rem-int/lit16 v2, v1, 0xad

    if-eqz v2, :cond_170

    rem-int/lit16 v2, v1, 0xb3

    if-eqz v2, :cond_170

    rem-int/lit16 v2, v1, 0xb5

    if-eqz v2, :cond_170

    rem-int/lit16 v2, v1, 0xbf

    if-nez v2, :cond_14c

    goto :goto_170

    .line 435
    :cond_14c
    const v0, 0x5f281a99

    .line 436
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 437
    rem-int/lit16 v2, v1, 0xc1

    if-eqz v2, :cond_16f

    rem-int/lit16 v2, v1, 0xc5

    if-eqz v2, :cond_16f

    rem-int/lit16 v2, v1, 0xc7

    if-eqz v2, :cond_16f

    rem-int/lit16 v2, v1, 0xd3

    if-nez v2, :cond_16d

    goto :goto_16f

    .line 446
    :cond_16d
    const/4 v2, 0x0

    return v2

    .line 439
    :cond_16f
    :goto_16f
    return v3

    .line 432
    :cond_170
    :goto_170
    return v3

    .line 425
    :cond_171
    :goto_171
    return v3

    .line 418
    :cond_172
    :goto_172
    return v3

    .line 411
    :cond_173
    :goto_173
    return v3

    .line 404
    :cond_174
    :goto_174
    return v3

    .line 397
    :cond_175
    :goto_175
    return v3

    .line 390
    :cond_176
    :goto_176
    return v3

    .line 383
    :cond_177
    :goto_177
    return v3

    .line 376
    :cond_178
    :goto_178
    return v3
.end method

.method private static blacklist implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .registers 9
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "wSubOne"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;
    .param p3, "a"    # I
    .param p4, "b"    # Ljava/math/BigInteger;

    .line 451
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 453
    .local v0, "z":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_33

    .line 458
    :cond_13
    const/4 v1, 0x0

    .line 460
    .local v1, "result":Z
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_15
    if-ge v2, p3, :cond_32

    .line 462
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 466
    const/4 v1, 0x1

    .line 467
    goto :goto_32

    .line 470
    :cond_25
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 472
    const/4 v3, 0x0

    return v3

    .line 460
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 476
    .end local v2    # "j":I
    :cond_32
    :goto_32
    return v1

    .line 455
    .end local v1    # "result":Z
    :cond_33
    :goto_33
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .registers 21
    .param p0, "d"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "primeSeed"    # [B

    .line 481
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 483
    .local v3, "dLen":I
    const/16 v4, 0x21

    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_5c

    .line 485
    const/4 v4, 0x0

    .line 487
    .local v4, "primeGenCounter":I
    new-array v8, v3, [B

    .line 488
    .local v8, "c0":[B
    new-array v9, v3, [B

    .line 492
    .local v9, "c1":[B
    :goto_17
    const/4 v10, 0x0

    invoke-static {v0, v2, v8, v10}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 493
    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 495
    invoke-static {v0, v2, v9, v10}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 496
    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 498
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    .line 499
    .local v10, "c":I
    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    .line 500
    add-int/lit8 v11, v1, -0x1

    shl-int v11, v7, v11

    or-int/2addr v11, v7

    or-int/2addr v10, v11

    .line 502
    add-int/2addr v4, v7

    .line 504
    int-to-long v11, v10

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    .line 505
    .local v11, "c64":J
    invoke-static {v11, v12}, Lcom/android/internal/org/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 507
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v7, v2, v4, v6}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes-IA;)V

    return-object v5

    .line 510
    :cond_51
    mul-int/lit8 v13, v1, 0x4

    if-gt v4, v13, :cond_56

    .line 514
    .end local v10    # "c":I
    .end local v11    # "c64":J
    goto :goto_17

    .line 512
    .restart local v10    # "c":I
    .restart local v11    # "c64":J
    :cond_56
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 517
    .end local v4    # "primeGenCounter":I
    .end local v8    # "c0":[B
    .end local v9    # "c1":[B
    .end local v10    # "c":I
    .end local v11    # "c64":J
    :cond_5c
    add-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object v4

    .line 519
    .local v4, "rec":Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v8

    .line 520
    .local v8, "c0":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v2

    .line 521
    .end local p2    # "primeSeed":[B
    .local v2, "primeSeed":[B
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v9

    .line 523
    .local v9, "primeGenCounter":I
    mul-int/lit8 v10, v3, 0x8

    .line 524
    .local v10, "outlen":I
    add-int/lit8 v11, v1, -0x1

    div-int/2addr v11, v10

    .line 526
    .local v11, "iterations":I
    move v12, v9

    .line 528
    .local v12, "oldCounter":I
    add-int/lit8 v13, v11, 0x1

    invoke-static {v0, v2, v13}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v13

    .line 529
    .local v13, "x":Ljava/math/BigInteger;
    sget-object v14, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 531
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    .line 532
    .local v14, "c0x2":Ljava/math/BigInteger;
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 533
    .local v6, "tx2":Ljava/math/BigInteger;
    const/4 v15, 0x0

    .line 535
    .local v15, "dt":I
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move/from16 v17, v3

    .end local v3    # "dLen":I
    .local v17, "dLen":I
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 543
    .local v3, "c":Ljava/math/BigInteger;
    :goto_b3
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_e3

    .line 545
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 546
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move/from16 v16, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_e5

    .line 543
    :cond_e3
    const/16 v16, 0x1

    .line 549
    :goto_e5
    add-int/lit8 v9, v9, 0x1

    .line 557
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_13b

    .line 559
    add-int/lit8 v1, v11, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v1

    .line 560
    .local v1, "a":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 562
    .end local v1    # "a":Ljava/math/BigInteger;
    .local v0, "a":Ljava/math/BigInteger;
    move/from16 p2, v10

    move v1, v11

    .end local v10    # "outlen":I
    .end local v11    # "iterations":I
    .local v1, "iterations":I
    .local p2, "outlen":I
    int-to-long v10, v15

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 563
    const/4 v15, 0x0

    .line 565
    invoke-virtual {v0, v6, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 567
    .local v7, "z":Ljava/math/BigInteger;
    sget-object v10, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    invoke-virtual {v7, v8, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    .line 569
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    const/4 v10, 0x0

    invoke-direct {v5, v3, v2, v9, v10}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes-IA;)V

    return-object v5

    .line 567
    :cond_139
    const/4 v10, 0x0

    .line 571
    .end local v0    # "a":Ljava/math/BigInteger;
    .end local v7    # "z":Ljava/math/BigInteger;
    goto :goto_144

    .line 574
    .end local v1    # "iterations":I
    .end local p2    # "outlen":I
    .restart local v10    # "outlen":I
    .restart local v11    # "iterations":I
    :cond_13b
    move/from16 p2, v10

    move v1, v11

    const/4 v10, 0x0

    .end local v10    # "outlen":I
    .end local v11    # "iterations":I
    .restart local v1    # "iterations":I
    .restart local p2    # "outlen":I
    add-int/lit8 v11, v1, 0x1

    invoke-static {v2, v11}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 577
    :goto_144
    mul-int/lit8 v0, p1, 0x4

    add-int/2addr v0, v12

    if-ge v9, v0, :cond_158

    .line 582
    add-int/lit8 v15, v15, 0x2

    .line 583
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v10, p2

    move v11, v1

    move/from16 v1, p1

    goto/16 :goto_b3

    .line 579
    :cond_158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist inc([BI)V
    .registers 4
    .param p0, "seed"    # [B
    .param p1, "c"    # I

    .line 623
    array-length v0, p0

    .line 624
    .local v0, "pos":I
    :goto_1
    if-lez p1, :cond_12

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 626
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    .line 627
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 628
    ushr-int/lit8 p1, p1, 0x8

    goto :goto_1

    .line 630
    :cond_12
    return-void
.end method

.method public static blacklist isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .registers 13
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .line 282
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 284
    if-eqz p1, :cond_4b

    .line 288
    const/4 v0, 0x1

    if-lt p2, v0, :cond_43

    .line 293
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 295
    return v0

    .line 297
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 299
    return v1

    .line 302
    :cond_1a
    move-object v2, p0

    .line 303
    .local v2, "w":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 304
    .local v3, "wSubOne":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 306
    .local v4, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 307
    .local v5, "a":I
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 309
    .local v6, "m":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_30
    if-ge v7, p2, :cond_42

    .line 311
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v8, v4, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    .line 313
    .local v8, "b":Ljava/math/BigInteger;
    invoke-static {v2, v3, v6, v5, v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 315
    return v1

    .line 309
    .end local v8    # "b":Ljava/math/BigInteger;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 319
    .end local v7    # "i":I
    :cond_42
    return v0

    .line 290
    .end local v2    # "w":Ljava/math/BigInteger;
    .end local v3    # "wSubOne":Ljava/math/BigInteger;
    .end local v4    # "wSubTwo":Ljava/math/BigInteger;
    .end local v5    # "a":I
    .end local v6    # "m":Ljava/math/BigInteger;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 7
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "base"    # Ljava/math/BigInteger;

    .line 336
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 337
    const-string v0, "base"

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_33

    .line 344
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 346
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_1f
    move-object v0, p0

    .line 350
    .local v0, "w":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 352
    .local v1, "wSubOne":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    .line 353
    .local v2, "a":I
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 355
    .local v3, "m":Ljava/math/BigInteger;
    invoke-static {v0, v1, v3, v2, p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v4

    return v4

    .line 341
    .end local v0    # "w":Ljava/math/BigInteger;
    .end local v1    # "wSubOne":Ljava/math/BigInteger;
    .end local v2    # "a":I
    .end local v3    # "m":Ljava/math/BigInteger;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isPrime32(J)Z
    .registers 17
    .param p0, "x"    # J

    .line 634
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_65

    .line 643
    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    const-wide/16 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v4, :cond_24

    .line 645
    const-wide/16 v2, 0x2

    cmp-long v2, p0, v2

    if-eqz v2, :cond_22

    cmp-long v2, p0, v5

    if-eqz v2, :cond_22

    cmp-long v0, p0, v0

    if-nez v0, :cond_23

    :cond_22
    move v7, v8

    :cond_23
    return v7

    .line 648
    :cond_24
    const-wide/16 v9, 0x1

    and-long/2addr v9, p0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_64

    rem-long v4, p0, v5

    cmp-long v4, v4, v2

    if-eqz v4, :cond_64

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    goto :goto_64

    .line 653
    :cond_38
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_6e

    .line 654
    .local v0, "ds":[J
    const-wide/16 v4, 0x0

    .line 655
    .local v4, "base":J
    const/4 v1, 0x1

    .line 660
    .local v1, "pos":I
    :goto_42
    array-length v6, v0

    const-wide/16 v9, 0x1e

    if-ge v1, v6, :cond_5a

    .line 662
    aget-wide v11, v0, v1

    add-long/2addr v11, v4

    .line 663
    .local v11, "d":J
    rem-long v13, p0, v11

    cmp-long v6, v13, v2

    if-nez v6, :cond_56

    .line 665
    cmp-long v2, p0, v9

    if-gez v2, :cond_55

    move v7, v8

    :cond_55
    return v7

    .line 667
    :cond_56
    nop

    .end local v11    # "d":J
    add-int/lit8 v1, v1, 0x1

    .line 668
    goto :goto_42

    .line 670
    :cond_5a
    add-long/2addr v4, v9

    .line 672
    mul-long v9, v4, v4

    cmp-long v6, v9, p0

    if-ltz v6, :cond_62

    .line 674
    return v8

    .line 655
    :cond_62
    const/4 v1, 0x0

    goto :goto_42

    .line 650
    .end local v0    # "ds":[J
    .end local v1    # "pos":I
    .end local v4    # "base":J
    :cond_64
    :goto_64
    return v7

    .line 636
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_6e
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
