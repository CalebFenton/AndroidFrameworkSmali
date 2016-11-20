.class public Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 22
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 23
    const-wide/16 v0, 0x1

    #@a
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@10
    .line 24
    const-wide/16 v0, 0x2

    #@12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@18
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 41
    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 207
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    .line 208
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@c
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    .line 212
    .local v3, "pSub2":Ljava/math/BigInteger;
    :cond_0
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@12
    invoke-static {v4, v3, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    .line 213
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@19
    move-result-object v1

    #@1a
    .line 214
    .local v1, "g":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    #@1d
    move-result v4

    #@1e
    const/4 v5, 0x1

    #@1f
    if-le v4, v5, :cond_0

    #@21
    .line 216
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 351
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 358
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@3
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a
    move-result-object v3

    #@b
    .line 359
    .local v3, "e":Ljava/math/BigInteger;
    const-string/jumbo v7, "6767656E"

    #@e
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@11
    move-result-object v5

    #@12
    .line 362
    .local v5, "ggen":[B
    array-length v7, p3

    #@13
    array-length v8, v5

    #@14
    add-int/2addr v7, v8

    #@15
    add-int/lit8 v7, v7, 0x1

    #@17
    add-int/lit8 v7, v7, 0x2

    #@19
    new-array v0, v7, [B

    #@1b
    .line 363
    .local v0, "U":[B
    array-length v7, p3

    #@1c
    invoke-static {p3, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 364
    array-length v7, p3

    #@20
    array-length v8, v5

    #@21
    invoke-static {v5, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 365
    array-length v7, v0

    #@25
    add-int/lit8 v7, v7, -0x3

    #@27
    int-to-byte v8, p4

    #@28
    aput-byte v8, v0, v7

    #@2a
    .line 367
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@2d
    move-result v7

    #@2e
    new-array v6, v7, [B

    #@30
    .line 368
    .local v6, "w":[B
    const/4 v2, 0x1

    #@31
    .local v2, "count":I
    :goto_0
    const/high16 v7, 0x10000

    #@33
    if-ge v2, v7, :cond_1

    #@35
    .line 370
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@38
    .line 371
    invoke-static {p0, v0, v6, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@3b
    .line 372
    new-instance v1, Ljava/math/BigInteger;

    #@3d
    const/4 v7, 0x1

    #@3e
    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    #@41
    .line 373
    .local v1, "W":Ljava/math/BigInteger;
    invoke-virtual {v1, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@44
    move-result-object v4

    #@45
    .line 374
    .local v4, "g":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@47
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@4a
    move-result v7

    #@4b
    if-ltz v7, :cond_0

    #@4d
    .line 376
    return-object v4

    #@4e
    .line 368
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 380
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :cond_1
    const/4 v7, 0x0

    #@52
    return-object v7
.end method

.method private generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 22

    #@0
    .prologue
    .line 126
    const/16 v19, 0x14

    #@2
    move/from16 v0, v19

    #@4
    new-array v15, v0, [B

    #@6
    .line 127
    .local v15, "seed":[B
    const/16 v19, 0x14

    #@8
    move/from16 v0, v19

    #@a
    new-array v11, v0, [B

    #@c
    .line 128
    .local v11, "part1":[B
    const/16 v19, 0x14

    #@e
    move/from16 v0, v19

    #@10
    new-array v12, v0, [B

    #@12
    .line 129
    .local v12, "part2":[B
    const/16 v19, 0x14

    #@14
    move/from16 v0, v19

    #@16
    new-array v0, v0, [B

    #@18
    move-object/from16 v16, v0

    #@1a
    .line 130
    .local v16, "u":[B
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@1e
    move/from16 v19, v0

    #@20
    add-int/lit8 v19, v19, -0x1

    #@22
    move/from16 v0, v19

    #@24
    div-int/lit16 v8, v0, 0xa0

    #@26
    .line 131
    .local v8, "n":I
    move-object/from16 v0, p0

    #@28
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@2a
    move/from16 v19, v0

    #@2c
    div-int/lit8 v19, v19, 0x8

    #@2e
    move/from16 v0, v19

    #@30
    new-array v0, v0, [B

    #@32
    move-object/from16 v17, v0

    #@34
    .line 134
    .local v17, "w":[B
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@38
    move-object/from16 v19, v0

    #@3a
    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@3d
    move-result-object v19

    #@3e
    const-string/jumbo v20, "SHA-1"

    #@41
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v19

    #@45
    if-nez v19, :cond_1

    #@47
    .line 137
    new-instance v19, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v20, "can only use SHA-1 for generating FIPS 186-2 parameters"

    #@4c
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v19

    #@50
    .line 154
    .local v6, "i":I
    :cond_0
    const/16 v19, 0x0

    #@52
    aget-byte v20, v16, v19

    #@54
    or-int/lit8 v20, v20, -0x80

    #@56
    move/from16 v0, v20

    #@58
    int-to-byte v0, v0

    #@59
    move/from16 v20, v0

    #@5b
    aput-byte v20, v16, v19

    #@5d
    .line 155
    const/16 v19, 0x13

    #@5f
    aget-byte v20, v16, v19

    #@61
    or-int/lit8 v20, v20, 0x1

    #@63
    move/from16 v0, v20

    #@65
    int-to-byte v0, v0

    #@66
    move/from16 v20, v0

    #@68
    aput-byte v20, v16, v19

    #@6a
    .line 157
    new-instance v13, Ljava/math/BigInteger;

    #@6c
    const/16 v19, 0x1

    #@6e
    move/from16 v0, v19

    #@70
    move-object/from16 v1, v16

    #@72
    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@75
    .line 159
    .local v13, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@77
    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    #@7a
    move-result v19

    #@7b
    if-nez v19, :cond_2

    #@7d
    .line 142
    .end local v6    # "i":I
    .end local v13    # "q":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@81
    move-object/from16 v19, v0

    #@83
    move-object/from16 v0, v19

    #@85
    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@88
    .line 144
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@8c
    move-object/from16 v19, v0

    #@8e
    const/16 v20, 0x0

    #@90
    move-object/from16 v0, v19

    #@92
    move/from16 v1, v20

    #@94
    invoke-static {v0, v15, v11, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@97
    .line 145
    array-length v0, v15

    #@98
    move/from16 v19, v0

    #@9a
    const/16 v20, 0x0

    #@9c
    const/16 v21, 0x0

    #@9e
    move/from16 v0, v20

    #@a0
    move/from16 v1, v21

    #@a2
    move/from16 v2, v19

    #@a4
    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a7
    .line 146
    invoke-static {v12}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@aa
    .line 147
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@ae
    move-object/from16 v19, v0

    #@b0
    const/16 v20, 0x0

    #@b2
    move-object/from16 v0, v19

    #@b4
    move/from16 v1, v20

    #@b6
    invoke-static {v0, v12, v12, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@b9
    .line 149
    const/4 v6, 0x0

    #@ba
    .restart local v6    # "i":I
    :goto_0
    move-object/from16 v0, v16

    #@bc
    array-length v0, v0

    #@bd
    move/from16 v19, v0

    #@bf
    move/from16 v0, v19

    #@c1
    if-eq v6, v0, :cond_0

    #@c3
    .line 151
    aget-byte v19, v11, v6

    #@c5
    aget-byte v20, v12, v6

    #@c7
    xor-int v19, v19, v20

    #@c9
    move/from16 v0, v19

    #@cb
    int-to-byte v0, v0

    #@cc
    move/from16 v19, v0

    #@ce
    aput-byte v19, v16, v6

    #@d0
    .line 149
    add-int/lit8 v6, v6, 0x1

    #@d2
    goto :goto_0

    #@d3
    .line 164
    .restart local v13    # "q":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v15}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@d6
    move-result-object v9

    #@d7
    .line 165
    .local v9, "offset":[B
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@da
    .line 167
    const/4 v4, 0x0

    #@db
    .local v4, "counter":I
    :goto_1
    const/16 v19, 0x1000

    #@dd
    move/from16 v0, v19

    #@df
    if-ge v4, v0, :cond_1

    #@e1
    .line 170
    const/4 v7, 0x1

    #@e2
    .local v7, "k":I
    :goto_2
    if-gt v7, v8, :cond_3

    #@e4
    .line 172
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@e7
    .line 173
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@eb
    move-object/from16 v19, v0

    #@ed
    move-object/from16 v0, v17

    #@ef
    array-length v0, v0

    #@f0
    move/from16 v20, v0

    #@f2
    array-length v0, v11

    #@f3
    move/from16 v21, v0

    #@f5
    mul-int v21, v21, v7

    #@f7
    sub-int v20, v20, v21

    #@f9
    move-object/from16 v0, v19

    #@fb
    move-object/from16 v1, v17

    #@fd
    move/from16 v2, v20

    #@ff
    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@102
    .line 170
    add-int/lit8 v7, v7, 0x1

    #@104
    goto :goto_2

    #@105
    .line 176
    :cond_3
    move-object/from16 v0, v17

    #@107
    array-length v0, v0

    #@108
    move/from16 v19, v0

    #@10a
    array-length v0, v11

    #@10b
    move/from16 v20, v0

    #@10d
    mul-int v20, v20, v8

    #@10f
    sub-int v14, v19, v20

    #@111
    .line 177
    .local v14, "remaining":I
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@114
    .line 178
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@118
    move-object/from16 v19, v0

    #@11a
    const/16 v20, 0x0

    #@11c
    move-object/from16 v0, v19

    #@11e
    move/from16 v1, v20

    #@120
    invoke-static {v0, v9, v11, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@123
    .line 179
    array-length v0, v11

    #@124
    move/from16 v19, v0

    #@126
    sub-int v19, v19, v14

    #@128
    const/16 v20, 0x0

    #@12a
    move/from16 v0, v19

    #@12c
    move-object/from16 v1, v17

    #@12e
    move/from16 v2, v20

    #@130
    invoke-static {v11, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@133
    .line 181
    const/16 v19, 0x0

    #@135
    aget-byte v20, v17, v19

    #@137
    or-int/lit8 v20, v20, -0x80

    #@139
    move/from16 v0, v20

    #@13b
    int-to-byte v0, v0

    #@13c
    move/from16 v20, v0

    #@13e
    aput-byte v20, v17, v19

    #@140
    .line 184
    new-instance v18, Ljava/math/BigInteger;

    #@142
    const/16 v19, 0x1

    #@144
    move-object/from16 v0, v18

    #@146
    move/from16 v1, v19

    #@148
    move-object/from16 v2, v17

    #@14a
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@14d
    .line 186
    .local v18, "x":Ljava/math/BigInteger;
    const/16 v19, 0x1

    #@14f
    move/from16 v0, v19

    #@151
    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@154
    move-result-object v19

    #@155
    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@158
    move-result-object v3

    #@159
    .line 188
    .local v3, "c":Ljava/math/BigInteger;
    sget-object v19, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@15b
    move-object/from16 v0, v19

    #@15d
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@160
    move-result-object v19

    #@161
    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@164
    move-result-object v10

    #@165
    .line 190
    .local v10, "p":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    #@168
    move-result v19

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@16d
    move/from16 v20, v0

    #@16f
    move/from16 v0, v19

    #@171
    move/from16 v1, v20

    #@173
    if-eq v0, v1, :cond_5

    #@175
    .line 167
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@177
    goto/16 :goto_1

    #@179
    .line 195
    :cond_5
    move-object/from16 v0, p0

    #@17b
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    #@17e
    move-result v19

    #@17f
    if-eqz v19, :cond_4

    #@181
    .line 197
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@185
    move-object/from16 v19, v0

    #@187
    move-object/from16 v0, v19

    #@189
    invoke-static {v10, v13, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@18c
    move-result-object v5

    #@18d
    .line 199
    .local v5, "g":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@18f
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@191
    move-object/from16 v0, v20

    #@193
    invoke-direct {v0, v15, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    #@196
    move-object/from16 v0, v19

    #@198
    move-object/from16 v1, v20

    #@19a
    invoke-direct {v0, v10, v13, v5, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@19d
    return-object v19
.end method

.method private generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 27

    #@0
    .prologue
    .line 229
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4
    .line 230
    .local v11, "d":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@7
    move-result v24

    #@8
    mul-int/lit8 v16, v24, 0x8

    #@a
    .line 238
    .local v16, "outlen":I
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@e
    move/from16 v22, v0

    #@10
    .line 239
    .local v22, "seedlen":I
    div-int/lit8 v24, v22, 0x8

    #@12
    move/from16 v0, v24

    #@14
    new-array v0, v0, [B

    #@16
    move-object/from16 v21, v0

    #@18
    .line 242
    .local v21, "seed":[B
    move-object/from16 v0, p0

    #@1a
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@1c
    move/from16 v24, v0

    #@1e
    add-int/lit8 v24, v24, -0x1

    #@20
    div-int v14, v24, v16

    #@22
    .line 245
    .local v14, "n":I
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@26
    move/from16 v24, v0

    #@28
    add-int/lit8 v24, v24, -0x1

    #@2a
    rem-int v7, v24, v16

    #@2c
    .line 247
    .local v7, "b":I
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@30
    move/from16 v24, v0

    #@32
    div-int/lit8 v24, v24, 0x8

    #@34
    move/from16 v0, v24

    #@36
    new-array v0, v0, [B

    #@38
    move-object/from16 v23, v0

    #@3a
    .line 248
    .local v23, "w":[B
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@3d
    move-result v24

    #@3e
    move/from16 v0, v24

    #@40
    new-array v0, v0, [B

    #@42
    move-object/from16 v17, v0

    #@44
    .line 252
    .local v17, "output":[B
    :cond_0
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@48
    move-object/from16 v24, v0

    #@4a
    move-object/from16 v0, v24

    #@4c
    move-object/from16 v1, v21

    #@4e
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@51
    .line 255
    const/16 v24, 0x0

    #@53
    move-object/from16 v0, v21

    #@55
    move-object/from16 v1, v17

    #@57
    move/from16 v2, v24

    #@59
    invoke-static {v11, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@5c
    .line 257
    new-instance v24, Ljava/math/BigInteger;

    #@5e
    const/16 v25, 0x1

    #@60
    move-object/from16 v0, v24

    #@62
    move/from16 v1, v25

    #@64
    move-object/from16 v2, v17

    #@66
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@69
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@6f
    move/from16 v26, v0

    #@71
    add-int/lit8 v26, v26, -0x1

    #@73
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@76
    move-result-object v25

    #@77
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7a
    move-result-object v5

    #@7b
    .line 260
    .local v5, "U":Ljava/math/BigInteger;
    const/16 v24, 0x0

    #@7d
    move/from16 v0, v24

    #@7f
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@82
    move-result-object v24

    #@83
    move-object/from16 v0, p0

    #@85
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@87
    move/from16 v25, v0

    #@89
    add-int/lit8 v25, v25, -0x1

    #@8b
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@8e
    move-result-object v19

    #@8f
    .line 263
    .local v19, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v19

    #@93
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    #@96
    move-result v24

    #@97
    if-eqz v24, :cond_0

    #@99
    .line 271
    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@9c
    move-result-object v15

    #@9d
    .line 274
    .local v15, "offset":[B
    move-object/from16 v0, p0

    #@9f
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@a1
    move/from16 v24, v0

    #@a3
    mul-int/lit8 v10, v24, 0x4

    #@a5
    .line 275
    .local v10, "counterLimit":I
    const/4 v9, 0x0

    #@a6
    .local v9, "counter":I
    :goto_0
    if-ge v9, v10, :cond_0

    #@a8
    .line 281
    const/4 v13, 0x1

    #@a9
    .local v13, "j":I
    :goto_1
    if-gt v13, v14, :cond_1

    #@ab
    .line 283
    invoke-static {v15}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@ae
    .line 284
    move-object/from16 v0, v23

    #@b0
    array-length v0, v0

    #@b1
    move/from16 v24, v0

    #@b3
    move-object/from16 v0, v17

    #@b5
    array-length v0, v0

    #@b6
    move/from16 v25, v0

    #@b8
    mul-int v25, v25, v13

    #@ba
    sub-int v24, v24, v25

    #@bc
    move-object/from16 v0, v23

    #@be
    move/from16 v1, v24

    #@c0
    invoke-static {v11, v15, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@c3
    .line 281
    add-int/lit8 v13, v13, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 287
    :cond_1
    move-object/from16 v0, v23

    #@c8
    array-length v0, v0

    #@c9
    move/from16 v24, v0

    #@cb
    move-object/from16 v0, v17

    #@cd
    array-length v0, v0

    #@ce
    move/from16 v25, v0

    #@d0
    mul-int v25, v25, v14

    #@d2
    sub-int v20, v24, v25

    #@d4
    .line 288
    .local v20, "remaining":I
    invoke-static {v15}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@d7
    .line 289
    const/16 v24, 0x0

    #@d9
    move-object/from16 v0, v17

    #@db
    move/from16 v1, v24

    #@dd
    invoke-static {v11, v15, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    #@e0
    .line 290
    move-object/from16 v0, v17

    #@e2
    array-length v0, v0

    #@e3
    move/from16 v24, v0

    #@e5
    sub-int v24, v24, v20

    #@e7
    const/16 v25, 0x0

    #@e9
    move-object/from16 v0, v17

    #@eb
    move/from16 v1, v24

    #@ed
    move-object/from16 v2, v23

    #@ef
    move/from16 v3, v25

    #@f1
    move/from16 v4, v20

    #@f3
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f6
    .line 293
    const/16 v24, 0x0

    #@f8
    aget-byte v25, v23, v24

    #@fa
    or-int/lit8 v25, v25, -0x80

    #@fc
    move/from16 v0, v25

    #@fe
    int-to-byte v0, v0

    #@ff
    move/from16 v25, v0

    #@101
    aput-byte v25, v23, v24

    #@103
    .line 296
    new-instance v6, Ljava/math/BigInteger;

    #@105
    const/16 v24, 0x1

    #@107
    move/from16 v0, v24

    #@109
    move-object/from16 v1, v23

    #@10b
    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@10e
    .line 299
    .local v6, "X":Ljava/math/BigInteger;
    const/16 v24, 0x1

    #@110
    move-object/from16 v0, v19

    #@112
    move/from16 v1, v24

    #@114
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@117
    move-result-object v24

    #@118
    move-object/from16 v0, v24

    #@11a
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11d
    move-result-object v8

    #@11e
    .line 302
    .local v8, "c":Ljava/math/BigInteger;
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@120
    move-object/from16 v0, v24

    #@122
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@125
    move-result-object v24

    #@126
    move-object/from16 v0, v24

    #@128
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@12b
    move-result-object v18

    #@12c
    .line 305
    .local v18, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->bitLength()I

    #@12f
    move-result v24

    #@130
    move-object/from16 v0, p0

    #@132
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@134
    move/from16 v25, v0

    #@136
    move/from16 v0, v24

    #@138
    move/from16 v1, v25

    #@13a
    if-eq v0, v1, :cond_3

    #@13c
    .line 275
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@13e
    goto/16 :goto_0

    #@140
    .line 311
    :cond_3
    move-object/from16 v0, p0

    #@142
    move-object/from16 v1, v18

    #@144
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    #@147
    move-result v24

    #@148
    if-eqz v24, :cond_2

    #@14a
    .line 315
    move-object/from16 v0, p0

    #@14c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@14e
    move/from16 v24, v0

    #@150
    if-ltz v24, :cond_4

    #@152
    .line 317
    move-object/from16 v0, p0

    #@154
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@156
    move/from16 v24, v0

    #@158
    move-object/from16 v0, v18

    #@15a
    move-object/from16 v1, v19

    #@15c
    move-object/from16 v2, v21

    #@15e
    move/from16 v3, v24

    #@160
    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    #@163
    move-result-object v12

    #@164
    .line 318
    .local v12, "g":Ljava/math/BigInteger;
    if-eqz v12, :cond_4

    #@166
    .line 320
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@168
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@16e
    move/from16 v26, v0

    #@170
    move-object/from16 v0, v25

    #@172
    move-object/from16 v1, v21

    #@174
    move/from16 v2, v26

    #@176
    invoke-direct {v0, v1, v9, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    #@179
    move-object/from16 v0, v24

    #@17b
    move-object/from16 v1, v18

    #@17d
    move-object/from16 v2, v19

    #@17f
    move-object/from16 v3, v25

    #@181
    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@184
    return-object v24

    #@185
    .line 324
    .end local v12    # "g":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@189
    move-object/from16 v24, v0

    #@18b
    move-object/from16 v0, v18

    #@18d
    move-object/from16 v1, v19

    #@18f
    move-object/from16 v2, v24

    #@191
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@194
    move-result-object v12

    #@195
    .line 326
    .restart local v12    # "g":Ljava/math/BigInteger;
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@197
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@199
    move-object/from16 v0, v25

    #@19b
    move-object/from16 v1, v21

    #@19d
    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    #@1a0
    move-object/from16 v0, v24

    #@1a2
    move-object/from16 v1, v18

    #@1a4
    move-object/from16 v2, v19

    #@1a6
    move-object/from16 v3, v25

    #@1a8
    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@1ab
    return-object v24
.end method

.method private static getDefaultN(I)I
    .locals 1
    .param p0, "L"    # I

    #@0
    .prologue
    .line 391
    const/16 v0, 0x400

    #@2
    if-le p0, v0, :cond_0

    #@4
    const/16 v0, 0x100

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/16 v0, 0xa0

    #@9
    goto :goto_0
.end method

.method private static getMinimumIterations(I)I
    .locals 1
    .param p0, "L"    # I

    #@0
    .prologue
    .line 397
    const/16 v0, 0x400

    #@2
    if-gt p0, v0, :cond_0

    #@4
    const/16 v0, 0x28

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    add-int/lit8 v0, p0, -0x1

    #@9
    div-int/lit16 v0, v0, 0x400

    #@b
    mul-int/lit8 v0, v0, 0x8

    #@d
    add-int/lit8 v0, v0, 0x30

    #@f
    goto :goto_0
.end method

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outputPos"    # I

    #@0
    .prologue
    .line 385
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 386
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@8
    .line 383
    return-void
.end method

.method private static inc([B)V
    .locals 3
    .param p0, "buf"    # [B

    #@0
    .prologue
    .line 402
    array-length v2, p0

    #@1
    add-int/lit8 v1, v2, -0x1

    #@3
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@5
    .line 404
    aget-byte v2, p0, v1

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    int-to-byte v0, v2

    #@c
    .line 405
    .local v0, "b":B
    aput-byte v0, p0, v1

    #@e
    .line 407
    if-eqz v0, :cond_1

    #@10
    .line 400
    .end local v0    # "b":B
    :cond_0
    return-void

    #@11
    .line 402
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@13
    goto :goto_0
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 345
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@7
    move-result-object v0

    #@8
    .line 119
    :goto_0
    return-object v0

    #@9
    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 58
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@2
    .line 59
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@8
    .line 60
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@a
    .line 61
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@c
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    #@f
    move-result v0

    #@10
    add-int/lit8 v1, p2, 0x1

    #@12
    div-int/lit8 v1, v1, 0x2

    #@14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    #@1a
    .line 62
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@1c
    .line 63
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@1f
    .line 64
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@22
    .line 56
    return-void
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 6
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@0
    .prologue
    const/16 v5, 0xc00

    #@2
    const/16 v4, 0x400

    #@4
    const/16 v3, 0x100

    #@6
    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    #@9
    move-result v0

    #@a
    .local v0, "L":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    #@d
    move-result v1

    #@e
    .line 80
    .local v1, "N":I
    if-lt v0, v4, :cond_0

    #@10
    if-le v0, v5, :cond_1

    #@12
    .line 82
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 80
    :cond_1
    rem-int/lit16 v2, v0, 0x400

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 84
    if-ne v0, v4, :cond_2

    #@21
    const/16 v2, 0xa0

    #@23
    if-eq v1, v2, :cond_2

    #@25
    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "N must be 160 for L = 1024"

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 88
    :cond_2
    const/16 v2, 0x800

    #@30
    if-ne v0, v2, :cond_3

    #@32
    const/16 v2, 0xe0

    #@34
    if-eq v1, v2, :cond_3

    #@36
    if-eq v1, v3, :cond_3

    #@38
    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v3, "N must be 224 or 256 for L = 2048"

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 92
    :cond_3
    if-ne v0, v5, :cond_4

    #@43
    if-eq v1, v3, :cond_4

    #@45
    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@47
    const-string/jumbo v3, "N must be 256 for L = 3072"

    #@4a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 97
    :cond_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@50
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@53
    move-result v2

    #@54
    mul-int/lit8 v2, v2, 0x8

    #@56
    if-ge v2, v1, :cond_5

    #@58
    .line 99
    new-instance v2, Ljava/lang/IllegalStateException;

    #@5a
    const-string/jumbo v3, "Digest output size too small for value of N"

    #@5d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 102
    :cond_5
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@63
    .line 103
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@65
    .line 104
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    #@68
    move-result v2

    #@69
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@6b
    .line 105
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    #@6e
    move-result v2

    #@6f
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@71
    add-int/lit8 v3, v3, 0x1

    #@73
    div-int/lit8 v3, v3, 0x2

    #@75
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@78
    move-result v2

    #@79
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    #@7b
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@7e
    move-result-object v2

    #@7f
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@81
    .line 107
    const/4 v2, 0x1

    #@82
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@84
    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    #@87
    move-result v2

    #@88
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@8a
    .line 76
    return-void
.end method
