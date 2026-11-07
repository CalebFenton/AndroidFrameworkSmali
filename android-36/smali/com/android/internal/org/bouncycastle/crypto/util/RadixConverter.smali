.class public Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
.super Ljava/lang/Object;
.source "RadixConverter.java"


# static fields
.field private static final blacklist DEFAULT_POWERS_TO_CACHE:I = 0xa

.field private static final blacklist LOG_LONG_MAX_VALUE:D


# instance fields
.field private final blacklist digitsGroupLength:I

.field private final blacklist digitsGroupSpacePowers:[Ljava/math/BigInteger;

.field private final blacklist digitsGroupSpaceSize:Ljava/math/BigInteger;

.field private final blacklist radix:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "radix"    # I

    .line 69
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(II)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 7
    .param p1, "radix"    # I
    .param p2, "numberOfCachedPowers"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    .line 59
    sget-wide v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 60
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-direct {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method private blacklist fromEncoding(II[S)J
    .registers 11
    .param p1, "groupStartDigitIndex"    # I
    .param p2, "groupEndDigitIndex"    # I
    .param p3, "digits"    # [S

    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "decimalNumber":J
    move v2, p1

    .local v2, "digitIndex":I
    :goto_3
    if-ge v2, p2, :cond_15

    .line 174
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v3, v3

    mul-long/2addr v3, v0

    aget-short v5, p3, v2

    const v6, 0xffff

    and-int/2addr v5, v6

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    .end local v2    # "digitIndex":I
    :cond_15
    return-wide v0
.end method

.method private blacklist precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6
    .param p1, "numberOfCachedPowers"    # I
    .param p2, "digitsGroupSpaceSize"    # Ljava/math/BigInteger;

    .line 181
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 182
    .local v0, "cachedPowers":[Ljava/math/BigInteger;
    move-object v1, p2

    .line 183
    .local v1, "currentPower":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p1, :cond_f

    .line 185
    aput-object v1, v0, v2

    .line 186
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 188
    .end local v2    # "i":I
    :cond_f
    return-object v0
.end method

.method private blacklist toEncoding(JI[S)I
    .registers 9
    .param p1, "number"    # J
    .param p3, "digitIndex"    # I
    .param p4, "out"    # [S

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_27

    if-ltz p3, :cond_27

    .line 108
    cmp-long v1, p1, v2

    if-nez v1, :cond_14

    .line 110
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "digitIndex":I
    .local v1, "digitIndex":I
    const/4 v2, 0x0

    aput-short v2, p4, p3

    .line 111
    move p3, v1

    goto :goto_24

    .line 113
    .end local v1    # "digitIndex":I
    .restart local p3    # "digitIndex":I
    :cond_14
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    long-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p4, p3

    .line 114
    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, p3

    div-long/2addr p1, v2

    move p3, v1

    .line 106
    .end local v1    # "digitIndex":I
    .restart local p3    # "digitIndex":I
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    :cond_27
    cmp-long v0, p1, v2

    if-nez v0, :cond_2c

    .line 120
    return p3

    .line 118
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to convert decimal number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist fromEncoding([S)Ljava/math/BigInteger;
    .registers 14
    .param p1, "digits"    # [S

    .line 129
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    .line 130
    .local v0, "currentGroupCardinality":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 131
    .local v1, "res":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 132
    .local v2, "indexGroup":I
    array-length v3, p1

    .line 133
    .local v3, "numberOfDigits":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int v4, v3, v4

    .line 134
    .local v4, "groupStartDigitIndex":I
    :goto_9
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    neg-int v5, v5

    if-le v4, v5, :cond_4d

    .line 137
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 138
    .local v5, "actualDigitsInGroup":I
    if-gez v4, :cond_17

    .line 141
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    add-int v5, v6, v4

    .line 142
    const/4 v4, 0x0

    .line 144
    :cond_17
    add-int v6, v4, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 145
    .local v6, "groupEndDigitIndex":I
    invoke-direct {p0, v4, v6, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->fromEncoding(II[S)J

    move-result-wide v7

    .line 146
    .local v7, "groupInBaseRadix":J
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 147
    .local v9, "bigInteger":Ljava/math/BigInteger;
    if-nez v2, :cond_29

    .line 149
    move-object v1, v9

    goto :goto_46

    .line 154
    :cond_29
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    array-length v10, v10

    if-gt v2, v10, :cond_35

    .line 155
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    goto :goto_3b

    .line 156
    :cond_35
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    :goto_3b
    nop

    .line 157
    .end local v0    # "currentGroupCardinality":Ljava/math/BigInteger;
    .local v10, "currentGroupCardinality":Ljava/math/BigInteger;
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v1, v0

    move-object v0, v10

    .line 159
    .end local v10    # "currentGroupCardinality":Ljava/math/BigInteger;
    .restart local v0    # "currentGroupCardinality":Ljava/math/BigInteger;
    :goto_46
    nop

    .end local v5    # "actualDigitsInGroup":I
    .end local v6    # "groupEndDigitIndex":I
    .end local v7    # "groupInBaseRadix":J
    .end local v9    # "bigInteger":Ljava/math/BigInteger;
    add-int/lit8 v2, v2, 0x1

    .line 135
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int/2addr v4, v5

    goto :goto_9

    .line 161
    .end local v4    # "groupStartDigitIndex":I
    :cond_4d
    return-object v1
.end method

.method public blacklist getDigitsGroupLength()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    return v0
.end method

.method public blacklist getRadix()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    return v0
.end method

.method public blacklist toEncoding(Ljava/math/BigInteger;I[S)V
    .registers 8
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "messageLength"    # I
    .param p3, "out"    # [S

    .line 79
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_39

    .line 85
    add-int/lit8 v0, p2, -0x1

    .line 88
    .local v0, "digitIndex":I
    :cond_8
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 90
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "digitIndex":I
    .local v1, "digitIndex":I
    aput-short v2, p3, v0

    .line 91
    move v0, v1

    goto :goto_2a

    .line 93
    .end local v1    # "digitIndex":I
    .restart local v0    # "digitIndex":I
    :cond_17
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 94
    .local v1, "quotientAndRemainder":[Ljava/math/BigInteger;
    aget-object p1, v1, v2

    .line 95
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->toEncoding(JI[S)I

    move-result v0

    .line 97
    .end local v1    # "quotientAndRemainder":[Ljava/math/BigInteger;
    :goto_2a
    if-gez v0, :cond_8

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_33

    .line 102
    return-void

    .line 100
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 81
    .end local v0    # "digitIndex":I
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
