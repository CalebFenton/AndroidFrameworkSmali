.class Ljava/math/BitSieve;
.super Ljava/lang/Object;
.source "BitSieve.java"


# static fields
.field private static blacklist smallSieve:Ljava/math/BitSieve;


# instance fields
.field private blacklist bits:[J

.field private blacklist length:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/math/BitSieve;

    invoke-direct {v0}, Ljava/math/BitSieve;-><init>()V

    sput-object v0, Ljava/math/BitSieve;->smallSieve:Ljava/math/BitSieve;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x2580

    iput v0, p0, Ljava/math/BitSieve;->length:I

    .line 77
    iget v0, p0, Ljava/math/BitSieve;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/math/BitSieve;->unitIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/math/BitSieve;->bits:[J

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/math/BitSieve;->set(I)V

    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "nextIndex":I
    const/4 v1, 0x3

    .line 86
    .local v1, "nextPrime":I
    :cond_1b
    iget v2, p0, Ljava/math/BitSieve;->length:I

    add-int v3, v0, v1

    invoke-direct {p0, v2, v3, v1}, Ljava/math/BitSieve;->sieveSingle(III)V

    .line 87
    iget v2, p0, Ljava/math/BitSieve;->length:I

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Ljava/math/BitSieve;->sieveSearch(II)I

    move-result v0

    .line 88
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 89
    if-lez v0, :cond_34

    iget v2, p0, Ljava/math/BitSieve;->length:I

    if-lt v1, v2, :cond_1b

    .line 90
    :cond_34
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;I)V
    .registers 11
    .param p1, "base"    # Ljava/math/BigInteger;
    .param p2, "searchLen"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    add-int/lit8 v0, p2, -0x1

    invoke-static {v0}, Ljava/math/BitSieve;->unitIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/math/BitSieve;->bits:[J

    .line 106
    iput p2, p0, Ljava/math/BitSieve;->length:I

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "start":I
    sget-object v1, Ljava/math/BitSieve;->smallSieve:Ljava/math/BitSieve;

    sget-object v2, Ljava/math/BitSieve;->smallSieve:Ljava/math/BitSieve;

    iget v2, v2, Ljava/math/BitSieve;->length:I

    invoke-direct {v1, v2, v0}, Ljava/math/BitSieve;->sieveSearch(II)I

    move-result v1

    .line 110
    .local v1, "step":I
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 113
    .local v2, "convertedStep":I
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 114
    .local v3, "b":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    .line 117
    .local v4, "q":Ljava/math/MutableBigInteger;
    :cond_2a
    invoke-virtual {v3, v2, v4}, Ljava/math/MutableBigInteger;->divideOneWord(ILjava/math/MutableBigInteger;)I

    move-result v0

    .line 120
    sub-int v0, v2, v0

    .line 121
    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_35

    .line 122
    add-int/2addr v0, v2

    .line 123
    :cond_35
    add-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p2, v5, v2}, Ljava/math/BitSieve;->sieveSingle(III)V

    .line 126
    sget-object v5, Ljava/math/BitSieve;->smallSieve:Ljava/math/BitSieve;

    sget-object v6, Ljava/math/BitSieve;->smallSieve:Ljava/math/BitSieve;

    iget v6, v6, Ljava/math/BitSieve;->length:I

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v5, v6, v7}, Ljava/math/BitSieve;->sieveSearch(II)I

    move-result v1

    .line 127
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v2, v5, 0x1

    .line 128
    if-gtz v1, :cond_2a

    .line 129
    return-void
.end method

.method private static blacklist bit(I)J
    .registers 4
    .param p0, "bitIndex"    # I

    .line 142
    and-int/lit8 v0, p0, 0x3f

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private blacklist get(I)Z
    .registers 7
    .param p1, "bitIndex"    # I

    .line 149
    invoke-static {p1}, Ljava/math/BitSieve;->unitIndex(I)I

    move-result v0

    .line 150
    .local v0, "unitIndex":I
    iget-object v1, p0, Ljava/math/BitSieve;->bits:[J

    aget-wide v1, v1, v0

    invoke-static {p1}, Ljava/math/BitSieve;->bit(I)J

    move-result-wide v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private blacklist set(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 157
    invoke-static {p1}, Ljava/math/BitSieve;->unitIndex(I)I

    move-result v0

    .line 158
    .local v0, "unitIndex":I
    iget-object v1, p0, Ljava/math/BitSieve;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Ljava/math/BitSieve;->bit(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 159
    return-void
.end method

.method private blacklist sieveSearch(II)I
    .registers 6
    .param p1, "limit"    # I
    .param p2, "start"    # I

    .line 167
    const/4 v0, -0x1

    if-lt p2, p1, :cond_4

    .line 168
    return v0

    .line 170
    :cond_4
    move v1, p2

    .line 172
    .local v1, "index":I
    :cond_5
    invoke-direct {p0, v1}, Ljava/math/BitSieve;->get(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 173
    return v1

    .line 174
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 175
    add-int/lit8 v2, p1, -0x1

    if-lt v1, v2, :cond_5

    .line 176
    return v0
.end method

.method private blacklist sieveSingle(III)V
    .registers 4
    .param p1, "limit"    # I
    .param p2, "start"    # I
    .param p3, "step"    # I

    .line 185
    nop

    :goto_1
    if-ge p2, p1, :cond_8

    .line 186
    invoke-direct {p0, p2}, Ljava/math/BitSieve;->set(I)V

    .line 187
    add-int/2addr p2, p3

    goto :goto_1

    .line 189
    :cond_8
    return-void
.end method

.method private static blacklist unitIndex(I)I
    .registers 2
    .param p0, "bitIndex"    # I

    .line 135
    ushr-int/lit8 v0, p0, 0x6

    return v0
.end method


# virtual methods
.method blacklist retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 13
    .param p1, "initValue"    # Ljava/math/BigInteger;
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/util/Random;

    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/math/BitSieve;->bits:[J

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 198
    iget-object v2, p0, Ljava/math/BitSieve;->bits:[J

    aget-wide v2, v2, v1

    not-long v2, v2

    .line 199
    .local v2, "nextLong":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d
    const/16 v5, 0x40

    if-ge v4, v5, :cond_30

    .line 200
    const-wide/16 v5, 0x1

    and-long v7, v2, v5

    cmp-long v5, v7, v5

    if-nez v5, :cond_29

    .line 201
    int-to-long v5, v0

    .line 202
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 201
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 203
    .local v5, "candidate":Ljava/math/BigInteger;
    invoke-virtual {v5, p2, p3}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 204
    return-object v5

    .line 206
    .end local v5    # "candidate":Ljava/math/BigInteger;
    :cond_29
    const/4 v5, 0x1

    ushr-long/2addr v2, v5

    .line 207
    add-int/lit8 v0, v0, 0x2

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 197
    .end local v2    # "nextLong":J
    .end local v4    # "j":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    .end local v1    # "i":I
    :cond_33
    const/4 v1, 0x0

    return-object v1
.end method
