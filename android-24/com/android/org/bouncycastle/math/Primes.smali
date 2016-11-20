.class public abstract Lcom/android/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/Primes$MROutput;,
        Lcom/android/org/bouncycastle/math/Primes$STOutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 17
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@8
    .line 18
    const-wide/16 v0, 0x2

    #@a
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@10
    .line 19
    const-wide/16 v0, 0x3

    #@12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    #@18
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "\'"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "\' must be non-null and >= 2"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 356
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@2d
    move-result v0

    #@2e
    const/4 v1, 0x2

    #@2f
    if-lt v0, v1, :cond_0

    #@31
    .line 354
    return-void
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 15
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    #@0
    .prologue
    .line 152
    const-string/jumbo v13, "candidate"

    #@3
    invoke-static {p0, v13}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    #@6
    .line 154
    if-nez p1, :cond_0

    #@8
    .line 156
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v14, "\'random\' cannot be null"

    #@d
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v13

    #@11
    .line 158
    :cond_0
    const/4 v13, 0x1

    #@12
    move/from16 v0, p2

    #@14
    if-ge v0, v13, :cond_1

    #@16
    .line 160
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v14, "\'iterations\' must be > 0"

    #@1b
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v13

    #@1f
    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@22
    move-result v13

    #@23
    const/4 v14, 0x2

    #@24
    if-ne v13, v14, :cond_2

    #@26
    .line 165
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@29
    move-result-object v13

    #@2a
    return-object v13

    #@2b
    .line 167
    :cond_2
    const/4 v13, 0x0

    #@2c
    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->testBit(I)Z

    #@2f
    move-result v13

    #@30
    if-nez v13, :cond_3

    #@32
    .line 169
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@34
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@37
    move-result-object v13

    #@38
    return-object v13

    #@39
    .line 172
    :cond_3
    move-object v8, p0

    #@3a
    .line 173
    .local v8, "w":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@3c
    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3f
    move-result-object v9

    #@40
    .line 174
    .local v9, "wSubOne":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@42
    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@45
    move-result-object v10

    #@46
    .line 176
    .local v10, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@49
    move-result v1

    #@4a
    .line 177
    .local v1, "a":I
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@4d
    move-result-object v6

    #@4e
    .line 179
    .local v6, "m":Ljava/math/BigInteger;
    const/4 v4, 0x0

    #@4f
    .local v4, "i":I
    :goto_0
    move/from16 v0, p2

    #@51
    if-ge v4, v0, :cond_b

    #@53
    .line 181
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-static {v13, v10, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@5a
    move-result-object v2

    #@5b
    .line 182
    .local v2, "b":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5e
    move-result-object v3

    #@5f
    .line 184
    .local v3, "g":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@61
    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@64
    move-result v13

    #@65
    if-lez v13, :cond_4

    #@67
    .line 186
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@6a
    move-result-object v13

    #@6b
    return-object v13

    #@6c
    .line 189
    :cond_4
    invoke-virtual {v2, v6, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6f
    move-result-object v12

    #@70
    .line 191
    .local v12, "z":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@72
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v13

    #@76
    if-nez v13, :cond_5

    #@78
    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v13

    #@7c
    if-eqz v13, :cond_6

    #@7e
    .line 179
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@80
    goto :goto_0

    #@81
    .line 196
    :cond_6
    const/4 v7, 0x0

    #@82
    .line 198
    .local v7, "primeToBase":Z
    move-object v11, v12

    #@83
    .line 199
    .local v11, "x":Ljava/math/BigInteger;
    const/4 v5, 0x1

    #@84
    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_7

    #@86
    .line 201
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@88
    invoke-virtual {v12, v13, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8b
    move-result-object v12

    #@8c
    .line 203
    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v13

    #@90
    if-eqz v13, :cond_9

    #@92
    .line 205
    const/4 v7, 0x1

    #@93
    .line 217
    :cond_7
    if-nez v7, :cond_5

    #@95
    .line 219
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@97
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v13

    #@9b
    if-nez v13, :cond_8

    #@9d
    .line 221
    move-object v11, v12

    #@9e
    .line 222
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@a0
    invoke-virtual {v12, v13, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a3
    move-result-object v12

    #@a4
    .line 224
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@a6
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v13

    #@aa
    if-nez v13, :cond_8

    #@ac
    .line 226
    move-object v11, v12

    #@ad
    .line 230
    :cond_8
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@af
    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b2
    move-result-object v13

    #@b3
    invoke-virtual {v13, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b6
    move-result-object v3

    #@b7
    .line 232
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@b9
    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@bc
    move-result v13

    #@bd
    if-lez v13, :cond_a

    #@bf
    .line 234
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@c2
    move-result-object v13

    #@c3
    return-object v13

    #@c4
    .line 209
    :cond_9
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@c6
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v13

    #@ca
    if-nez v13, :cond_7

    #@cc
    .line 214
    move-object v11, v12

    #@cd
    .line 199
    add-int/lit8 v5, v5, 0x1

    #@cf
    goto :goto_1

    #@d0
    .line 237
    :cond_a
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap1()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@d3
    move-result-object v13

    #@d4
    return-object v13

    #@d5
    .line 241
    .end local v2    # "b":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .end local v7    # "primeToBase":Z
    .end local v11    # "x":Ljava/math/BigInteger;
    .end local v12    # "z":Ljava/math/BigInteger;
    :cond_b
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@d8
    move-result-object v13

    #@d9
    return-object v13
.end method

.method private static extract32([B)I
    .locals 6
    .param p0, "bs"    # [B

    #@0
    .prologue
    .line 585
    const/4 v3, 0x0

    #@1
    .line 587
    .local v3, "result":I
    array-length v4, p0

    #@2
    const/4 v5, 0x4

    #@3
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@6
    move-result v1

    #@7
    .line 588
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 590
    array-length v4, p0

    #@b
    add-int/lit8 v5, v2, 0x1

    #@d
    sub-int/2addr v4, v5

    #@e
    aget-byte v4, p0, v4

    #@10
    and-int/lit16 v0, v4, 0xff

    #@12
    .line 591
    .local v0, "b":I
    mul-int/lit8 v4, v2, 0x8

    #@14
    shl-int v4, v0, v4

    #@16
    or-int/2addr v3, v4

    #@17
    .line 588
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 594
    .end local v0    # "b":I
    :cond_0
    return v3
.end method

.method public static generateSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .locals 2
    .param p0, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "inputSeed"    # [B

    #@0
    .prologue
    .line 118
    if-nez p0, :cond_0

    #@2
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "\'hash\' cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 122
    :cond_0
    const/4 v0, 0x2

    #@c
    if-ge p1, v0, :cond_1

    #@e
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "\'length\' must be >= 2"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 126
    :cond_1
    if-eqz p2, :cond_2

    #@19
    array-length v0, p2

    #@1a
    if-nez v0, :cond_3

    #@1c
    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "\'inputSeed\' cannot be null or empty"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 131
    :cond_3
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@28
    move-result-object v0

    #@29
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1
    .param p0, "candidate"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 255
    const-string/jumbo v0, "candidate"

    #@3
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    #@6
    .line 257
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outPos"    # I

    #@0
    .prologue
    .line 599
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 600
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@8
    .line 597
    return-void
.end method

.method private static hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 6
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "seed"    # [B
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 605
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@4
    move-result v1

    #@5
    .line 606
    .local v1, "dLen":I
    mul-int v3, p2, v1

    #@7
    .line 607
    .local v3, "pos":I
    new-array v0, v3, [B

    #@9
    .line 608
    .local v0, "buf":[B
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    #@c
    .line 610
    sub-int/2addr v3, v1

    #@d
    .line 611
    invoke-static {p0, p1, v0, v3}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@10
    .line 612
    invoke-static {p1, v5}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    #@13
    .line 608
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 614
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    #@18
    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1b
    return-object v4
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 368
    const-wide/32 v2, 0xd4c2086

    #@5
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@10
    move-result v0

    #@11
    .line 369
    .local v0, "r":I
    rem-int/lit8 v1, v0, 0x2

    #@13
    if-eqz v1, :cond_0

    #@15
    rem-int/lit8 v1, v0, 0x3

    #@17
    if-nez v1, :cond_1

    #@19
    .line 372
    :cond_0
    return v5

    #@1a
    .line 369
    :cond_1
    rem-int/lit8 v1, v0, 0x5

    #@1c
    if-eqz v1, :cond_0

    #@1e
    rem-int/lit8 v1, v0, 0x7

    #@20
    if-eqz v1, :cond_0

    #@22
    rem-int/lit8 v1, v0, 0xb

    #@24
    if-eqz v1, :cond_0

    #@26
    rem-int/lit8 v1, v0, 0xd

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 370
    rem-int/lit8 v1, v0, 0x11

    #@2c
    if-eqz v1, :cond_0

    #@2e
    rem-int/lit8 v1, v0, 0x13

    #@30
    if-eqz v1, :cond_0

    #@32
    rem-int/lit8 v1, v0, 0x17

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 376
    const-wide/32 v2, 0x37ed0ed

    #@39
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@44
    move-result v0

    #@45
    .line 377
    rem-int/lit8 v1, v0, 0x1d

    #@47
    if-eqz v1, :cond_2

    #@49
    rem-int/lit8 v1, v0, 0x1f

    #@4b
    if-nez v1, :cond_3

    #@4d
    .line 379
    :cond_2
    return v5

    #@4e
    .line 377
    :cond_3
    rem-int/lit8 v1, v0, 0x25

    #@50
    if-eqz v1, :cond_2

    #@52
    rem-int/lit8 v1, v0, 0x29

    #@54
    if-eqz v1, :cond_2

    #@56
    rem-int/lit8 v1, v0, 0x2b

    #@58
    if-eqz v1, :cond_2

    #@5a
    .line 383
    const-wide/32 v2, 0x23cd611f

    #@5d
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@68
    move-result v0

    #@69
    .line 384
    rem-int/lit8 v1, v0, 0x2f

    #@6b
    if-eqz v1, :cond_4

    #@6d
    rem-int/lit8 v1, v0, 0x35

    #@6f
    if-nez v1, :cond_5

    #@71
    .line 386
    :cond_4
    return v5

    #@72
    .line 384
    :cond_5
    rem-int/lit8 v1, v0, 0x3b

    #@74
    if-eqz v1, :cond_4

    #@76
    rem-int/lit8 v1, v0, 0x3d

    #@78
    if-eqz v1, :cond_4

    #@7a
    rem-int/lit8 v1, v0, 0x43

    #@7c
    if-eqz v1, :cond_4

    #@7e
    .line 390
    const-wide/32 v2, 0x20691a3

    #@81
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@8c
    move-result v0

    #@8d
    .line 391
    rem-int/lit8 v1, v0, 0x47

    #@8f
    if-eqz v1, :cond_6

    #@91
    rem-int/lit8 v1, v0, 0x49

    #@93
    if-nez v1, :cond_7

    #@95
    .line 393
    :cond_6
    return v5

    #@96
    .line 391
    :cond_7
    rem-int/lit8 v1, v0, 0x4f

    #@98
    if-eqz v1, :cond_6

    #@9a
    rem-int/lit8 v1, v0, 0x53

    #@9c
    if-eqz v1, :cond_6

    #@9e
    .line 397
    const-wide/32 v2, 0x55a60cb

    #@a1
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@ac
    move-result v0

    #@ad
    .line 398
    rem-int/lit8 v1, v0, 0x59

    #@af
    if-eqz v1, :cond_8

    #@b1
    rem-int/lit8 v1, v0, 0x61

    #@b3
    if-nez v1, :cond_9

    #@b5
    .line 400
    :cond_8
    return v5

    #@b6
    .line 398
    :cond_9
    rem-int/lit8 v1, v0, 0x65

    #@b8
    if-eqz v1, :cond_8

    #@ba
    rem-int/lit8 v1, v0, 0x67

    #@bc
    if-eqz v1, :cond_8

    #@be
    .line 404
    const-wide/32 v2, 0x9f9f361

    #@c1
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@cc
    move-result v0

    #@cd
    .line 405
    rem-int/lit8 v1, v0, 0x6b

    #@cf
    if-eqz v1, :cond_a

    #@d1
    rem-int/lit8 v1, v0, 0x6d

    #@d3
    if-nez v1, :cond_b

    #@d5
    .line 407
    :cond_a
    return v5

    #@d6
    .line 405
    :cond_b
    rem-int/lit8 v1, v0, 0x71

    #@d8
    if-eqz v1, :cond_a

    #@da
    rem-int/lit8 v1, v0, 0x7f

    #@dc
    if-eqz v1, :cond_a

    #@de
    .line 411
    const-wide/32 v2, 0x1627b25d

    #@e1
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e4
    move-result-object v1

    #@e5
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@ec
    move-result v0

    #@ed
    .line 412
    rem-int/lit16 v1, v0, 0x83

    #@ef
    if-eqz v1, :cond_c

    #@f1
    rem-int/lit16 v1, v0, 0x89

    #@f3
    if-nez v1, :cond_d

    #@f5
    .line 414
    :cond_c
    return v5

    #@f6
    .line 412
    :cond_d
    rem-int/lit16 v1, v0, 0x8b

    #@f8
    if-eqz v1, :cond_c

    #@fa
    rem-int/lit16 v1, v0, 0x95

    #@fc
    if-eqz v1, :cond_c

    #@fe
    .line 418
    const-wide/32 v2, 0x2676ed77

    #@101
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@104
    move-result-object v1

    #@105
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@108
    move-result-object v1

    #@109
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@10c
    move-result v0

    #@10d
    .line 419
    rem-int/lit16 v1, v0, 0x97

    #@10f
    if-eqz v1, :cond_e

    #@111
    rem-int/lit16 v1, v0, 0x9d

    #@113
    if-nez v1, :cond_f

    #@115
    .line 421
    :cond_e
    return v5

    #@116
    .line 419
    :cond_f
    rem-int/lit16 v1, v0, 0xa3

    #@118
    if-eqz v1, :cond_e

    #@11a
    rem-int/lit16 v1, v0, 0xa7

    #@11c
    if-eqz v1, :cond_e

    #@11e
    .line 425
    const-wide/32 v2, 0x3fcf739d

    #@121
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@124
    move-result-object v1

    #@125
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@128
    move-result-object v1

    #@129
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@12c
    move-result v0

    #@12d
    .line 426
    rem-int/lit16 v1, v0, 0xad

    #@12f
    if-eqz v1, :cond_10

    #@131
    rem-int/lit16 v1, v0, 0xb3

    #@133
    if-nez v1, :cond_11

    #@135
    .line 428
    :cond_10
    return v5

    #@136
    .line 426
    :cond_11
    rem-int/lit16 v1, v0, 0xb5

    #@138
    if-eqz v1, :cond_10

    #@13a
    rem-int/lit16 v1, v0, 0xbf

    #@13c
    if-eqz v1, :cond_10

    #@13e
    .line 432
    const-wide/32 v2, 0x5f281a99

    #@141
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@144
    move-result-object v1

    #@145
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@14c
    move-result v0

    #@14d
    .line 433
    rem-int/lit16 v1, v0, 0xc1

    #@14f
    if-eqz v1, :cond_12

    #@151
    rem-int/lit16 v1, v0, 0xc5

    #@153
    if-nez v1, :cond_13

    #@155
    .line 435
    :cond_12
    return v5

    #@156
    .line 433
    :cond_13
    rem-int/lit16 v1, v0, 0xc7

    #@158
    if-eqz v1, :cond_12

    #@15a
    rem-int/lit16 v1, v0, 0xd3

    #@15c
    if-eqz v1, :cond_12

    #@15e
    .line 442
    return v4
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 4
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "wSubOne"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;
    .param p3, "a"    # I
    .param p4, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 447
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v2

    #@4
    .line 449
    .local v2, "z":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@6
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 451
    :cond_0
    const/4 v3, 0x1

    #@13
    return v3

    #@14
    .line 454
    :cond_1
    const/4 v1, 0x0

    #@15
    .line 456
    .local v1, "result":Z
    const/4 v0, 0x1

    #@16
    .local v0, "j":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@18
    .line 458
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@1a
    invoke-virtual {v2, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1d
    move-result-object v2

    #@1e
    .line 460
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3

    #@24
    .line 462
    const/4 v1, 0x1

    #@25
    .line 472
    :cond_2
    return v1

    #@26
    .line 466
    :cond_3
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@28
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_4

    #@2e
    .line 468
    const/4 v3, 0x0

    #@2f
    return v3

    #@30
    .line 456
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0
.end method

.method private static implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .locals 30
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "primeSeed"    # [B

    #@0
    .prologue
    .line 477
    invoke-interface/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@3
    move-result v13

    #@4
    .line 479
    .local v13, "dLen":I
    const/16 v25, 0x21

    #@6
    move/from16 v0, p1

    #@8
    move/from16 v1, v25

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 481
    const/16 v20, 0x0

    #@e
    .line 483
    .local v20, "primeGenCounter":I
    new-array v10, v13, [B

    #@10
    .line 484
    .local v10, "c0":[B
    new-array v12, v13, [B

    #@12
    .line 488
    .local v12, "c1":[B
    :cond_0
    const/16 v25, 0x0

    #@14
    move-object/from16 v0, p0

    #@16
    move-object/from16 v1, p2

    #@18
    move/from16 v2, v25

    #@1a
    invoke-static {v0, v1, v10, v2}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@1d
    .line 489
    const/16 v25, 0x1

    #@1f
    move-object/from16 v0, p2

    #@21
    move/from16 v1, v25

    #@23
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    #@26
    .line 491
    const/16 v25, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    move-object/from16 v1, p2

    #@2c
    move/from16 v2, v25

    #@2e
    invoke-static {v0, v1, v12, v2}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@31
    .line 492
    const/16 v25, 0x1

    #@33
    move-object/from16 v0, p2

    #@35
    move/from16 v1, v25

    #@37
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    #@3a
    .line 494
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    #@3d
    move-result v25

    #@3e
    invoke-static {v12}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    #@41
    move-result v26

    #@42
    xor-int v7, v25, v26

    #@44
    .line 495
    .local v7, "c":I
    rsub-int/lit8 v25, p1, 0x20

    #@46
    const/16 v26, -0x1

    #@48
    ushr-int v25, v26, v25

    #@4a
    and-int v7, v7, v25

    #@4c
    .line 496
    add-int/lit8 v25, p1, -0x1

    #@4e
    const/16 v26, 0x1

    #@50
    shl-int v25, v26, v25

    #@52
    or-int/lit8 v25, v25, 0x1

    #@54
    or-int v7, v7, v25

    #@56
    .line 498
    add-int/lit8 v20, v20, 0x1

    #@58
    .line 500
    int-to-long v0, v7

    #@59
    move-wide/from16 v26, v0

    #@5b
    const-wide v28, 0xffffffffL

    #@60
    and-long v14, v26, v28

    #@62
    .line 501
    .local v14, "c64":J
    invoke-static {v14, v15}, Lcom/android/org/bouncycastle/math/Primes;->isPrime32(J)Z

    #@65
    move-result v25

    #@66
    if-eqz v25, :cond_1

    #@68
    .line 503
    new-instance v25, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    #@6a
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6d
    move-result-object v26

    #@6e
    const/16 v27, 0x0

    #@70
    move-object/from16 v0, v25

    #@72
    move-object/from16 v1, v26

    #@74
    move-object/from16 v2, p2

    #@76
    move/from16 v3, v20

    #@78
    move-object/from16 v4, v27

    #@7a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V

    #@7d
    return-object v25

    #@7e
    .line 506
    :cond_1
    mul-int/lit8 v25, p1, 0x4

    #@80
    move/from16 v0, v20

    #@82
    move/from16 v1, v25

    #@84
    if-le v0, v1, :cond_0

    #@86
    .line 508
    new-instance v25, Ljava/lang/IllegalStateException;

    #@88
    const-string/jumbo v26, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    #@8b
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v25

    #@8f
    .line 513
    .end local v7    # "c":I
    .end local v10    # "c0":[B
    .end local v12    # "c1":[B
    .end local v14    # "c64":J
    .end local v20    # "primeGenCounter":I
    :cond_2
    add-int/lit8 v25, p1, 0x3

    #@91
    div-int/lit8 v25, v25, 0x2

    #@93
    move-object/from16 v0, p0

    #@95
    move/from16 v1, v25

    #@97
    move-object/from16 v2, p2

    #@99
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    #@9c
    move-result-object v21

    #@9d
    .line 515
    .local v21, "rec":Lcom/android/org/bouncycastle/math/Primes$STOutput;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    #@a0
    move-result-object v9

    #@a1
    .line 516
    .local v9, "c0":Ljava/math/BigInteger;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    #@a4
    move-result-object p2

    #@a5
    .line 517
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    #@a8
    move-result v20

    #@a9
    .line 519
    .restart local v20    # "primeGenCounter":I
    mul-int/lit8 v19, v13, 0x8

    #@ab
    .line 520
    .local v19, "outlen":I
    add-int/lit8 v25, p1, -0x1

    #@ad
    div-int v17, v25, v19

    #@af
    .line 522
    .local v17, "iterations":I
    move/from16 v18, v20

    #@b1
    .line 524
    .local v18, "oldCounter":I
    add-int/lit8 v25, v17, 0x1

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-object/from16 v1, p2

    #@b7
    move/from16 v2, v25

    #@b9
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    #@bc
    move-result-object v23

    #@bd
    .line 525
    .local v23, "x":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@bf
    add-int/lit8 v26, p1, -0x1

    #@c1
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@c4
    move-result-object v25

    #@c5
    move-object/from16 v0, v23

    #@c7
    move-object/from16 v1, v25

    #@c9
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@cc
    move-result-object v25

    #@cd
    add-int/lit8 v26, p1, -0x1

    #@cf
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@d2
    move-result-object v23

    #@d3
    .line 527
    const/16 v25, 0x1

    #@d5
    move/from16 v0, v25

    #@d7
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@da
    move-result-object v11

    #@db
    .line 528
    .local v11, "c0x2":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@dd
    move-object/from16 v0, v23

    #@df
    move-object/from16 v1, v25

    #@e1
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e4
    move-result-object v25

    #@e5
    move-object/from16 v0, v25

    #@e7
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@ea
    move-result-object v25

    #@eb
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@ed
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f0
    move-result-object v25

    #@f1
    const/16 v26, 0x1

    #@f3
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@f6
    move-result-object v22

    #@f7
    .line 529
    .local v22, "tx2":Ljava/math/BigInteger;
    const/16 v16, 0x0

    #@f9
    .line 531
    .local v16, "dt":I
    move-object/from16 v0, v22

    #@fb
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@fe
    move-result-object v25

    #@ff
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@101
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@104
    move-result-object v8

    #@105
    .line 539
    .local v8, "c":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    #@108
    move-result v25

    #@109
    move/from16 v0, v25

    #@10b
    move/from16 v1, p1

    #@10d
    if-le v0, v1, :cond_3

    #@10f
    .line 541
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@111
    add-int/lit8 v26, p1, -0x1

    #@113
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@116
    move-result-object v25

    #@117
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@119
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11c
    move-result-object v25

    #@11d
    move-object/from16 v0, v25

    #@11f
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@122
    move-result-object v25

    #@123
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@125
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@128
    move-result-object v25

    #@129
    const/16 v26, 0x1

    #@12b
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@12e
    move-result-object v22

    #@12f
    .line 542
    move-object/from16 v0, v22

    #@131
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@134
    move-result-object v25

    #@135
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@137
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@13a
    move-result-object v8

    #@13b
    .line 545
    :cond_3
    add-int/lit8 v20, v20, 0x1

    #@13d
    .line 553
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    #@140
    move-result v25

    #@141
    if-nez v25, :cond_4

    #@143
    .line 555
    add-int/lit8 v25, v17, 0x1

    #@145
    move-object/from16 v0, p0

    #@147
    move-object/from16 v1, p2

    #@149
    move/from16 v2, v25

    #@14b
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    #@14e
    move-result-object v6

    #@14f
    .line 556
    .local v6, "a":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    #@151
    move-object/from16 v0, v25

    #@153
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@156
    move-result-object v25

    #@157
    move-object/from16 v0, v25

    #@159
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@15c
    move-result-object v25

    #@15d
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@15f
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@162
    move-result-object v6

    #@163
    .line 558
    move/from16 v0, v16

    #@165
    int-to-long v0, v0

    #@166
    move-wide/from16 v26, v0

    #@168
    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@16b
    move-result-object v25

    #@16c
    move-object/from16 v0, v22

    #@16e
    move-object/from16 v1, v25

    #@170
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@173
    move-result-object v22

    #@174
    .line 559
    const/16 v16, 0x0

    #@176
    .line 561
    move-object/from16 v0, v22

    #@178
    invoke-virtual {v6, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@17b
    move-result-object v24

    #@17c
    .line 563
    .local v24, "z":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@17e
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@181
    move-result-object v25

    #@182
    move-object/from16 v0, v25

    #@184
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@187
    move-result-object v25

    #@188
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@18a
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@18d
    move-result v25

    #@18e
    if-eqz v25, :cond_5

    #@190
    move-object/from16 v0, v24

    #@192
    invoke-virtual {v0, v9, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@195
    move-result-object v25

    #@196
    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@198
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@19b
    move-result v25

    #@19c
    if-eqz v25, :cond_5

    #@19e
    .line 565
    new-instance v25, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    #@1a0
    const/16 v26, 0x0

    #@1a2
    move-object/from16 v0, v25

    #@1a4
    move-object/from16 v1, p2

    #@1a6
    move/from16 v2, v20

    #@1a8
    move-object/from16 v3, v26

    #@1aa
    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V

    #@1ad
    return-object v25

    #@1ae
    .line 570
    .end local v6    # "a":Ljava/math/BigInteger;
    .end local v24    # "z":Ljava/math/BigInteger;
    :cond_4
    add-int/lit8 v25, v17, 0x1

    #@1b0
    move-object/from16 v0, p2

    #@1b2
    move/from16 v1, v25

    #@1b4
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    #@1b7
    .line 573
    :cond_5
    mul-int/lit8 v25, p1, 0x4

    #@1b9
    add-int v25, v25, v18

    #@1bb
    move/from16 v0, v20

    #@1bd
    move/from16 v1, v25

    #@1bf
    if-lt v0, v1, :cond_6

    #@1c1
    .line 575
    new-instance v25, Ljava/lang/IllegalStateException;

    #@1c3
    const-string/jumbo v26, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    #@1c6
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c9
    throw v25

    #@1ca
    .line 578
    :cond_6
    add-int/lit8 v16, v16, 0x2

    #@1cc
    .line 579
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1cf
    move-result-object v8

    #@1d0
    goto/16 :goto_0
.end method

.method private static inc([BI)V
    .locals 2
    .param p0, "seed"    # [B
    .param p1, "c"    # I

    #@0
    .prologue
    .line 619
    array-length v0, p0

    #@1
    .line 620
    .local v0, "pos":I
    :goto_0
    if-lez p1, :cond_0

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 622
    aget-byte v1, p0, v0

    #@9
    and-int/lit16 v1, v1, 0xff

    #@b
    add-int/2addr p1, v1

    #@c
    .line 623
    int-to-byte v1, p1

    #@d
    aput-byte v1, p0, v0

    #@f
    .line 624
    ushr-int/lit8 p1, p1, 0x8

    #@11
    goto :goto_0

    #@12
    .line 617
    :cond_0
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 11
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 278
    const-string/jumbo v7, "candidate"

    #@5
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    #@8
    .line 280
    if-nez p1, :cond_0

    #@a
    .line 282
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v8, "\'random\' cannot be null"

    #@f
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v7

    #@13
    .line 284
    :cond_0
    if-ge p2, v10, :cond_1

    #@15
    .line 286
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v8, "\'iterations\' must be > 0"

    #@1a
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v7

    #@1e
    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@21
    move-result v7

    #@22
    const/4 v8, 0x2

    #@23
    if-ne v7, v8, :cond_2

    #@25
    .line 291
    return v10

    #@26
    .line 293
    :cond_2
    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->testBit(I)Z

    #@29
    move-result v7

    #@2a
    if-nez v7, :cond_3

    #@2c
    .line 295
    return v9

    #@2d
    .line 298
    :cond_3
    move-object v4, p0

    #@2e
    .line 299
    .local v4, "w":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@30
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@33
    move-result-object v5

    #@34
    .line 300
    .local v5, "wSubOne":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@36
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@39
    move-result-object v6

    #@3a
    .line 302
    .local v6, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@3d
    move-result v0

    #@3e
    .line 303
    .local v0, "a":I
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@41
    move-result-object v3

    #@42
    .line 305
    .local v3, "m":Ljava/math/BigInteger;
    const/4 v2, 0x0

    #@43
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_5

    #@45
    .line 307
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    #@47
    invoke-static {v7, v6, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@4a
    move-result-object v1

    #@4b
    .line 309
    .local v1, "b":Ljava/math/BigInteger;
    invoke-static {p0, v5, v3, v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    #@4e
    move-result v7

    #@4f
    if-nez v7, :cond_4

    #@51
    .line 311
    return v9

    #@52
    .line 305
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 315
    .end local v1    # "b":Ljava/math/BigInteger;
    :cond_5
    return v10
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "base"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 332
    const-string/jumbo v4, "candidate"

    #@3
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    #@6
    .line 333
    const-string/jumbo v4, "base"

    #@9
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    #@c
    .line 335
    sget-object v4, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@e
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@15
    move-result v4

    #@16
    if-ltz v4, :cond_0

    #@18
    .line 337
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v5, "\'base\' must be < (\'candidate\' - 1)"

    #@1d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 340
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@24
    move-result v4

    #@25
    const/4 v5, 0x2

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 342
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 345
    :cond_1
    move-object v2, p0

    #@2b
    .line 346
    .local v2, "w":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    #@2d
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@30
    move-result-object v3

    #@31
    .line 348
    .local v3, "wSubOne":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@34
    move-result v0

    #@35
    .line 349
    .local v0, "a":I
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@38
    move-result-object v1

    #@39
    .line 351
    .local v1, "m":Ljava/math/BigInteger;
    invoke-static {p0, v3, v1, v0, p1}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    #@3c
    move-result v4

    #@3d
    return v4
.end method

.method private static isPrime32(J)Z
    .locals 10
    .param p0, "x"    # J

    #@0
    .prologue
    .line 630
    const/16 v6, 0x20

    #@2
    ushr-long v6, p0, v6

    #@4
    const-wide/16 v8, 0x0

    #@6
    cmp-long v6, v6, v8

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 632
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v7, "Size limit exceeded"

    #@f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v6

    #@13
    .line 639
    :cond_0
    const-wide/16 v6, 0x5

    #@15
    cmp-long v6, p0, v6

    #@17
    if-gtz v6, :cond_3

    #@19
    .line 641
    const-wide/16 v6, 0x2

    #@1b
    cmp-long v6, p0, v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    const-wide/16 v6, 0x3

    #@21
    cmp-long v6, p0, v6

    #@23
    if-nez v6, :cond_2

    #@25
    :cond_1
    const/4 v6, 0x1

    #@26
    :goto_0
    return v6

    #@27
    :cond_2
    const-wide/16 v6, 0x5

    #@29
    cmp-long v6, p0, v6

    #@2b
    if-eqz v6, :cond_1

    #@2d
    const/4 v6, 0x0

    #@2e
    goto :goto_0

    #@2f
    .line 644
    :cond_3
    const-wide/16 v6, 0x1

    #@31
    and-long/2addr v6, p0

    #@32
    const-wide/16 v8, 0x0

    #@34
    cmp-long v6, v6, v8

    #@36
    if-eqz v6, :cond_4

    #@38
    const-wide/16 v6, 0x3

    #@3a
    rem-long v6, p0, v6

    #@3c
    const-wide/16 v8, 0x0

    #@3e
    cmp-long v6, v6, v8

    #@40
    if-nez v6, :cond_5

    #@42
    .line 646
    :cond_4
    const/4 v6, 0x0

    #@43
    return v6

    #@44
    .line 644
    :cond_5
    const-wide/16 v6, 0x5

    #@46
    rem-long v6, p0, v6

    #@48
    const-wide/16 v8, 0x0

    #@4a
    cmp-long v6, v6, v8

    #@4c
    if-eqz v6, :cond_4

    #@4e
    .line 649
    const/16 v6, 0x8

    #@50
    new-array v4, v6, [J

    #@52
    .local v4, "ds":[J
    fill-array-data v4, :array_0

    #@55
    .line 650
    const-wide/16 v0, 0x0

    #@57
    .line 651
    .local v0, "base":J
    const/4 v5, 0x1

    #@58
    .line 656
    .local v5, "pos":I
    :goto_1
    array-length v6, v4

    #@59
    if-ge v5, v6, :cond_8

    #@5b
    .line 658
    aget-wide v6, v4, v5

    #@5d
    add-long v2, v0, v6

    #@5f
    .line 659
    .local v2, "d":J
    rem-long v6, p0, v2

    #@61
    const-wide/16 v8, 0x0

    #@63
    cmp-long v6, v6, v8

    #@65
    if-nez v6, :cond_7

    #@67
    .line 661
    const-wide/16 v6, 0x1e

    #@69
    cmp-long v6, p0, v6

    #@6b
    if-gez v6, :cond_6

    #@6d
    const/4 v6, 0x1

    #@6e
    :goto_2
    return v6

    #@6f
    :cond_6
    const/4 v6, 0x0

    #@70
    goto :goto_2

    #@71
    .line 663
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@73
    goto :goto_1

    #@74
    .line 666
    .end local v2    # "d":J
    :cond_8
    const-wide/16 v6, 0x1e

    #@76
    add-long/2addr v0, v6

    #@77
    .line 668
    mul-long v6, v0, v0

    #@79
    cmp-long v6, v6, p0

    #@7b
    if-ltz v6, :cond_9

    #@7d
    .line 670
    const/4 v6, 0x1

    #@7e
    return v6

    #@7f
    .line 651
    :cond_9
    const/4 v5, 0x0

    #@80
    goto :goto_1

    #@81
    .line 649
    nop

    #@82
    :array_0
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
