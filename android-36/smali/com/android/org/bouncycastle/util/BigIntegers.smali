.class public final Lcom/android/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final blacklist MAX_SMALL:I

.field public static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field public static final blacklist TWO:Ljava/math/BigInteger;

.field public static final blacklist ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    .line 300
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2e7

    .line 306
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sput v0, Lcom/android/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asUnsignedByteArray(Ljava/math/BigInteger;[BII)V
    .registers 7

    .line 91
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 92
    array-length v0, p0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_c

    .line 94
    invoke-static {p0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 98
    :cond_c
    aget-byte v0, p0, v1

    if-nez v0, :cond_15

    array-length v0, p0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    .line 99
    :goto_16
    array-length v0, p0

    sub-int/2addr v0, v2

    if-gt v0, p3, :cond_23

    sub-int/2addr p3, v0

    add-int/2addr p3, p2

    .line 107
    invoke-static {p1, p2, p3, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 108
    invoke-static {p0, v2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 103
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "standard length exceeded for value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .registers 5

    .line 61
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 62
    array-length v0, p1

    if-ne v0, p0, :cond_8

    return-object p1

    :cond_8
    const/4 v0, 0x0

    .line 67
    aget-byte v1, p1, v0

    if-nez v1, :cond_12

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    move v0, v2

    .line 68
    :cond_12
    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt v1, p0, :cond_1d

    .line 75
    new-array v2, p0, [B

    sub-int/2addr p0, v1

    .line 76
    invoke-static {p1, v0, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 72
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "standard length exceeded for value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 5

    .line 38
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 39
    aget-byte v1, p0, v0

    if-nez v1, :cond_15

    array-length v1, p0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 41
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 43
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_15
    return-object p0
.end method

.method public static blacklist byteValueExact(Ljava/math/BigInteger;)B
    .registers 3

    .line 174
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_c

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->byteValue()B

    move-result p0

    return p0

    .line 176
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "BigInteger out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createRandom(ILjava/security/SecureRandom;)[B
    .registers 5

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1c

    add-int/lit8 v0, p0, 0x7

    .line 362
    div-int/lit8 v0, v0, 0x8

    .line 364
    new-array v1, v0, [B

    .line 366
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 370
    aget-byte p1, v1, p0

    const/16 v2, 0xff

    ushr-int v0, v2, v0

    int-to-byte v0, v0

    and-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    return-object v1

    .line 359
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength must be at least 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 4

    .line 296
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    .line 125
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_11

    if-gtz v0, :cond_9

    return-object p0

    .line 130
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'min\' may not be greater than \'max\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2c

    .line 138
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_49

    .line 143
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 144
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_46

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_46

    return-object v1

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 151
    :cond_49
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 8

    const/4 v0, 0x2

    if-lt p0, v0, :cond_53

    if-ne p0, v0, :cond_11

    .line 326
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p0

    if-gez p0, :cond_e

    sget-object p0, Lcom/android/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    return-object p0

    :cond_e
    sget-object p0, Lcom/android/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    return-object p0

    .line 331
    :cond_11
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v0

    .line 333
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p0

    rsub-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    shl-int v1, v2, v1

    int-to-byte v1, v1

    const/4 v3, 0x0

    .line 337
    aget-byte v4, v0, v3

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 338
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte v3, v0, v1

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 340
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 341
    sget v0, Lcom/android/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    if-le p0, v0, :cond_4c

    .line 343
    :goto_37
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/android/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 345
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_37

    .line 349
    :cond_4c
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object v1

    .line 319
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength < 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .registers 3

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .registers 5

    if-nez p1, :cond_5

    .line 163
    array-length v0, p0

    if-eq p2, v0, :cond_c

    .line 165
    :cond_5
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 166
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 168
    :cond_c
    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public static blacklist getUnsignedByteLength(Ljava/math/BigInteger;)I
    .registers 2

    .line 279
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 284
    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static blacklist intValueExact(Ljava/math/BigInteger;)I
    .registers 3

    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 201
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 198
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "BigInteger out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist longValueExact(Ljava/math/BigInteger;)J
    .registers 3

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
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "BigInteger out of long range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    const/4 v0, 0x0

    .line 217
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
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    .line 232
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p1

    .line 233
    array-length v0, p0

    .line 234
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 235
    invoke-static {p0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result p0

    if-eqz p0, :cond_3a

    .line 239
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 237
    :cond_3a
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "BigInteger not invertible."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_42
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "BigInteger: modulus not positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'M\' must be odd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 248
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 252
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 254
    sget-object p0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 256
    :cond_19
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_25

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_29

    .line 258
    :cond_25
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 260
    :cond_29
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-object v0

    .line 265
    :cond_30
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 266
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    .line 267
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p1

    .line 268
    array-length v0, p0

    .line 269
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 270
    invoke-static {p0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 274
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 272
    :cond_4c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "BigInteger not invertible."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_54
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "BigInteger: modulus not positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'M\' must be odd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist shortValueExact(Ljava/math/BigInteger;)S
    .registers 3

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_d

    .line 190
    invoke-virtual {p0}, Ljava/math/BigInteger;->shortValue()S

    move-result p0

    return p0

    .line 187
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "BigInteger out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
