.class Ljava/math/MutableBigInteger;
.super Ljava/lang/Object;
.source "MutableBigInteger.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist KNUTH_POW2_THRESH_LEN:I = 0x6

.field static final blacklist KNUTH_POW2_THRESH_ZEROS:I = 0x3

.field static final blacklist ONE:Ljava/math/MutableBigInteger;


# instance fields
.field blacklist intLen:I

.field blacklist offset:I

.field blacklist value:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    nop

    .line 76
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    sput-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 103
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 104
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 105
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "val"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 112
    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 113
    iput v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 114
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    aput p1, v1, v0

    .line 115
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "b"    # Ljava/math/BigInteger;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 131
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 132
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 133
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/MutableBigInteger;)V
    .registers 6
    .param p1, "val"    # Ljava/math/MutableBigInteger;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 140
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 141
    iget-object v0, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p1, Ljava/math/MutableBigInteger;->offset:I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 142
    return-void
.end method

.method constructor blacklist <init>([I)V
    .registers 3
    .param p1, "val"    # [I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 122
    iput-object p1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 123
    array-length v0, p1

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 124
    return-void
.end method

.method private blacklist binaryGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 16
    .param p1, "v"    # Ljava/math/MutableBigInteger;

    .line 1990
    move-object v0, p0

    .line 1991
    .local v0, "u":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1994
    .local v1, "r":Ljava/math/MutableBigInteger;
    invoke-direct {v0}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v2

    .line 1995
    .local v2, "s1":I
    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v3

    .line 1996
    .local v3, "s2":I
    if-ge v2, v3, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 1997
    .local v4, "k":I
    :goto_13
    if-eqz v4, :cond_1b

    .line 1998
    invoke-virtual {v0, v4}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1999
    invoke-virtual {p1, v4}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2003
    :cond_1b
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v2, :cond_21

    move v7, v5

    goto :goto_22

    :cond_21
    move v7, v6

    .line 2004
    .local v7, "uOdd":Z
    :goto_22
    if-eqz v7, :cond_26

    move-object v8, p1

    goto :goto_27

    :cond_26
    move-object v8, v0

    .line 2005
    .local v8, "t":Ljava/math/MutableBigInteger;
    :goto_27
    if-eqz v7, :cond_2b

    const/4 v9, -0x1

    goto :goto_2c

    :cond_2b
    move v9, v5

    .line 2008
    .local v9, "tsign":I
    :goto_2c
    invoke-direct {v8}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v10

    move v11, v10

    .local v11, "lb":I
    if-ltz v10, :cond_71

    .line 2010
    invoke-virtual {v8, v11}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2012
    if-lez v9, :cond_3a

    .line 2013
    move-object v0, v8

    goto :goto_3b

    .line 2015
    :cond_3a
    move-object p1, v8

    .line 2018
    :goto_3b
    iget v10, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v12, 0x2

    if-ge v10, v12, :cond_62

    iget v10, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v10, v12, :cond_62

    .line 2019
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v12

    .line 2020
    .local v10, "x":I
    iget-object v12, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v13, p1, Ljava/math/MutableBigInteger;->offset:I

    aget v12, v12, v13

    .line 2021
    .local v12, "y":I
    invoke-static {v10, v12}, Ljava/math/MutableBigInteger;->binaryGcd(II)I

    move-result v10

    .line 2022
    iget-object v13, v1, Ljava/math/MutableBigInteger;->value:[I

    aput v10, v13, v6

    .line 2023
    iput v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 2024
    iput v6, v1, Ljava/math/MutableBigInteger;->offset:I

    .line 2025
    if-lez v4, :cond_61

    .line 2026
    invoke-virtual {v1, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2027
    :cond_61
    return-object v1

    .line 2031
    .end local v10    # "x":I
    .end local v12    # "y":I
    :cond_62
    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;->difference(Ljava/math/MutableBigInteger;)I

    move-result v10

    move v9, v10

    if-nez v10, :cond_6a

    .line 2032
    goto :goto_71

    .line 2033
    :cond_6a
    if-ltz v9, :cond_6e

    move-object v10, v0

    goto :goto_6f

    :cond_6e
    move-object v10, p1

    :goto_6f
    move-object v8, v10

    goto :goto_2c

    .line 2036
    :cond_71
    :goto_71
    if-lez v4, :cond_76

    .line 2037
    invoke-virtual {v0, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2038
    :cond_76
    return-object v0
.end method

.method static blacklist binaryGcd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2045
    if-nez p1, :cond_3

    .line 2046
    return p0

    .line 2047
    :cond_3
    if-nez p0, :cond_6

    .line 2048
    return p1

    .line 2051
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 2052
    .local v0, "aZeros":I
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 2053
    .local v1, "bZeros":I
    ushr-int/2addr p0, v0

    .line 2054
    ushr-int/2addr p1, v1

    .line 2056
    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    .line 2058
    .local v2, "t":I
    :goto_15
    if-eq p0, p1, :cond_2c

    .line 2059
    const/high16 v3, -0x80000000

    add-int v4, p0, v3

    add-int/2addr v3, p1

    if-le v4, v3, :cond_25

    .line 2060
    sub-int/2addr p0, p1

    .line 2061
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    ushr-int/2addr p0, v3

    goto :goto_15

    .line 2063
    :cond_25
    sub-int/2addr p1, p0

    .line 2064
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    ushr-int/2addr p1, v3

    goto :goto_15

    .line 2067
    :cond_2c
    shl-int v3, p0, v2

    return v3
.end method

.method private blacklist compareShifted(Ljava/math/MutableBigInteger;I)I
    .registers 13
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "ints"    # I

    .line 290
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 291
    .local v0, "blen":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v1, p2

    .line 292
    .local v1, "alen":I
    const/4 v2, -0x1

    if-ge v1, v0, :cond_9

    .line 293
    return v2

    .line 294
    :cond_9
    const/4 v3, 0x1

    if-le v1, v0, :cond_d

    .line 295
    return v3

    .line 299
    :cond_d
    iget-object v4, p1, Ljava/math/MutableBigInteger;->value:[I

    .line 300
    .local v4, "bval":[I
    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v5, "i":I
    iget v6, p1, Ljava/math/MutableBigInteger;->offset:I

    .local v6, "j":I
    :goto_13
    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v1

    if-ge v5, v7, :cond_2d

    .line 301
    iget-object v7, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v7, v7, v5

    const/high16 v8, -0x80000000

    add-int/2addr v7, v8

    .line 302
    .local v7, "b1":I
    aget v9, v4, v6

    add-int/2addr v9, v8

    .line 303
    .local v9, "b2":I
    if-ge v7, v9, :cond_25

    .line 304
    return v2

    .line 305
    :cond_25
    if-le v7, v9, :cond_28

    .line 306
    return v3

    .line 300
    .end local v7    # "b1":I
    .end local v9    # "b2":I
    :cond_28
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 308
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist copyAndShift([III[III)V
    .registers 13
    .param p0, "src"    # [I
    .param p1, "srcFrom"    # I
    .param p2, "srcLen"    # I
    .param p3, "dst"    # [I
    .param p4, "dstFrom"    # I
    .param p5, "shift"    # I

    .line 1466
    rsub-int/lit8 v0, p5, 0x20

    .line 1467
    .local v0, "n2":I
    aget v1, p0, p1

    .line 1468
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_1a

    .line 1469
    move v3, v1

    .line 1470
    .local v3, "b":I
    add-int/lit8 p1, p1, 0x1

    aget v1, p0, p1

    .line 1471
    add-int v4, p4, v2

    shl-int v5, v3, p5

    ushr-int v6, v1, v0

    or-int/2addr v5, v6

    aput v5, p3, v4

    .line 1468
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1473
    .end local v2    # "i":I
    :cond_1a
    add-int v2, p4, p2

    add-int/lit8 v2, v2, -0x1

    shl-int v3, v1, p5

    aput v3, p3, v2

    .line 1474
    return-void
.end method

.method private blacklist difference(Ljava/math/MutableBigInteger;)I
    .registers 15
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 971
    move-object v0, p0

    .line 972
    .local v0, "a":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, p1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v1

    .line 973
    .local v1, "sign":I
    if-nez v1, :cond_9

    .line 974
    const/4 v2, 0x0

    return v2

    .line 975
    :cond_9
    if-gez v1, :cond_e

    .line 976
    move-object v2, v0

    .line 977
    .local v2, "tmp":Ljava/math/MutableBigInteger;
    move-object v0, p1

    .line 978
    move-object p1, v2

    .line 981
    .end local v2    # "tmp":Ljava/math/MutableBigInteger;
    :cond_e
    const-wide/16 v2, 0x0

    .line 982
    .local v2, "diff":J
    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 983
    .local v4, "x":I
    iget v5, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 986
    .local v5, "y":I
    :goto_14
    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    if-lez v5, :cond_44

    .line 987
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    .line 988
    iget-object v9, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v4

    aget v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v7

    iget-object v11, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v12, p1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v5

    aget v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v7, v11

    sub-long/2addr v9, v7

    shr-long v6, v2, v6

    neg-long v6, v6

    long-to-int v6, v6

    int-to-long v6, v6

    sub-long v2, v9, v6

    .line 990
    iget-object v6, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v4

    long-to-int v8, v2

    aput v8, v6, v7

    goto :goto_14

    .line 993
    :cond_44
    :goto_44
    if-lez v4, :cond_61

    .line 994
    add-int/lit8 v4, v4, -0x1

    .line 995
    iget-object v9, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v4

    aget v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v7

    shr-long v11, v2, v6

    neg-long v11, v11

    long-to-int v11, v11

    int-to-long v11, v11

    sub-long v2, v9, v11

    .line 996
    iget-object v9, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v4

    long-to-int v11, v2

    aput v11, v9, v10

    goto :goto_44

    .line 999
    :cond_61
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1000
    return v1
.end method

.method static blacklist divWord(JI)J
    .registers 20
    .param p0, "n"    # J
    .param p2, "d"    # I

    .line 1848
    move-wide/from16 v0, p0

    move/from16 v2, p2

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 1851
    .local v3, "dLong":J
    const-wide/16 v7, 0x1

    cmp-long v9, v3, v7

    const/16 v10, 0x20

    if-nez v9, :cond_1c

    .line 1852
    long-to-int v7, v0

    int-to-long v7, v7

    .line 1853
    .local v7, "q":J
    const-wide/16 v11, 0x0

    .line 1854
    .local v11, "r":J
    shl-long v9, v11, v10

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    return-wide v5

    .line 1858
    .end local v7    # "q":J
    .end local v11    # "r":J
    :cond_1c
    const/4 v9, 0x1

    ushr-long v11, v0, v9

    ushr-long v13, v3, v9

    div-long/2addr v11, v13

    .line 1859
    .local v11, "q":J
    mul-long v13, v11, v3

    sub-long v13, v0, v13

    .line 1862
    .local v13, "r":J
    :goto_26
    const-wide/16 v15, 0x0

    cmp-long v9, v13, v15

    if-gez v9, :cond_2f

    .line 1863
    add-long/2addr v13, v3

    .line 1864
    sub-long/2addr v11, v7

    goto :goto_26

    .line 1866
    :cond_2f
    :goto_2f
    cmp-long v9, v13, v3

    if-ltz v9, :cond_36

    .line 1867
    sub-long/2addr v13, v3

    .line 1868
    add-long/2addr v11, v7

    goto :goto_2f

    .line 1871
    :cond_36
    shl-long v7, v13, v10

    and-long/2addr v5, v11

    or-long/2addr v5, v7

    return-wide v5
.end method

.method private blacklist divadd([I[II)I
    .registers 13
    .param p1, "a"    # [I
    .param p2, "result"    # [I
    .param p3, "offset"    # I

    .line 626
    const-wide/16 v0, 0x0

    .line 628
    .local v0, "carry":J
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_5
    if-ltz v2, :cond_24

    .line 629
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, v2, p3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    .line 631
    .local v3, "sum":J
    add-int v5, v2, p3

    long-to-int v6, v3

    aput v6, p2, v5

    .line 632
    const/16 v5, 0x20

    ushr-long v0, v3, v5

    .line 628
    .end local v3    # "sum":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 634
    .end local v2    # "j":I
    :cond_24
    long-to-int v2, v0

    return v2
.end method

.method private blacklist divaddLong(II[II)I
    .registers 15
    .param p1, "dh"    # I
    .param p2, "dl"    # I
    .param p3, "result"    # [I
    .param p4, "offset"    # I

    .line 1798
    const-wide/16 v0, 0x0

    .line 1800
    .local v0, "carry":J
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 1801
    .local v2, "sum":J
    add-int/lit8 v6, p4, 0x1

    long-to-int v7, v2

    aput v7, p3, v6

    .line 1803
    int-to-long v6, p1

    and-long/2addr v6, v4

    aget v8, p3, p4

    int-to-long v8, v8

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v6, v0

    .line 1804
    .end local v2    # "sum":J
    .local v6, "sum":J
    long-to-int v2, v6

    aput v2, p3, p4

    .line 1805
    const/16 v2, 0x20

    ushr-long v0, v6, v2

    .line 1806
    long-to-int v2, v0

    return v2
.end method

.method private blacklist divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 9
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1317
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1320
    .local v0, "n":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_34

    const/16 v1, 0x50

    if-ge v0, v1, :cond_b

    goto :goto_34

    .line 1325
    :cond_b
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1326
    .local v1, "aUpper":Ljava/math/MutableBigInteger;
    div-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1327
    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Ljava/math/MutableBigInteger;->keepLower(I)V

    .line 1330
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1331
    .local v2, "q1":Ljava/math/MutableBigInteger;
    invoke-direct {v1, p1, v2}, Ljava/math/MutableBigInteger;->divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 1334
    .local v3, "r1":Ljava/math/MutableBigInteger;
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1335
    invoke-direct {p0, p1, p2}, Ljava/math/MutableBigInteger;->divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 1338
    .local v4, "r2":Ljava/math/MutableBigInteger;
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p2, v2, v5}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1339
    return-object v4

    .line 1321
    .end local v1    # "aUpper":Ljava/math/MutableBigInteger;
    .end local v2    # "q1":Ljava/math/MutableBigInteger;
    .end local v3    # "r1":Ljava/math/MutableBigInteger;
    .end local v4    # "r2":Ljava/math/MutableBigInteger;
    :cond_34
    :goto_34
    invoke-virtual {p0, p1, p2}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    return-object v1
.end method

.method private blacklist divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 10
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1352
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    div-int/lit8 v0, v0, 0x2

    .line 1355
    .local v0, "n":I
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1356
    .local v1, "a12":Ljava/math/MutableBigInteger;
    mul-int/lit8 v2, v0, 0x20

    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1359
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1360
    .local v2, "b1":Ljava/math/MutableBigInteger;
    mul-int/lit8 v3, v0, 0x20

    invoke-virtual {v2, v3}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1361
    invoke-direct {p1, v0}, Ljava/math/MutableBigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 1365
    .local v3, "b2":Ljava/math/BigInteger;
    invoke-direct {p0, p1, v0}, Ljava/math/MutableBigInteger;->compareShifted(Ljava/math/MutableBigInteger;I)I

    move-result v4

    if-gez v4, :cond_34

    .line 1367
    invoke-direct {v1, v2, p2}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 1370
    .local v4, "r":Ljava/math/MutableBigInteger;
    new-instance v5, Ljava/math/MutableBigInteger;

    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .local v5, "d":Ljava/math/MutableBigInteger;
    goto :goto_55

    .line 1373
    .end local v4    # "r":Ljava/math/MutableBigInteger;
    .end local v5    # "d":Ljava/math/MutableBigInteger;
    :cond_34
    invoke-direct {p2, v0}, Ljava/math/MutableBigInteger;->ones(I)V

    .line 1374
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1375
    mul-int/lit8 v4, v0, 0x20

    invoke-virtual {v2, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1376
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1377
    move-object v4, v1

    .line 1380
    .restart local v4    # "r":Ljava/math/MutableBigInteger;
    new-instance v5, Ljava/math/MutableBigInteger;

    invoke-direct {v5, v3}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 1381
    .restart local v5    # "d":Ljava/math/MutableBigInteger;
    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v5, v6}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1382
    new-instance v6, Ljava/math/MutableBigInteger;

    invoke-direct {v6, v3}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1387
    :goto_55
    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v4, v6}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1388
    invoke-virtual {v4, p0, v0}, Ljava/math/MutableBigInteger;->addLower(Ljava/math/MutableBigInteger;I)V

    .line 1391
    :goto_5d
    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v6

    if-gez v6, :cond_6c

    .line 1392
    invoke-virtual {v4, p1}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1393
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {p2, v6}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    goto :goto_5d

    .line 1395
    :cond_6c
    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1397
    return-object v4
.end method

.method private blacklist divideLongMagnitude(JLjava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 36
    .param p1, "ldivisor"    # J
    .param p3, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1688
    move-object/from16 v0, p0

    move-object/from16 v6, p3

    new-instance v1, Ljava/math/MutableBigInteger;

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v8, v1

    .line 1689
    .local v8, "rem":Ljava/math/MutableBigInteger;
    iget-object v1, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v0, Ljava/math/MutableBigInteger;->offset:I

    iget-object v3, v8, Ljava/math/MutableBigInteger;->value:[I

    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v1, v2, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1690
    iget v1, v0, Ljava/math/MutableBigInteger;->intLen:I

    iput v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1691
    iput v7, v8, Ljava/math/MutableBigInteger;->offset:I

    .line 1693
    iget v9, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1695
    .local v9, "nlen":I
    add-int/lit8 v1, v9, -0x2

    add-int/lit8 v10, v1, 0x1

    .line 1696
    .local v10, "limit":I
    iget-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    const/4 v11, 0x0

    if-ge v1, v10, :cond_33

    .line 1697
    new-array v1, v10, [I

    iput-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    .line 1698
    iput v11, v6, Ljava/math/MutableBigInteger;->offset:I

    .line 1700
    :cond_33
    iput v10, v6, Ljava/math/MutableBigInteger;->intLen:I

    .line 1701
    iget-object v12, v6, Ljava/math/MutableBigInteger;->value:[I

    .line 1704
    .local v12, "q":[I
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v13

    .line 1705
    .local v13, "shift":I
    if-lez v13, :cond_44

    .line 1706
    shl-long v1, p1, v13

    .line 1707
    .end local p1    # "ldivisor":J
    .local v1, "ldivisor":J
    invoke-virtual {v8, v13}, Ljava/math/MutableBigInteger;->leftShift(I)V

    move-wide v14, v1

    goto :goto_46

    .line 1705
    .end local v1    # "ldivisor":J
    .restart local p1    # "ldivisor":J
    :cond_44
    move-wide/from16 v14, p1

    .line 1711
    .end local p1    # "ldivisor":J
    .local v14, "ldivisor":J
    :goto_46
    iget v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v1, v9, :cond_55

    .line 1712
    iput v11, v8, Ljava/math/MutableBigInteger;->offset:I

    .line 1713
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    aput v11, v1, v11

    .line 1714
    iget v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, v7

    iput v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1717
    :cond_55
    const/16 v16, 0x20

    ushr-long v1, v14, v16

    long-to-int v2, v1

    .line 1718
    .local v2, "dh":I
    int-to-long v3, v2

    const-wide v17, 0xffffffffL

    and-long v19, v3, v17

    .line 1719
    .local v19, "dhLong":J
    and-long v3, v14, v17

    long-to-int v3, v3

    .line 1722
    .local v3, "dl":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_66
    if-ge v1, v10, :cond_185

    .line 1725
    const/4 v4, 0x0

    .line 1726
    .local v4, "qhat":I
    const/4 v5, 0x0

    .line 1727
    .local v5, "qrem":I
    const/16 v21, 0x0

    .line 1728
    .local v21, "skipCorrection":Z
    iget-object v7, v8, Ljava/math/MutableBigInteger;->value:[I

    move/from16 v22, v11

    iget v11, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v11, v1

    aget v7, v7, v11

    .line 1729
    .local v7, "nh":I
    const/high16 p1, -0x80000000

    add-int v11, v7, p1

    .line 1730
    .local v11, "nh2":I
    move/from16 p2, v1

    .end local v1    # "j":I
    .local p2, "j":I
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v23, p2, 0x1

    move-object/from16 v24, v1

    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v23, v23, v1

    aget v1, v24, v23

    .line 1732
    .local v1, "nm":I
    if-ne v7, v2, :cond_a3

    .line 1733
    const/4 v4, -0x1

    .line 1734
    add-int v5, v7, v1

    .line 1735
    move/from16 v23, v4

    .end local v4    # "qhat":I
    .local v23, "qhat":I
    add-int v4, v5, p1

    if-ge v4, v11, :cond_94

    const/4 v4, 0x1

    goto :goto_96

    :cond_94
    move/from16 v4, v22

    :goto_96
    move/from16 v21, v4

    move/from16 v27, v1

    move v6, v2

    move/from16 v25, v7

    move v7, v9

    move/from16 v26, v10

    move/from16 v4, v23

    goto :goto_e2

    .line 1737
    .end local v23    # "qhat":I
    .restart local v4    # "qhat":I
    :cond_a3
    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "qhat":I
    .end local v5    # "qrem":I
    .restart local v23    # "qhat":I
    .local v24, "qrem":I
    int-to-long v4, v7

    shl-long v4, v4, v16

    move-wide/from16 v25, v4

    int-to-long v4, v1

    and-long v4, v4, v17

    or-long v4, v25, v4

    .line 1738
    .local v4, "nChunk":J
    const-wide/16 v25, 0x0

    cmp-long v25, v4, v25

    if-ltz v25, :cond_cb

    .line 1739
    move/from16 v25, v7

    .end local v7    # "nh":I
    .local v25, "nh":I
    div-long v6, v4, v19

    long-to-int v6, v6

    .line 1740
    .end local v23    # "qhat":I
    .local v6, "qhat":I
    move v7, v9

    move/from16 v26, v10

    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .local v7, "nlen":I
    .local v26, "limit":I
    int-to-long v9, v6

    mul-long v9, v9, v19

    sub-long v9, v4, v9

    long-to-int v9, v9

    move/from16 v27, v1

    move v4, v6

    move v5, v9

    move v6, v2

    .end local v24    # "qrem":I
    .local v9, "qrem":I
    goto :goto_e2

    .line 1742
    .end local v6    # "qhat":I
    .end local v25    # "nh":I
    .end local v26    # "limit":I
    .local v7, "nh":I
    .local v9, "nlen":I
    .restart local v10    # "limit":I
    .restart local v23    # "qhat":I
    .restart local v24    # "qrem":I
    :cond_cb
    move/from16 v25, v7

    move v7, v9

    move/from16 v26, v10

    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .local v7, "nlen":I
    .restart local v25    # "nh":I
    .restart local v26    # "limit":I
    invoke-static {v4, v5, v2}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v9

    .line 1743
    .local v9, "tmp":J
    move/from16 v27, v1

    move v6, v2

    .end local v1    # "nm":I
    .end local v2    # "dh":I
    .local v6, "dh":I
    .local v27, "nm":I
    and-long v1, v9, v17

    long-to-int v1, v1

    .line 1744
    .end local v23    # "qhat":I
    .local v1, "qhat":I
    move/from16 v23, v1

    .end local v1    # "qhat":I
    .restart local v23    # "qhat":I
    ushr-long v1, v9, v16

    long-to-int v1, v1

    move v5, v1

    move/from16 v4, v23

    .line 1748
    .end local v9    # "tmp":J
    .end local v23    # "qhat":I
    .end local v24    # "qrem":I
    .local v4, "qhat":I
    .restart local v5    # "qrem":I
    :goto_e2
    if-nez v4, :cond_e9

    .line 1749
    move v2, v6

    move/from16 v6, p2

    goto/16 :goto_179

    .line 1751
    :cond_e9
    if-nez v21, :cond_148

    .line 1752
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v2, p2, 0x2

    iget v9, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v2, v9

    aget v1, v1, v2

    int-to-long v1, v1

    and-long v1, v1, v17

    .line 1753
    .local v1, "nl":J
    int-to-long v9, v5

    and-long v9, v9, v17

    shl-long v9, v9, v16

    or-long/2addr v9, v1

    .line 1754
    .local v9, "rs":J
    move-wide/from16 v23, v1

    .end local v1    # "nl":J
    .local v23, "nl":J
    int-to-long v1, v3

    and-long v1, v1, v17

    move-wide/from16 v28, v1

    int-to-long v1, v4

    and-long v1, v1, v17

    mul-long v1, v1, v28

    .line 1756
    .local v1, "estProduct":J
    invoke-direct {v0, v1, v2, v9, v10}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v28

    if-eqz v28, :cond_143

    .line 1757
    add-int/lit8 v4, v4, -0x1

    .line 1758
    move-wide/from16 v28, v1

    .end local v1    # "estProduct":J
    .local v28, "estProduct":J
    int-to-long v1, v5

    and-long v1, v1, v17

    add-long v1, v1, v19

    long-to-int v5, v1

    .line 1759
    int-to-long v1, v5

    and-long v1, v1, v17

    cmp-long v1, v1, v19

    if-ltz v1, :cond_13b

    .line 1760
    int-to-long v1, v3

    and-long v1, v1, v17

    sub-long v1, v28, v1

    .line 1761
    .end local v28    # "estProduct":J
    .restart local v1    # "estProduct":J
    move/from16 v30, v3

    move/from16 v31, v4

    .end local v3    # "dl":I
    .end local v4    # "qhat":I
    .local v30, "dl":I
    .local v31, "qhat":I
    int-to-long v3, v5

    and-long v3, v3, v17

    shl-long v3, v3, v16

    or-long v3, v3, v23

    .line 1762
    .end local v9    # "rs":J
    .local v3, "rs":J
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 1763
    add-int/lit8 v9, v31, -0x1

    move v4, v9

    move v9, v5

    .end local v31    # "qhat":I
    .local v9, "qhat":I
    goto :goto_14b

    .line 1759
    .end local v1    # "estProduct":J
    .end local v30    # "dl":I
    .local v3, "dl":I
    .restart local v4    # "qhat":I
    .local v9, "rs":J
    .restart local v28    # "estProduct":J
    :cond_13b
    move/from16 v30, v3

    move/from16 v31, v4

    .line 1769
    .end local v3    # "dl":I
    .end local v4    # "qhat":I
    .end local v9    # "rs":J
    .end local v23    # "nl":J
    .end local v28    # "estProduct":J
    .restart local v30    # "dl":I
    .restart local v31    # "qhat":I
    :cond_13f
    move v9, v5

    move/from16 v4, v31

    goto :goto_14b

    .line 1756
    .end local v30    # "dl":I
    .end local v31    # "qhat":I
    .restart local v1    # "estProduct":J
    .restart local v3    # "dl":I
    .restart local v4    # "qhat":I
    .restart local v9    # "rs":J
    .restart local v23    # "nl":J
    :cond_143
    move-wide/from16 v28, v1

    move/from16 v30, v3

    .end local v1    # "estProduct":J
    .end local v3    # "dl":I
    .restart local v28    # "estProduct":J
    .restart local v30    # "dl":I
    goto :goto_14a

    .line 1751
    .end local v9    # "rs":J
    .end local v23    # "nl":J
    .end local v28    # "estProduct":J
    .end local v30    # "dl":I
    .restart local v3    # "dl":I
    :cond_148
    move/from16 v30, v3

    .line 1769
    .end local v3    # "dl":I
    .restart local v30    # "dl":I
    :goto_14a
    move v9, v5

    .end local v5    # "qrem":I
    .local v9, "qrem":I
    :goto_14b
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v2, p2, v2

    aput v22, v1, v2

    .line 1770
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v5, p2, v2

    move v2, v6

    move/from16 v3, v30

    move/from16 v6, p2

    .end local v30    # "dl":I
    .end local p2    # "j":I
    .restart local v2    # "dh":I
    .restart local v3    # "dl":I
    .local v6, "j":I
    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsubLong([IIIII)I

    move-result v1

    .line 1773
    .local v1, "borrow":I
    add-int v5, v1, p1

    if-le v5, v11, :cond_175

    .line 1775
    iget-object v5, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v10, v6, 0x1

    move/from16 p1, v1

    .end local v1    # "borrow":I
    .local p1, "borrow":I
    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v1

    invoke-direct {v0, v2, v3, v5, v10}, Ljava/math/MutableBigInteger;->divaddLong(II[II)I

    .line 1776
    add-int/lit8 v4, v4, -0x1

    goto :goto_177

    .line 1773
    .end local p1    # "borrow":I
    .restart local v1    # "borrow":I
    :cond_175
    move/from16 p1, v1

    .line 1780
    .end local v1    # "borrow":I
    .restart local p1    # "borrow":I
    :goto_177
    aput v4, v12, v6

    .line 1722
    .end local v4    # "qhat":I
    .end local v9    # "qrem":I
    .end local v11    # "nh2":I
    .end local v21    # "skipCorrection":Z
    .end local v25    # "nh":I
    .end local v27    # "nm":I
    .end local p1    # "borrow":I
    :goto_179
    add-int/lit8 v1, v6, 0x1

    move-object/from16 v6, p3

    move v9, v7

    move/from16 v11, v22

    move/from16 v10, v26

    const/4 v7, 0x1

    .end local v6    # "j":I
    .local v1, "j":I
    goto/16 :goto_66

    .end local v7    # "nlen":I
    .end local v26    # "limit":I
    .local v9, "nlen":I
    .restart local v10    # "limit":I
    :cond_185
    move v6, v1

    move v7, v9

    move/from16 v26, v10

    .line 1784
    .end local v1    # "j":I
    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .restart local v7    # "nlen":I
    .restart local v26    # "limit":I
    if-lez v13, :cond_18e

    .line 1785
    invoke-virtual {v8, v13}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1787
    :cond_18e
    invoke-virtual/range {p3 .. p3}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1788
    invoke-virtual {v8}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1789
    return-object v8
.end method

.method private blacklist divideMagnitude(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 41
    .param p1, "div"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1486
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    iget-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v6, Ljava/math/MutableBigInteger;->offset:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v13

    .line 1488
    .local v13, "shift":I
    iget v4, v6, Ljava/math/MutableBigInteger;->intLen:I

    .line 1491
    .local v4, "dlen":I
    const/4 v14, 0x1

    if-lez v13, :cond_82

    .line 1492
    new-array v11, v4, [I

    .line 1493
    .local v11, "divisor":[I
    iget-object v8, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v9, v6, Ljava/math/MutableBigInteger;->offset:I

    const/4 v12, 0x0

    move v10, v4

    .end local v4    # "dlen":I
    .local v10, "dlen":I
    invoke-static/range {v8 .. v13}, Ljava/math/MutableBigInteger;->copyAndShift([III[III)V

    .line 1494
    move-object v1, v11

    .end local v10    # "dlen":I
    .end local v11    # "divisor":[I
    .local v1, "divisor":[I
    .restart local v4    # "dlen":I
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    if-lt v2, v13, :cond_4a

    .line 1495
    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v14

    new-array v11, v2, [I

    .line 1496
    .local v11, "remarr":[I
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v11}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 1497
    .local v2, "rem":Ljava/math/MutableBigInteger;
    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    iput v3, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1498
    iput v14, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1499
    iget-object v8, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v9, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v10, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v12, 0x1

    invoke-static/range {v8 .. v13}, Ljava/math/MutableBigInteger;->copyAndShift([III[III)V

    .line 1500
    .end local v11    # "remarr":[I
    move-object v8, v2

    move-object v2, v1

    goto :goto_ad

    .line 1501
    .end local v2    # "rem":Ljava/math/MutableBigInteger;
    :cond_4a
    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 1502
    .local v2, "remarr":[I
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 1503
    .local v3, "rem":Ljava/math/MutableBigInteger;
    iget v5, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v14

    iput v5, v3, Ljava/math/MutableBigInteger;->intLen:I

    .line 1504
    iput v14, v3, Ljava/math/MutableBigInteger;->offset:I

    .line 1505
    iget v5, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 1506
    .local v5, "rFrom":I
    const/4 v8, 0x0

    .line 1507
    .local v8, "c":I
    rsub-int/lit8 v9, v13, 0x20

    .line 1508
    .local v9, "n2":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_62
    iget v11, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v11, v14

    if-ge v10, v11, :cond_78

    .line 1509
    move v11, v8

    .line 1510
    .local v11, "b":I
    iget-object v12, v0, Ljava/math/MutableBigInteger;->value:[I

    aget v8, v12, v5

    .line 1511
    shl-int v12, v11, v13

    ushr-int v15, v8, v9

    or-int/2addr v12, v15

    aput v12, v2, v10

    .line 1508
    .end local v11    # "b":I
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 1513
    .end local v10    # "i":I
    :cond_78
    iget v10, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v10, v14

    shl-int v11, v8, v13

    aput v11, v2, v10

    .line 1514
    .end local v2    # "remarr":[I
    .end local v5    # "rFrom":I
    .end local v8    # "c":I
    .end local v9    # "n2":I
    move-object v2, v1

    move-object v8, v3

    goto :goto_ad

    .line 1516
    .end local v1    # "divisor":[I
    .end local v3    # "rem":Ljava/math/MutableBigInteger;
    :cond_82
    iget-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v6, Ljava/math/MutableBigInteger;->offset:I

    iget v3, v6, Ljava/math/MutableBigInteger;->offset:I

    iget v5, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v5

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v11

    .line 1517
    .local v11, "divisor":[I
    new-instance v1, Ljava/math/MutableBigInteger;

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v14

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v2, v1

    .line 1518
    .local v2, "rem":Ljava/math/MutableBigInteger;
    iget-object v1, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, v0, Ljava/math/MutableBigInteger;->offset:I

    iget-object v5, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v8, v0, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v1, v3, v5, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1519
    iget v1, v0, Ljava/math/MutableBigInteger;->intLen:I

    iput v1, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1520
    iput v14, v2, Ljava/math/MutableBigInteger;->offset:I

    move-object v8, v2

    move-object v2, v11

    .line 1523
    .end local v11    # "divisor":[I
    .local v2, "divisor":[I
    .local v8, "rem":Ljava/math/MutableBigInteger;
    :goto_ad
    iget v9, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1526
    .local v9, "nlen":I
    sub-int v1, v9, v4

    add-int/lit8 v10, v1, 0x1

    .line 1527
    .local v10, "limit":I
    iget-object v1, v7, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    const/4 v11, 0x0

    if-ge v1, v10, :cond_bf

    .line 1528
    new-array v1, v10, [I

    iput-object v1, v7, Ljava/math/MutableBigInteger;->value:[I

    .line 1529
    iput v11, v7, Ljava/math/MutableBigInteger;->offset:I

    .line 1531
    :cond_bf
    iput v10, v7, Ljava/math/MutableBigInteger;->intLen:I

    .line 1532
    iget-object v12, v7, Ljava/math/MutableBigInteger;->value:[I

    .line 1536
    .local v12, "q":[I
    iget v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v1, v9, :cond_d2

    .line 1537
    iput v11, v8, Ljava/math/MutableBigInteger;->offset:I

    .line 1538
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    aput v11, v1, v11

    .line 1539
    iget v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, v14

    iput v1, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1542
    :cond_d2
    aget v15, v2, v11

    .line 1543
    .local v15, "dh":I
    move/from16 v16, v11

    move-object/from16 v17, v12

    .end local v12    # "q":[I
    .local v17, "q":[I
    int-to-long v11, v15

    const-wide v18, 0xffffffffL

    and-long v11, v11, v18

    .line 1544
    .local v11, "dhLong":J
    aget v1, v2, v14

    .line 1547
    .local v1, "dl":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e3
    add-int/lit8 v5, v10, -0x1

    const-wide/16 v20, 0x0

    const/high16 v22, -0x80000000

    const/16 v23, 0x20

    if-ge v3, v5, :cond_1fc

    .line 1550
    const/4 v5, 0x0

    .line 1551
    .local v5, "qhat":I
    const/16 v24, 0x0

    .line 1552
    .local v24, "qrem":I
    const/16 v25, 0x0

    .line 1553
    .local v25, "skipCorrection":Z
    move/from16 v26, v14

    iget-object v14, v8, Ljava/math/MutableBigInteger;->value:[I

    move-object/from16 v27, v2

    .end local v2    # "divisor":[I
    .local v27, "divisor":[I
    iget v2, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v2, v3

    aget v14, v14, v2

    .line 1554
    .local v14, "nh":I
    add-int v2, v14, v22

    .line 1555
    .local v2, "nh2":I
    move/from16 v28, v3

    .end local v3    # "j":I
    .local v28, "j":I
    iget-object v3, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v29, v28, 0x1

    move-object/from16 v30, v3

    iget v3, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v29, v29, v3

    aget v3, v30, v29

    .line 1557
    .local v3, "nm":I
    if-ne v14, v15, :cond_126

    .line 1558
    const/4 v5, -0x1

    .line 1559
    add-int v20, v14, v3

    .line 1560
    .end local v24    # "qrem":I
    .local v20, "qrem":I
    move/from16 v29, v4

    .end local v4    # "dlen":I
    .local v29, "dlen":I
    add-int v4, v20, v22

    if-ge v4, v2, :cond_11b

    move/from16 v4, v26

    goto :goto_11d

    :cond_11b
    move/from16 v4, v16

    :goto_11d
    move/from16 v25, v4

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v2, v20

    goto :goto_158

    .line 1562
    .end local v20    # "qrem":I
    .end local v29    # "dlen":I
    .restart local v4    # "dlen":I
    .restart local v24    # "qrem":I
    :cond_126
    move/from16 v29, v4

    .end local v4    # "dlen":I
    .restart local v29    # "dlen":I
    move/from16 v30, v5

    .end local v5    # "qhat":I
    .local v30, "qhat":I
    int-to-long v4, v14

    shl-long v4, v4, v23

    move-wide/from16 v31, v4

    int-to-long v4, v3

    and-long v4, v4, v18

    or-long v4, v31, v4

    .line 1563
    .local v4, "nChunk":J
    cmp-long v20, v4, v20

    if-ltz v20, :cond_147

    .line 1564
    move/from16 v31, v2

    move/from16 v32, v3

    .end local v2    # "nh2":I
    .end local v3    # "nm":I
    .local v31, "nh2":I
    .local v32, "nm":I
    div-long v2, v4, v11

    long-to-int v2, v2

    .line 1565
    .end local v30    # "qhat":I
    .local v2, "qhat":I
    int-to-long v6, v2

    mul-long/2addr v6, v11

    sub-long v6, v4, v6

    long-to-int v3, v6

    move v5, v2

    move v2, v3

    .end local v24    # "qrem":I
    .local v3, "qrem":I
    goto :goto_158

    .line 1567
    .end local v31    # "nh2":I
    .end local v32    # "nm":I
    .local v2, "nh2":I
    .local v3, "nm":I
    .restart local v24    # "qrem":I
    .restart local v30    # "qhat":I
    :cond_147
    move/from16 v31, v2

    move/from16 v32, v3

    .end local v2    # "nh2":I
    .end local v3    # "nm":I
    .restart local v31    # "nh2":I
    .restart local v32    # "nm":I
    invoke-static {v4, v5, v15}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v2

    .line 1568
    .local v2, "tmp":J
    and-long v6, v2, v18

    long-to-int v6, v6

    .line 1569
    .end local v30    # "qhat":I
    .local v6, "qhat":I
    move-wide/from16 v20, v2

    .end local v2    # "tmp":J
    .local v20, "tmp":J
    ushr-long v2, v20, v23

    long-to-int v2, v2

    move v5, v6

    .line 1573
    .end local v4    # "nChunk":J
    .end local v6    # "qhat":I
    .end local v20    # "tmp":J
    .end local v24    # "qrem":I
    .local v2, "qrem":I
    .restart local v5    # "qhat":I
    :goto_158
    if-nez v5, :cond_161

    .line 1574
    move v7, v1

    move-object/from16 v2, v27

    move/from16 v4, v29

    goto/16 :goto_1f1

    .line 1576
    :cond_161
    if-nez v25, :cond_1bb

    .line 1577
    iget-object v3, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v4, v28, 0x2

    iget v6, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v4, v6

    aget v3, v3, v4

    int-to-long v3, v3

    and-long v3, v3, v18

    .line 1578
    .local v3, "nl":J
    int-to-long v6, v2

    and-long v6, v6, v18

    shl-long v6, v6, v23

    or-long/2addr v6, v3

    .line 1579
    .local v6, "rs":J
    move-wide/from16 v20, v3

    .end local v3    # "nl":J
    .local v20, "nl":J
    int-to-long v3, v1

    and-long v3, v3, v18

    move-wide/from16 v33, v3

    int-to-long v3, v5

    and-long v3, v3, v18

    mul-long v3, v3, v33

    .line 1581
    .local v3, "estProduct":J
    invoke-direct {v0, v3, v4, v6, v7}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v24

    if-eqz v24, :cond_1b7

    .line 1582
    add-int/lit8 v5, v5, -0x1

    .line 1583
    move-wide/from16 v33, v3

    .end local v3    # "estProduct":J
    .local v33, "estProduct":J
    int-to-long v3, v2

    and-long v3, v3, v18

    add-long/2addr v3, v11

    long-to-int v2, v3

    .line 1584
    int-to-long v3, v2

    and-long v3, v3, v18

    cmp-long v3, v3, v11

    if-ltz v3, :cond_1b1

    .line 1585
    int-to-long v3, v1

    and-long v3, v3, v18

    sub-long v3, v33, v3

    .line 1586
    .end local v33    # "estProduct":J
    .restart local v3    # "estProduct":J
    move-wide/from16 v35, v6

    move v7, v5

    .end local v5    # "qhat":I
    .end local v6    # "rs":J
    .local v7, "qhat":I
    .local v35, "rs":J
    int-to-long v5, v2

    and-long v5, v5, v18

    shl-long v5, v5, v23

    or-long v5, v5, v20

    .line 1587
    .end local v35    # "rs":J
    .local v5, "rs":J
    invoke-direct {v0, v3, v4, v5, v6}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v23

    if-eqz v23, :cond_1b4

    .line 1588
    add-int/lit8 v7, v7, -0x1

    move v6, v2

    move v3, v7

    goto :goto_1bd

    .line 1584
    .end local v3    # "estProduct":J
    .end local v7    # "qhat":I
    .local v5, "qhat":I
    .restart local v6    # "rs":J
    .restart local v33    # "estProduct":J
    :cond_1b1
    move-wide/from16 v35, v6

    move v7, v5

    .line 1594
    .end local v5    # "qhat":I
    .end local v6    # "rs":J
    .end local v20    # "nl":J
    .end local v33    # "estProduct":J
    .restart local v7    # "qhat":I
    :cond_1b4
    move v6, v2

    move v3, v7

    goto :goto_1bd

    .line 1581
    .end local v7    # "qhat":I
    .restart local v3    # "estProduct":J
    .restart local v5    # "qhat":I
    .restart local v6    # "rs":J
    .restart local v20    # "nl":J
    :cond_1b7
    move-wide/from16 v33, v3

    move-wide/from16 v35, v6

    .line 1594
    .end local v3    # "estProduct":J
    .end local v6    # "rs":J
    .end local v20    # "nl":J
    :cond_1bb
    move v6, v2

    move v3, v5

    .end local v2    # "qrem":I
    .end local v5    # "qhat":I
    .local v3, "qhat":I
    .local v6, "qrem":I
    :goto_1bd
    iget-object v2, v8, Ljava/math/MutableBigInteger;->value:[I

    iget v4, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v4, v28, v4

    aput v16, v2, v4

    .line 1595
    move v2, v1

    .end local v1    # "dl":I
    .local v2, "dl":I
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    iget v4, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v5, v28, v4

    move v7, v2

    move/from16 v20, v6

    move-object/from16 v2, v27

    move/from16 v4, v29

    move/from16 v6, v31

    .end local v27    # "divisor":[I
    .end local v29    # "dlen":I
    .end local v31    # "nh2":I
    .local v2, "divisor":[I
    .local v4, "dlen":I
    .local v6, "nh2":I
    .local v7, "dl":I
    .local v20, "qrem":I
    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsub([I[IIII)I

    move-result v1

    .line 1598
    .local v1, "borrow":I
    add-int v5, v1, v22

    if-le v5, v6, :cond_1ed

    .line 1600
    iget-object v5, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v21, v28, 0x1

    move/from16 v23, v1

    .end local v1    # "borrow":I
    .local v23, "borrow":I
    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v1, v21, v1

    invoke-direct {v0, v2, v5, v1}, Ljava/math/MutableBigInteger;->divadd([I[II)I

    .line 1601
    add-int/lit8 v3, v3, -0x1

    goto :goto_1ef

    .line 1598
    .end local v23    # "borrow":I
    .restart local v1    # "borrow":I
    :cond_1ed
    move/from16 v23, v1

    .line 1605
    .end local v1    # "borrow":I
    .restart local v23    # "borrow":I
    :goto_1ef
    aput v3, v17, v28

    .line 1547
    .end local v3    # "qhat":I
    .end local v6    # "nh2":I
    .end local v14    # "nh":I
    .end local v20    # "qrem":I
    .end local v23    # "borrow":I
    .end local v25    # "skipCorrection":Z
    .end local v32    # "nm":I
    :goto_1f1
    add-int/lit8 v3, v28, 0x1

    move-object/from16 v6, p1

    move v1, v7

    move/from16 v14, v26

    move-object/from16 v7, p2

    .end local v28    # "j":I
    .local v3, "j":I
    goto/16 :goto_e3

    .end local v7    # "dl":I
    .local v1, "dl":I
    :cond_1fc
    move v7, v1

    move/from16 v28, v3

    move/from16 v26, v14

    .line 1609
    .end local v1    # "dl":I
    .end local v3    # "j":I
    .restart local v7    # "dl":I
    const/4 v1, 0x0

    .line 1610
    .local v1, "qhat":I
    const/4 v3, 0x0

    .line 1611
    .local v3, "qrem":I
    const/4 v5, 0x0

    .line 1612
    .local v5, "skipCorrection":Z
    iget-object v6, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v14, v10, -0x1

    move/from16 v24, v1

    .end local v1    # "qhat":I
    .local v24, "qhat":I
    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v1

    aget v6, v6, v14

    .line 1613
    .local v6, "nh":I
    add-int v14, v6, v22

    .line 1614
    .local v14, "nh2":I
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    move-object/from16 v25, v1

    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, v10

    aget v1, v25, v1

    .line 1616
    .local v1, "nm":I
    if-ne v6, v15, :cond_236

    .line 1617
    const/16 v20, -0x1

    .line 1618
    .end local v24    # "qhat":I
    .local v20, "qhat":I
    add-int v3, v6, v1

    .line 1619
    move-object/from16 v27, v2

    .end local v2    # "divisor":[I
    .restart local v27    # "divisor":[I
    add-int v2, v3, v22

    if-ge v2, v14, :cond_229

    move/from16 v2, v26

    goto :goto_22b

    :cond_229
    move/from16 v2, v16

    :goto_22b
    move v5, v2

    move/from16 v29, v4

    move/from16 v21, v6

    move v6, v1

    move/from16 v1, v20

    move/from16 v20, v5

    goto :goto_26d

    .line 1621
    .end local v20    # "qhat":I
    .end local v27    # "divisor":[I
    .restart local v2    # "divisor":[I
    .restart local v24    # "qhat":I
    :cond_236
    move-object/from16 v27, v2

    .end local v2    # "divisor":[I
    .restart local v27    # "divisor":[I
    move/from16 v25, v3

    .end local v3    # "qrem":I
    .local v25, "qrem":I
    int-to-long v2, v6

    shl-long v2, v2, v23

    move-wide/from16 v28, v2

    int-to-long v2, v1

    and-long v2, v2, v18

    or-long v2, v28, v2

    .line 1622
    .local v2, "nChunk":J
    cmp-long v20, v2, v20

    if-ltz v20, :cond_25a

    .line 1623
    move/from16 v29, v4

    move/from16 v20, v5

    .end local v4    # "dlen":I
    .end local v5    # "skipCorrection":Z
    .local v20, "skipCorrection":Z
    .restart local v29    # "dlen":I
    div-long v4, v2, v11

    long-to-int v4, v4

    .line 1624
    .end local v24    # "qhat":I
    .local v4, "qhat":I
    move/from16 v21, v6

    .end local v6    # "nh":I
    .local v21, "nh":I
    int-to-long v5, v4

    mul-long/2addr v5, v11

    sub-long v5, v2, v5

    long-to-int v5, v5

    move v6, v1

    move v1, v4

    move v3, v5

    .end local v25    # "qrem":I
    .local v5, "qrem":I
    goto :goto_26d

    .line 1626
    .end local v20    # "skipCorrection":Z
    .end local v21    # "nh":I
    .end local v29    # "dlen":I
    .local v4, "dlen":I
    .local v5, "skipCorrection":Z
    .restart local v6    # "nh":I
    .restart local v24    # "qhat":I
    .restart local v25    # "qrem":I
    :cond_25a
    move/from16 v29, v4

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v4    # "dlen":I
    .end local v5    # "skipCorrection":Z
    .end local v6    # "nh":I
    .restart local v20    # "skipCorrection":Z
    .restart local v21    # "nh":I
    .restart local v29    # "dlen":I
    invoke-static {v2, v3, v15}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v4

    .line 1627
    .local v4, "tmp":J
    move v6, v1

    move-wide/from16 v30, v2

    .end local v1    # "nm":I
    .end local v2    # "nChunk":J
    .local v6, "nm":I
    .local v30, "nChunk":J
    and-long v1, v4, v18

    long-to-int v1, v1

    .line 1628
    .end local v24    # "qhat":I
    .local v1, "qhat":I
    ushr-long v2, v4, v23

    long-to-int v3, v2

    .line 1631
    .end local v4    # "tmp":J
    .end local v25    # "qrem":I
    .end local v30    # "nChunk":J
    .restart local v3    # "qrem":I
    :goto_26d
    if-eqz v1, :cond_31e

    .line 1632
    if-nez v20, :cond_2c4

    .line 1633
    iget-object v2, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v4, v10, 0x1

    iget v5, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v4, v5

    aget v2, v2, v4

    int-to-long v4, v2

    and-long v4, v4, v18

    .line 1634
    .local v4, "nl":J
    move-wide/from16 v24, v4

    .end local v4    # "nl":J
    .local v24, "nl":J
    int-to-long v4, v3

    and-long v4, v4, v18

    shl-long v4, v4, v23

    or-long v4, v4, v24

    .line 1635
    .local v4, "rs":J
    move/from16 v28, v9

    move/from16 v30, v10

    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .local v28, "nlen":I
    .local v30, "limit":I
    int-to-long v9, v7

    and-long v9, v9, v18

    move-wide/from16 v31, v9

    int-to-long v9, v1

    and-long v9, v9, v18

    mul-long v9, v9, v31

    .line 1637
    .local v9, "estProduct":J
    invoke-direct {v0, v9, v10, v4, v5}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v2

    if-eqz v2, :cond_2c8

    .line 1638
    add-int/lit8 v1, v1, -0x1

    .line 1639
    move/from16 v31, v1

    .end local v1    # "qhat":I
    .local v31, "qhat":I
    int-to-long v1, v3

    and-long v1, v1, v18

    add-long/2addr v1, v11

    long-to-int v1, v1

    .line 1640
    .end local v3    # "qrem":I
    .local v1, "qrem":I
    int-to-long v2, v1

    and-long v2, v2, v18

    cmp-long v2, v2, v11

    if-ltz v2, :cond_2c0

    .line 1641
    int-to-long v2, v7

    and-long v2, v2, v18

    sub-long/2addr v9, v2

    .line 1642
    int-to-long v2, v1

    and-long v2, v2, v18

    shl-long v2, v2, v23

    or-long v2, v2, v24

    .line 1643
    .end local v4    # "rs":J
    .local v2, "rs":J
    invoke-direct {v0, v9, v10, v2, v3}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v4

    if-eqz v4, :cond_2c0

    .line 1644
    add-int/lit8 v4, v31, -0x1

    move v9, v1

    move v3, v4

    .end local v31    # "qhat":I
    .local v4, "qhat":I
    goto :goto_2ca

    .line 1652
    .end local v2    # "rs":J
    .end local v4    # "qhat":I
    .end local v9    # "estProduct":J
    .end local v24    # "nl":J
    .restart local v31    # "qhat":I
    :cond_2c0
    move v9, v1

    move/from16 v3, v31

    goto :goto_2ca

    .line 1632
    .end local v28    # "nlen":I
    .end local v30    # "limit":I
    .end local v31    # "qhat":I
    .local v1, "qhat":I
    .restart local v3    # "qrem":I
    .local v9, "nlen":I
    .restart local v10    # "limit":I
    :cond_2c4
    move/from16 v28, v9

    move/from16 v30, v10

    .line 1652
    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .restart local v28    # "nlen":I
    .restart local v30    # "limit":I
    :cond_2c8
    move v9, v3

    move v3, v1

    .end local v1    # "qhat":I
    .local v3, "qhat":I
    .local v9, "qrem":I
    :goto_2ca
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v10, v30, -0x1

    iget v2, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v2

    aput v16, v1, v10

    .line 1653
    if-eqz p3, :cond_2e8

    .line 1654
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v10, v30, -0x1

    iget v2, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v5, v10, v2

    move-object/from16 v2, v27

    move/from16 v4, v29

    .end local v27    # "divisor":[I
    .end local v29    # "dlen":I
    .local v2, "divisor":[I
    .local v4, "dlen":I
    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsub([I[IIII)I

    move-result v1

    move-object/from16 v0, p0

    .local v1, "borrow":I
    goto :goto_2fa

    .line 1656
    .end local v1    # "borrow":I
    .end local v2    # "divisor":[I
    .end local v4    # "dlen":I
    .restart local v27    # "divisor":[I
    .restart local v29    # "dlen":I
    :cond_2e8
    move-object/from16 v2, v27

    move/from16 v4, v29

    .end local v27    # "divisor":[I
    .end local v29    # "dlen":I
    .restart local v2    # "divisor":[I
    .restart local v4    # "dlen":I
    iget-object v1, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v10, v30, -0x1

    iget v0, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int v5, v10, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsubBorrow([I[IIII)I

    move-result v1

    .line 1659
    .restart local v1    # "borrow":I
    :goto_2fa
    add-int v5, v1, v22

    if-le v5, v14, :cond_315

    .line 1661
    if-eqz p3, :cond_30f

    .line 1662
    iget-object v5, v8, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v10, v30, -0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v1

    .end local v1    # "borrow":I
    .local v16, "borrow":I
    iget v1, v8, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v1

    invoke-direct {v0, v2, v5, v10}, Ljava/math/MutableBigInteger;->divadd([I[II)I

    goto :goto_311

    .line 1661
    .end local v16    # "borrow":I
    .restart local v1    # "borrow":I
    :cond_30f
    move/from16 v16, v1

    .line 1663
    .end local v1    # "borrow":I
    .restart local v16    # "borrow":I
    :goto_311
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_318

    .line 1659
    .end local v16    # "borrow":I
    .restart local v1    # "borrow":I
    :cond_315
    move/from16 v16, v1

    .end local v1    # "borrow":I
    .restart local v16    # "borrow":I
    move v1, v3

    .line 1667
    .end local v3    # "qhat":I
    .local v1, "qhat":I
    :goto_318
    add-int/lit8 v10, v30, -0x1

    aput v1, v17, v10

    move v3, v9

    goto :goto_326

    .line 1631
    .end local v2    # "divisor":[I
    .end local v4    # "dlen":I
    .end local v16    # "borrow":I
    .end local v28    # "nlen":I
    .end local v30    # "limit":I
    .local v3, "qrem":I
    .local v9, "nlen":I
    .restart local v10    # "limit":I
    .restart local v27    # "divisor":[I
    .restart local v29    # "dlen":I
    :cond_31e
    move/from16 v28, v9

    move/from16 v30, v10

    move-object/from16 v2, v27

    move/from16 v4, v29

    .line 1671
    .end local v9    # "nlen":I
    .end local v10    # "limit":I
    .end local v27    # "divisor":[I
    .end local v29    # "dlen":I
    .restart local v2    # "divisor":[I
    .restart local v4    # "dlen":I
    .restart local v28    # "nlen":I
    .restart local v30    # "limit":I
    :goto_326
    if-eqz p3, :cond_330

    .line 1673
    if-lez v13, :cond_32d

    .line 1674
    invoke-virtual {v8, v13}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1675
    :cond_32d
    invoke-virtual {v8}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1677
    :cond_330
    invoke-virtual/range {p2 .. p2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1678
    if-eqz p3, :cond_337

    move-object v5, v8

    goto :goto_338

    :cond_337
    const/4 v5, 0x0

    :goto_338
    return-object v5
.end method

.method private final blacklist ensureCapacity(I)V
    .registers 3
    .param p1, "len"    # I

    .line 415
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    if-ge v0, p1, :cond_e

    .line 416
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 418
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 420
    :cond_e
    return-void
.end method

.method static blacklist fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;
    .registers 11
    .param p0, "c"    # Ljava/math/MutableBigInteger;
    .param p1, "p"    # Ljava/math/MutableBigInteger;
    .param p2, "k"    # I

    .line 2264
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2266
    .local v0, "temp":Ljava/math/MutableBigInteger;
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/math/MutableBigInteger;->inverseMod32(I)I

    move-result v1

    neg-int v1, v1

    .line 2268
    .local v1, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    shr-int/lit8 v4, p2, 0x5

    .local v4, "numWords":I
    :goto_18
    if-ge v2, v4, :cond_33

    .line 2270
    iget-object v5, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v6, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v7, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    aget v5, v5, v6

    mul-int/2addr v5, v1

    .line 2272
    .local v5, "v":I
    invoke-virtual {p1, v5, v0}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    .line 2273
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2275
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v6, v3

    iput v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 2268
    .end local v5    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2277
    .end local v2    # "i":I
    .end local v4    # "numWords":I
    :cond_33
    and-int/lit8 v2, p2, 0x1f

    .line 2278
    .local v2, "numBits":I
    if-eqz v2, :cond_50

    .line 2280
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aget v4, v4, v5

    mul-int/2addr v4, v1

    .line 2281
    .local v4, "v":I
    shl-int v5, v3, v2

    sub-int/2addr v5, v3

    and-int v3, v4, v5

    .line 2283
    .end local v4    # "v":I
    .local v3, "v":I
    invoke-virtual {p1, v3, v0}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    .line 2284
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2286
    invoke-virtual {p0, v2}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2290
    .end local v3    # "v":I
    :cond_50
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v3

    if-ltz v3, :cond_5f

    .line 2291
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3}, Ljava/math/MutableBigInteger;-><init>()V

    invoke-virtual {p0, p1, v3}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object p0

    .line 2293
    :cond_5f
    return-object p0
.end method

.method private blacklist getBlock(III)Ljava/math/MutableBigInteger;
    .registers 10
    .param p1, "index"    # I
    .param p2, "numBlocks"    # I
    .param p3, "blockLength"    # I

    .line 1410
    mul-int v0, p1, p3

    .line 1411
    .local v0, "blockStart":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, v1, :cond_c

    .line 1412
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v1

    .line 1416
    :cond_c
    add-int/lit8 v1, p2, -0x1

    if-ne p1, v1, :cond_13

    .line 1417
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .local v1, "blockEnd":I
    goto :goto_16

    .line 1419
    .end local v1    # "blockEnd":I
    :cond_13
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p3

    .line 1421
    .restart local v1    # "blockEnd":I
    :goto_16
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-le v1, v2, :cond_20

    .line 1422
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v2

    .line 1425
    :cond_20
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    .line 1426
    .local v2, "newVal":[I
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    return-object v3
.end method

.method private final blacklist getInt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 373
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method private final blacklist getLong(I)J
    .registers 6
    .param p1, "index"    # I

    .line 382
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getLower(I)Ljava/math/BigInteger;
    .registers 9
    .param p1, "n"    # I

    .line 713
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 714
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 715
    :cond_9
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_13

    .line 716
    invoke-virtual {p0, v1}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 719
    :cond_13
    move v0, p1

    .line 720
    .local v0, "len":I
    :goto_14
    if-lez v0, :cond_25

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-nez v2, :cond_25

    .line 721
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 722
    :cond_25
    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 723
    .local v1, "sign":I
    :goto_29
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method private final blacklist getLowestSetBit()I
    .registers 5

    .line 356
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 357
    return v1

    .line 359
    :cond_6
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_a
    if-lez v0, :cond_18

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    if-nez v2, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 361
    :cond_18
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 362
    .local v2, "b":I
    if-nez v2, :cond_22

    .line 363
    return v1

    .line 364
    :cond_22
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v1, v3

    return v1
.end method

.method private blacklist getMagnitudeArray()[I
    .registers 5

    .line 162
    iget v0, p0, Ljava/math/MutableBigInteger;->offset:I

    if-gtz v0, :cond_b

    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eq v0, v1, :cond_25

    .line 164
    :cond_b
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .line 165
    .local v0, "tmp":[I
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 166
    iput v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 167
    array-length v1, v0

    iput v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 168
    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 170
    .end local v0    # "tmp":[I
    :cond_25
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    return-object v0
.end method

.method static blacklist inverseMod32(I)I
    .registers 3
    .param p0, "val"    # I

    .line 2154
    move v0, p0

    .line 2155
    .local v0, "t":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2156
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2157
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2158
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2159
    return v0
.end method

.method static blacklist inverseMod64(J)J
    .registers 8
    .param p0, "val"    # J

    .line 2167
    move-wide v0, p0

    .line 2168
    .local v0, "t":J
    mul-long v2, p0, v0

    const-wide/16 v4, 0x2

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2169
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2170
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2171
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2172
    mul-long v2, p0, v0

    sub-long/2addr v4, v2

    mul-long/2addr v0, v4

    .line 2173
    nop

    .line 2174
    return-wide v0
.end method

.method private blacklist keepLower(I)V
    .registers 4
    .param p1, "n"    # I

    .line 731
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, p1, :cond_e

    .line 732
    iget v0, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 733
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 735
    :cond_e
    return-void
.end method

.method private blacklist modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 15
    .param p1, "mod"    # Ljava/math/MutableBigInteger;

    .line 2195
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2196
    .local v0, "p":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2197
    .local v1, "f":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2198
    .local v2, "g":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/SignedMutableBigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/math/SignedMutableBigInteger;-><init>(I)V

    .line 2199
    .local v3, "c":Ljava/math/SignedMutableBigInteger;
    new-instance v5, Ljava/math/SignedMutableBigInteger;

    invoke-direct {v5}, Ljava/math/SignedMutableBigInteger;-><init>()V

    .line 2200
    .local v5, "d":Ljava/math/SignedMutableBigInteger;
    const/4 v6, 0x0

    .line 2201
    .local v6, "temp":Ljava/math/MutableBigInteger;
    const/4 v7, 0x0

    .line 2203
    .local v7, "sTemp":Ljava/math/SignedMutableBigInteger;
    const/4 v8, 0x0

    .line 2205
    .local v8, "k":I
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2206
    invoke-direct {v1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v9

    .line 2207
    .local v9, "trailingZeros":I
    invoke-virtual {v1, v9}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2208
    invoke-virtual {v5, v9}, Ljava/math/SignedMutableBigInteger;->leftShift(I)V

    .line 2209
    move v8, v9

    .line 2213
    .end local v9    # "trailingZeros":I
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v9

    if-nez v9, :cond_80

    .line 2215
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v9

    if-nez v9, :cond_78

    .line 2219
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v9

    if-gez v9, :cond_46

    .line 2220
    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 2221
    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    .line 2225
    :cond_46
    iget-object v9, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v1, Ljava/math/MutableBigInteger;->offset:I

    iget v11, v1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    aget v9, v9, v10

    iget-object v10, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v2, Ljava/math/MutableBigInteger;->offset:I

    iget v12, v2, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v11, v12

    sub-int/2addr v11, v4

    aget v10, v10, v11

    xor-int/2addr v9, v10

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_66

    .line 2227
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 2228
    invoke-virtual {v3, v5}, Ljava/math/SignedMutableBigInteger;->signedSubtract(Ljava/math/SignedMutableBigInteger;)V

    goto :goto_6c

    .line 2230
    :cond_66
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2231
    invoke-virtual {v3, v5}, Ljava/math/SignedMutableBigInteger;->signedAdd(Ljava/math/SignedMutableBigInteger;)V

    .line 2235
    :goto_6c
    invoke-direct {v1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v9

    .line 2236
    .restart local v9    # "trailingZeros":I
    invoke-virtual {v1, v9}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2237
    invoke-virtual {v5, v9}, Ljava/math/SignedMutableBigInteger;->leftShift(I)V

    .line 2238
    add-int/2addr v8, v9

    .line 2239
    .end local v9    # "trailingZeros":I
    goto :goto_2e

    .line 2216
    :cond_78
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v9, "BigInteger not invertible."

    invoke-direct {v4, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2241
    :cond_80
    invoke-virtual {v3, v0}, Ljava/math/SignedMutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v4

    if-ltz v4, :cond_92

    .line 2242
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    invoke-virtual {v3, v0, v4}, Ljava/math/SignedMutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2247
    .local v4, "remainder":Ljava/math/MutableBigInteger;
    invoke-virtual {v3, v4}, Ljava/math/SignedMutableBigInteger;->copyValue(Ljava/math/MutableBigInteger;)V

    .line 2250
    .end local v4    # "remainder":Ljava/math/MutableBigInteger;
    :cond_92
    iget v4, v3, Ljava/math/SignedMutableBigInteger;->sign:I

    if-gez v4, :cond_99

    .line 2251
    invoke-virtual {v3, v0}, Ljava/math/SignedMutableBigInteger;->signedAdd(Ljava/math/MutableBigInteger;)V

    .line 2254
    :cond_99
    invoke-static {v3, v0, v8}, Ljava/math/MutableBigInteger;->fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v4

    return-object v4
.end method

.method static blacklist modInverseBP2(Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;
    .registers 4
    .param p0, "mod"    # Ljava/math/MutableBigInteger;
    .param p1, "k"    # I

    .line 2182
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    invoke-static {v0, v1, p1}, Ljava/math/MutableBigInteger;->fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist mulsub([I[IIII)I
    .registers 26
    .param p1, "q"    # [I
    .param p2, "a"    # [I
    .param p3, "x"    # I
    .param p4, "len"    # I
    .param p5, "offset"    # I

    .line 643
    move/from16 v0, p3

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 644
    .local v1, "xLong":J
    const-wide/16 v5, 0x0

    .line 645
    .local v5, "carry":J
    add-int v7, p5, p4

    .line 647
    .end local p5    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v8, p4, -0x1

    .local v8, "j":I
    :goto_f
    if-ltz v8, :cond_3d

    .line 648
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-long/2addr v9, v5

    .line 649
    .local v9, "product":J
    aget v11, p1, v7

    int-to-long v11, v11

    sub-long/2addr v11, v9

    .line 650
    .local v11, "difference":J
    add-int/lit8 v13, v7, -0x1

    .end local v7    # "offset":I
    .local v13, "offset":I
    long-to-int v14, v11

    aput v14, p1, v7

    .line 651
    const/16 v7, 0x20

    ushr-long v14, v9, v7

    .line 652
    and-long v16, v11, v3

    long-to-int v7, v9

    not-int v7, v7

    move-wide/from16 v18, v3

    int-to-long v3, v7

    and-long v3, v3, v18

    cmp-long v3, v16, v3

    if-lez v3, :cond_33

    .line 653
    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    int-to-long v3, v3

    add-long v5, v14, v3

    .line 647
    .end local v9    # "product":J
    .end local v11    # "difference":J
    add-int/lit8 v8, v8, -0x1

    move v7, v13

    move-wide/from16 v3, v18

    goto :goto_f

    .line 655
    .end local v8    # "j":I
    .end local v13    # "offset":I
    .restart local v7    # "offset":I
    :cond_3d
    long-to-int v3, v5

    return v3
.end method

.method private blacklist mulsubBorrow([I[IIII)I
    .registers 26
    .param p1, "q"    # [I
    .param p2, "a"    # [I
    .param p3, "x"    # I
    .param p4, "len"    # I
    .param p5, "offset"    # I

    .line 663
    move/from16 v0, p3

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 664
    .local v1, "xLong":J
    const-wide/16 v5, 0x0

    .line 665
    .local v5, "carry":J
    add-int v7, p5, p4

    .line 666
    .end local p5    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v8, p4, -0x1

    .local v8, "j":I
    :goto_f
    if-ltz v8, :cond_3a

    .line 667
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-long/2addr v9, v5

    .line 668
    .local v9, "product":J
    add-int/lit8 v11, v7, -0x1

    .end local v7    # "offset":I
    .local v11, "offset":I
    aget v7, p1, v7

    int-to-long v12, v7

    sub-long/2addr v12, v9

    .line 669
    .local v12, "difference":J
    const/16 v7, 0x20

    ushr-long v14, v9, v7

    .line 670
    and-long v16, v12, v3

    long-to-int v7, v9

    not-int v7, v7

    move-wide/from16 v18, v3

    int-to-long v3, v7

    and-long v3, v3, v18

    cmp-long v3, v16, v3

    if-lez v3, :cond_30

    .line 671
    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    int-to-long v3, v3

    add-long v5, v14, v3

    .line 666
    .end local v9    # "product":J
    .end local v12    # "difference":J
    add-int/lit8 v8, v8, -0x1

    move v7, v11

    move-wide/from16 v3, v18

    goto :goto_f

    .line 673
    .end local v8    # "j":I
    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_3a
    long-to-int v3, v5

    return v3
.end method

.method private blacklist mulsubLong([IIIII)I
    .registers 28
    .param p1, "q"    # [I
    .param p2, "dh"    # I
    .param p3, "dl"    # I
    .param p4, "x"    # I
    .param p5, "offset"    # I

    .line 1815
    move/from16 v0, p4

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1816
    .local v1, "xLong":J
    add-int/lit8 v5, p5, 0x2

    .line 1817
    .end local p5    # "offset":I
    .local v5, "offset":I
    move/from16 v6, p3

    int-to-long v7, v6

    and-long/2addr v7, v3

    mul-long/2addr v7, v1

    .line 1818
    .local v7, "product":J
    aget v9, p1, v5

    int-to-long v9, v9

    sub-long/2addr v9, v7

    .line 1819
    .local v9, "difference":J
    add-int/lit8 v11, v5, -0x1

    .end local v5    # "offset":I
    .local v11, "offset":I
    long-to-int v12, v9

    aput v12, p1, v5

    .line 1820
    const/16 v5, 0x20

    ushr-long v12, v7, v5

    .line 1821
    and-long v14, v9, v3

    move-wide/from16 v16, v3

    long-to-int v3, v7

    not-int v3, v3

    int-to-long v3, v3

    and-long v3, v3, v16

    cmp-long v3, v14, v3

    if-lez v3, :cond_2c

    .line 1822
    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    move/from16 p5, v5

    int-to-long v4, v3

    add-long/2addr v12, v4

    .line 1823
    .local v12, "carry":J
    move/from16 v3, p2

    int-to-long v4, v3

    and-long v4, v4, v16

    mul-long/2addr v4, v1

    add-long/2addr v4, v12

    .line 1824
    .end local v7    # "product":J
    .local v4, "product":J
    aget v7, p1, v11

    int-to-long v7, v7

    sub-long/2addr v7, v4

    .line 1825
    .end local v9    # "difference":J
    .local v7, "difference":J
    add-int/lit8 v9, v11, -0x1

    .end local v11    # "offset":I
    .local v9, "offset":I
    long-to-int v10, v7

    aput v10, p1, v11

    .line 1826
    ushr-long v10, v4, p5

    .line 1827
    and-long v18, v7, v16

    long-to-int v14, v4

    not-int v14, v14

    move-wide/from16 v20, v1

    .end local v1    # "xLong":J
    .local v20, "xLong":J
    int-to-long v0, v14

    and-long v0, v0, v16

    cmp-long v0, v18, v0

    if-lez v0, :cond_52

    .line 1828
    const/4 v15, 0x1

    goto :goto_53

    :cond_52
    const/4 v15, 0x0

    :goto_53
    int-to-long v0, v15

    add-long/2addr v10, v0

    .line 1829
    .end local v12    # "carry":J
    .local v10, "carry":J
    long-to-int v0, v10

    return v0
.end method

.method private blacklist ones(I)V
    .registers 4
    .param p1, "n"    # I

    .line 150
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    if-le p1, v0, :cond_9

    .line 151
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 152
    :cond_9
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 154
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 155
    return-void
.end method

.method private final blacklist primitiveLeftShift(I)V
    .registers 10
    .param p1, "n"    # I

    .line 698
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 699
    .local v0, "val":[I
    rsub-int/lit8 v1, p1, 0x20

    .line 700
    .local v1, "n2":I
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v2, "i":I
    aget v3, v0, v2

    .local v3, "c":I
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    .local v4, "m":I
    :goto_d
    if-ge v2, v4, :cond_1e

    .line 701
    move v5, v3

    .line 702
    .local v5, "b":I
    add-int/lit8 v6, v2, 0x1

    aget v3, v0, v6

    .line 703
    shl-int v6, v5, p1

    ushr-int v7, v3, v1

    or-int/2addr v6, v7

    aput v6, v0, v2

    .line 700
    .end local v5    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 705
    .end local v2    # "i":I
    .end local v3    # "c":I
    .end local v4    # "m":I
    :cond_1e
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    shl-int/2addr v3, p1

    aput v3, v0, v2

    .line 706
    return-void
.end method

.method private final blacklist primitiveRightShift(I)V
    .registers 9
    .param p1, "n"    # I

    .line 682
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 683
    .local v0, "val":[I
    rsub-int/lit8 v1, p1, 0x20

    .line 684
    .local v1, "n2":I
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    aget v3, v0, v2

    .local v3, "c":I
    :goto_d
    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    if-le v2, v4, :cond_20

    .line 685
    move v4, v3

    .line 686
    .local v4, "b":I
    add-int/lit8 v5, v2, -0x1

    aget v3, v0, v5

    .line 687
    shl-int v5, v3, v1

    ushr-int v6, v4, p1

    or-int/2addr v5, v6

    aput v5, v0, v2

    .line 684
    .end local v4    # "b":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 689
    .end local v2    # "i":I
    .end local v3    # "c":I
    :cond_20
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v3, v0, v2

    ushr-int/2addr v3, p1

    aput v3, v0, v2

    .line 690
    return-void
.end method

.method private blacklist toLong()J
    .registers 9

    .line 178
    nop

    .line 179
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_8

    .line 180
    const-wide/16 v0, 0x0

    return-wide v0

    .line 181
    :cond_8
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 182
    .local v0, "d":J
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    const/16 v4, 0x20

    shl-long v4, v0, v4

    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    int-to-long v6, v6

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    goto :goto_2b

    :cond_2a
    move-wide v2, v0

    :goto_2b
    return-wide v2
.end method

.method private blacklist unsignedLongCompare(JJ)Z
    .registers 9
    .param p1, "one"    # J
    .param p3, "two"    # J

    .line 1837
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p1, v0

    add-long/2addr v0, p3

    cmp-long v0, v2, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method blacklist add(Ljava/math/MutableBigInteger;)V
    .registers 21
    .param p1, "addend"    # Ljava/math/MutableBigInteger;

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 744
    .local v2, "x":I
    iget v3, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 745
    .local v3, "y":I
    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    iget v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    if-le v4, v5, :cond_11

    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_13

    :cond_11
    iget v4, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 746
    .local v4, "resultLen":I
    :goto_13
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v5

    if-ge v5, v4, :cond_1b

    new-array v5, v4, [I

    goto :goto_1d

    :cond_1b
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 748
    .local v5, "result":[I
    :goto_1d
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 750
    .local v6, "rstart":I
    const-wide/16 v8, 0x0

    .line 753
    .local v8, "carry":J
    :goto_22
    const-wide v11, 0xffffffffL

    if-lez v2, :cond_51

    if-lez v3, :cond_51

    .line 754
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 755
    iget-object v13, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v2

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v11

    iget-object v15, v1, Ljava/math/MutableBigInteger;->value:[I

    const/16 v16, 0x20

    iget v10, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v3

    aget v10, v15, v10

    move-wide/from16 v17, v11

    int-to-long v11, v10

    and-long v10, v11, v17

    add-long/2addr v13, v10

    add-long/2addr v13, v8

    .line 757
    .local v13, "sum":J
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "rstart":I
    .local v10, "rstart":I
    long-to-int v11, v13

    aput v11, v5, v6

    .line 758
    ushr-long v8, v13, v16

    move v6, v10

    goto :goto_22

    .line 753
    .end local v10    # "rstart":I
    .end local v13    # "sum":J
    .restart local v6    # "rstart":I
    :cond_51
    move-wide/from16 v17, v11

    const/16 v16, 0x20

    .line 762
    :goto_55
    const-wide/16 v10, 0x0

    if-lez v2, :cond_7d

    .line 763
    add-int/lit8 v2, v2, -0x1

    .line 764
    cmp-long v10, v8, v10

    if-nez v10, :cond_69

    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    if-ne v5, v10, :cond_69

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v2

    if-ne v6, v10, :cond_69

    .line 765
    return-void

    .line 766
    :cond_69
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v11, v2

    aget v10, v10, v11

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v10, v8

    .line 767
    .local v10, "sum":J
    add-int/lit8 v12, v6, -0x1

    .end local v6    # "rstart":I
    .local v12, "rstart":I
    long-to-int v13, v10

    aput v13, v5, v6

    .line 768
    ushr-long v8, v10, v16

    move v6, v12

    goto :goto_55

    .line 770
    .end local v10    # "sum":J
    .end local v12    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_7d
    :goto_7d
    if-lez v3, :cond_95

    .line 771
    add-int/lit8 v3, v3, -0x1

    .line 772
    iget-object v12, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v13, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v3

    aget v12, v12, v13

    int-to-long v12, v12

    and-long v12, v12, v17

    add-long/2addr v12, v8

    .line 773
    .local v12, "sum":J
    add-int/lit8 v14, v6, -0x1

    .end local v6    # "rstart":I
    .local v14, "rstart":I
    long-to-int v15, v12

    aput v15, v5, v6

    .line 774
    ushr-long v8, v12, v16

    move v6, v14

    goto :goto_7d

    .line 777
    .end local v12    # "sum":J
    .end local v14    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_95
    cmp-long v10, v8, v10

    if-lez v10, :cond_ae

    .line 778
    add-int/lit8 v4, v4, 0x1

    .line 779
    array-length v10, v5

    if-ge v10, v4, :cond_a9

    .line 780
    new-array v10, v4, [I

    .line 783
    .local v10, "temp":[I
    array-length v11, v5

    const/4 v12, 0x0

    invoke-static {v5, v12, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    aput v7, v10, v12

    .line 785
    move-object v5, v10

    .line 786
    .end local v10    # "temp":[I
    goto :goto_ae

    .line 787
    :cond_a9
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "rstart":I
    .local v10, "rstart":I
    aput v7, v5, v6

    move v6, v10

    .line 791
    .end local v10    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_ae
    :goto_ae
    iput-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 792
    iput v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 793
    array-length v7, v5

    sub-int/2addr v7, v4

    iput v7, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 794
    return-void
.end method

.method blacklist addDisjoint(Ljava/math/MutableBigInteger;I)V
    .registers 13
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 868
    invoke-virtual {p1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    return-void

    .line 871
    :cond_7
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 872
    .local v0, "x":I
    iget v1, p1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, p2

    .line 873
    .local v1, "y":I
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-le v2, v1, :cond_13

    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_14

    :cond_13
    move v2, v1

    .line 875
    .local v2, "resultLen":I
    :goto_14
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v3, v2, :cond_1d

    .line 876
    new-array v3, v2, [I

    .local v3, "result":[I
    goto :goto_2c

    .line 878
    .end local v3    # "result":[I
    :cond_1d
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 879
    .restart local v3    # "result":[I
    iget-object v5, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v6, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v7, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v6, v7

    iget-object v7, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v7, v7

    invoke-static {v5, v6, v7, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 882
    :goto_2c
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    .line 885
    .local v5, "rstart":I
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, v0

    invoke-static {v6, v7, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    sub-int/2addr v1, v0

    .line 887
    sub-int/2addr v5, v0

    .line 889
    iget-object v6, p1, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v6

    iget v7, p1, Ljava/math/MutableBigInteger;->offset:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 890
    .local v6, "len":I
    iget-object v7, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v8, p1, Ljava/math/MutableBigInteger;->offset:I

    add-int/lit8 v9, v5, 0x1

    sub-int/2addr v9, v1

    invoke-static {v7, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    add-int/lit8 v7, v5, 0x1

    sub-int/2addr v7, v1

    add-int/2addr v7, v6

    .local v7, "i":I
    :goto_53
    add-int/lit8 v8, v5, 0x1

    if-ge v7, v8, :cond_5c

    .line 894
    aput v4, v3, v7

    .line 893
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 896
    .end local v7    # "i":I
    :cond_5c
    iput-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 897
    iput v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 898
    array-length v4, v3

    sub-int/2addr v4, v2

    iput v4, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 899
    return-void
.end method

.method blacklist addLower(Ljava/math/MutableBigInteger;I)V
    .registers 6
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 905
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 906
    .local v0, "a":Ljava/math/MutableBigInteger;
    iget v1, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, v2

    if-lt v1, p2, :cond_16

    .line 907
    iget v1, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    iput v1, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 908
    iput p2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 910
    :cond_16
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 911
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 912
    return-void
.end method

.method blacklist addShifted(Ljava/math/MutableBigInteger;I)V
    .registers 24
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 802
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 803
    return-void

    .line 806
    :cond_b
    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 807
    .local v2, "x":I
    iget v3, v1, Ljava/math/MutableBigInteger;->intLen:I

    add-int v3, v3, p2

    .line 808
    .local v3, "y":I
    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    if-le v4, v3, :cond_18

    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_19

    :cond_18
    move v4, v3

    .line 809
    .local v4, "resultLen":I
    :goto_19
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v5

    if-ge v5, v4, :cond_21

    new-array v5, v4, [I

    goto :goto_23

    :cond_21
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 811
    .local v5, "result":[I
    :goto_23
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 813
    .local v6, "rstart":I
    const-wide/16 v8, 0x0

    .line 816
    .local v8, "carry":J
    :goto_28
    const/16 v10, 0x20

    const/4 v11, 0x0

    const-wide v12, 0xffffffffL

    if-lez v2, :cond_60

    if-lez v3, :cond_60

    .line 817
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 818
    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v3

    iget-object v15, v1, Ljava/math/MutableBigInteger;->value:[I

    array-length v15, v15

    if-ge v14, v15, :cond_47

    iget-object v11, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v3

    aget v11, v11, v14

    .line 819
    .local v11, "bval":I
    :cond_47
    iget-object v14, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v2

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    move-wide/from16 v16, v12

    int-to-long v12, v11

    and-long v12, v12, v16

    add-long/2addr v14, v12

    add-long/2addr v14, v8

    .line 821
    .local v14, "sum":J
    add-int/lit8 v12, v6, -0x1

    .end local v6    # "rstart":I
    .local v12, "rstart":I
    long-to-int v13, v14

    aput v13, v5, v6

    .line 822
    ushr-long v8, v14, v10

    .line 823
    .end local v11    # "bval":I
    move v6, v12

    goto :goto_28

    .line 816
    .end local v12    # "rstart":I
    .end local v14    # "sum":J
    .restart local v6    # "rstart":I
    :cond_60
    move-wide/from16 v16, v12

    .line 826
    :goto_62
    const-wide/16 v12, 0x0

    if-lez v2, :cond_8a

    .line 827
    add-int/lit8 v2, v2, -0x1

    .line 828
    cmp-long v12, v8, v12

    if-nez v12, :cond_76

    iget-object v12, v0, Ljava/math/MutableBigInteger;->value:[I

    if-ne v5, v12, :cond_76

    iget v12, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v2

    if-ne v6, v12, :cond_76

    .line 829
    return-void

    .line 831
    :cond_76
    iget-object v12, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v13, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v2

    aget v12, v12, v13

    int-to-long v12, v12

    and-long v12, v12, v16

    add-long/2addr v12, v8

    .line 832
    .local v12, "sum":J
    add-int/lit8 v14, v6, -0x1

    .end local v6    # "rstart":I
    .local v14, "rstart":I
    long-to-int v15, v12

    aput v15, v5, v6

    .line 833
    ushr-long v8, v12, v10

    move v6, v14

    goto :goto_62

    .line 835
    .end local v12    # "sum":J
    .end local v14    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_8a
    :goto_8a
    if-lez v3, :cond_b4

    .line 836
    add-int/lit8 v3, v3, -0x1

    .line 837
    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v3

    iget-object v15, v1, Ljava/math/MutableBigInteger;->value:[I

    array-length v15, v15

    if-ge v14, v15, :cond_9e

    iget-object v14, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v3

    aget v14, v14, v15

    goto :goto_9f

    :cond_9e
    move v14, v11

    .line 838
    .local v14, "bval":I
    :goto_9f
    move-wide/from16 v18, v12

    int-to-long v12, v14

    and-long v12, v12, v16

    add-long/2addr v12, v8

    .line 839
    .restart local v12    # "sum":J
    add-int/lit8 v15, v6, -0x1

    move/from16 v20, v10

    .end local v6    # "rstart":I
    .local v15, "rstart":I
    long-to-int v10, v12

    aput v10, v5, v6

    .line 840
    ushr-long v8, v12, v20

    .line 841
    .end local v14    # "bval":I
    move v6, v15

    move-wide/from16 v12, v18

    move/from16 v10, v20

    goto :goto_8a

    .line 843
    .end local v12    # "sum":J
    .end local v15    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_b4
    move-wide/from16 v18, v12

    cmp-long v10, v8, v18

    if-lez v10, :cond_ce

    .line 844
    add-int/lit8 v4, v4, 0x1

    .line 845
    array-length v10, v5

    if-ge v10, v4, :cond_c9

    .line 846
    new-array v10, v4, [I

    .line 849
    .local v10, "temp":[I
    array-length v12, v5

    invoke-static {v5, v11, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    aput v7, v10, v11

    .line 851
    move-object v5, v10

    .line 852
    .end local v10    # "temp":[I
    goto :goto_ce

    .line 853
    :cond_c9
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "rstart":I
    .local v10, "rstart":I
    aput v7, v5, v6

    move v6, v10

    .line 857
    .end local v10    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_ce
    :goto_ce
    iput-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 858
    iput v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 859
    array-length v7, v5

    sub-int/2addr v7, v4

    iput v7, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 860
    return-void
.end method

.method blacklist bitLength()J
    .registers 5

    .line 1431
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_7

    .line 1432
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1433
    :cond_7
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist clear()V
    .registers 5

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 248
    const/4 v1, 0x0

    .local v1, "index":I
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v2, v2

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_12

    .line 249
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    aput v0, v3, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 250
    .end local v1    # "index":I
    .end local v2    # "n":I
    :cond_12
    return-void
.end method

.method final blacklist compare(Ljava/math/MutableBigInteger;)I
    .registers 11
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 265
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 266
    .local v0, "blen":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_8

    .line 267
    return v2

    .line 268
    :cond_8
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v3, 0x1

    if-le v1, v0, :cond_e

    .line 269
    return v3

    .line 273
    :cond_e
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    .line 274
    .local v1, "bval":[I
    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v4, "i":I
    iget v5, p1, Ljava/math/MutableBigInteger;->offset:I

    .local v5, "j":I
    :goto_14
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_30

    .line 275
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v6, v6, v4

    const/high16 v7, -0x80000000

    add-int/2addr v6, v7

    .line 276
    .local v6, "b1":I
    aget v8, v1, v5

    add-int/2addr v8, v7

    .line 277
    .local v8, "b2":I
    if-ge v6, v8, :cond_28

    .line 278
    return v2

    .line 279
    :cond_28
    if-le v6, v8, :cond_2b

    .line 280
    return v3

    .line 274
    .end local v6    # "b1":I
    .end local v8    # "b2":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 282
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_30
    const/4 v2, 0x0

    return v2
.end method

.method final blacklist compareHalf(Ljava/math/MutableBigInteger;)I
    .registers 22
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 319
    .local v2, "blen":I
    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 320
    .local v3, "len":I
    const/4 v5, -0x1

    if-gtz v3, :cond_11

    .line 321
    if-gtz v2, :cond_f

    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    move v4, v5

    :goto_10
    return v4

    .line 322
    :cond_11
    const/4 v6, 0x1

    if-le v3, v2, :cond_15

    .line 323
    return v6

    .line 324
    :cond_15
    add-int/lit8 v7, v2, -0x1

    if-ge v3, v7, :cond_1a

    .line 325
    return v5

    .line 326
    :cond_1a
    iget-object v7, v1, Ljava/math/MutableBigInteger;->value:[I

    .line 327
    .local v7, "bval":[I
    const/4 v8, 0x0

    .line 328
    .local v8, "bstart":I
    const/4 v9, 0x0

    .line 330
    .local v9, "carry":I
    if-eq v3, v2, :cond_2a

    .line 331
    aget v10, v7, v8

    if-ne v10, v6, :cond_29

    .line 332
    add-int/lit8 v8, v8, 0x1

    .line 333
    const/high16 v9, -0x80000000

    goto :goto_2a

    .line 335
    :cond_29
    return v5

    .line 339
    :cond_2a
    :goto_2a
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 340
    .local v10, "val":[I
    iget v11, v0, Ljava/math/MutableBigInteger;->offset:I

    .local v11, "i":I
    move v12, v8

    .local v12, "j":I
    :goto_2f
    iget v13, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v3

    if-ge v11, v13, :cond_61

    .line 341
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .local v13, "j":I
    aget v12, v7, v12

    .line 342
    .local v12, "bv":I
    ushr-int/lit8 v14, v12, 0x1

    add-int/2addr v14, v9

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 343
    .local v14, "hb":J
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "i":I
    .local v18, "i":I
    aget v11, v10, v11

    int-to-long v4, v11

    and-long v4, v4, v16

    .line 344
    .local v4, "v":J
    cmp-long v11, v4, v14

    if-eqz v11, :cond_58

    .line 345
    cmp-long v11, v4, v14

    if-gez v11, :cond_55

    const/16 v19, -0x1

    goto :goto_57

    :cond_55
    move/from16 v19, v6

    :goto_57
    return v19

    .line 346
    :cond_58
    and-int/lit8 v11, v12, 0x1

    shl-int/lit8 v9, v11, 0x1f

    .line 347
    .end local v4    # "v":J
    .end local v12    # "bv":I
    .end local v14    # "hb":J
    move v12, v13

    move/from16 v11, v18

    const/4 v5, -0x1

    goto :goto_2f

    .line 348
    .end local v13    # "j":I
    .end local v18    # "i":I
    :cond_61
    if-nez v9, :cond_65

    const/4 v4, 0x0

    goto :goto_66

    :cond_65
    const/4 v4, -0x1

    :goto_66
    return v4
.end method

.method blacklist copyValue(Ljava/math/MutableBigInteger;)V
    .registers 7
    .param p1, "src"    # Ljava/math/MutableBigInteger;

    .line 457
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 458
    .local v0, "len":I
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    if-ge v1, v0, :cond_b

    .line 459
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 460
    :cond_b
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 462
    iput v4, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 463
    return-void
.end method

.method blacklist copyValue([I)V
    .registers 5
    .param p1, "val"    # [I

    .line 470
    array-length v0, p1

    .line 471
    .local v0, "len":I
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    if-ge v1, v0, :cond_a

    .line 472
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 473
    :cond_a
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 475
    iput v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 476
    return-void
.end method

.method blacklist divide(JLjava/math/MutableBigInteger;)J
    .registers 9
    .param p1, "v"    # J
    .param p3, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1444
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_35

    .line 1448
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v2, :cond_10

    .line 1449
    const/4 v2, 0x0

    iput v2, p3, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p3, Ljava/math/MutableBigInteger;->intLen:I

    .line 1450
    return-wide v0

    .line 1452
    :cond_10
    cmp-long v0, p1, v0

    if-gez v0, :cond_15

    .line 1453
    neg-long p1, p1

    .line 1455
    :cond_15
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 1456
    .local v0, "d":I
    invoke-virtual {p3}, Ljava/math/MutableBigInteger;->clear()V

    .line 1458
    if-nez v0, :cond_2c

    .line 1459
    long-to-int v1, p1

    invoke-virtual {p0, v1, p3}, Ljava/math/MutableBigInteger;->divideOneWord(ILjava/math/MutableBigInteger;)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1

    .line 1461
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideLongMagnitude(JLjava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    invoke-direct {v1}, Ljava/math/MutableBigInteger;->toLong()J

    move-result-wide v1

    return-wide v1

    .line 1445
    .end local v0    # "d":I
    :cond_35
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 4
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 6
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1156
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    const/16 v1, 0x50

    if-lt v0, v1, :cond_15

    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iget v1, p1, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v0, v1

    const/16 v1, 0x28

    if-ge v0, v1, :cond_10

    goto :goto_15

    .line 1160
    :cond_10
    invoke-virtual {p0, p1, p2}, Ljava/math/MutableBigInteger;->divideAndRemainderBurnikelZiegler(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 1158
    :cond_15
    :goto_15
    invoke-virtual {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divideAndRemainderBurnikelZiegler(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 21
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1248
    .local v3, "r":I
    iget v4, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1251
    .local v4, "s":I
    const/4 v5, 0x0

    iput v5, v2, Ljava/math/MutableBigInteger;->intLen:I

    iput v5, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1253
    if-ge v3, v4, :cond_12

    .line 1254
    return-object v0

    .line 1261
    :cond_12
    div-int/lit8 v5, v4, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    shl-int v5, v6, v5

    .line 1263
    .local v5, "m":I
    add-int v7, v4, v5

    sub-int/2addr v7, v6

    div-int/2addr v7, v5

    .line 1264
    .local v7, "j":I
    mul-int v6, v7, v5

    .line 1265
    .local v6, "n":I
    const-wide/16 v8, 0x20

    int-to-long v10, v6

    mul-long/2addr v10, v8

    .line 1266
    .local v10, "n32":J
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v8

    sub-long v8, v10, v8

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1267
    .local v8, "sigma":I
    new-instance v9, Ljava/math/MutableBigInteger;

    invoke-direct {v9, v1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1268
    .local v9, "bShifted":Ljava/math/MutableBigInteger;
    invoke-virtual {v9, v8}, Ljava/math/MutableBigInteger;->safeLeftShift(I)V

    .line 1269
    new-instance v12, Ljava/math/MutableBigInteger;

    invoke-direct {v12, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1270
    .local v12, "aShifted":Ljava/math/MutableBigInteger;
    invoke-virtual {v12, v8}, Ljava/math/MutableBigInteger;->safeLeftShift(I)V

    .line 1273
    invoke-virtual {v12}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v13

    add-long/2addr v13, v10

    div-long/2addr v13, v10

    long-to-int v13, v13

    .line 1274
    .local v13, "t":I
    const/4 v14, 0x2

    if-ge v13, v14, :cond_4f

    .line 1275
    const/4 v13, 0x2

    .line 1279
    :cond_4f
    add-int/lit8 v14, v13, -0x1

    invoke-direct {v12, v14, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v14

    .line 1282
    .local v14, "a1":Ljava/math/MutableBigInteger;
    add-int/lit8 v15, v13, -0x2

    invoke-direct {v12, v15, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v15

    .line 1283
    .local v15, "z":Ljava/math/MutableBigInteger;
    invoke-virtual {v15, v14, v6}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1286
    new-instance v16, Ljava/math/MutableBigInteger;

    invoke-direct/range {v16 .. v16}, Ljava/math/MutableBigInteger;-><init>()V

    move-object/from16 v17, v16

    .line 1288
    .local v17, "qi":Ljava/math/MutableBigInteger;
    add-int/lit8 v16, v13, -0x2

    .local v16, "i":I
    :goto_67
    if-lez v16, :cond_8a

    .line 1290
    move-object/from16 v0, v17

    .end local v17    # "qi":Ljava/math/MutableBigInteger;
    .local v0, "qi":Ljava/math/MutableBigInteger;
    invoke-direct {v15, v9, v0}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    .line 1293
    .local v1, "ri":Ljava/math/MutableBigInteger;
    move/from16 v17, v3

    .end local v3    # "r":I
    .local v17, "r":I
    add-int/lit8 v3, v16, -0x1

    invoke-direct {v12, v3, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v15

    .line 1294
    invoke-virtual {v15, v1, v6}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1295
    mul-int v3, v16, v6

    invoke-virtual {v2, v0, v3}, Ljava/math/MutableBigInteger;->addShifted(Ljava/math/MutableBigInteger;I)V

    .line 1288
    add-int/lit8 v16, v16, -0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    goto :goto_67

    .end local v0    # "qi":Ljava/math/MutableBigInteger;
    .end local v1    # "ri":Ljava/math/MutableBigInteger;
    .restart local v3    # "r":I
    .local v17, "qi":Ljava/math/MutableBigInteger;
    :cond_8a
    move-object/from16 v0, v17

    .line 1298
    .end local v16    # "i":I
    .end local v17    # "qi":Ljava/math/MutableBigInteger;
    .restart local v0    # "qi":Ljava/math/MutableBigInteger;
    invoke-direct {v15, v9, v0}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    .line 1299
    .restart local v1    # "ri":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1301
    invoke-virtual {v1, v8}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1302
    return-object v1
.end method

.method blacklist divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 4
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 9
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1183
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_8f

    .line 1187
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 1188
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1189
    if-eqz p3, :cond_15

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    :cond_15
    return-object v1

    .line 1192
    :cond_16
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v0

    .line 1194
    .local v0, "cmp":I
    if-gez v0, :cond_28

    .line 1195
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1196
    if-eqz p3, :cond_27

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    :cond_27
    return-object v1

    .line 1199
    :cond_28
    const/4 v3, 0x1

    if-nez v0, :cond_3b

    .line 1200
    iget-object v4, p2, Ljava/math/MutableBigInteger;->value:[I

    iput v3, p2, Ljava/math/MutableBigInteger;->intLen:I

    aput v3, v4, v2

    .line 1201
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1202
    if-eqz p3, :cond_3a

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    :cond_3a
    return-object v1

    .line 1205
    :cond_3b
    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->clear()V

    .line 1207
    iget v2, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v2, v3, :cond_5d

    .line 1208
    iget-object v2, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p1, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-virtual {p0, v2, p2}, Ljava/math/MutableBigInteger;->divideOneWord(ILjava/math/MutableBigInteger;)I

    move-result v2

    .line 1209
    .local v2, "r":I
    if-eqz p3, :cond_5c

    .line 1210
    if-nez v2, :cond_56

    .line 1211
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v1

    .line 1212
    :cond_56
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>(I)V

    return-object v1

    .line 1214
    :cond_5c
    return-object v1

    .line 1219
    .end local v2    # "r":I
    :cond_5d
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_8a

    .line 1220
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v1

    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1221
    .local v1, "trailingZeroBits":I
    const/16 v2, 0x60

    if-lt v1, v2, :cond_8a

    .line 1222
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1223
    .local v2, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1224
    .end local p1    # "b":Ljava/math/MutableBigInteger;
    .local v3, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1225
    invoke-virtual {v3, v1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1226
    invoke-virtual {v2, v3, p2}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object p1

    .line 1227
    .local p1, "r":Ljava/math/MutableBigInteger;
    invoke-virtual {p1, v1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1228
    return-object p1

    .line 1232
    .end local v1    # "trailingZeroBits":I
    .end local v2    # "a":Ljava/math/MutableBigInteger;
    .end local v3    # "b":Ljava/math/MutableBigInteger;
    .local p1, "b":Ljava/math/MutableBigInteger;
    :cond_8a
    invoke-direct {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideMagnitude(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v1

    return-object v1

    .line 1184
    .end local v0    # "cmp":I
    :cond_8f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist divideOneWord(ILjava/math/MutableBigInteger;)I
    .registers 23
    .param p1, "divisor"    # I
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1091
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 1094
    .local v3, "divisorLong":J
    iget v7, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2f

    .line 1095
    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v7, v7, v10

    int-to-long v10, v7

    and-long/2addr v5, v10

    .line 1096
    .local v5, "dividendValue":J
    div-long v10, v5, v3

    long-to-int v7, v10

    .line 1097
    .local v7, "q":I
    int-to-long v10, v7

    mul-long/2addr v10, v3

    sub-long v10, v5, v10

    long-to-int v10, v10

    .line 1098
    .local v10, "r":I
    iget-object v11, v2, Ljava/math/MutableBigInteger;->value:[I

    aput v7, v11, v8

    .line 1099
    if-nez v7, :cond_2a

    move v9, v8

    :cond_2a
    iput v9, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1100
    iput v8, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1101
    return v10

    .line 1104
    .end local v5    # "dividendValue":J
    .end local v7    # "q":I
    .end local v10    # "r":I
    :cond_2f
    iget-object v7, v2, Ljava/math/MutableBigInteger;->value:[I

    array-length v7, v7

    iget v9, v0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v7, v9, :cond_3c

    .line 1105
    iget v7, v0, Ljava/math/MutableBigInteger;->intLen:I

    new-array v7, v7, [I

    iput-object v7, v2, Ljava/math/MutableBigInteger;->value:[I

    .line 1106
    :cond_3c
    iput v8, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1107
    iget v7, v0, Ljava/math/MutableBigInteger;->intLen:I

    iput v7, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1110
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    .line 1112
    .local v7, "shift":I
    iget-object v9, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v9, v9, v10

    .line 1113
    .local v9, "rem":I
    int-to-long v10, v9

    and-long/2addr v10, v5

    .line 1114
    .local v10, "remLong":J
    cmp-long v12, v10, v3

    if-gez v12, :cond_57

    .line 1115
    iget-object v12, v2, Ljava/math/MutableBigInteger;->value:[I

    aput v8, v12, v8

    goto :goto_6a

    .line 1117
    :cond_57
    iget-object v12, v2, Ljava/math/MutableBigInteger;->value:[I

    div-long v13, v10, v3

    long-to-int v13, v13

    aput v13, v12, v8

    .line 1118
    iget-object v12, v2, Ljava/math/MutableBigInteger;->value:[I

    aget v8, v12, v8

    int-to-long v12, v8

    mul-long/2addr v12, v3

    sub-long v12, v10, v12

    long-to-int v9, v12

    .line 1119
    int-to-long v12, v9

    and-long v10, v12, v5

    .line 1121
    :goto_6a
    iget v8, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1122
    .local v8, "xlen":I
    :goto_6c
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_ad

    .line 1123
    const/16 v12, 0x20

    shl-long v13, v10, v12

    iget-object v15, v0, Ljava/math/MutableBigInteger;->value:[I

    move-wide/from16 v16, v5

    iget v5, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v8

    aget v5, v15, v5

    int-to-long v5, v5

    and-long v5, v5, v16

    or-long/2addr v5, v13

    .line 1126
    .local v5, "dividendEstimate":J
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-ltz v13, :cond_93

    .line 1127
    div-long v12, v5, v3

    long-to-int v12, v12

    .line 1128
    .local v12, "q":I
    int-to-long v13, v12

    mul-long/2addr v13, v3

    sub-long v13, v5, v13

    long-to-int v9, v13

    goto :goto_a0

    .line 1130
    .end local v12    # "q":I
    :cond_93
    invoke-static {v5, v6, v1}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v13

    .line 1131
    .local v13, "tmp":J
    move v15, v12

    move-wide/from16 v18, v13

    .end local v13    # "tmp":J
    .local v18, "tmp":J
    and-long v12, v18, v16

    long-to-int v12, v12

    .line 1132
    .restart local v12    # "q":I
    ushr-long v13, v18, v15

    long-to-int v9, v13

    .line 1134
    .end local v18    # "tmp":J
    :goto_a0
    iget-object v13, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v14, v8

    aput v12, v13, v14

    .line 1135
    int-to-long v13, v9

    and-long v10, v13, v16

    .line 1136
    .end local v5    # "dividendEstimate":J
    .end local v12    # "q":I
    move-wide/from16 v5, v16

    goto :goto_6c

    .line 1138
    :cond_ad
    invoke-virtual {v2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1140
    if-lez v7, :cond_b5

    .line 1141
    rem-int v5, v9, v1

    return v5

    .line 1143
    :cond_b5
    return v9
.end method

.method blacklist euclidModInverse(I)Ljava/math/MutableBigInteger;
    .registers 15
    .param p1, "k"    # I

    .line 2301
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    .line 2302
    .local v0, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, p1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2303
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2305
    .local v2, "mod":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2306
    .local v3, "a":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2307
    .local v4, "q":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v3, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2309
    .local v5, "r":Ljava/math/MutableBigInteger;
    move-object v6, v0

    .line 2311
    .local v6, "swapper":Ljava/math/MutableBigInteger;
    move-object v0, v5

    .line 2312
    move-object v5, v6

    .line 2314
    new-instance v7, Ljava/math/MutableBigInteger;

    invoke-direct {v7, v4}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2315
    .local v7, "t1":Ljava/math/MutableBigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    .line 2316
    .local v8, "t0":Ljava/math/MutableBigInteger;
    new-instance v9, Ljava/math/MutableBigInteger;

    invoke-direct {v9}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2318
    .local v9, "temp":Ljava/math/MutableBigInteger;
    :goto_2e
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v10

    if-nez v10, :cond_8c

    .line 2319
    invoke-virtual {v3, v0, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2321
    iget v10, v5, Ljava/math/MutableBigInteger;->intLen:I

    const-string v11, "BigInteger not invertible."

    if-eqz v10, :cond_86

    .line 2324
    move-object v6, v5

    .line 2325
    move-object v3, v6

    .line 2327
    iget v10, v4, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v10, v1, :cond_4e

    .line 2328
    iget-object v10, v4, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v4, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v12

    invoke-virtual {v7, v10, v9}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    goto :goto_51

    .line 2330
    :cond_4e
    invoke-virtual {v4, v7, v9}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2331
    :goto_51
    move-object v6, v4

    .line 2332
    move-object v4, v9

    .line 2333
    move-object v9, v6

    .line 2334
    invoke-virtual {v8, v4}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2336
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 2337
    return-object v8

    .line 2339
    :cond_5e
    invoke-virtual {v0, v3, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2341
    iget v10, v5, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v10, :cond_80

    .line 2344
    move-object v6, v0

    .line 2345
    move-object v0, v5

    .line 2347
    iget v10, v4, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v10, v1, :cond_76

    .line 2348
    iget-object v10, v4, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v4, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v11

    invoke-virtual {v8, v10, v9}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    goto :goto_79

    .line 2350
    :cond_76
    invoke-virtual {v4, v8, v9}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2351
    :goto_79
    move-object v6, v4

    move-object v4, v9

    move-object v9, v6

    .line 2353
    invoke-virtual {v7, v4}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_2e

    .line 2342
    :cond_80
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2322
    :cond_86
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2355
    :cond_8c
    invoke-virtual {v2, v7}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 2356
    return-object v2
.end method

.method blacklist hybridGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 6
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 1970
    move-object v0, p0

    .line 1971
    .local v0, "a":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1973
    .local v1, "q":Ljava/math/MutableBigInteger;
    :goto_6
    iget v2, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v2, :cond_22

    .line 1974
    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    iget v3, p1, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1b

    .line 1975
    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;->binaryGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    return-object v2

    .line 1977
    :cond_1b
    invoke-virtual {v0, p1, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 1978
    .local v2, "r":Ljava/math/MutableBigInteger;
    move-object v0, p1

    .line 1979
    move-object p1, v2

    .line 1980
    .end local v2    # "r":Ljava/math/MutableBigInteger;
    goto :goto_6

    .line 1981
    :cond_22
    return-object v0
.end method

.method blacklist isEven()Z
    .registers 5

    .line 496
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget v0, v0, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    return v1
.end method

.method blacklist isNormal()Z
    .registers 5

    .line 512
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 513
    return v2

    .line 514
    :cond_c
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 515
    return v1

    .line 516
    :cond_12
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v3

    if-eqz v0, :cond_1b

    move v2, v1

    :cond_1b
    return v2
.end method

.method blacklist isOdd()Z
    .registers 5

    .line 503
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    :cond_7
    goto :goto_17

    :cond_8
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v0, v0, v2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    move v1, v3

    :goto_17
    return v1
.end method

.method blacklist isOne()Z
    .registers 4

    .line 482
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v2

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method blacklist isZero()Z
    .registers 2

    .line 489
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist leftShift(I)V
    .registers 11
    .param p1, "n"    # I

    .line 578
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_5

    .line 579
    return-void

    .line 580
    :cond_5
    ushr-int/lit8 v0, p1, 0x5

    .line 581
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 582
    .local v1, "nBits":I
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v2

    .line 585
    .local v2, "bitsInHighWord":I
    rsub-int/lit8 v3, v2, 0x20

    if-gt p1, v3, :cond_1b

    .line 586
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    .line 587
    return-void

    .line 590
    :cond_1b
    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    .line 591
    .local v3, "newLen":I
    rsub-int/lit8 v4, v2, 0x20

    if-gt v1, v4, :cond_26

    .line 592
    add-int/lit8 v3, v3, -0x1

    .line 593
    :cond_26
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v4, v4

    if-ge v4, v3, :cond_42

    .line 595
    new-array v4, v3, [I

    .line 596
    .local v4, "result":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v5, v6, :cond_3e

    .line 597
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v5

    aget v6, v6, v7

    aput v6, v4, v5

    .line 596
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 598
    .end local v5    # "i":I
    :cond_3e
    invoke-virtual {p0, v4, v3}, Ljava/math/MutableBigInteger;->setValue([II)V

    .line 599
    .end local v4    # "result":[I
    goto :goto_80

    :cond_42
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v4, v4

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-lt v4, v3, :cond_60

    .line 601
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int v6, v3, v6

    if-ge v4, v6, :cond_5f

    .line 602
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v8, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    aput v5, v6, v7

    .line 601
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .end local v4    # "i":I
    :cond_5f
    goto :goto_80

    .line 605
    :cond_60
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_61
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v4, v6, :cond_73

    .line 606
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget-object v7, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v8, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v6, v4

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 607
    .end local v4    # "i":I
    :cond_73
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    .restart local v4    # "i":I
    :goto_75
    if-ge v4, v3, :cond_7e

    .line 608
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    aput v5, v6, v4

    .line 607
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 609
    .end local v4    # "i":I
    :cond_7e
    iput v5, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 611
    :goto_80
    iput v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 612
    if-nez v1, :cond_85

    .line 613
    return-void

    .line 614
    :cond_85
    rsub-int/lit8 v4, v2, 0x20

    if-gt v1, v4, :cond_8d

    .line 615
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    goto :goto_92

    .line 617
    :cond_8d
    rsub-int/lit8 v4, v1, 0x20

    invoke-direct {p0, v4}, Ljava/math/MutableBigInteger;->primitiveRightShift(I)V

    .line 618
    :goto_92
    return-void
.end method

.method blacklist modInverseMP2(I)Ljava/math/MutableBigInteger;
    .registers 16
    .param p1, "k"    # I

    .line 2121
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v0

    if-nez v0, :cond_82

    .line 2124
    const/16 v0, 0x40

    if-le p1, v0, :cond_f

    .line 2125
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->euclidModInverse(I)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 2127
    :cond_f
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/math/MutableBigInteger;->inverseMod32(I)I

    move-result v1

    .line 2129
    .local v1, "t":I
    const/16 v2, 0x21

    const/16 v4, 0x20

    if-ge p1, v2, :cond_32

    .line 2130
    if-ne p1, v4, :cond_28

    move v0, v1

    goto :goto_2c

    :cond_28
    shl-int v0, v3, p1

    sub-int/2addr v0, v3

    and-int/2addr v0, v1

    .line 2131
    .end local v1    # "t":I
    .local v0, "t":I
    :goto_2c
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v0}, Ljava/math/MutableBigInteger;-><init>(I)V

    return-object v1

    .line 2134
    .end local v0    # "t":I
    .restart local v1    # "t":I
    :cond_32
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aget v2, v2, v5

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 2135
    .local v5, "pLong":J
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v9, 0x2

    if-le v2, v3, :cond_55

    .line 2136
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v11, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v9

    aget v2, v2, v10

    int-to-long v10, v2

    shl-long/2addr v10, v4

    or-long/2addr v5, v10

    .line 2137
    :cond_55
    int-to-long v10, v1

    and-long/2addr v7, v10

    .line 2138
    .local v7, "tLong":J
    const-wide/16 v10, 0x2

    mul-long v12, v5, v7

    sub-long/2addr v10, v12

    mul-long/2addr v7, v10

    .line 2139
    if-ne p1, v0, :cond_61

    move-wide v10, v7

    goto :goto_68

    :cond_61
    const-wide/16 v10, 0x1

    shl-long v12, v10, p1

    sub-long/2addr v12, v10

    and-long v10, v7, v12

    .line 2141
    .end local v7    # "tLong":J
    .local v10, "tLong":J
    :goto_68
    new-instance v0, Ljava/math/MutableBigInteger;

    new-array v2, v9, [I

    invoke-direct {v0, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2142
    .local v0, "result":Ljava/math/MutableBigInteger;
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    ushr-long v7, v10, v4

    long-to-int v4, v7

    const/4 v7, 0x0

    aput v4, v2, v7

    .line 2143
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v4, v10

    aput v4, v2, v3

    .line 2144
    iput v9, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 2145
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 2146
    return-object v0

    .line 2122
    .end local v0    # "result":Ljava/math/MutableBigInteger;
    .end local v1    # "t":I
    .end local v5    # "pLong":J
    .end local v10    # "tLong":J
    :cond_82
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Non-invertible. (GCD != 1)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist mul(ILjava/math/MutableBigInteger;)V
    .registers 16
    .param p1, "y"    # I
    .param p2, "z"    # Ljava/math/MutableBigInteger;

    .line 1050
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1051
    invoke-virtual {p2, p0}, Ljava/math/MutableBigInteger;->copyValue(Ljava/math/MutableBigInteger;)V

    .line 1052
    return-void

    .line 1055
    :cond_7
    if-nez p1, :cond_d

    .line 1056
    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->clear()V

    .line 1057
    return-void

    .line 1061
    :cond_d
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1062
    .local v1, "ylong":J
    iget-object v5, p2, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v5

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v6, v0

    if-ge v5, v6, :cond_22

    iget v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v0

    new-array v5, v5, [I

    goto :goto_24

    .line 1063
    :cond_22
    iget-object v5, p2, Ljava/math/MutableBigInteger;->value:[I

    :goto_24
    nop

    .line 1064
    .local v5, "zval":[I
    const-wide/16 v6, 0x0

    .line 1065
    .local v6, "carry":J
    iget v8, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v8, v0

    .local v8, "i":I
    :goto_2a
    if-ltz v8, :cond_43

    .line 1066
    iget-object v9, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v8

    aget v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-long/2addr v9, v6

    .line 1067
    .local v9, "product":J
    add-int/lit8 v11, v8, 0x1

    long-to-int v12, v9

    aput v12, v5, v11

    .line 1068
    const/16 v11, 0x20

    ushr-long v6, v9, v11

    .line 1065
    .end local v9    # "product":J
    add-int/lit8 v8, v8, -0x1

    goto :goto_2a

    .line 1071
    .end local v8    # "i":I
    :cond_43
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-nez v3, :cond_50

    .line 1072
    iput v0, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1073
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p2, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_5b

    .line 1075
    :cond_50
    const/4 v3, 0x0

    iput v3, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1076
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v0

    iput v4, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1077
    long-to-int v0, v6

    aput v0, v5, v3

    .line 1079
    :goto_5b
    iput-object v5, p2, Ljava/math/MutableBigInteger;->value:[I

    .line 1080
    return-void
.end method

.method blacklist multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V
    .registers 21
    .param p1, "y"    # Ljava/math/MutableBigInteger;
    .param p2, "z"    # Ljava/math/MutableBigInteger;

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1009
    .local v3, "xLen":I
    iget v4, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1010
    .local v4, "yLen":I
    add-int v5, v3, v4

    .line 1013
    .local v5, "newLen":I
    iget-object v6, v2, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v6

    if-ge v6, v5, :cond_15

    .line 1014
    new-array v6, v5, [I

    iput-object v6, v2, Ljava/math/MutableBigInteger;->value:[I

    .line 1015
    :cond_15
    const/4 v6, 0x0

    iput v6, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1016
    iput v5, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1019
    const-wide/16 v6, 0x0

    .line 1020
    .local v6, "carry":J
    add-int/lit8 v8, v4, -0x1

    .local v8, "j":I
    add-int v9, v4, v3

    add-int/lit8 v9, v9, -0x1

    .local v9, "k":I
    :goto_22
    const-wide v11, 0xffffffffL

    if-ltz v8, :cond_50

    .line 1021
    iget-object v13, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v8

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v11

    iget-object v15, v0, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v16, v3, -0x1

    const/16 v17, 0x20

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int v16, v16, v10

    aget v10, v15, v16

    move-wide v15, v11

    int-to-long v11, v10

    and-long v10, v11, v15

    mul-long/2addr v13, v10

    add-long/2addr v13, v6

    .line 1023
    .local v13, "product":J
    iget-object v10, v2, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v11, v13

    aput v11, v10, v9

    .line 1024
    ushr-long v6, v13, v17

    .line 1020
    .end local v13    # "product":J
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_22

    :cond_50
    move-wide v15, v11

    const/16 v17, 0x20

    .line 1026
    .end local v8    # "j":I
    .end local v9    # "k":I
    iget-object v8, v2, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v9, v3, -0x1

    long-to-int v10, v6

    aput v10, v8, v9

    .line 1029
    add-int/lit8 v8, v3, -0x2

    .local v8, "i":I
    :goto_5c
    if-ltz v8, :cond_95

    .line 1030
    const-wide/16 v6, 0x0

    .line 1031
    add-int/lit8 v9, v4, -0x1

    .local v9, "j":I
    add-int v10, v4, v8

    .local v10, "k":I
    :goto_64
    if-ltz v9, :cond_8d

    .line 1032
    iget-object v11, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v9

    aget v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v15

    iget-object v13, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v8

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v15

    mul-long/2addr v11, v13

    iget-object v13, v2, Ljava/math/MutableBigInteger;->value:[I

    aget v13, v13, v10

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-long/2addr v11, v13

    add-long/2addr v11, v6

    .line 1035
    .local v11, "product":J
    iget-object v13, v2, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v14, v11

    aput v14, v13, v10

    .line 1036
    ushr-long v6, v11, v17

    .line 1031
    .end local v11    # "product":J
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_64

    .line 1038
    .end local v9    # "j":I
    .end local v10    # "k":I
    :cond_8d
    iget-object v9, v2, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v10, v6

    aput v10, v9, v8

    .line 1029
    add-int/lit8 v8, v8, -0x1

    goto :goto_5c

    .line 1042
    .end local v8    # "i":I
    :cond_95
    invoke-virtual {v2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1043
    return-void
.end method

.method blacklist mutableModInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 12
    .param p1, "p"    # Ljava/math/MutableBigInteger;

    .line 2076
    invoke-virtual {p1}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2077
    invoke-direct {p0, p1}, Ljava/math/MutableBigInteger;->modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_b
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2084
    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v0

    .line 2087
    .local v0, "powersOf2":I
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2088
    .local v1, "oddMod":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v0}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2090
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2091
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v2

    return-object v2

    .line 2094
    :cond_28
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 2097
    .local v2, "oddPart":Ljava/math/MutableBigInteger;
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 2100
    .local v3, "evenPart":Ljava/math/MutableBigInteger;
    invoke-static {v1, v0}, Ljava/math/MutableBigInteger;->modInverseBP2(Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2101
    .local v4, "y1":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2103
    .local v5, "y2":Ljava/math/MutableBigInteger;
    new-instance v6, Ljava/math/MutableBigInteger;

    invoke-direct {v6}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2104
    .local v6, "temp1":Ljava/math/MutableBigInteger;
    new-instance v7, Ljava/math/MutableBigInteger;

    invoke-direct {v7}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2105
    .local v7, "temp2":Ljava/math/MutableBigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2107
    .local v8, "result":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v0}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2108
    invoke-virtual {v2, v4, v8}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2110
    invoke-virtual {v3, v1, v6}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2111
    invoke-virtual {v6, v5, v7}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2113
    invoke-virtual {v8, v7}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2114
    invoke-virtual {v8, p1, v6}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v9

    return-object v9

    .line 2081
    .end local v0    # "powersOf2":I
    .end local v1    # "oddMod":Ljava/math/MutableBigInteger;
    .end local v2    # "oddPart":Ljava/math/MutableBigInteger;
    .end local v3    # "evenPart":Ljava/math/MutableBigInteger;
    .end local v4    # "y1":Ljava/math/MutableBigInteger;
    .end local v5    # "y2":Ljava/math/MutableBigInteger;
    .end local v6    # "temp1":Ljava/math/MutableBigInteger;
    .end local v7    # "temp2":Ljava/math/MutableBigInteger;
    .end local v8    # "result":Ljava/math/MutableBigInteger;
    :cond_5b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist normalize()V
    .registers 6

    .line 391
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 392
    iput v1, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 393
    return-void

    .line 396
    :cond_8
    iget v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 397
    .local v0, "index":I
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v2, v2, v0

    if-eqz v2, :cond_11

    .line 398
    return-void

    .line 400
    :cond_11
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v0

    .line 402
    .local v2, "indexBound":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 403
    if-ge v0, v2, :cond_1e

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v3, v3, v0

    if-eqz v3, :cond_14

    .line 405
    :cond_1e
    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    sub-int v3, v0, v3

    .line 406
    .local v3, "numZeros":I
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v4, v3

    iput v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 407
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v4, :cond_2c

    goto :goto_2f

    :cond_2c
    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, v3

    :goto_2f
    iput v1, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 408
    return-void
.end method

.method blacklist reset()V
    .registers 2

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 257
    return-void
.end method

.method blacklist rightShift(I)V
    .registers 6
    .param p1, "n"    # I

    .line 543
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_5

    .line 544
    return-void

    .line 545
    :cond_5
    ushr-int/lit8 v0, p1, 0x5

    .line 546
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 547
    .local v1, "nBits":I
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 548
    if-nez v1, :cond_11

    .line 549
    return-void

    .line 550
    :cond_11
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v2

    .line 551
    .local v2, "bitsInHighWord":I
    if-lt v1, v2, :cond_29

    .line 552
    rsub-int/lit8 v3, v1, 0x20

    invoke-direct {p0, v3}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    .line 553
    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_2c

    .line 555
    :cond_29
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->primitiveRightShift(I)V

    .line 557
    :goto_2c
    return-void
.end method

.method blacklist safeLeftShift(I)V
    .registers 2
    .param p1, "n"    # I

    .line 563
    if-lez p1, :cond_5

    .line 564
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 566
    :cond_5
    return-void
.end method

.method blacklist safeRightShift(I)V
    .registers 4
    .param p1, "n"    # I

    .line 531
    div-int/lit8 v0, p1, 0x20

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, v1, :cond_a

    .line 532
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->reset()V

    goto :goto_d

    .line 534
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 536
    :goto_d
    return-void
.end method

.method blacklist setInt(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "val"    # I

    .line 439
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 440
    return-void
.end method

.method blacklist setValue([II)V
    .registers 4
    .param p1, "val"    # [I
    .param p2, "length"    # I

    .line 447
    iput-object p1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 448
    iput p2, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 450
    return-void
.end method

.method blacklist sqrt()Ljava/math/MutableBigInteger;
    .registers 12

    .line 1890
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1891
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    return-object v0

    .line 1892
    :cond_d
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    const-wide v2, 0xffffffffL

    const/4 v4, 0x1

    if-ne v0, v4, :cond_27

    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v0, v0, v1

    int-to-long v5, v0

    and-long/2addr v5, v2

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-gez v0, :cond_27

    .line 1894
    sget-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    return-object v0

    .line 1897
    :cond_27
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v5

    const-wide/16 v7, 0x3f

    cmp-long v0, v5, v7

    if-gtz v0, :cond_63

    .line 1899
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    invoke-direct {v0, v1, v4}, Ljava/math/BigInteger;-><init>([II)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v5

    .line 1900
    .local v5, "v":J
    long-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1904
    .local v0, "xk":J
    :goto_46
    div-long v7, v5, v0

    add-long/2addr v7, v0

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    .line 1907
    .local v7, "xk1":J
    cmp-long v4, v7, v0

    if-ltz v4, :cond_61

    .line 1908
    new-instance v4, Ljava/math/MutableBigInteger;

    const/16 v9, 0x20

    ushr-long v9, v0, v9

    long-to-int v9, v9

    and-long/2addr v2, v0

    long-to-int v2, v2

    filled-new-array {v9, v2}, [I

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    return-object v4

    .line 1913
    :cond_61
    move-wide v0, v7

    .line 1914
    .end local v7    # "xk1":J
    goto :goto_46

    .line 1919
    .end local v0    # "xk":J
    .end local v5    # "v":J
    :cond_63
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v2

    long-to-int v0, v2

    .line 1920
    .local v0, "bitLength":I
    int-to-long v2, v0

    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_c4

    .line 1925
    add-int/lit8 v2, v0, -0x3f

    .line 1926
    .local v2, "shift":I
    rem-int/lit8 v3, v2, 0x2

    if-ne v3, v4, :cond_79

    .line 1927
    add-int/lit8 v2, v2, 0x1

    .line 1931
    :cond_79
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1932
    .local v3, "xk":Ljava/math/MutableBigInteger;
    invoke-virtual {v3, v2}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1933
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1936
    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, v3, Ljava/math/MutableBigInteger;->value:[I

    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>([II)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v5

    .line 1937
    .local v5, "d":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 1938
    .local v7, "bi":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    iget-object v9, v7, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v8, v9}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 1941
    .end local v3    # "xk":Ljava/math/MutableBigInteger;
    .local v8, "xk":Ljava/math/MutableBigInteger;
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v8, v3}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1944
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1947
    .local v3, "xk1":Ljava/math/MutableBigInteger;
    :goto_ad
    invoke-virtual {p0, v8, v3, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    .line 1948
    invoke-virtual {v3, v8}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1949
    invoke-virtual {v3, v4}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1952
    invoke-virtual {v3, v8}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v9

    if-ltz v9, :cond_bd

    .line 1953
    return-object v8

    .line 1957
    :cond_bd
    invoke-virtual {v8, v3}, Ljava/math/MutableBigInteger;->copyValue(Ljava/math/MutableBigInteger;)V

    .line 1959
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->reset()V

    .line 1960
    goto :goto_ad

    .line 1921
    .end local v2    # "shift":I
    .end local v3    # "xk1":Ljava/math/MutableBigInteger;
    .end local v5    # "d":D
    .end local v7    # "bi":Ljava/math/BigInteger;
    .end local v8    # "xk":Ljava/math/MutableBigInteger;
    :cond_c4
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "bitLength() integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist subtract(Ljava/math/MutableBigInteger;)I
    .registers 20
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 921
    .local v1, "a":Ljava/math/MutableBigInteger;
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 922
    .local v2, "result":[I
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v4

    .line 924
    .local v4, "sign":I
    if-nez v4, :cond_13

    .line 925
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->reset()V

    .line 926
    const/4 v5, 0x0

    return v5

    .line 928
    :cond_13
    if-gez v4, :cond_19

    .line 929
    move-object v5, v1

    .line 930
    .local v5, "tmp":Ljava/math/MutableBigInteger;
    move-object/from16 v1, p1

    .line 931
    move-object v3, v5

    .line 934
    .end local v5    # "tmp":Ljava/math/MutableBigInteger;
    .end local p1    # "b":Ljava/math/MutableBigInteger;
    .local v3, "b":Ljava/math/MutableBigInteger;
    :cond_19
    iget v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 935
    .local v5, "resultLen":I
    array-length v6, v2

    if-ge v6, v5, :cond_20

    .line 936
    new-array v2, v5, [I

    .line 938
    :cond_20
    const-wide/16 v6, 0x0

    .line 939
    .local v6, "diff":J
    iget v8, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 940
    .local v8, "x":I
    iget v9, v3, Ljava/math/MutableBigInteger;->intLen:I

    .line 941
    .local v9, "y":I
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    .line 944
    .local v10, "rstart":I
    :goto_29
    const-wide v12, 0xffffffffL

    if-lez v9, :cond_5a

    .line 945
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    .line 947
    iget-object v14, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    const/16 p1, 0x20

    iget-object v11, v3, Ljava/math/MutableBigInteger;->value:[I

    move-wide/from16 v16, v12

    iget v12, v3, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v9

    aget v11, v11, v12

    int-to-long v11, v11

    and-long v11, v11, v16

    sub-long/2addr v14, v11

    shr-long v11, v6, p1

    neg-long v11, v11

    long-to-int v11, v11

    int-to-long v11, v11

    sub-long v6, v14, v11

    .line 949
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "rstart":I
    .local v11, "rstart":I
    long-to-int v12, v6

    aput v12, v2, v10

    move v10, v11

    goto :goto_29

    .line 944
    .end local v11    # "rstart":I
    .restart local v10    # "rstart":I
    :cond_5a
    move-wide/from16 v16, v12

    const/16 p1, 0x20

    .line 952
    :goto_5e
    if-lez v8, :cond_7a

    .line 953
    add-int/lit8 v8, v8, -0x1

    .line 954
    iget-object v11, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v8

    aget v11, v11, v12

    int-to-long v11, v11

    and-long v11, v11, v16

    shr-long v13, v6, p1

    neg-long v13, v13

    long-to-int v13, v13

    int-to-long v13, v13

    sub-long v6, v11, v13

    .line 955
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "rstart":I
    .restart local v11    # "rstart":I
    long-to-int v12, v6

    aput v12, v2, v10

    move v10, v11

    goto :goto_5e

    .line 958
    .end local v11    # "rstart":I
    .restart local v10    # "rstart":I
    :cond_7a
    iput-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 959
    iput v5, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 960
    iget-object v11, v0, Ljava/math/MutableBigInteger;->value:[I

    array-length v11, v11

    sub-int/2addr v11, v5

    iput v11, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 961
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 962
    return v4
.end method

.method blacklist toBigDecimal(II)Ljava/math/BigDecimal;
    .registers 15
    .param p1, "sign"    # I
    .param p2, "scale"    # I

    .line 207
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_4a

    if-nez p1, :cond_8

    move v10, p2

    goto :goto_4b

    .line 209
    :cond_8
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v0

    .line 210
    .local v0, "mag":[I
    array-length v1, v0

    .line 211
    .local v1, "len":I
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 214
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_3b

    if-gez v2, :cond_18

    if-ne v1, v3, :cond_18

    goto :goto_3b

    .line 216
    :cond_18
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_2c

    .line 217
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    int-to-long v8, v2

    and-long v3, v8, v4

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    goto :goto_2f

    .line 218
    :cond_2c
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_2f
    nop

    .line 219
    .local v3, "v":J
    const/4 v5, -0x1

    if-ne p1, v5, :cond_35

    neg-long v5, v3

    goto :goto_36

    :cond_35
    move-wide v5, v3

    :goto_36
    invoke-static {v5, v6, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 215
    .end local v3    # "v":J
    :cond_3b
    :goto_3b
    new-instance v6, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0, p1}, Ljava/math/BigInteger;-><init>([II)V

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v11, 0x0

    move v10, p2

    .end local p2    # "scale":I
    .local v10, "scale":I
    invoke-direct/range {v6 .. v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v6

    .line 207
    .end local v0    # "mag":[I
    .end local v1    # "len":I
    .end local v2    # "d":I
    .end local v10    # "scale":I
    .restart local p2    # "scale":I
    :cond_4a
    move v10, p2

    .line 208
    .end local p2    # "scale":I
    .restart local v10    # "scale":I
    :goto_4b
    invoke-static {v10}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2
.end method

.method blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 198
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 199
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist toBigInteger(I)Ljava/math/BigInteger;
    .registers 4
    .param p1, "sign"    # I

    .line 189
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_11

    if-nez p1, :cond_7

    goto :goto_11

    .line 191
    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 190
    :cond_11
    :goto_11
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method blacklist toCompactValue(I)J
    .registers 12
    .param p1, "sign"    # I

    .line 228
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_39

    if-nez p1, :cond_7

    goto :goto_39

    .line 230
    :cond_7
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v0

    .line 231
    .local v0, "mag":[I
    array-length v1, v0

    .line 232
    .local v1, "len":I
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 235
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_36

    if-gez v2, :cond_17

    if-ne v1, v3, :cond_17

    goto :goto_36

    .line 237
    :cond_17
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_2b

    .line 238
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    int-to-long v8, v2

    and-long v3, v8, v4

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    goto :goto_2e

    .line 239
    :cond_2b
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_2e
    nop

    .line 240
    .local v3, "v":J
    const/4 v5, -0x1

    if-ne p1, v5, :cond_34

    neg-long v5, v3

    goto :goto_35

    :cond_34
    move-wide v5, v3

    :goto_35
    return-wide v5

    .line 236
    .end local v3    # "v":J
    :cond_36
    :goto_36
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3

    .line 229
    .end local v0    # "mag":[I
    .end local v1    # "len":I
    .end local v2    # "d":I
    :cond_39
    :goto_39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist toIntArray()[I
    .registers 5

    .line 427
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    new-array v0, v0, [I

    .line 428
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v1, v2, :cond_15

    .line 429
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 430
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 523
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 524
    .local v0, "b":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
