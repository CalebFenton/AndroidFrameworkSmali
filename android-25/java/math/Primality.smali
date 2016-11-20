.class Ljava/math/Primality;
.super Ljava/lang/Object;
.source "Primality.java"


# static fields
.field private static final BIprimes:[Ljava/math/BigInteger;

.field private static final primes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 31
    const/16 v1, 0xac

    #@2
    new-array v1, v1, [I

    #@4
    fill-array-data v1, :array_0

    #@7
    sput-object v1, Ljava/math/Primality;->primes:[I

    #@9
    .line 47
    sget-object v1, Ljava/math/Primality;->primes:[I

    #@b
    array-length v1, v1

    #@c
    new-array v1, v1, [Ljava/math/BigInteger;

    #@e
    sput-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    #@10
    .line 72
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/math/Primality;->primes:[I

    #@13
    array-length v1, v1

    #@14
    if-ge v0, v1, :cond_0

    #@16
    .line 73
    sget-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    #@18
    sget-object v2, Ljava/math/Primality;->primes:[I

    #@1a
    aget v2, v2, v0

    #@1c
    int-to-long v2, v2

    #@1d
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v1, v0

    #@23
    .line 72
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 25
    :cond_0
    return-void

    #@27
    .line 31
    nop

    #@28
    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 14
    .param p0, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/16 v13, 0x400

    #@2
    const/4 v12, 0x0

    #@3
    .line 89
    const/16 v0, 0x400

    #@5
    .line 90
    .local v0, "gapSize":I
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@7
    array-length v9, v9

    #@8
    new-array v5, v9, [I

    #@a
    .line 91
    .local v5, "modules":[I
    new-array v2, v0, [Z

    #@c
    .line 92
    .local v2, "isDivisible":[Z
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@f
    move-result-object v6

    #@10
    .line 94
    .local v6, "ni":Ljava/math/BigInt;
    invoke-virtual {v6}, Ljava/math/BigInt;->bitLength()I

    #@13
    move-result v9

    #@14
    const/16 v10, 0xa

    #@16
    if-gt v9, v10, :cond_1

    #@18
    .line 95
    invoke-virtual {v6}, Ljava/math/BigInt;->longInt()J

    #@1b
    move-result-wide v10

    #@1c
    long-to-int v4, v10

    #@1d
    .line 96
    .local v4, "l":I
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@1f
    sget-object v10, Ljava/math/Primality;->primes:[I

    #@21
    array-length v10, v10

    #@22
    add-int/lit8 v10, v10, -0x1

    #@24
    aget v9, v9, v10

    #@26
    if-ge v4, v9, :cond_1

    #@28
    .line 97
    const/4 v1, 0x0

    #@29
    .local v1, "i":I
    :goto_0
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@2b
    aget v9, v9, v1

    #@2d
    if-lt v4, v9, :cond_0

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 98
    :cond_0
    sget-object v9, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    #@34
    aget-object v9, v9, v1

    #@36
    return-object v9

    #@37
    .line 102
    .end local v1    # "i":I
    .end local v4    # "l":I
    :cond_1
    invoke-virtual {v6}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    #@3a
    move-result-object v8

    #@3b
    .line 103
    .local v8, "startPoint":Ljava/math/BigInt;
    new-instance v7, Ljava/math/BigInt;

    #@3d
    invoke-direct {v7}, Ljava/math/BigInt;-><init>()V

    #@40
    .line 106
    .local v7, "probPrime":Ljava/math/BigInt;
    const/4 v9, 0x2

    #@41
    invoke-static {v6, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    #@44
    move-result v9

    #@45
    add-int/lit8 v9, v9, 0x1

    #@47
    invoke-virtual {v8, v9}, Ljava/math/BigInt;->addPositiveInt(I)V

    #@4a
    .line 115
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "i":I
    :goto_1
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@4d
    array-length v9, v9

    #@4e
    if-ge v1, v9, :cond_3

    #@50
    .line 116
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@52
    aget v9, v9, v1

    #@54
    invoke-static {v8, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    #@57
    move-result v9

    #@58
    add-int/lit16 v9, v9, -0x400

    #@5a
    aput v9, v5, v1

    #@5c
    .line 115
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 141
    .local v3, "j":I
    :cond_2
    invoke-virtual {v8, v0}, Ljava/math/BigInt;->addPositiveInt(I)V

    #@62
    .line 121
    .end local v3    # "j":I
    :cond_3
    invoke-static {v2, v12}, Ljava/util/Arrays;->fill([ZZ)V

    #@65
    .line 123
    const/4 v1, 0x0

    #@66
    :goto_2
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@68
    array-length v9, v9

    #@69
    if-ge v1, v9, :cond_6

    #@6b
    .line 124
    aget v9, v5, v1

    #@6d
    add-int/lit16 v9, v9, 0x400

    #@6f
    sget-object v10, Ljava/math/Primality;->primes:[I

    #@71
    aget v10, v10, v1

    #@73
    rem-int/2addr v9, v10

    #@74
    aput v9, v5, v1

    #@76
    .line 125
    aget v9, v5, v1

    #@78
    if-nez v9, :cond_4

    #@7a
    const/4 v3, 0x0

    #@7b
    .line 126
    .restart local v3    # "j":I
    :goto_3
    if-ge v3, v13, :cond_5

    #@7d
    .line 127
    const/4 v9, 0x1

    #@7e
    aput-boolean v9, v2, v3

    #@80
    .line 126
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@82
    aget v9, v9, v1

    #@84
    add-int/2addr v3, v9

    #@85
    goto :goto_3

    #@86
    .line 125
    .end local v3    # "j":I
    :cond_4
    sget-object v9, Ljava/math/Primality;->primes:[I

    #@88
    aget v9, v9, v1

    #@8a
    aget v10, v5, v1

    #@8c
    sub-int v3, v9, v10

    #@8e
    .restart local v3    # "j":I
    goto :goto_3

    #@8f
    .line 123
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@91
    goto :goto_2

    #@92
    .line 132
    .end local v3    # "j":I
    :cond_6
    const/4 v3, 0x0

    #@93
    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v13, :cond_2

    #@95
    .line 133
    aget-boolean v9, v2, v3

    #@97
    if-nez v9, :cond_7

    #@99
    .line 134
    invoke-virtual {v7, v8}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    #@9c
    .line 135
    invoke-virtual {v7, v3}, Ljava/math/BigInt;->addPositiveInt(I)V

    #@9f
    .line 136
    const/16 v9, 0x64

    #@a1
    invoke-virtual {v7, v9}, Ljava/math/BigInt;->isPrime(I)Z

    #@a4
    move-result v9

    #@a5
    if-eqz v9, :cond_7

    #@a7
    .line 137
    new-instance v9, Ljava/math/BigInteger;

    #@a9
    invoke-direct {v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@ac
    return-object v9

    #@ad
    .line 132
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_4
.end method
