.class public final Lcom/android/internal/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
    }
.end annotation


# static fields
.field private static final blacklist MAX_ITERATIONS:I = 0x3e8

.field private static final blacklist MAX_SMALL:I

.field public static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field public static final blacklist TWO:Ljava/math/BigInteger;

.field public static final blacklist ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    .line 23
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    .line 300
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 306
    const-wide/16 v0, 0x2e7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sput v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asUnsignedByteArray(Ljava/math/BigInteger;[BII)V
    .registers 10
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 91
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 92
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-ne v1, p3, :cond_c

    .line 94
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-void

    .line 98
    :cond_c
    aget-byte v1, v0, v2

    if-nez v1, :cond_15

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v2

    .line 99
    .local v3, "start":I
    :goto_16
    array-length v1, v0

    sub-int/2addr v1, v3

    .line 101
    .local v1, "count":I
    if-gt v1, p3, :cond_27

    .line 106
    sub-int v4, p3, v1

    .line 107
    .local v4, "padLen":I
    add-int v5, p2, v4

    invoke-static {p1, p2, v5, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 108
    add-int v2, p2, v4

    invoke-static {v0, v3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-void

    .line 103
    .end local v4    # "padLen":I
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .registers 7
    .param p0, "length"    # I
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 61
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 62
    .local v0, "bytes":[B
    array-length v1, v0

    if-ne v1, p0, :cond_8

    .line 64
    return-object v0

    .line 67
    :cond_8
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_12

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    move v1, v3

    .line 68
    .local v1, "start":I
    :cond_12
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 70
    .local v2, "count":I
    if-gt v2, p0, :cond_1e

    .line 75
    new-array v3, p0, [B

    .line 76
    .local v3, "tmp":[B
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-object v3

    .line 72
    .end local v3    # "tmp":[B
    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 38
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 39
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_16

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    .line 41
    array-length v2, v0

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 43
    .local v2, "tmp":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v2

    .line 48
    .end local v2    # "tmp":[B
    :cond_16
    return-object v0
.end method

.method public static blacklist byteValueExact(Ljava/math/BigInteger;)B
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 174
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_c

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    return v0

    .line 176
    :cond_c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createRandom(ILjava/security/SecureRandom;)[B
    .registers 8
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    .line 362
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 364
    .local v0, "nBytes":I
    new-array v1, v0, [B

    .line 366
    .local v1, "rv":[B
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 369
    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p0

    .line 370
    .local v2, "xBits":I
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 372
    return-object v1

    .line 359
    .end local v0    # "nBytes":I
    .end local v1    # "rv":[B
    .end local v2    # "xBits":I
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 296
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "min"    # Ljava/math/BigInteger;
    .param p1, "max"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 125
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 126
    .local v0, "cmp":I
    if-ltz v0, :cond_11

    .line 128
    if-gtz v0, :cond_9

    .line 133
    return-object p0

    .line 130
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'min\' may not be greater than \'max\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2c

    .line 138
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 141
    :cond_2c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_49

    .line 143
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 144
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_46

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_46

    .line 146
    return-object v2

    .line 141
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 151
    .end local v1    # "i":I
    :cond_49
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 317
    const/4 v0, 0x2

    if-lt p0, v0, :cond_53

    .line 324
    if-ne p0, v0, :cond_11

    .line 326
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    if-gez v0, :cond_e

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    :goto_10
    return-object v0

    .line 331
    :cond_11
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v0

    .line 333
    .local v0, "base":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p0

    .line 334
    .local v1, "xBits":I
    rsub-int/lit8 v2, v1, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-byte v2, v2

    .line 337
    .local v2, "lead":B
    const/4 v4, 0x0

    aget-byte v5, v0, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 338
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v5, v0, v4

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 340
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 341
    .local v4, "rv":Ljava/math/BigInteger;
    sget v3, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    if-le p0, v3, :cond_4c

    .line 343
    :goto_37
    sget-object v3, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 345
    sget-object v3, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_37

    .line 349
    .end local v0    # "base":[B
    .end local v1    # "xBits":I
    .end local v2    # "lead":B
    :cond_4c
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 351
    return-object v4

    .line 319
    .end local v4    # "rv":Ljava/math/BigInteger;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .registers 3
    .param p0, "buf"    # [B

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 162
    move-object v0, p0

    .line 163
    .local v0, "mag":[B
    if-nez p1, :cond_6

    array-length v1, p0

    if-eq p2, v1, :cond_c

    .line 165
    :cond_6
    new-array v0, p2, [B

    .line 166
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist getUnsignedByteLength(Ljava/math/BigInteger;)I
    .registers 2
    .param p0, "n"    # Ljava/math/BigInteger;

    .line 279
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 281
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static blacklist intValueExact(Ljava/math/BigInteger;)I
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 201
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 198
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist longValueExact(Ljava/math/BigInteger;)J
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 207
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_d

    .line 212
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 209
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "M"    # Ljava/math/BigInteger;
    .param p1, "X"    # Ljava/math/BigInteger;

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 221
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 225
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 227
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 230
    :cond_1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 231
    .local v0, "bits":I
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 232
    .local v1, "m":[I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 233
    .local v2, "x":[I
    array-length v3, v1

    .line 234
    .local v3, "len":I
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 235
    .local v4, "z":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v5

    if-eqz v5, :cond_3a

    .line 239
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    .line 237
    :cond_3a
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    .end local v0    # "bits":I
    .end local v1    # "m":[I
    .end local v2    # "x":[I
    .end local v3    # "len":I
    .end local v4    # "z":[I
    :cond_42
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "M"    # Ljava/math/BigInteger;
    .param p1, "X"    # Ljava/math/BigInteger;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 248
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 252
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 254
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 256
    :cond_19
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_25

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_29

    .line 258
    :cond_25
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 260
    :cond_29
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 262
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    return-object v0

    .line 265
    :cond_34
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 266
    .local v0, "bits":I
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 267
    .local v1, "m":[I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 268
    .local v2, "x":[I
    array-length v3, v1

    .line 269
    .local v3, "len":I
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 270
    .local v4, "z":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 274
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    .line 272
    :cond_50
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 250
    .end local v0    # "bits":I
    .end local v1    # "m":[I
    .end local v2    # "x":[I
    .end local v3    # "len":I
    .end local v4    # "z":[I
    :cond_58
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist shortValueExact(Ljava/math/BigInteger;)S
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_d

    .line 190
    invoke-virtual {p0}, Ljava/math/BigInteger;->shortValue()S

    move-result v0

    return v0

    .line 187
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
