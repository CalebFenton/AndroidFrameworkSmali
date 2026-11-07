.class public abstract Lcom/android/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field public static final blacklist SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 19
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_11

    .line 360
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_11

    return-void

    .line 362
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be non-null and >= 2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 14

    .line 156
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_c4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_bc

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 169
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 173
    sget-object p0, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 177
    :cond_24
    sget-object v2, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 178
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 181
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_39
    if-ge v6, p2, :cond_b7

    .line 185
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 186
    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 188
    sget-object v9, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_52

    .line 190
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 193
    :cond_52
    invoke-virtual {v7, v5, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 195
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b4

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    goto :goto_b4

    :cond_63
    move v8, v0

    :goto_64
    if-ge v8, v4, :cond_82

    .line 205
    sget-object v9, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 207
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    move v8, v0

    goto :goto_84

    .line 213
    :cond_74
    sget-object v10, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7e

    move v8, v1

    goto :goto_84

    :cond_7e
    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_64

    :cond_82
    move v8, v1

    move-object v9, v7

    :goto_84
    if-nez v8, :cond_b4

    .line 223
    sget-object p1, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9c

    .line 226
    sget-object p2, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v9, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 228
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9b

    goto :goto_9c

    :cond_9b
    move-object v7, v9

    .line 234
    :cond_9c
    :goto_9c
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 236
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_af

    .line 238
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 241
    :cond_af
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 245
    :cond_b7
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 164
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist extract32([B)I
    .registers 6

    .line 591
    array-length v0, p0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_19

    .line 594
    array-length v3, p0

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    or-int/2addr v2, v1

    move v1, v4

    goto :goto_8

    :cond_19
    return v2
.end method

.method public static blacklist generateSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .registers 4

    if-eqz p0, :cond_23

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1b

    if-eqz p2, :cond_13

    .line 130
    array-length v0, p2

    if-eqz v0, :cond_13

    .line 135
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    move-result-object p0

    return-object p0

    .line 132
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'length\' must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'hash\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 2

    .line 259
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 261
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method private static blacklist hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6

    .line 603
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 604
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static blacklist hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .registers 8

    .line 609
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int v1, p2, v0

    .line 611
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    if-ge v3, p2, :cond_16

    sub-int/2addr v1, v0

    .line 615
    invoke-static {p0, p1, v2, v1}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 616
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 618
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method private static blacklist implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 4

    const v0, 0xd4c2086

    int-to-long v0, v0

    .line 372
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 373
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_37

    goto/16 :goto_16f

    :cond_37
    const v0, 0x37ed0ed

    int-to-long v0, v0

    .line 380
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 381
    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_5d

    goto/16 :goto_16f

    :cond_5d
    const v0, 0x23cd611f

    int-to-long v0, v0

    .line 387
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 388
    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_83

    goto/16 :goto_16f

    :cond_83
    const v0, 0x20691a3

    int-to-long v0, v0

    .line 394
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 395
    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_a5

    goto/16 :goto_16f

    :cond_a5
    const v0, 0x55a60cb

    int-to-long v0, v0

    .line 401
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 402
    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_c7

    goto/16 :goto_16f

    :cond_c7
    const v0, 0x9f9f361

    int-to-long v0, v0

    .line 408
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 409
    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_16f

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_16f

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_e9

    goto/16 :goto_16f

    :cond_e9
    const v0, 0x1627b25d

    int-to-long v0, v0

    .line 415
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 416
    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_16f

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_10a

    goto :goto_16f

    :cond_10a
    const v0, 0x2676ed77

    int-to-long v0, v0

    .line 422
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 423
    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_16f

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_12b

    goto :goto_16f

    :cond_12b
    const v0, 0x3fcf739d

    int-to-long v0, v0

    .line 429
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 430
    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_16f

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_16f

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_14c

    goto :goto_16f

    :cond_14c
    const v0, 0x5f281a99

    int-to-long v0, v0

    .line 436
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 437
    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_16f

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_16f

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_16f

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_16d

    goto :goto_16f

    :cond_16d
    const/4 p0, 0x0

    return p0

    :cond_16f
    :goto_16f
    return v2
.end method

.method private static blacklist implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .registers 8

    .line 451
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 453
    sget-object p4, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_32

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_32

    :cond_14
    move p4, v0

    :goto_15
    const/4 v1, 0x0

    if-ge p4, p3, :cond_31

    .line 462
    sget-object v2, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 464
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return v0

    .line 470
    :cond_25
    sget-object v2, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 p4, p4, 0x1

    goto :goto_15

    :cond_31
    return v1

    :cond_32
    :goto_32
    return v0
.end method

.method private static blacklist implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 481
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    const/16 v4, 0x21

    .line 483
    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v1, v4, :cond_5c

    .line 487
    new-array v4, v3, [B

    .line 488
    new-array v3, v3, [B

    move v9, v7

    .line 492
    :goto_18
    invoke-static {v0, v2, v4, v7}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 493
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 495
    invoke-static {v0, v2, v3, v7}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 496
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 498
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    add-int/lit8 v11, v1, -0x1

    shl-int v11, v8, v11

    or-int/2addr v11, v8

    or-int/2addr v10, v11

    add-int/2addr v9, v8

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 505
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 507
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v2, v9, v6}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes-IA;)V

    return-object v0

    :cond_51
    mul-int/lit8 v10, v1, 0x4

    if-gt v9, v10, :cond_56

    goto :goto_18

    .line 512
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    add-int/lit8 v4, v1, 0x3

    .line 517
    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v4

    .line 520
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v9

    .line 521
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v2

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v1, -0x1

    .line 524
    div-int v3, v10, v3

    add-int/2addr v3, v8

    .line 528
    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v11

    .line 529
    sget-object v12, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 531
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 532
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 535
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move v14, v2

    move v15, v7

    .line 543
    :goto_a7
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_cb

    .line 545
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 546
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    :cond_cb
    add-int/2addr v14, v8

    .line 557
    invoke-static {v12}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_11c

    .line 559
    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v7

    .line 560
    sget-object v8, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 p2, v7

    int-to-long v6, v15

    .line 562
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v7, p2

    .line 565
    invoke-virtual {v7, v6, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 567
    sget-object v11, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_118

    invoke-virtual {v7, v4, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 569
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    const/4 v8, 0x0

    invoke-direct {v0, v12, v9, v14, v8}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes-IA;)V

    return-object v0

    :cond_118
    const/4 v8, 0x0

    move-object v11, v6

    const/4 v15, 0x0

    goto :goto_120

    :cond_11c
    move-object v8, v6

    .line 574
    invoke-static {v9, v3}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    :goto_120
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    if-ge v14, v6, :cond_12f

    add-int/lit8 v15, v15, 0x2

    .line 583
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object v6, v8

    const/4 v8, 0x1

    goto/16 :goto_a7

    .line 579
    :cond_12f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist inc([BI)V
    .registers 4

    .line 623
    array-length v0, p0

    :goto_1
    if-lez p1, :cond_12

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 626
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    int-to-byte v1, p1

    .line 627
    aput-byte v1, p0, v0

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static blacklist isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .registers 11

    .line 282
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    const/4 v0, 0x1

    if-lt p2, v0, :cond_42

    .line 293
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    return v0

    :cond_12
    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 303
    :cond_1a
    sget-object v2, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 304
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 306
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 307
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_2f
    if-ge v6, p2, :cond_41

    .line 311
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 313
    invoke-static {p0, v2, v5, v4, v7}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_3e

    return v1

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_41
    return v0

    .line 290
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 5

    .line 336
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 337
    const-string v0, "base"

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_30

    .line 344
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const/4 p0, 0x1

    return p0

    .line 350
    :cond_1f
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 355
    invoke-static {p0, v0, v2, v1, p1}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result p0

    return p0

    .line 341
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isPrime32(J)Z
    .registers 16

    const/16 v0, 0x8

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_60

    const-wide/16 v4, 0x5

    cmp-long v8, p0, v4

    const-wide/16 v9, 0x3

    const/4 v11, 0x0

    if-gtz v8, :cond_27

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_26

    cmp-long p0, p0, v9

    if-eqz p0, :cond_26

    if-nez v8, :cond_25

    goto :goto_26

    :cond_25
    return v11

    :cond_26
    :goto_26
    return v3

    :cond_27
    and-long/2addr v1, p0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_5f

    .line 648
    rem-long v1, p0, v9

    cmp-long v1, v1, v6

    if-eqz v1, :cond_5f

    rem-long v1, p0, v4

    cmp-long v1, v1, v6

    if-nez v1, :cond_39

    goto :goto_5f

    .line 653
    :cond_39
    new-array v1, v0, [J

    fill-array-data v1, :array_68

    move v2, v3

    move-wide v4, v6

    :goto_40
    const-wide/16 v8, 0x1e

    if-ge v2, v0, :cond_55

    .line 662
    aget-wide v12, v1, v2

    add-long/2addr v12, v4

    .line 663
    rem-long v12, p0, v12

    cmp-long v10, v12, v6

    if-nez v10, :cond_53

    cmp-long p0, p0, v8

    if-gez p0, :cond_52

    return v3

    :cond_52
    return v11

    :cond_53
    add-int/2addr v2, v3

    goto :goto_40

    :cond_55
    add-long/2addr v4, v8

    mul-long v8, v4, v4

    cmp-long v2, v8, p0

    if-ltz v2, :cond_5d

    return v3

    :cond_5d
    move v2, v11

    goto :goto_40

    :cond_5f
    :goto_5f
    return v11

    .line 636
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_68
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
