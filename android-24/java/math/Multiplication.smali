.class Ljava/math/Multiplication;
.super Ljava/lang/Object;
.source "Multiplication.java"


# static fields
.field static final bigFivePows:[Ljava/math/BigInteger;

.field static final bigTenPows:[Ljava/math/BigInteger;

.field static final fivePows:[I

.field static final tenPows:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 40
    const/16 v3, 0xa

    #@4
    new-array v3, v3, [I

    #@6
    fill-array-data v3, :array_0

    #@9
    sput-object v3, Ljava/math/Multiplication;->tenPows:[I

    #@b
    .line 48
    const/16 v3, 0xe

    #@d
    new-array v3, v3, [I

    #@f
    fill-array-data v3, :array_1

    #@12
    sput-object v3, Ljava/math/Multiplication;->fivePows:[I

    #@14
    .line 57
    new-array v3, v4, [Ljava/math/BigInteger;

    #@16
    sput-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@18
    .line 63
    new-array v3, v4, [Ljava/math/BigInteger;

    #@1a
    sput-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@1c
    .line 69
    const-wide/16 v0, 0x1

    #@1e
    .line 71
    .local v0, "fivePow":J
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x12

    #@21
    if-gt v2, v3, :cond_0

    #@23
    .line 72
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@28
    move-result-object v4

    #@29
    aput-object v4, v3, v2

    #@2b
    .line 73
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@2d
    shl-long v4, v0, v2

    #@2f
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@32
    move-result-object v4

    #@33
    aput-object v4, v3, v2

    #@35
    .line 74
    const-wide/16 v4, 0x5

    #@37
    mul-long/2addr v0, v4

    #@38
    .line 71
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 76
    :cond_0
    :goto_1
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@3d
    array-length v3, v3

    #@3e
    if-ge v2, v3, :cond_1

    #@40
    .line 77
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@42
    sget-object v4, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@44
    add-int/lit8 v5, v2, -0x1

    #@46
    aget-object v4, v4, v5

    #@48
    sget-object v5, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@4a
    const/4 v6, 0x1

    #@4b
    aget-object v5, v5, v6

    #@4d
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@50
    move-result-object v4

    #@51
    aput-object v4, v3, v2

    #@53
    .line 78
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@55
    sget-object v4, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@57
    add-int/lit8 v5, v2, -0x1

    #@59
    aget-object v4, v4, v5

    #@5b
    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@5d
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@60
    move-result-object v4

    #@61
    aput-object v4, v3, v2

    #@63
    .line 76
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 23
    :cond_1
    return-void

    #@67
    .line 40
    nop

    #@68
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    #@80
    .line 48
    :array_1
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "exp"    # I

    #@0
    .prologue
    .line 179
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    #@2
    array-length v0, v0

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 180
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    #@7
    aget v0, v0, p1

    #@9
    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 181
    :cond_0
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@10
    array-length v0, v0

    #@11
    if-ge p1, v0, :cond_1

    #@13
    .line 182
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@15
    aget-object v0, v0, p1

    #@17
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 184
    :cond_1
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@1e
    const/4 v1, 0x1

    #@1f
    aget-object v0, v0, v1

    #@21
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method static multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "factor"    # I

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    #@7
    move-result-object v0

    #@8
    .line 93
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->multiplyByPositiveInt(I)V

    #@b
    .line 94
    new-instance v1, Ljava/math/BigInteger;

    #@d
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@10
    return-object v1
.end method

.method static multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 3
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "exp"    # J

    #@0
    .prologue
    .line 106
    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    #@2
    array-length v0, v0

    #@3
    int-to-long v0, v0

    #@4
    cmp-long v0, p1, v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 107
    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    #@a
    long-to-int v1, p1

    #@b
    aget v0, v0, v1

    #@d
    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    .line 106
    :goto_0
    return-object v0

    #@12
    .line 108
    :cond_0
    invoke-static {p1, p2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@19
    move-result-object v0

    #@1a
    goto :goto_0
.end method

.method static powerOf10(J)Ljava/math/BigInteger;
    .locals 10
    .param p0, "exp"    # J

    #@0
    .prologue
    const-wide/32 v8, 0x7fffffff

    #@3
    .line 120
    long-to-int v1, p0

    #@4
    .line 122
    .local v1, "intExp":I
    sget-object v6, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@6
    array-length v6, v6

    #@7
    int-to-long v6, v6

    #@8
    cmp-long v6, p0, v6

    #@a
    if-gez v6, :cond_0

    #@c
    .line 124
    sget-object v6, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@e
    aget-object v6, v6, v1

    #@10
    return-object v6

    #@11
    .line 125
    :cond_0
    const-wide/16 v6, 0x32

    #@13
    cmp-long v6, p0, v6

    #@15
    if-gtz v6, :cond_1

    #@17
    .line 127
    sget-object v6, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@19
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@1c
    move-result-object v6

    #@1d
    return-object v6

    #@1e
    .line 130
    :cond_1
    const/4 v5, 0x0

    #@1f
    .line 133
    .local v5, "res":Ljava/math/BigInteger;
    cmp-long v6, p0, v8

    #@21
    if-gtz v6, :cond_2

    #@23
    .line 135
    :try_start_0
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@25
    const/4 v7, 0x1

    #@26
    aget-object v6, v6, v7

    #@28
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@2f
    move-result-object v5

    #@30
    .line 167
    .local v5, "res":Ljava/math/BigInteger;
    :goto_0
    return-object v5

    #@31
    .line 144
    .local v5, "res":Ljava/math/BigInteger;
    :cond_2
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@33
    const/4 v7, 0x1

    #@34
    aget-object v6, v6, v7

    #@36
    const v7, 0x7fffffff

    #@39
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@3c
    move-result-object v4

    #@3d
    .line 145
    .local v4, "powerOfFive":Ljava/math/BigInteger;
    move-object v5, v4

    #@3e
    .line 146
    .local v5, "res":Ljava/math/BigInteger;
    sub-long v2, p0, v8

    #@40
    .line 148
    .local v2, "longExp":J
    const-wide/32 v6, 0x7fffffff

    #@43
    rem-long v6, p0, v6

    #@45
    long-to-int v1, v6

    #@46
    .line 149
    :goto_1
    cmp-long v6, v2, v8

    #@48
    if-lez v6, :cond_3

    #@4a
    .line 150
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4d
    move-result-object v5

    #@4e
    .line 151
    sub-long/2addr v2, v8

    #@4f
    goto :goto_1

    #@50
    .line 153
    :cond_3
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@52
    const/4 v7, 0x1

    #@53
    aget-object v6, v6, v7

    #@55
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5c
    move-result-object v5

    #@5d
    .line 155
    const v6, 0x7fffffff

    #@60
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@63
    move-result-object v5

    #@64
    .line 156
    sub-long v2, p0, v8

    #@66
    .line 157
    :goto_2
    cmp-long v6, v2, v8

    #@68
    if-lez v6, :cond_4

    #@6a
    .line 158
    const v6, 0x7fffffff

    #@6d
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@70
    move-result-object v5

    #@71
    .line 159
    sub-long/2addr v2, v8

    #@72
    goto :goto_2

    #@73
    .line 161
    :cond_4
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    move-result-object v5

    #@77
    goto :goto_0

    #@78
    .line 163
    .end local v2    # "longExp":J
    .end local v4    # "powerOfFive":Ljava/math/BigInteger;
    .end local v5    # "res":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@79
    .line 164
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    new-instance v6, Ljava/lang/ArithmeticException;

    #@7b
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@82
    throw v6
.end method
