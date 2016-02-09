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

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 27
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 28
    const-wide/16 v0, 0x1

    #@a
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@10
    .line 29
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
    .line 201
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
    .line 202
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@c
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    .line 206
    .local v3, "pSub2":Ljava/math/BigInteger;
    :cond_0
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@12
    invoke-static {v4, v3, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    .line 207
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@19
    move-result-object v1

    #@1a
    .line 208
    .local v1, "g":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    #@1d
    move-result v4

    #@1e
    const/4 v5, 0x1

    #@1f
    if-le v4, v5, :cond_0

    #@21
    .line 210
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 337
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
    .line 344
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
    .line 345
    .local v3, "e":Ljava/math/BigInteger;
    const-string/jumbo v7, "6767656E"

    #@e
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@11
    move-result-object v5

    #@12
    .line 348
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
    .line 349
    .local v0, "U":[B
    array-length v7, p3

    #@1c
    invoke-static {p3, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 350
    array-length v7, p3

    #@20
    array-length v8, v5

    #@21
    invoke-static {v5, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 351
    array-length v7, v0

    #@25
    add-int/lit8 v7, v7, -0x3

    #@27
    int-to-byte v8, p4

    #@28
    aput-byte v8, v0, v7

    #@2a
    .line 353
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@2d
    move-result v7

    #@2e
    new-array v6, v7, [B

    #@30
    .line 354
    .local v6, "w":[B
    const/4 v2, 0x1

    #@31
    .local v2, "count":I
    :goto_0
    const/high16 v7, 0x10000

    #@33
    if-ge v2, v7, :cond_1

    #@35
    .line 356
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@38
    .line 357
    invoke-static {p0, v0, v6}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@3b
    .line 358
    new-instance v1, Ljava/math/BigInteger;

    #@3d
    const/4 v7, 0x1

    #@3e
    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    #@41
    .line 359
    .local v1, "W":Ljava/math/BigInteger;
    invoke-virtual {v1, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@44
    move-result-object v4

    #@45
    .line 360
    .local v4, "g":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@47
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@4a
    move-result v7

    #@4b
    if-ltz v7, :cond_0

    #@4d
    .line 362
    return-object v4

    #@4e
    .line 354
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 366
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
    .line 122
    const/16 v19, 0x14

    #@2
    move/from16 v0, v19

    #@4
    new-array v15, v0, [B

    #@6
    .line 123
    .local v15, "seed":[B
    const/16 v19, 0x14

    #@8
    move/from16 v0, v19

    #@a
    new-array v12, v0, [B

    #@c
    .line 124
    .local v12, "part1":[B
    const/16 v19, 0x14

    #@e
    move/from16 v0, v19

    #@10
    new-array v13, v0, [B

    #@12
    .line 125
    .local v13, "part2":[B
    const/16 v19, 0x14

    #@14
    move/from16 v0, v19

    #@16
    new-array v0, v0, [B

    #@18
    move-object/from16 v16, v0

    #@1a
    .line 126
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
    div-int/lit16 v9, v0, 0xa0

    #@26
    .line 127
    .local v9, "n":I
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
    .line 130
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
    .line 133
    new-instance v19, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v20, "can only use SHA-1 for generating FIPS 186-2 parameters"

    #@4c
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v19

    #@50
    .line 150
    .local v7, "i":I
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
    .line 151
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
    .line 153
    new-instance v14, Ljava/math/BigInteger;

    #@6c
    const/16 v19, 0x1

    #@6e
    move/from16 v0, v19

    #@70
    move-object/from16 v1, v16

    #@72
    invoke-direct {v14, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@75
    .line 155
    .local v14, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@77
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@79
    move/from16 v19, v0

    #@7b
    move/from16 v0, v19

    #@7d
    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@80
    move-result v19

    #@81
    if-nez v19, :cond_2

    #@83
    .line 138
    .end local v7    # "i":I
    .end local v14    # "q":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@87
    move-object/from16 v19, v0

    #@89
    move-object/from16 v0, v19

    #@8b
    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@8e
    .line 140
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@92
    move-object/from16 v19, v0

    #@94
    move-object/from16 v0, v19

    #@96
    invoke-static {v0, v15, v12}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@99
    .line 141
    array-length v0, v15

    #@9a
    move/from16 v19, v0

    #@9c
    const/16 v20, 0x0

    #@9e
    const/16 v21, 0x0

    #@a0
    move/from16 v0, v20

    #@a2
    move/from16 v1, v21

    #@a4
    move/from16 v2, v19

    #@a6
    invoke-static {v15, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a9
    .line 142
    invoke-static {v13}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@ac
    .line 143
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b0
    move-object/from16 v19, v0

    #@b2
    move-object/from16 v0, v19

    #@b4
    invoke-static {v0, v13, v13}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@b7
    .line 145
    const/4 v7, 0x0

    #@b8
    .restart local v7    # "i":I
    :goto_0
    move-object/from16 v0, v16

    #@ba
    array-length v0, v0

    #@bb
    move/from16 v19, v0

    #@bd
    move/from16 v0, v19

    #@bf
    if-eq v7, v0, :cond_0

    #@c1
    .line 147
    aget-byte v19, v12, v7

    #@c3
    aget-byte v20, v13, v7

    #@c5
    xor-int v19, v19, v20

    #@c7
    move/from16 v0, v19

    #@c9
    int-to-byte v0, v0

    #@ca
    move/from16 v19, v0

    #@cc
    aput-byte v19, v16, v7

    #@ce
    .line 145
    add-int/lit8 v7, v7, 0x1

    #@d0
    goto :goto_0

    #@d1
    .line 160
    .restart local v14    # "q":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v15}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@d4
    move-result-object v10

    #@d5
    .line 161
    .local v10, "offset":[B
    invoke-static {v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@d8
    .line 163
    const/4 v5, 0x0

    #@d9
    .local v5, "counter":I
    :goto_1
    const/16 v19, 0x1000

    #@db
    move/from16 v0, v19

    #@dd
    if-ge v5, v0, :cond_1

    #@df
    .line 165
    const/4 v8, 0x0

    #@e0
    .local v8, "k":I
    :goto_2
    if-ge v8, v9, :cond_3

    #@e2
    .line 167
    invoke-static {v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@e5
    .line 168
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@e9
    move-object/from16 v19, v0

    #@eb
    move-object/from16 v0, v19

    #@ed
    invoke-static {v0, v10, v12}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@f0
    .line 169
    move-object/from16 v0, v17

    #@f2
    array-length v0, v0

    #@f3
    move/from16 v19, v0

    #@f5
    add-int/lit8 v20, v8, 0x1

    #@f7
    array-length v0, v12

    #@f8
    move/from16 v21, v0

    #@fa
    mul-int v20, v20, v21

    #@fc
    sub-int v19, v19, v20

    #@fe
    array-length v0, v12

    #@ff
    move/from16 v20, v0

    #@101
    const/16 v21, 0x0

    #@103
    move/from16 v0, v21

    #@105
    move-object/from16 v1, v17

    #@107
    move/from16 v2, v19

    #@109
    move/from16 v3, v20

    #@10b
    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10e
    .line 165
    add-int/lit8 v8, v8, 0x1

    #@110
    goto :goto_2

    #@111
    .line 172
    :cond_3
    invoke-static {v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@114
    .line 173
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@118
    move-object/from16 v19, v0

    #@11a
    move-object/from16 v0, v19

    #@11c
    invoke-static {v0, v10, v12}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@11f
    .line 174
    array-length v0, v12

    #@120
    move/from16 v19, v0

    #@122
    move-object/from16 v0, v17

    #@124
    array-length v0, v0

    #@125
    move/from16 v20, v0

    #@127
    array-length v0, v12

    #@128
    move/from16 v21, v0

    #@12a
    mul-int v21, v21, v9

    #@12c
    sub-int v20, v20, v21

    #@12e
    sub-int v19, v19, v20

    #@130
    move-object/from16 v0, v17

    #@132
    array-length v0, v0

    #@133
    move/from16 v20, v0

    #@135
    array-length v0, v12

    #@136
    move/from16 v21, v0

    #@138
    mul-int v21, v21, v9

    #@13a
    sub-int v20, v20, v21

    #@13c
    const/16 v21, 0x0

    #@13e
    move/from16 v0, v19

    #@140
    move-object/from16 v1, v17

    #@142
    move/from16 v2, v21

    #@144
    move/from16 v3, v20

    #@146
    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@149
    .line 176
    const/16 v19, 0x0

    #@14b
    aget-byte v20, v17, v19

    #@14d
    or-int/lit8 v20, v20, -0x80

    #@14f
    move/from16 v0, v20

    #@151
    int-to-byte v0, v0

    #@152
    move/from16 v20, v0

    #@154
    aput-byte v20, v17, v19

    #@156
    .line 178
    new-instance v18, Ljava/math/BigInteger;

    #@158
    const/16 v19, 0x1

    #@15a
    move-object/from16 v0, v18

    #@15c
    move/from16 v1, v19

    #@15e
    move-object/from16 v2, v17

    #@160
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@163
    .line 180
    .local v18, "x":Ljava/math/BigInteger;
    const/16 v19, 0x1

    #@165
    move/from16 v0, v19

    #@167
    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@16a
    move-result-object v19

    #@16b
    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@16e
    move-result-object v4

    #@16f
    .line 182
    .local v4, "c":Ljava/math/BigInteger;
    sget-object v19, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@171
    move-object/from16 v0, v19

    #@173
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@176
    move-result-object v19

    #@177
    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@17a
    move-result-object v11

    #@17b
    .line 184
    .local v11, "p":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    #@17e
    move-result v19

    #@17f
    move-object/from16 v0, p0

    #@181
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@183
    move/from16 v20, v0

    #@185
    move/from16 v0, v19

    #@187
    move/from16 v1, v20

    #@189
    if-eq v0, v1, :cond_5

    #@18b
    .line 163
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@18d
    goto/16 :goto_1

    #@18f
    .line 189
    :cond_5
    move-object/from16 v0, p0

    #@191
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@193
    move/from16 v19, v0

    #@195
    move/from16 v0, v19

    #@197
    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@19a
    move-result v19

    #@19b
    if-eqz v19, :cond_4

    #@19d
    .line 191
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@1a1
    move-object/from16 v19, v0

    #@1a3
    move-object/from16 v0, v19

    #@1a5
    invoke-static {v11, v14, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@1a8
    move-result-object v6

    #@1a9
    .line 193
    .local v6, "g":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@1ab
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@1ad
    move-object/from16 v0, v20

    #@1af
    invoke-direct {v0, v15, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    #@1b2
    move-object/from16 v0, v19

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    invoke-direct {v0, v11, v14, v6, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@1b9
    return-object v19
.end method

.method private generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 27

    #@0
    .prologue
    .line 223
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4
    .line 224
    .local v12, "d":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@7
    move-result v24

    #@8
    mul-int/lit8 v18, v24, 0x8

    #@a
    .line 232
    .local v18, "outlen":I
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@e
    move/from16 v23, v0

    #@10
    .line 233
    .local v23, "seedlen":I
    div-int/lit8 v24, v23, 0x8

    #@12
    move/from16 v0, v24

    #@14
    new-array v0, v0, [B

    #@16
    move-object/from16 v22, v0

    #@18
    .line 236
    .local v22, "seed":[B
    move-object/from16 v0, p0

    #@1a
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@1c
    move/from16 v24, v0

    #@1e
    add-int/lit8 v24, v24, -0x1

    #@20
    div-int v16, v24, v18

    #@22
    .line 239
    .local v16, "n":I
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@26
    move/from16 v24, v0

    #@28
    add-int/lit8 v24, v24, -0x1

    #@2a
    rem-int v8, v24, v18

    #@2c
    .line 241
    .local v8, "b":I
    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@2f
    move-result v24

    #@30
    move/from16 v0, v24

    #@32
    new-array v0, v0, [B

    #@34
    move-object/from16 v19, v0

    #@36
    .line 245
    .local v19, "output":[B
    :cond_0
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@3a
    move-object/from16 v24, v0

    #@3c
    move-object/from16 v0, v24

    #@3e
    move-object/from16 v1, v22

    #@40
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@43
    .line 248
    move-object/from16 v0, v22

    #@45
    move-object/from16 v1, v19

    #@47
    invoke-static {v12, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@4a
    .line 250
    new-instance v24, Ljava/math/BigInteger;

    #@4c
    const/16 v25, 0x1

    #@4e
    move-object/from16 v0, v24

    #@50
    move/from16 v1, v25

    #@52
    move-object/from16 v2, v19

    #@54
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@57
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@5d
    move/from16 v26, v0

    #@5f
    add-int/lit8 v26, v26, -0x1

    #@61
    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@64
    move-result-object v25

    #@65
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@68
    move-result-object v4

    #@69
    .line 253
    .local v4, "U":Ljava/math/BigInteger;
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@6f
    move/from16 v25, v0

    #@71
    add-int/lit8 v25, v25, -0x1

    #@73
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@76
    move-result-object v24

    #@77
    move-object/from16 v0, v24

    #@79
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7c
    move-result-object v24

    #@7d
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@7f
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@82
    move-result-object v24

    #@83
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@85
    move-object/from16 v0, v25

    #@87
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8a
    move-result-object v25

    #@8b
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8e
    move-result-object v21

    #@8f
    .line 257
    .local v21, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@91
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@93
    move/from16 v24, v0

    #@95
    move-object/from16 v0, v21

    #@97
    move/from16 v1, v24

    #@99
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@9c
    move-result v24

    #@9d
    if-eqz v24, :cond_0

    #@9f
    .line 265
    invoke-static/range {v22 .. v22}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@a2
    move-result-object v17

    #@a3
    .line 268
    .local v17, "offset":[B
    move-object/from16 v0, p0

    #@a5
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@a7
    move/from16 v24, v0

    #@a9
    mul-int/lit8 v11, v24, 0x4

    #@ab
    .line 269
    .local v11, "counterLimit":I
    const/4 v10, 0x0

    #@ac
    .local v10, "counter":I
    :goto_0
    if-ge v10, v11, :cond_0

    #@ae
    .line 275
    sget-object v6, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    #@b0
    .line 276
    .local v6, "W":Ljava/math/BigInteger;
    const/4 v15, 0x0

    #@b1
    .local v15, "j":I
    const/4 v13, 0x0

    #@b2
    .local v13, "exp":I
    :goto_1
    move/from16 v0, v16

    #@b4
    if-gt v15, v0, :cond_2

    #@b6
    .line 278
    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    #@b9
    .line 279
    move-object/from16 v0, v17

    #@bb
    move-object/from16 v1, v19

    #@bd
    invoke-static {v12, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    #@c0
    .line 281
    new-instance v5, Ljava/math/BigInteger;

    #@c2
    const/16 v24, 0x1

    #@c4
    move/from16 v0, v24

    #@c6
    move-object/from16 v1, v19

    #@c8
    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@cb
    .line 282
    .local v5, "Vj":Ljava/math/BigInteger;
    move/from16 v0, v16

    #@cd
    if-ne v15, v0, :cond_1

    #@cf
    .line 284
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@d1
    move-object/from16 v0, v24

    #@d3
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@d6
    move-result-object v24

    #@d7
    move-object/from16 v0, v24

    #@d9
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@dc
    move-result-object v5

    #@dd
    .line 287
    :cond_1
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@e0
    move-result-object v24

    #@e1
    move-object/from16 v0, v24

    #@e3
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e6
    move-result-object v6

    #@e7
    .line 276
    add-int/lit8 v15, v15, 0x1

    #@e9
    add-int v13, v13, v18

    #@eb
    goto :goto_1

    #@ec
    .line 291
    .end local v5    # "Vj":Ljava/math/BigInteger;
    :cond_2
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@f2
    move/from16 v25, v0

    #@f4
    add-int/lit8 v25, v25, -0x1

    #@f6
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@f9
    move-result-object v24

    #@fa
    move-object/from16 v0, v24

    #@fc
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@ff
    move-result-object v7

    #@100
    .line 294
    .local v7, "X":Ljava/math/BigInteger;
    const/16 v24, 0x1

    #@102
    move-object/from16 v0, v21

    #@104
    move/from16 v1, v24

    #@106
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@109
    move-result-object v24

    #@10a
    move-object/from16 v0, v24

    #@10c
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@10f
    move-result-object v9

    #@110
    .line 297
    .local v9, "c":Ljava/math/BigInteger;
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    #@112
    move-object/from16 v0, v24

    #@114
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@117
    move-result-object v24

    #@118
    move-object/from16 v0, v24

    #@11a
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11d
    move-result-object v20

    #@11e
    .line 300
    .local v20, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->bitLength()I

    #@121
    move-result v24

    #@122
    move-object/from16 v0, p0

    #@124
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@126
    move/from16 v25, v0

    #@128
    move/from16 v0, v24

    #@12a
    move/from16 v1, v25

    #@12c
    if-eq v0, v1, :cond_4

    #@12e
    .line 269
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@130
    goto/16 :goto_0

    #@132
    .line 307
    :cond_4
    move-object/from16 v0, p0

    #@134
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@136
    move/from16 v24, v0

    #@138
    move-object/from16 v0, v20

    #@13a
    move/from16 v1, v24

    #@13c
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@13f
    move-result v24

    #@140
    if-eqz v24, :cond_3

    #@142
    .line 311
    move-object/from16 v0, p0

    #@144
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@146
    move/from16 v24, v0

    #@148
    if-ltz v24, :cond_5

    #@14a
    .line 313
    move-object/from16 v0, p0

    #@14c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@14e
    move/from16 v24, v0

    #@150
    move-object/from16 v0, v20

    #@152
    move-object/from16 v1, v21

    #@154
    move-object/from16 v2, v22

    #@156
    move/from16 v3, v24

    #@158
    invoke-static {v12, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    #@15b
    move-result-object v14

    #@15c
    .line 314
    .local v14, "g":Ljava/math/BigInteger;
    if-eqz v14, :cond_5

    #@15e
    .line 316
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@160
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@162
    move-object/from16 v0, p0

    #@164
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@166
    move/from16 v26, v0

    #@168
    move-object/from16 v0, v25

    #@16a
    move-object/from16 v1, v22

    #@16c
    move/from16 v2, v26

    #@16e
    invoke-direct {v0, v1, v10, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    #@171
    move-object/from16 v0, v24

    #@173
    move-object/from16 v1, v20

    #@175
    move-object/from16 v2, v21

    #@177
    move-object/from16 v3, v25

    #@179
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@17c
    return-object v24

    #@17d
    .line 320
    .end local v14    # "g":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@181
    move-object/from16 v24, v0

    #@183
    move-object/from16 v0, v20

    #@185
    move-object/from16 v1, v21

    #@187
    move-object/from16 v2, v24

    #@189
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@18c
    move-result-object v14

    #@18d
    .line 322
    .restart local v14    # "g":Ljava/math/BigInteger;
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@18f
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@191
    move-object/from16 v0, v25

    #@193
    move-object/from16 v1, v22

    #@195
    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    #@198
    move-object/from16 v0, v24

    #@19a
    move-object/from16 v1, v20

    #@19c
    move-object/from16 v2, v21

    #@19e
    move-object/from16 v3, v25

    #@1a0
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    #@1a3
    return-object v24
.end method

.method private static getDefaultN(I)I
    .locals 1
    .param p0, "L"    # I

    #@0
    .prologue
    .line 377
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

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V
    .locals 2
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 371
    array-length v0, p1

    #@2
    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 372
    invoke-interface {p0, p2, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@8
    .line 369
    return-void
.end method

.method private static inc([B)V
    .locals 3
    .param p0, "buf"    # [B

    #@0
    .prologue
    .line 382
    array-length v2, p0

    #@1
    add-int/lit8 v1, v2, -0x1

    #@3
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@5
    .line 384
    aget-byte v2, p0, v1

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    int-to-byte v0, v2

    #@c
    .line 385
    .local v0, "b":B
    aput-byte v0, p0, v1

    #@e
    .line 387
    if-eqz v0, :cond_1

    #@10
    .line 380
    .end local v0    # "b":B
    :cond_0
    return-void

    #@11
    .line 382
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@13
    goto :goto_0
.end method


# virtual methods
.method public generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@7
    move-result-object v0

    #@8
    .line 115
    :goto_0
    return-object v0

    #@9
    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@3
    .line 59
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@5
    .line 60
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@b
    .line 61
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@d
    .line 62
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@f
    .line 56
    return-void
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@0
    .prologue
    const/16 v3, 0xc00

    #@2
    const/16 v1, 0x400

    #@4
    const/16 v2, 0x100

    #@6
    .line 77
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    #@9
    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@f
    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@15
    .line 80
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    #@1b
    .line 81
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    #@21
    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    #@27
    .line 84
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@29
    if-lt v0, v1, :cond_0

    #@2b
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@2d
    if-le v0, v3, :cond_1

    #@2f
    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "L values must be between 1024 and 3072 and a multiple of 1024"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 84
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@3a
    rem-int/lit16 v0, v0, 0x400

    #@3c
    if-nez v0, :cond_0

    #@3e
    .line 88
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@40
    if-ne v0, v1, :cond_2

    #@42
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@44
    const/16 v1, 0xa0

    #@46
    if-eq v0, v1, :cond_2

    #@48
    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v1, "N must be 160 for L = 1024"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 92
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@53
    const/16 v1, 0x800

    #@55
    if-ne v0, v1, :cond_3

    #@57
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@59
    const/16 v1, 0xe0

    #@5b
    if-eq v0, v1, :cond_3

    #@5d
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@5f
    if-eq v0, v2, :cond_3

    #@61
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@63
    const-string/jumbo v1, "N must be 224 or 256 for L = 2048"

    #@66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v0

    #@6a
    .line 96
    :cond_3
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    #@6c
    if-ne v0, v3, :cond_4

    #@6e
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@70
    if-eq v0, v2, :cond_4

    #@72
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@74
    const-string/jumbo v1, "N must be 256 for L = 3072"

    #@77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v0

    #@7b
    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7d
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@80
    move-result v0

    #@81
    mul-int/lit8 v0, v0, 0x8

    #@83
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    #@85
    if-ge v0, v1, :cond_5

    #@87
    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    #@89
    const-string/jumbo v1, "Digest output size too small for value of N"

    #@8c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0

    #@90
    .line 74
    :cond_5
    return-void
.end method
