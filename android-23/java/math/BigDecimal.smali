.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static synthetic -java_math_RoundingModeSwitchesValues:[I = null

.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C

.field private static final FIVE_POW:[Ljava/math/BigInteger;

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I

.field private static final LONG_POWERS_OF_TEN_BIT_LENGTH:[I

.field public static final ONE:Ljava/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal;

.field private static final TEN_POW:[Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigDecimal;

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method private static synthetic -getjava_math_RoundingModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/math/BigDecimal;->-java_math_RoundingModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/math/BigDecimal;->-java_math_RoundingModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@10
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@19
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@22
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@2b
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@34
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@3d
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@46
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@4f
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Ljava/math/BigDecimal;->-java_math_RoundingModeSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v2, 0xb

    #@2
    const/4 v4, 0x0

    #@3
    .line 128
    const/16 v1, 0x1c

    #@5
    new-array v1, v1, [J

    #@7
    fill-array-data v1, :array_0

    #@a
    .line 127
    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    #@c
    .line 157
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    #@e
    array-length v1, v1

    #@f
    new-array v1, v1, [I

    #@11
    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    #@13
    .line 158
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@15
    array-length v1, v1

    #@16
    new-array v1, v1, [I

    #@18
    sput-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@1a
    .line 166
    new-array v1, v2, [Ljava/math/BigDecimal;

    #@1c
    sput-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    #@1e
    .line 172
    new-array v1, v2, [Ljava/math/BigDecimal;

    #@20
    sput-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    #@22
    .line 175
    const/16 v1, 0x64

    #@24
    new-array v1, v1, [C

    #@26
    sput-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@28
    .line 178
    sget-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@2a
    const/16 v2, 0x30

    #@2c
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    #@2f
    .line 180
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    #@32
    array-length v1, v1

    #@33
    if-ge v0, v1, :cond_0

    #@35
    .line 181
    sget-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    #@37
    new-instance v2, Ljava/math/BigDecimal;

    #@39
    invoke-direct {v2, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    #@3c
    aput-object v2, v1, v0

    #@3e
    .line 182
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    #@40
    new-instance v2, Ljava/math/BigDecimal;

    #@42
    invoke-direct {v2, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    #@45
    aput-object v2, v1, v0

    #@47
    .line 180
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 184
    :cond_0
    const/4 v0, 0x0

    #@4b
    :goto_1
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    #@4d
    array-length v1, v1

    #@4e
    if-ge v0, v1, :cond_1

    #@50
    .line 185
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    #@52
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    #@54
    aget-wide v2, v2, v0

    #@56
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    #@59
    move-result v2

    #@5a
    aput v2, v1, v0

    #@5c
    .line 184
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 187
    :cond_1
    const/4 v0, 0x0

    #@60
    :goto_2
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@62
    array-length v1, v1

    #@63
    if-ge v0, v1, :cond_2

    #@65
    .line 188
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@67
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@69
    aget-wide v2, v2, v0

    #@6b
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    #@6e
    move-result v2

    #@6f
    aput v2, v1, v0

    #@71
    .line 187
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_2

    #@74
    .line 192
    :cond_2
    sget-object v1, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    #@76
    sput-object v1, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@78
    .line 193
    sget-object v1, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    #@7a
    sput-object v1, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    #@7c
    .line 199
    new-instance v1, Ljava/math/BigDecimal;

    #@7e
    invoke-direct {v1, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    #@81
    sput-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    #@83
    .line 204
    new-instance v1, Ljava/math/BigDecimal;

    #@85
    const/4 v2, 0x1

    #@86
    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    #@89
    sput-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    #@8b
    .line 209
    new-instance v1, Ljava/math/BigDecimal;

    #@8d
    const/16 v2, 0xa

    #@8f
    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    #@92
    sput-object v1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    #@94
    .line 35
    return-void

    #@95
    .line 128
    nop

    #@96
    :array_0
    .array-data 8
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
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
        0x6765c793fa10079dL    # 1.2129899831238297E190
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 13
    .param p1, "val"    # D

    #@0
    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 110
    const/4 v7, 0x0

    #@4
    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@6
    .line 113
    const/4 v7, 0x0

    #@7
    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    #@9
    .line 235
    const/4 v7, 0x0

    #@a
    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    #@c
    .line 464
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@f
    move-result v7

    #@10
    if-nez v7, :cond_0

    #@12
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    .line 465
    :cond_0
    new-instance v7, Ljava/lang/NumberFormatException;

    #@1a
    new-instance v8, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v9, "Infinity or NaN: "

    #@22
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 467
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@35
    move-result-wide v2

    #@36
    .line 471
    .local v2, "bits":J
    const/16 v7, 0x34

    #@38
    shr-long v8, v2, v7

    #@3a
    const-wide/16 v10, 0x7ff

    #@3c
    and-long/2addr v8, v10

    #@3d
    long-to-int v7, v8

    #@3e
    rsub-int v7, v7, 0x433

    #@40
    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    #@42
    .line 473
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@44
    const/16 v8, 0x433

    #@46
    if-ne v7, v8, :cond_5

    #@48
    const-wide v8, 0xfffffffffffffL

    #@4d
    and-long/2addr v8, v2

    #@4e
    const/4 v7, 0x1

    #@4f
    shl-long v4, v8, v7

    #@51
    .line 475
    .local v4, "mantissa":J
    :goto_0
    const-wide/16 v8, 0x0

    #@53
    cmp-long v7, v4, v8

    #@55
    if-nez v7, :cond_2

    #@57
    .line 476
    const/4 v7, 0x0

    #@58
    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    #@5a
    .line 477
    const/4 v7, 0x1

    #@5b
    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    #@5d
    .line 480
    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@5f
    if-lez v7, :cond_3

    #@61
    .line 481
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@63
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@66
    move-result v8

    #@67
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@6a
    move-result v6

    #@6b
    .line 482
    .local v6, "trailingZeros":I
    ushr-long/2addr v4, v6

    #@6c
    .line 483
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@6e
    sub-int/2addr v7, v6

    #@6f
    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    #@71
    .line 486
    .end local v6    # "trailingZeros":I
    :cond_3
    const/16 v7, 0x3f

    #@73
    shr-long v8, v2, v7

    #@75
    const-wide/16 v10, 0x0

    #@77
    cmp-long v7, v8, v10

    #@79
    if-eqz v7, :cond_4

    #@7b
    .line 487
    neg-long v4, v4

    #@7c
    .line 489
    :cond_4
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->bitLength(J)I

    #@7f
    move-result v1

    #@80
    .line 490
    .local v1, "mantissaBits":I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@82
    if-gez v7, :cond_8

    #@84
    .line 491
    if-nez v1, :cond_6

    #@86
    const/4 v7, 0x0

    #@87
    :goto_1
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    #@89
    .line 492
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    #@8b
    const/16 v8, 0x40

    #@8d
    if-ge v7, v8, :cond_7

    #@8f
    .line 493
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@91
    neg-int v7, v7

    #@92
    shl-long v8, v4, v7

    #@94
    iput-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    #@96
    .line 500
    :goto_2
    const/4 v7, 0x0

    #@97
    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    #@99
    .line 463
    :goto_3
    return-void

    #@9a
    .line 474
    .end local v1    # "mantissaBits":I
    .end local v4    # "mantissa":J
    :cond_5
    const-wide v8, 0xfffffffffffffL

    #@9f
    and-long/2addr v8, v2

    #@a0
    const-wide/high16 v10, 0x10000000000000L

    #@a2
    or-long v4, v8, v10

    #@a4
    .restart local v4    # "mantissa":J
    goto :goto_0

    #@a5
    .line 491
    .restart local v1    # "mantissaBits":I
    :cond_6
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@a7
    sub-int v7, v1, v7

    #@a9
    goto :goto_1

    #@aa
    .line 495
    :cond_7
    new-instance v0, Ljava/math/BigInt;

    #@ac
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@af
    .line 496
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, v4, v5}, Ljava/math/BigInt;->putLongInt(J)V

    #@b2
    .line 497
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@b4
    neg-int v7, v7

    #@b5
    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    #@b8
    .line 498
    new-instance v7, Ljava/math/BigInteger;

    #@ba
    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@bd
    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@bf
    goto :goto_2

    #@c0
    .line 501
    .end local v0    # "bi":Ljava/math/BigInt;
    :cond_8
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@c2
    if-lez v7, :cond_a

    #@c4
    .line 503
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@c6
    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    #@c8
    array-length v8, v8

    #@c9
    if-ge v7, v8, :cond_9

    #@cb
    .line 504
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    #@cd
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    #@cf
    aget v7, v7, v8

    #@d1
    add-int/2addr v7, v1

    #@d2
    const/16 v8, 0x40

    #@d4
    if-ge v7, v8, :cond_9

    #@d6
    .line 505
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    #@d8
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    #@da
    aget-wide v8, v7, v8

    #@dc
    mul-long/2addr v8, v4

    #@dd
    iput-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    #@df
    .line 506
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    #@e1
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->bitLength(J)I

    #@e4
    move-result v7

    #@e5
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    #@e7
    goto :goto_3

    #@e8
    .line 508
    :cond_9
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@eb
    move-result-object v7

    #@ec
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    #@ee
    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@f1
    move-result-object v7

    #@f2
    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    #@f5
    goto :goto_3

    #@f6
    .line 511
    :cond_a
    iput-wide v4, p0, Ljava/math/BigDecimal;->smallValue:J

    #@f8
    .line 512
    iput v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@fa
    goto :goto_3
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 538
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    #@3
    .line 539
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6
    .line 537
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "val"    # I

    #@0
    .prologue
    .line 610
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    #@4
    .line 609
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "smallValue"    # I
    .param p2, "scale"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 243
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 110
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@7
    .line 113
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    #@9
    .line 235
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    #@b
    .line 244
    int-to-long v0, p1

    #@c
    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@e
    .line 245
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    #@10
    .line 246
    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@16
    .line 243
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 628
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    #@4
    .line 629
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@7
    .line 627
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "val"    # J

    #@0
    .prologue
    .line 640
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    #@4
    .line 639
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 3
    .param p1, "smallValue"    # J
    .param p3, "scale"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 110
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@7
    .line 113
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    #@9
    .line 235
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    #@b
    .line 238
    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    #@d
    .line 239
    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    #@f
    .line 240
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@15
    .line 237
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # J
    .param p3, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    #@3
    .line 659
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6
    .line 657
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, v0, v2, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    #@c
    .line 424
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, v0, v2, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    #@c
    .line 445
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@f
    .line 443
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 547
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@4
    .line 546
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 574
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@5
    .line 110
    iput-object v1, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@7
    .line 113
    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@9
    .line 235
    iput v0, p0, Ljava/math/BigDecimal;->precision:I

    #@b
    .line 575
    if-nez p1, :cond_0

    #@d
    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "unscaledVal == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 578
    :cond_0
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    #@18
    .line 579
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    #@1b
    .line 574
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 0
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@3
    .line 599
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6
    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 0
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 562
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@3
    .line 563
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6
    .line 561
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "in"    # [C

    #@0
    .prologue
    .line 390
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    #@5
    .line 389
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 16
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 110
    const/4 v11, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput-object v11, v0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@8
    .line 113
    const/4 v11, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput v11, v0, Ljava/math/BigDecimal;->hashCode:I

    #@d
    .line 235
    const/4 v11, 0x0

    #@e
    move-object/from16 v0, p0

    #@10
    iput v11, v0, Ljava/math/BigDecimal;->precision:I

    #@12
    .line 266
    move/from16 v2, p2

    #@14
    .line 267
    .local v2, "begin":I
    add-int/lit8 v11, p3, -0x1

    #@16
    add-int v5, p2, v11

    #@18
    .line 272
    .local v5, "last":I
    if-nez p1, :cond_0

    #@1a
    .line 273
    new-instance v11, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v12, "in == null"

    #@1f
    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v11

    #@23
    .line 275
    :cond_0
    move-object/from16 v0, p1

    #@25
    array-length v11, v0

    #@26
    if-ge v5, v11, :cond_1

    #@28
    if-gez p2, :cond_2

    #@2a
    .line 276
    :cond_1
    new-instance v11, Ljava/lang/NumberFormatException;

    #@2c
    new-instance v12, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v13, "Bad offset/length: offset="

    #@34
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v12

    #@38
    move/from16 v0, p2

    #@3a
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v12

    #@3e
    .line 277
    const-string/jumbo v13, " len="

    #@41
    .line 276
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v12

    #@45
    move/from16 v0, p3

    #@47
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v12

    #@4b
    .line 277
    const-string/jumbo v13, " in.length="

    #@4e
    .line 276
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v12

    #@52
    .line 277
    move-object/from16 v0, p1

    #@54
    array-length v13, v0

    #@55
    .line 276
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@60
    throw v11

    #@61
    .line 275
    :cond_2
    if-lez p3, :cond_1

    #@63
    if-ltz v5, :cond_1

    #@65
    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    #@67
    move/from16 v0, p3

    #@69
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6c
    .line 282
    .local v9, "unscaledBuffer":Ljava/lang/StringBuilder;
    move/from16 v0, p2

    #@6e
    if-gt v0, v5, :cond_3

    #@70
    aget-char v11, p1, p2

    #@72
    const/16 v12, 0x2b

    #@74
    if-ne v11, v12, :cond_3

    #@76
    .line 283
    add-int/lit8 p2, p2, 0x1

    #@78
    .line 284
    add-int/lit8 v2, v2, 0x1

    #@7a
    .line 286
    :cond_3
    const/4 v4, 0x0

    #@7b
    .line 287
    .local v4, "counter":I
    const/4 v10, 0x0

    #@7c
    .line 289
    .local v10, "wasNonZero":Z
    :goto_0
    move/from16 v0, p2

    #@7e
    if-gt v0, v5, :cond_6

    #@80
    aget-char v11, p1, p2

    #@82
    const/16 v12, 0x2e

    #@84
    if-eq v11, v12, :cond_6

    #@86
    aget-char v11, p1, p2

    #@88
    const/16 v12, 0x65

    #@8a
    if-eq v11, v12, :cond_6

    #@8c
    aget-char v11, p1, p2

    #@8e
    const/16 v12, 0x45

    #@90
    if-eq v11, v12, :cond_6

    #@92
    .line 290
    if-nez v10, :cond_4

    #@94
    .line 291
    aget-char v11, p1, p2

    #@96
    const/16 v12, 0x30

    #@98
    if-ne v11, v12, :cond_5

    #@9a
    .line 292
    add-int/lit8 v4, v4, 0x1

    #@9c
    .line 289
    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 294
    :cond_5
    const/4 v10, 0x1

    #@a0
    goto :goto_1

    #@a1
    .line 299
    :cond_6
    sub-int v11, p2, v2

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v9, v0, v2, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@a8
    .line 300
    sub-int v11, p2, v2

    #@aa
    add-int/lit8 v3, v11, 0x0

    #@ac
    .line 302
    .local v3, "bufLength":I
    move/from16 v0, p2

    #@ae
    if-gt v0, v5, :cond_c

    #@b0
    aget-char v11, p1, p2

    #@b2
    const/16 v12, 0x2e

    #@b4
    if-ne v11, v12, :cond_c

    #@b6
    .line 303
    add-int/lit8 p2, p2, 0x1

    #@b8
    .line 305
    move/from16 v2, p2

    #@ba
    .line 306
    :goto_2
    move/from16 v0, p2

    #@bc
    if-gt v0, v5, :cond_9

    #@be
    aget-char v11, p1, p2

    #@c0
    const/16 v12, 0x65

    #@c2
    if-eq v11, v12, :cond_9

    #@c4
    .line 307
    aget-char v11, p1, p2

    #@c6
    const/16 v12, 0x45

    #@c8
    if-eq v11, v12, :cond_9

    #@ca
    .line 308
    if-nez v10, :cond_7

    #@cc
    .line 309
    aget-char v11, p1, p2

    #@ce
    const/16 v12, 0x30

    #@d0
    if-ne v11, v12, :cond_8

    #@d2
    .line 310
    add-int/lit8 v4, v4, 0x1

    #@d4
    .line 307
    :cond_7
    :goto_3
    add-int/lit8 p2, p2, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 312
    :cond_8
    const/4 v10, 0x1

    #@d8
    goto :goto_3

    #@d9
    .line 316
    :cond_9
    sub-int v11, p2, v2

    #@db
    move-object/from16 v0, p0

    #@dd
    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    #@df
    .line 317
    move-object/from16 v0, p0

    #@e1
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@e3
    add-int/2addr v3, v11

    #@e4
    .line 318
    move-object/from16 v0, p0

    #@e6
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@e8
    move-object/from16 v0, p1

    #@ea
    invoke-virtual {v9, v0, v2, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@ed
    .line 323
    :goto_4
    move/from16 v0, p2

    #@ef
    if-gt v0, v5, :cond_d

    #@f1
    aget-char v11, p1, p2

    #@f3
    const/16 v12, 0x65

    #@f5
    if-eq v11, v12, :cond_a

    #@f7
    aget-char v11, p1, p2

    #@f9
    const/16 v12, 0x45

    #@fb
    if-ne v11, v12, :cond_d

    #@fd
    .line 324
    :cond_a
    add-int/lit8 p2, p2, 0x1

    #@ff
    .line 326
    move/from16 v2, p2

    #@101
    .line 327
    move/from16 v0, p2

    #@103
    if-gt v0, v5, :cond_b

    #@105
    aget-char v11, p1, p2

    #@107
    const/16 v12, 0x2b

    #@109
    if-ne v11, v12, :cond_b

    #@10b
    .line 328
    add-int/lit8 p2, p2, 0x1

    #@10d
    .line 329
    move/from16 v0, p2

    #@10f
    if-gt v0, v5, :cond_b

    #@111
    aget-char v11, p1, p2

    #@113
    const/16 v12, 0x2d

    #@115
    if-eq v11, v12, :cond_b

    #@117
    .line 330
    add-int/lit8 v2, v2, 0x1

    #@119
    .line 334
    :cond_b
    add-int/lit8 v11, v5, 0x1

    #@11b
    sub-int/2addr v11, v2

    #@11c
    move-object/from16 v0, p1

    #@11e
    invoke-static {v0, v2, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    #@121
    move-result-object v8

    #@122
    .line 336
    .local v8, "scaleString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@124
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@126
    int-to-long v12, v11

    #@127
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12a
    move-result v11

    #@12b
    int-to-long v14, v11

    #@12c
    sub-long v6, v12, v14

    #@12e
    .line 337
    .local v6, "newScale":J
    long-to-int v11, v6

    #@12f
    move-object/from16 v0, p0

    #@131
    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    #@133
    .line 338
    move-object/from16 v0, p0

    #@135
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@137
    int-to-long v12, v11

    #@138
    cmp-long v11, v6, v12

    #@13a
    if-eqz v11, :cond_d

    #@13c
    .line 339
    new-instance v11, Ljava/lang/NumberFormatException;

    #@13e
    const-string/jumbo v12, "Scale out of range"

    #@141
    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@144
    throw v11

    #@145
    .line 320
    .end local v6    # "newScale":J
    .end local v8    # "scaleString":Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    #@146
    move-object/from16 v0, p0

    #@148
    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    #@14a
    goto :goto_4

    #@14b
    .line 343
    :cond_d
    const/16 v11, 0x13

    #@14d
    if-ge v3, v11, :cond_e

    #@14f
    .line 344
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v11

    #@153
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@156
    move-result-wide v12

    #@157
    move-object/from16 v0, p0

    #@159
    iput-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    #@15b
    .line 345
    move-object/from16 v0, p0

    #@15d
    iget-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    #@15f
    invoke-static {v12, v13}, Ljava/math/BigDecimal;->bitLength(J)I

    #@162
    move-result v11

    #@163
    move-object/from16 v0, p0

    #@165
    iput v11, v0, Ljava/math/BigDecimal;->bitLength:I

    #@167
    .line 265
    :goto_5
    return-void

    #@168
    .line 347
    :cond_e
    new-instance v11, Ljava/math/BigInteger;

    #@16a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v12

    #@16e
    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@171
    move-object/from16 v0, p0

    #@173
    invoke-direct {v0, v11}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    #@176
    goto :goto_5
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 0
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    #@3
    .line 375
    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6
    .line 373
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 2
    .param p1, "in"    # [C
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 412
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    #@5
    .line 413
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@8
    .line 411
    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 8
    .param p0, "thisValue"    # Ljava/math/BigDecimal;
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "diffScale"    # I

    #@0
    .prologue
    .line 763
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@2
    array-length v1, v1

    #@3
    if-ge p2, v1, :cond_0

    #@5
    .line 764
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@7
    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    #@9
    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@b
    aget v3, v3, p2

    #@d
    add-int/2addr v2, v3

    #@e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    const/16 v2, 0x40

    #@16
    if-ge v1, v2, :cond_0

    #@18
    .line 765
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1a
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@1c
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@1e
    aget-wide v6, v1, p2

    #@20
    mul-long/2addr v4, v6

    #@21
    add-long/2addr v2, v4

    #@22
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@24
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 767
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@2c
    move-result-object v1

    #@2d
    int-to-long v2, p2

    #@2e
    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@35
    move-result-object v0

    #@36
    .line 768
    .local v0, "bi":Ljava/math/BigInt;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    #@41
    .line 769
    new-instance v1, Ljava/math/BigDecimal;

    #@43
    new-instance v2, Ljava/math/BigInteger;

    #@45
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@48
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    #@4a
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@4d
    return-object v1
.end method

.method private approxPrecision()I
    .locals 4

    #@0
    .prologue
    .line 2832
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 2833
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    #@6
    .line 2832
    :goto_0
    return v0

    #@7
    .line 2834
    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    int-to-double v0, v0

    #@c
    const-wide v2, 0x3fd34413509f79ffL    # 0.3010299956639812

    #@11
    mul-double/2addr v0, v2

    #@12
    double-to-int v0, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0
.end method

.method private static bitLength(I)I
    .locals 1
    .param p0, "smallValue"    # I

    #@0
    .prologue
    .line 2914
    if-gez p0, :cond_0

    #@2
    .line 2915
    not-int p0, p0

    #@3
    .line 2917
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@6
    move-result v0

    #@7
    rsub-int/lit8 v0, v0, 0x20

    #@9
    return v0
.end method

.method private static bitLength(J)I
    .locals 2
    .param p0, "smallValue"    # J

    #@0
    .prologue
    .line 2907
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 2908
    not-long p0, p0

    #@7
    .line 2910
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@a
    move-result v0

    #@b
    rsub-int/lit8 v0, v0, 0x40

    #@d
    return v0
.end method

.method private decimalDigitsInLong(J)I
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 1805
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    cmp-long v1, p1, v2

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1806
    const/16 v1, 0x13

    #@8
    return v1

    #@9
    .line 1808
    :cond_0
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@b
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    #@e
    move-result-wide v2

    #@f
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    #@12
    move-result v0

    #@13
    .line 1809
    .local v0, "index":I
    if-gez v0, :cond_1

    #@15
    neg-int v1, v0

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    :goto_0
    return v1

    #@19
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 16
    .param p0, "scaledDividend"    # Ljava/math/BigInteger;
    .param p1, "scaledDivisor"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1076
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@3
    move-result-object v3

    #@4
    .line 1078
    .local v3, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v11, 0x0

    #@5
    aget-object v6, v3, v11

    #@7
    .line 1079
    .local v6, "quotient":Ljava/math/BigInteger;
    const/4 v11, 0x1

    #@8
    aget-object v7, v3, v11

    #@a
    .line 1080
    .local v7, "remainder":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    #@d
    move-result v11

    #@e
    if-nez v11, :cond_0

    #@10
    .line 1081
    new-instance v11, Ljava/math/BigDecimal;

    #@12
    move/from16 v0, p2

    #@14
    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@17
    return-object v11

    #@18
    .line 1083
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    #@1b
    move-result v11

    #@1c
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    #@1f
    move-result v12

    #@20
    mul-int v10, v11, v12

    #@22
    .line 1085
    .local v10, "sign":I
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    #@25
    move-result v11

    #@26
    const/16 v12, 0x3f

    #@28
    if-ge v11, v12, :cond_2

    #@2a
    .line 1086
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    #@2d
    move-result-wide v8

    #@2e
    .line 1087
    .local v8, "rem":J
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->longValue()J

    #@31
    move-result-wide v4

    #@32
    .line 1088
    .local v4, "divisor":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    #@35
    move-result-wide v12

    #@36
    const-wide/16 v14, 0x2

    #@38
    mul-long/2addr v12, v14

    #@39
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@3c
    move-result-wide v14

    #@3d
    invoke-static {v12, v13, v14, v15}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    #@40
    move-result v2

    #@41
    .line 1090
    .local v2, "compRem":I
    const/4 v11, 0x0

    #@42
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    #@45
    move-result v11

    #@46
    if-eqz v11, :cond_1

    #@48
    const/4 v11, 0x1

    #@49
    .line 1091
    :goto_0
    add-int/lit8 v12, v2, 0x5

    #@4b
    mul-int/2addr v12, v10

    #@4c
    .line 1090
    move-object/from16 v0, p3

    #@4e
    invoke-static {v11, v12, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    #@51
    move-result v2

    #@52
    .line 1099
    .end local v4    # "divisor":J
    .end local v8    # "rem":J
    :goto_1
    if-eqz v2, :cond_5

    #@54
    .line 1100
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    #@57
    move-result v11

    #@58
    const/16 v12, 0x3f

    #@5a
    if-ge v11, v12, :cond_4

    #@5c
    .line 1101
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    #@5f
    move-result-wide v12

    #@60
    int-to-long v14, v2

    #@61
    add-long/2addr v12, v14

    #@62
    move/from16 v0, p2

    #@64
    invoke-static {v12, v13, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@67
    move-result-object v11

    #@68
    return-object v11

    #@69
    .line 1090
    .restart local v4    # "divisor":J
    .restart local v8    # "rem":J
    :cond_1
    const/4 v11, 0x0

    #@6a
    goto :goto_0

    #@6b
    .line 1095
    .end local v2    # "compRem":I
    .end local v4    # "divisor":J
    .end local v8    # "rem":J
    :cond_2
    invoke-virtual {v7}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@6e
    move-result-object v11

    #@6f
    invoke-virtual {v11}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    #@72
    move-result-object v11

    #@73
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@76
    move-result-object v12

    #@77
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@7a
    move-result v2

    #@7b
    .line 1096
    .restart local v2    # "compRem":I
    const/4 v11, 0x0

    #@7c
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    #@7f
    move-result v11

    #@80
    if-eqz v11, :cond_3

    #@82
    const/4 v11, 0x1

    #@83
    .line 1097
    :goto_2
    add-int/lit8 v12, v2, 0x5

    #@85
    mul-int/2addr v12, v10

    #@86
    .line 1096
    move-object/from16 v0, p3

    #@88
    invoke-static {v11, v12, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    #@8b
    move-result v2

    #@8c
    goto :goto_1

    #@8d
    :cond_3
    const/4 v11, 0x0

    #@8e
    goto :goto_2

    #@8f
    .line 1103
    :cond_4
    int-to-long v12, v2

    #@90
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@97
    move-result-object v6

    #@98
    .line 1104
    new-instance v11, Ljava/math/BigDecimal;

    #@9a
    move/from16 v0, p2

    #@9c
    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@9f
    return-object v11

    #@a0
    .line 1107
    :cond_5
    new-instance v11, Ljava/math/BigDecimal;

    #@a2
    move/from16 v0, p2

    #@a4
    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@a7
    return-object v11
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10
    .param p0, "scaledDividend"    # J
    .param p2, "scaledDivisor"    # J
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1111
    div-long v2, p0, p2

    #@2
    .line 1112
    .local v2, "quotient":J
    rem-long v4, p0, p2

    #@4
    .line 1113
    .local v4, "remainder":J
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    #@7
    move-result v6

    #@8
    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    #@b
    move-result v7

    #@c
    mul-int v1, v6, v7

    #@e
    .line 1114
    .local v1, "sign":I
    const-wide/16 v6, 0x0

    #@10
    cmp-long v6, v4, v6

    #@12
    if-eqz v6, :cond_0

    #@14
    .line 1117
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@17
    move-result-wide v6

    #@18
    const-wide/16 v8, 0x2

    #@1a
    mul-long/2addr v6, v8

    #@1b
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    #@1e
    move-result-wide v8

    #@1f
    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    #@22
    move-result v0

    #@23
    .line 1119
    .local v0, "compRem":I
    long-to-int v6, v2

    #@24
    and-int/lit8 v6, v6, 0x1

    #@26
    .line 1120
    add-int/lit8 v7, v0, 0x5

    #@28
    mul-int/2addr v7, v1

    #@29
    .line 1119
    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    #@2c
    move-result v6

    #@2d
    int-to-long v6, v6

    #@2e
    add-long/2addr v2, v6

    #@2f
    .line 1124
    .end local v0    # "compRem":I
    :cond_0
    invoke-static {v2, v3, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@32
    move-result-object v6

    #@33
    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 2892
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2893
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@6
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@c
    .line 2895
    :cond_0
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@e
    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .locals 12
    .param p1, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 2659
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    #@3
    move-result v3

    #@4
    .line 2660
    .local v3, "mcPrecision":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@7
    move-result v8

    #@8
    if-lt v8, v3, :cond_0

    #@a
    if-nez v3, :cond_1

    #@c
    .line 2661
    :cond_0
    return-void

    #@d
    .line 2663
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    #@10
    move-result v8

    #@11
    sub-int v1, v8, v3

    #@13
    .line 2665
    .local v1, "discardedPrecision":I
    if-gtz v1, :cond_2

    #@15
    .line 2666
    return-void

    #@16
    .line 2669
    :cond_2
    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    #@18
    const/16 v9, 0x40

    #@1a
    if-ge v8, v9, :cond_3

    #@1c
    .line 2670
    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    #@1f
    .line 2671
    return-void

    #@20
    .line 2674
    :cond_3
    int-to-long v8, v1

    #@21
    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@24
    move-result-object v6

    #@25
    .line 2675
    .local v6, "sizeOfFraction":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@2c
    move-result-object v2

    #@2d
    .line 2676
    .local v2, "integerAndFraction":[Ljava/math/BigInteger;
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    #@2f
    int-to-long v8, v8

    #@30
    int-to-long v10, v1

    #@31
    sub-long v4, v8, v10

    #@33
    .line 2680
    .local v4, "newScale":J
    const/4 v8, 0x1

    #@34
    aget-object v8, v2, v8

    #@36
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_5

    #@3c
    .line 2682
    const/4 v8, 0x1

    #@3d
    aget-object v8, v2, v8

    #@3f
    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v8}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@4a
    move-result v0

    #@4b
    .line 2684
    .local v0, "compRem":I
    const/4 v8, 0x0

    #@4c
    aget-object v8, v2, v8

    #@4e
    const/4 v9, 0x0

    #@4f
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->testBit(I)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_6

    #@55
    const/4 v8, 0x1

    #@56
    .line 2685
    :goto_0
    const/4 v9, 0x1

    #@57
    aget-object v9, v2, v9

    #@59
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    #@5c
    move-result v9

    #@5d
    add-int/lit8 v10, v0, 0x5

    #@5f
    mul-int/2addr v9, v10

    #@60
    .line 2686
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@63
    move-result-object v10

    #@64
    .line 2684
    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    #@67
    move-result v0

    #@68
    .line 2687
    if-eqz v0, :cond_4

    #@6a
    .line 2688
    const/4 v8, 0x0

    #@6b
    aget-object v8, v2, v8

    #@6d
    int-to-long v10, v0

    #@6e
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@75
    move-result-object v8

    #@76
    const/4 v9, 0x0

    #@77
    aput-object v8, v2, v9

    #@79
    .line 2690
    :cond_4
    new-instance v7, Ljava/math/BigDecimal;

    #@7b
    const/4 v8, 0x0

    #@7c
    aget-object v8, v2, v8

    #@7e
    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@81
    .line 2692
    .local v7, "tempBD":Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    #@84
    move-result v8

    #@85
    if-le v8, v3, :cond_5

    #@87
    .line 2693
    const/4 v8, 0x0

    #@88
    aget-object v8, v2, v8

    #@8a
    sget-object v9, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@8c
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8f
    move-result-object v8

    #@90
    const/4 v9, 0x0

    #@91
    aput-object v8, v2, v9

    #@93
    .line 2694
    const-wide/16 v8, 0x1

    #@95
    sub-long/2addr v4, v8

    #@96
    .line 2698
    .end local v0    # "compRem":I
    .end local v7    # "tempBD":Ljava/math/BigDecimal;
    :cond_5
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@99
    move-result v8

    #@9a
    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    #@9c
    .line 2699
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    #@9e
    .line 2700
    const/4 v8, 0x0

    #@9f
    aget-object v8, v2, v8

    #@a1
    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    #@a4
    .line 2658
    return-void

    #@a5
    .line 2684
    .restart local v0    # "compRem":I
    :cond_6
    const/4 v8, 0x0

    #@a6
    goto :goto_0
.end method

.method private isZero()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1760
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@7
    const-wide/16 v4, -0x1

    #@9
    cmp-long v1, v2, v4

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private static longCompareTo(JJ)I
    .locals 2
    .param p0, "value1"    # J
    .param p2, "value2"    # J

    #@0
    .prologue
    .line 2704
    cmp-long v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    cmp-long v0, p0, p2

    #@8
    if-gez v0, :cond_1

    #@a
    const/4 v0, -0x1

    #@b
    goto :goto_0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .locals 7
    .param p1, "newScale"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/16 v4, 0x40

    #@4
    const/4 v6, 0x0

    #@5
    .line 1957
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1958
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@e
    move-result-wide v0

    #@f
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 1964
    :cond_0
    cmp-long v0, p1, v2

    #@16
    if-ltz v0, :cond_2

    #@18
    .line 1965
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@1a
    if-ge v0, v4, :cond_1

    #@1c
    .line 1966
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1e
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@21
    move-result v2

    #@22
    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 1968
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    #@29
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@30
    move-result v2

    #@31
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@34
    return-object v0

    #@35
    .line 1970
    :cond_2
    neg-long v0, p1

    #@36
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@38
    array-length v2, v2

    #@39
    int-to-long v2, v2

    #@3a
    cmp-long v0, v0, v2

    #@3c
    if-gez v0, :cond_3

    #@3e
    .line 1971
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@40
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@42
    neg-long v2, p1

    #@43
    long-to-int v2, v2

    #@44
    aget v1, v1, v2

    #@46
    add-int/2addr v0, v1

    #@47
    if-ge v0, v4, :cond_3

    #@49
    .line 1972
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@4b
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@4d
    neg-long v4, p1

    #@4e
    long-to-int v3, v4

    #@4f
    aget-wide v2, v2, v3

    #@51
    mul-long/2addr v0, v2

    #@52
    invoke-static {v0, v1, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@55
    move-result-object v0

    #@56
    return-object v0

    #@57
    .line 1974
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    #@59
    .line 1975
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5c
    move-result-object v1

    #@5d
    neg-long v2, p1

    #@5e
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@61
    move-result v2

    #@62
    int-to-long v2, v2

    #@63
    .line 1974
    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@66
    move-result-object v1

    #@67
    invoke-direct {v0, v1, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@6a
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2874
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 2876
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@5
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@b
    .line 2877
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@d
    const/16 v1, 0x40

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 2878
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@13
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@19
    .line 2873
    :cond_0
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .locals 5
    .param p0, "parityBit"    # I
    .param p1, "fraction"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x0

    #@2
    .line 2760
    const/4 v0, 0x0

    #@3
    .line 2762
    .local v0, "increment":I
    invoke-static {}, Ljava/math/BigDecimal;->-getjava_math_RoundingModeSwitchesValues()[I

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    #@a
    move-result v2

    #@b
    aget v1, v1, v2

    #@d
    packed-switch v1, :pswitch_data_0

    #@10
    .line 2795
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    #@11
    .line 2764
    :pswitch_1
    if-eqz p1, :cond_0

    #@13
    .line 2765
    new-instance v1, Ljava/lang/ArithmeticException;

    #@15
    const-string/jumbo v2, "Rounding necessary"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 2769
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    .line 2774
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@24
    move-result v1

    #@25
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    .line 2777
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@2d
    move-result v1

    #@2e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    .line 2780
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@36
    move-result v1

    #@37
    if-lt v1, v4, :cond_0

    #@39
    .line 2781
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@3c
    move-result v0

    #@3d
    goto :goto_0

    #@3e
    .line 2785
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@41
    move-result v1

    #@42
    if-le v1, v4, :cond_0

    #@44
    .line 2786
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@47
    move-result v0

    #@48
    goto :goto_0

    #@49
    .line 2790
    :pswitch_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@4c
    move-result v1

    #@4d
    add-int/2addr v1, p0

    #@4e
    if-le v1, v4, :cond_0

    #@50
    .line 2791
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    #@53
    move-result v0

    #@54
    goto :goto_0

    #@55
    .line 2762
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static safeLongToInt(J)I
    .locals 4
    .param p0, "longValue"    # J

    #@0
    .prologue
    .line 2838
    const-wide/32 v0, -0x80000000

    #@3
    cmp-long v0, p0, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    const-wide/32 v0, 0x7fffffff

    #@a
    cmp-long v0, p0, v0

    #@c
    if-lez v0, :cond_1

    #@e
    .line 2839
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Out of int range: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 2841
    :cond_1
    long-to-int v0, p0

    #@29
    return v0
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "unscaledValue"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 2899
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@2
    .line 2900
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@8
    .line 2901
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@a
    const/16 v1, 0x40

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 2902
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@14
    .line 2898
    :cond_0
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .locals 18
    .param p1, "mc"    # Ljava/math/MathContext;
    .param p2, "discardedPrecision"    # I

    #@0
    .prologue
    .line 2717
    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@2
    aget-wide v10, v3, p2

    #@4
    .line 2718
    .local v10, "sizeOfFraction":J
    move-object/from16 v0, p0

    #@6
    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    #@8
    int-to-long v14, v3

    #@9
    move/from16 v0, p2

    #@b
    int-to-long v0, v0

    #@c
    move-wide/from16 v16, v0

    #@e
    sub-long v8, v14, v16

    #@10
    .line 2719
    .local v8, "newScale":J
    move-object/from16 v0, p0

    #@12
    iget-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    #@14
    .line 2721
    .local v12, "unscaledVal":J
    div-long v6, v12, v10

    #@16
    .line 2722
    .local v6, "integer":J
    rem-long v4, v12, v10

    #@18
    .line 2725
    .local v4, "fraction":J
    const-wide/16 v14, 0x0

    #@1a
    cmp-long v3, v4, v14

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2727
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@21
    move-result-wide v14

    #@22
    const-wide/16 v16, 0x2

    #@24
    mul-long v14, v14, v16

    #@26
    invoke-static {v14, v15, v10, v11}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    #@29
    move-result v2

    #@2a
    .line 2729
    .local v2, "compRem":I
    long-to-int v3, v6

    #@2b
    and-int/lit8 v3, v3, 0x1

    #@2d
    .line 2730
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    #@30
    move-result v14

    #@31
    add-int/lit8 v15, v2, 0x5

    #@33
    mul-int/2addr v14, v15

    #@34
    .line 2731
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@37
    move-result-object v15

    #@38
    .line 2729
    invoke-static {v3, v14, v15}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    #@3b
    move-result v3

    #@3c
    int-to-long v14, v3

    #@3d
    add-long/2addr v6, v14

    #@3e
    .line 2733
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@41
    move-result-wide v14

    #@42
    long-to-double v14, v14

    #@43
    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    #@46
    move-result-wide v14

    #@47
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    #@4a
    move-result v3

    #@4b
    int-to-double v0, v3

    #@4c
    move-wide/from16 v16, v0

    #@4e
    cmpl-double v3, v14, v16

    #@50
    if-ltz v3, :cond_0

    #@52
    .line 2734
    const-wide/16 v14, 0xa

    #@54
    div-long/2addr v6, v14

    #@55
    .line 2735
    const-wide/16 v14, 0x1

    #@57
    sub-long/2addr v8, v14

    #@58
    .line 2739
    .end local v2    # "compRem":I
    :cond_0
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@5b
    move-result v3

    #@5c
    move-object/from16 v0, p0

    #@5e
    iput v3, v0, Ljava/math/BigDecimal;->scale:I

    #@60
    .line 2740
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    #@63
    move-result v3

    #@64
    move-object/from16 v0, p0

    #@66
    iput v3, v0, Ljava/math/BigDecimal;->precision:I

    #@68
    .line 2741
    move-object/from16 v0, p0

    #@6a
    iput-wide v6, v0, Ljava/math/BigDecimal;->smallValue:J

    #@6c
    .line 2742
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    #@6f
    move-result v3

    #@70
    move-object/from16 v0, p0

    #@72
    iput v3, v0, Ljava/math/BigDecimal;->bitLength:I

    #@74
    .line 2743
    const/4 v3, 0x0

    #@75
    move-object/from16 v0, p0

    #@77
    iput-object v3, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@79
    .line 2716
    return-void
.end method

.method private valueExact(I)J
    .locals 4
    .param p1, "bitLengthOfType"    # I

    #@0
    .prologue
    .line 2814
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    .line 2816
    .local v0, "bigInteger":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@7
    move-result v1

    #@8
    if-ge v1, p1, :cond_0

    #@a
    .line 2818
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@d
    move-result-wide v2

    #@e
    return-wide v2

    #@f
    .line 2820
    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    #@11
    const-string/jumbo v2, "Rounding necessary"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .locals 4
    .param p0, "val"    # D

    #@0
    .prologue
    .line 715
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 716
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Infinity or NaN: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 718
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    #@28
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@2f
    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "unscaledVal"    # J

    #@0
    .prologue
    .line 690
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide/16 v0, 0xb

    #@8
    cmp-long v0, p0, v0

    #@a
    if-gez v0, :cond_0

    #@c
    .line 691
    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    #@e
    long-to-int v1, p0

    #@f
    aget-object v0, v0, v1

    #@11
    return-object v0

    #@12
    .line 693
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    #@18
    return-object v0
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 670
    if-nez p2, :cond_0

    #@2
    .line 671
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 673
    :cond_0
    const-wide/16 v0, 0x0

    #@9
    cmp-long v0, p0, v0

    #@b
    if-nez v0, :cond_1

    #@d
    if-ltz p2, :cond_1

    #@f
    .line 674
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    #@11
    array-length v0, v0

    #@12
    if-ge p2, v0, :cond_1

    #@14
    .line 675
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    #@16
    aget-object v0, v0, p2

    #@18
    return-object v0

    #@19
    .line 677
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    #@1b
    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    #@1e
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2887
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@3
    .line 2888
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 2886
    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .locals 6
    .param p0, "longScale"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 2858
    long-to-int v0, p0

    #@4
    int-to-long v0, v0

    #@5
    cmp-long v0, p0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2859
    long-to-int v0, p0

    #@a
    invoke-static {v4, v5, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 2861
    :cond_0
    cmp-long v0, p0, v4

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 2862
    new-instance v0, Ljava/math/BigDecimal;

    #@15
    const v1, 0x7fffffff

    #@18
    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    #@1b
    return-object v0

    #@1c
    .line 2864
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    #@1e
    const/high16 v1, -0x80000000

    #@20
    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    #@23
    return-object v0
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .locals 1

    #@0
    .prologue
    .line 1681
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    #@9
    move-result-object p0

    #@a
    .end local p0    # "this":Ljava/math/BigDecimal;
    :cond_0
    return-object p0
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1690
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@3
    move-result v1

    #@4
    if-gez v1, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    #@9
    move-result-object v0

    #@a
    .line 1691
    .local v0, "result":Ljava/math/BigDecimal;
    :goto_0
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@d
    .line 1692
    return-object v0

    #@e
    .line 1690
    .end local v0    # "result":Ljava/math/BigDecimal;
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    #@10
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@16
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@19
    .restart local v0    # "result":Ljava/math/BigDecimal;
    goto :goto_0
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "augend"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 733
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 735
    .local v0, "diffScale":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 736
    if-gtz v0, :cond_0

    #@e
    .line 737
    return-object p1

    #@f
    .line 739
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 740
    return-object p0

    #@16
    .line 742
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 743
    if-ltz v0, :cond_2

    #@1e
    .line 744
    return-object p0

    #@1f
    .line 748
    :cond_2
    if-nez v0, :cond_4

    #@21
    .line 750
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@23
    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    #@25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v1

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    const/16 v2, 0x40

    #@2d
    if-ge v1, v2, :cond_3

    #@2f
    .line 751
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@31
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@33
    add-long/2addr v2, v4

    #@34
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@36
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 753
    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    #@3d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@40
    move-result-object v2

    #@41
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@48
    move-result-object v2

    #@49
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    #@4b
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@4e
    return-object v1

    #@4f
    .line 754
    :cond_4
    if-lez v0, :cond_5

    #@51
    .line 756
    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    #@54
    move-result-object v1

    #@55
    return-object v1

    #@56
    .line 758
    :cond_5
    neg-int v1, v0

    #@57
    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    #@5a
    move-result-object v1

    #@5b
    return-object v1
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 16
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 789
    move-object/from16 v0, p0

    #@2
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    #@4
    int-to-long v10, v9

    #@5
    move-object/from16 v0, p1

    #@7
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    #@9
    int-to-long v12, v9

    #@a
    sub-long v2, v10, v12

    #@c
    .line 792
    .local v2, "diffScale":J
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    #@f
    move-result v9

    #@10
    if-nez v9, :cond_0

    #@12
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    #@15
    move-result v9

    #@16
    if-nez v9, :cond_0

    #@18
    .line 793
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    #@1b
    move-result v9

    #@1c
    if-nez v9, :cond_1

    #@1e
    .line 794
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@21
    move-result-object v9

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@27
    move-result-object v9

    #@28
    return-object v9

    #@29
    .line 797
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@2c
    move-result v9

    #@2d
    int-to-long v10, v9

    #@2e
    const-wide/16 v12, 0x1

    #@30
    sub-long v12, v2, v12

    #@32
    cmp-long v9, v10, v12

    #@34
    if-gez v9, :cond_2

    #@36
    .line 798
    move-object/from16 v4, p1

    #@38
    .line 799
    .local v4, "larger":Ljava/math/BigDecimal;
    move-object/from16 v7, p0

    #@3a
    .line 806
    .local v7, "smaller":Ljava/math/BigDecimal;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    #@3d
    move-result v9

    #@3e
    invoke-direct {v4}, Ljava/math/BigDecimal;->approxPrecision()I

    #@41
    move-result v10

    #@42
    if-lt v9, v10, :cond_4

    #@44
    .line 808
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@47
    move-result-object v9

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@4d
    move-result-object v9

    #@4e
    return-object v9

    #@4f
    .line 800
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .end local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_2
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    #@52
    move-result v9

    #@53
    int-to-long v10, v9

    #@54
    neg-long v12, v2

    #@55
    const-wide/16 v14, 0x1

    #@57
    sub-long/2addr v12, v14

    #@58
    cmp-long v9, v10, v12

    #@5a
    if-gez v9, :cond_3

    #@5c
    .line 801
    move-object/from16 v4, p0

    #@5e
    .line 802
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    move-object/from16 v7, p1

    #@60
    .restart local v7    # "smaller":Ljava/math/BigDecimal;
    goto :goto_0

    #@61
    .line 804
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .end local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_3
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@64
    move-result-object v9

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@6a
    move-result-object v9

    #@6b
    return-object v9

    #@6c
    .line 811
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    .restart local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_4
    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    #@6f
    move-result v6

    #@70
    .line 812
    .local v6, "largerSignum":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    #@73
    move-result v9

    #@74
    if-ne v6, v9, :cond_5

    #@76
    .line 813
    invoke-direct {v4}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@79
    move-result-object v9

    #@7a
    const/16 v10, 0xa

    #@7c
    invoke-static {v9, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@7f
    move-result-object v9

    #@80
    .line 814
    int-to-long v10, v6

    #@81
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@84
    move-result-object v10

    #@85
    .line 813
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@88
    move-result-object v8

    #@89
    .line 822
    .local v8, "tempBI":Ljava/math/BigInteger;
    :goto_1
    new-instance v5, Ljava/math/BigDecimal;

    #@8b
    iget v9, v4, Ljava/math/BigDecimal;->scale:I

    #@8d
    add-int/lit8 v9, v9, 0x1

    #@8f
    invoke-direct {v5, v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@92
    .line 823
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .local v5, "larger":Ljava/math/BigDecimal;
    move-object/from16 v0, p2

    #@94
    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@97
    move-result-object v9

    #@98
    return-object v9

    #@99
    .line 816
    .end local v5    # "larger":Ljava/math/BigDecimal;
    .end local v8    # "tempBI":Ljava/math/BigInteger;
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    :cond_5
    invoke-direct {v4}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@9c
    move-result-object v9

    #@9d
    .line 817
    int-to-long v10, v6

    #@9e
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a1
    move-result-object v10

    #@a2
    .line 816
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a5
    move-result-object v8

    #@a6
    .line 818
    .restart local v8    # "tempBI":Ljava/math/BigInteger;
    const/16 v9, 0xa

    #@a8
    invoke-static {v8, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@ab
    move-result-object v9

    #@ac
    .line 819
    mul-int/lit8 v10, v6, 0x9

    #@ae
    int-to-long v10, v10

    #@af
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b2
    move-result-object v10

    #@b3
    .line 818
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b6
    move-result-object v8

    #@b7
    goto :goto_1
.end method

.method public byteValueExact()B
    .locals 2

    #@0
    .prologue
    .line 2470
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    int-to-byte v0, v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2077
    check-cast p1, Ljava/math/BigDecimal;

    #@2
    .end local p1    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .locals 12
    .param p1, "val"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 2078
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@3
    move-result v1

    #@4
    .line 2079
    .local v1, "thisSign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    #@7
    move-result v6

    #@8
    .line 2081
    .local v6, "valueSign":I
    if-ne v1, v6, :cond_7

    #@a
    .line 2082
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@c
    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    #@e
    if-ne v7, v8, :cond_2

    #@10
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    #@12
    const/16 v8, 0x40

    #@14
    if-ge v7, v8, :cond_2

    #@16
    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    #@18
    const/16 v8, 0x40

    #@1a
    if-ge v7, v8, :cond_2

    #@1c
    .line 2083
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1e
    iget-wide v10, p1, Ljava/math/BigDecimal;->smallValue:J

    #@20
    cmp-long v7, v8, v10

    #@22
    if-gez v7, :cond_0

    #@24
    const/4 v7, -0x1

    #@25
    :goto_0
    return v7

    #@26
    :cond_0
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    #@28
    iget-wide v10, p1, Ljava/math/BigDecimal;->smallValue:J

    #@2a
    cmp-long v7, v8, v10

    #@2c
    if-lez v7, :cond_1

    #@2e
    const/4 v7, 0x1

    #@2f
    goto :goto_0

    #@30
    :cond_1
    const/4 v7, 0x0

    #@31
    goto :goto_0

    #@32
    .line 2085
    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    #@34
    int-to-long v8, v7

    #@35
    iget v7, p1, Ljava/math/BigDecimal;->scale:I

    #@37
    int-to-long v10, v7

    #@38
    sub-long v2, v8, v10

    #@3a
    .line 2086
    .local v2, "diffScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@3d
    move-result v7

    #@3e
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    #@41
    move-result v8

    #@42
    sub-int v0, v7, v8

    #@44
    .line 2087
    .local v0, "diffPrecision":I
    int-to-long v8, v0

    #@45
    const-wide/16 v10, 0x1

    #@47
    add-long/2addr v10, v2

    #@48
    cmp-long v7, v8, v10

    #@4a
    if-lez v7, :cond_3

    #@4c
    .line 2088
    return v1

    #@4d
    .line 2089
    :cond_3
    int-to-long v8, v0

    #@4e
    const-wide/16 v10, 0x1

    #@50
    sub-long v10, v2, v10

    #@52
    cmp-long v7, v8, v10

    #@54
    if-gez v7, :cond_4

    #@56
    .line 2090
    neg-int v7, v1

    #@57
    return v7

    #@58
    .line 2092
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5b
    move-result-object v4

    #@5c
    .line 2093
    .local v4, "thisUnscaled":Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5f
    move-result-object v5

    #@60
    .line 2095
    .local v5, "valUnscaled":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    #@62
    cmp-long v7, v2, v8

    #@64
    if-gez v7, :cond_6

    #@66
    .line 2096
    neg-long v8, v2

    #@67
    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6e
    move-result-object v4

    #@6f
    .line 2100
    :cond_5
    :goto_1
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@72
    move-result v7

    #@73
    return v7

    #@74
    .line 2097
    :cond_6
    const-wide/16 v8, 0x0

    #@76
    cmp-long v7, v2, v8

    #@78
    if-lez v7, :cond_5

    #@7a
    .line 2098
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@81
    move-result-object v5

    #@82
    goto :goto_1

    #@83
    .line 2102
    .end local v0    # "diffPrecision":I
    .end local v2    # "diffScale":J
    .end local v4    # "thisUnscaled":Ljava/math/BigInteger;
    .end local v5    # "valUnscaled":Ljava/math/BigInteger;
    :cond_7
    if-ge v1, v6, :cond_8

    #@85
    .line 2103
    const/4 v7, -0x1

    #@86
    return v7

    #@87
    .line 2105
    :cond_8
    const/4 v7, 0x1

    #@88
    return v7
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 18
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 1195
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@3
    move-result-object v10

    #@4
    .line 1196
    .local v10, "p":Ljava/math/BigInteger;
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@7
    move-result-object v11

    #@8
    .line 1199
    .local v11, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@a
    iget v13, v0, Ljava/math/BigDecimal;->scale:I

    #@c
    int-to-long v14, v13

    #@d
    move-object/from16 v0, p1

    #@f
    iget v13, v0, Ljava/math/BigDecimal;->scale:I

    #@11
    int-to-long v0, v13

    #@12
    move-wide/from16 v16, v0

    #@14
    sub-long v2, v14, v16

    #@16
    .line 1202
    .local v2, "diffScale":J
    const/4 v7, 0x0

    #@17
    .line 1203
    .local v7, "l":I
    const/4 v5, 0x1

    #@18
    .line 1204
    .local v5, "i":I
    sget-object v13, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    #@1a
    array-length v13, v13

    #@1b
    add-int/lit8 v8, v13, -0x1

    #@1d
    .line 1206
    .local v8, "lastPow":I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    #@20
    move-result v13

    #@21
    if-eqz v13, :cond_0

    #@23
    .line 1207
    new-instance v13, Ljava/lang/ArithmeticException;

    #@25
    const-string/jumbo v14, "Division by zero"

    #@28
    invoke-direct {v13, v14}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v13

    #@2c
    .line 1209
    :cond_0
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    #@2f
    move-result v13

    #@30
    if-nez v13, :cond_1

    #@32
    .line 1210
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@35
    move-result-object v13

    #@36
    return-object v13

    #@37
    .line 1213
    :cond_1
    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3a
    move-result-object v4

    #@3b
    .line 1214
    .local v4, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3e
    move-result-object v10

    #@3f
    .line 1215
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@42
    move-result-object v11

    #@43
    .line 1217
    invoke-virtual {v11}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@46
    move-result v6

    #@47
    .line 1218
    .local v6, "k":I
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@4a
    move-result-object v11

    #@4b
    .line 1221
    :goto_0
    sget-object v13, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    #@4d
    aget-object v13, v13, v5

    #@4f
    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@52
    move-result-object v12

    #@53
    .line 1222
    .local v12, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v13, 0x1

    #@54
    aget-object v13, v12, v13

    #@56
    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    #@59
    move-result v13

    #@5a
    if-nez v13, :cond_3

    #@5c
    .line 1223
    add-int/2addr v7, v5

    #@5d
    .line 1224
    if-ge v5, v8, :cond_2

    #@5f
    .line 1225
    add-int/lit8 v5, v5, 0x1

    #@61
    .line 1227
    :cond_2
    const/4 v13, 0x0

    #@62
    aget-object v11, v12, v13

    #@64
    goto :goto_0

    #@65
    .line 1229
    :cond_3
    const/4 v13, 0x1

    #@66
    if-ne v5, v13, :cond_4

    #@68
    .line 1236
    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@6b
    move-result-object v13

    #@6c
    sget-object v14, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@6e
    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v13

    #@72
    if-nez v13, :cond_5

    #@74
    .line 1237
    new-instance v13, Ljava/lang/ArithmeticException;

    #@76
    const-string/jumbo v14, "Non-terminating decimal expansion; no exact representable decimal result"

    #@79
    invoke-direct {v13, v14}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v13

    #@7d
    .line 1232
    :cond_4
    const/4 v5, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 1240
    :cond_5
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    #@82
    move-result v13

    #@83
    if-gez v13, :cond_6

    #@85
    .line 1241
    invoke-virtual {v10}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@88
    move-result-object v10

    #@89
    .line 1244
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@8c
    move-result v13

    #@8d
    int-to-long v14, v13

    #@8e
    add-long/2addr v14, v2

    #@8f
    invoke-static {v14, v15}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@92
    move-result v9

    #@93
    .line 1246
    .local v9, "newScale":I
    sub-int v5, v6, v7

    #@95
    .line 1248
    if-lez v5, :cond_7

    #@97
    invoke-static {v10, v5}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@9a
    move-result-object v10

    #@9b
    .line 1250
    :goto_1
    new-instance v13, Ljava/math/BigDecimal;

    #@9d
    invoke-direct {v13, v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@a0
    return-object v13

    #@a1
    .line 1249
    :cond_7
    neg-int v13, v5

    #@a2
    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@a5
    move-result-object v10

    #@a6
    goto :goto_1
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # I

    #@0
    .prologue
    .line 1150
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    #@0
    .prologue
    .line 992
    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 12
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/16 v4, 0x40

    #@4
    .line 1020
    if-nez p3, :cond_0

    #@6
    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "roundingMode == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1023
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1024
    new-instance v0, Ljava/lang/ArithmeticException;

    #@17
    const-string/jumbo v1, "Division by zero"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1027
    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@20
    int-to-long v0, v0

    #@21
    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    #@23
    int-to-long v2, v2

    #@24
    sub-long/2addr v0, v2

    #@25
    int-to-long v2, p2

    #@26
    sub-long v6, v0, v2

    #@28
    .line 1030
    .local v6, "diffScale":J
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    #@2b
    move-result v0

    #@2c
    const/16 v1, 0x20

    #@2e
    if-le v0, v1, :cond_2

    #@30
    .line 1031
    new-instance v0, Ljava/lang/ArithmeticException;

    #@32
    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Unable to perform divisor / dividend scaling: the difference in scale is too big ("

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1033
    const-string/jumbo v2, ")"

    #@45
    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1031
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 1036
    :cond_2
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@53
    if-ge v0, v4, :cond_5

    #@55
    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    #@57
    if-ge v0, v4, :cond_5

    #@59
    .line 1037
    cmp-long v0, v6, v10

    #@5b
    if-nez v0, :cond_3

    #@5d
    .line 1038
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@5f
    .line 1039
    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    #@61
    move v4, p2

    #@62
    move-object v5, p3

    #@63
    .line 1038
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@66
    move-result-object v0

    #@67
    return-object v0

    #@68
    .line 1042
    :cond_3
    cmp-long v0, v6, v10

    #@6a
    if-lez v0, :cond_4

    #@6c
    .line 1043
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@6e
    array-length v0, v0

    #@6f
    int-to-long v0, v0

    #@70
    cmp-long v0, v6, v0

    #@72
    if-gez v0, :cond_5

    #@74
    .line 1044
    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    #@76
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@78
    long-to-int v2, v6

    #@79
    aget v1, v1, v2

    #@7b
    add-int/2addr v0, v1

    #@7c
    if-ge v0, v4, :cond_5

    #@7e
    .line 1045
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@80
    .line 1046
    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    #@82
    sget-object v4, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@84
    long-to-int v5, v6

    #@85
    aget-wide v4, v4, v5

    #@87
    mul-long/2addr v2, v4

    #@88
    move v4, p2

    #@89
    move-object v5, p3

    #@8a
    .line 1045
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@8d
    move-result-object v0

    #@8e
    return-object v0

    #@8f
    .line 1051
    :cond_4
    neg-long v0, v6

    #@90
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@92
    array-length v2, v2

    #@93
    int-to-long v2, v2

    #@94
    cmp-long v0, v0, v2

    #@96
    if-gez v0, :cond_5

    #@98
    .line 1052
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@9a
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@9c
    neg-long v2, v6

    #@9d
    long-to-int v2, v2

    #@9e
    aget v1, v1, v2

    #@a0
    add-int/2addr v0, v1

    #@a1
    if-ge v0, v4, :cond_5

    #@a3
    .line 1053
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@a5
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@a7
    neg-long v4, v6

    #@a8
    long-to-int v3, v4

    #@a9
    aget-wide v2, v2, v3

    #@ab
    mul-long/2addr v0, v2

    #@ac
    .line 1054
    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    #@ae
    move v4, p2

    #@af
    move-object v5, p3

    #@b0
    .line 1053
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@b3
    move-result-object v0

    #@b4
    return-object v0

    #@b5
    .line 1061
    :cond_5
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@b8
    move-result-object v8

    #@b9
    .line 1062
    .local v8, "scaledDividend":Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@bc
    move-result-object v9

    #@bd
    .line 1064
    .local v9, "scaledDivisor":Ljava/math/BigInteger;
    cmp-long v0, v6, v10

    #@bf
    if-lez v0, :cond_7

    #@c1
    .line 1066
    long-to-int v0, v6

    #@c2
    int-to-long v0, v0

    #@c3
    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@c6
    move-result-object v9

    #@c7
    .line 1071
    :cond_6
    :goto_0
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@ca
    move-result-object v0

    #@cb
    return-object v0

    #@cc
    .line 1067
    :cond_7
    cmp-long v0, v6, v10

    #@ce
    if-gez v0, :cond_6

    #@d0
    .line 1069
    neg-long v0, v6

    #@d1
    long-to-int v0, v0

    #@d2
    int-to-long v0, v0

    #@d3
    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@d6
    move-result-object v8

    #@d7
    goto :goto_0
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 18
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1275
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    #@3
    move-result v11

    #@4
    int-to-long v14, v11

    #@5
    const-wide/16 v16, 0x2

    #@7
    add-long v14, v14, v16

    #@9
    .line 1276
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    #@c
    move-result v11

    #@d
    int-to-long v0, v11

    #@e
    move-wide/from16 v16, v0

    #@10
    .line 1275
    add-long v14, v14, v16

    #@12
    .line 1276
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@15
    move-result v11

    #@16
    int-to-long v0, v11

    #@17
    move-wide/from16 v16, v0

    #@19
    .line 1275
    sub-long v12, v14, v16

    #@1b
    .line 1277
    .local v12, "trailingZeros":J
    move-object/from16 v0, p0

    #@1d
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@1f
    int-to-long v14, v11

    #@20
    move-object/from16 v0, p1

    #@22
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    #@24
    int-to-long v0, v11

    #@25
    move-wide/from16 v16, v0

    #@27
    sub-long v4, v14, v16

    #@29
    .line 1278
    .local v4, "diffScale":J
    move-wide v8, v4

    #@2a
    .line 1280
    .local v8, "newScale":J
    const/4 v3, 0x1

    #@2b
    .line 1281
    .local v3, "i":I
    sget-object v11, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@2d
    array-length v11, v11

    #@2e
    add-int/lit8 v7, v11, -0x1

    #@30
    .line 1283
    .local v7, "lastPow":I
    const/4 v11, 0x1

    #@31
    new-array v10, v11, [Ljava/math/BigInteger;

    #@33
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@36
    move-result-object v11

    #@37
    const/4 v14, 0x0

    #@38
    aput-object v11, v10, v14

    #@3a
    .line 1285
    .local v10, "quotAndRem":[Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    #@3d
    move-result v11

    #@3e
    if-eqz v11, :cond_0

    #@40
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    #@43
    move-result v11

    #@44
    if-nez v11, :cond_0

    #@46
    .line 1286
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    #@49
    move-result v11

    #@4a
    .line 1285
    if-eqz v11, :cond_1

    #@4c
    .line 1287
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@4f
    move-result-object v11

    #@50
    return-object v11

    #@51
    .line 1289
    :cond_1
    const-wide/16 v14, 0x0

    #@53
    cmp-long v11, v12, v14

    #@55
    if-lez v11, :cond_2

    #@57
    .line 1291
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5a
    move-result-object v11

    #@5b
    invoke-static {v12, v13}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@5e
    move-result-object v14

    #@5f
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@62
    move-result-object v11

    #@63
    const/4 v14, 0x0

    #@64
    aput-object v11, v10, v14

    #@66
    .line 1292
    add-long/2addr v8, v12

    #@67
    .line 1294
    :cond_2
    const/4 v11, 0x0

    #@68
    aget-object v11, v10, v11

    #@6a
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@6d
    move-result-object v14

    #@6e
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@71
    move-result-object v10

    #@72
    .line 1295
    const/4 v11, 0x0

    #@73
    aget-object v6, v10, v11

    #@75
    .line 1297
    .local v6, "integerQuot":Ljava/math/BigInteger;
    const/4 v11, 0x1

    #@76
    aget-object v11, v10, v11

    #@78
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    #@7b
    move-result v11

    #@7c
    if-eqz v11, :cond_5

    #@7e
    .line 1299
    const/4 v11, 0x1

    #@7f
    aget-object v11, v10, v11

    #@81
    invoke-virtual {v11}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    #@84
    move-result-object v11

    #@85
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@88
    move-result-object v14

    #@89
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@8c
    move-result v2

    #@8d
    .line 1301
    .local v2, "compRem":I
    sget-object v11, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@8f
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@92
    move-result-object v11

    #@93
    .line 1302
    const/4 v14, 0x0

    #@94
    aget-object v14, v10, v14

    #@96
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    #@99
    move-result v14

    #@9a
    add-int/lit8 v15, v2, 0x5

    #@9c
    mul-int/2addr v14, v15

    #@9d
    int-to-long v14, v14

    #@9e
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a1
    move-result-object v14

    #@a2
    .line 1301
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a5
    move-result-object v6

    #@a6
    .line 1303
    const-wide/16 v14, 0x1

    #@a8
    add-long/2addr v8, v14

    #@a9
    .line 1324
    .end local v2    # "compRem":I
    :cond_3
    :goto_0
    new-instance v11, Ljava/math/BigDecimal;

    #@ab
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@ae
    move-result v14

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-direct {v11, v6, v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    #@b4
    return-object v11

    #@b5
    .line 1319
    :cond_4
    const/4 v3, 0x1

    #@b6
    .line 1306
    :cond_5
    :goto_1
    const/4 v11, 0x0

    #@b7
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    #@ba
    move-result v11

    #@bb
    if-nez v11, :cond_3

    #@bd
    .line 1307
    sget-object v11, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@bf
    aget-object v11, v11, v3

    #@c1
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@c4
    move-result-object v10

    #@c5
    .line 1308
    const/4 v11, 0x1

    #@c6
    aget-object v11, v10, v11

    #@c8
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    #@cb
    move-result v11

    #@cc
    if-nez v11, :cond_7

    #@ce
    .line 1309
    int-to-long v14, v3

    #@cf
    sub-long v14, v8, v14

    #@d1
    cmp-long v11, v14, v4

    #@d3
    if-ltz v11, :cond_7

    #@d5
    .line 1310
    int-to-long v14, v3

    #@d6
    sub-long/2addr v8, v14

    #@d7
    .line 1311
    if-ge v3, v7, :cond_6

    #@d9
    .line 1312
    add-int/lit8 v3, v3, 0x1

    #@db
    .line 1314
    :cond_6
    const/4 v11, 0x0

    #@dc
    aget-object v6, v10, v11

    #@de
    goto :goto_1

    #@df
    .line 1316
    :cond_7
    const/4 v11, 0x1

    #@e0
    if-ne v3, v11, :cond_4

    #@e2
    goto :goto_0
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1174
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .locals 3
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1561
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [Ljava/math/BigDecimal;

    #@4
    .line 1563
    .local v0, "quotAndRem":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    .line 1564
    aget-object v1, v0, v2

    #@c
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 1565
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .locals 3
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1591
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [Ljava/math/BigDecimal;

    #@4
    .line 1593
    .local v0, "quotAndRem":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    .line 1594
    aget-object v1, v0, v2

    #@c
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 1595
    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 18
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 1343
    const/4 v9, 0x1

    #@1
    new-array v8, v9, [Ljava/math/BigInteger;

    #@3
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@6
    move-result-object v9

    #@7
    const/4 v12, 0x0

    #@8
    aput-object v9, v8, v12

    #@a
    .line 1344
    .local v8, "quotAndRem":[Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@c
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    #@e
    int-to-long v12, v9

    #@f
    move-object/from16 v0, p1

    #@11
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    #@13
    int-to-long v14, v9

    #@14
    sub-long v6, v12, v14

    #@16
    .line 1345
    .local v6, "newScale":J
    const-wide/16 v10, 0x0

    #@18
    .line 1346
    .local v10, "tempScale":J
    const/4 v2, 0x1

    #@19
    .line 1347
    .local v2, "i":I
    sget-object v9, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@1b
    array-length v9, v9

    #@1c
    add-int/lit8 v4, v9, -0x1

    #@1e
    .line 1349
    .local v4, "lastPow":I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_0

    #@24
    .line 1350
    new-instance v9, Ljava/lang/ArithmeticException;

    #@26
    const-string/jumbo v12, "Division by zero"

    #@29
    invoke-direct {v9, v12}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9

    #@2d
    .line 1352
    :cond_0
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    #@30
    move-result v9

    #@31
    int-to-long v12, v9

    #@32
    add-long/2addr v12, v6

    #@33
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@36
    move-result v9

    #@37
    int-to-long v14, v9

    #@38
    const-wide/16 v16, 0x1

    #@3a
    add-long v14, v14, v16

    #@3c
    cmp-long v9, v12, v14

    #@3e
    if-gtz v9, :cond_1

    #@40
    .line 1353
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    #@43
    move-result v9

    #@44
    .line 1352
    if-eqz v9, :cond_2

    #@46
    .line 1356
    :cond_1
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@48
    .line 1385
    .local v3, "integralValue":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    #@4b
    move-result v9

    #@4c
    if-nez v9, :cond_9

    #@4e
    .line 1386
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@51
    move-result-object v9

    #@52
    .line 1385
    :goto_1
    return-object v9

    #@53
    .line 1357
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    :cond_2
    const-wide/16 v12, 0x0

    #@55
    cmp-long v9, v6, v12

    #@57
    if-nez v9, :cond_3

    #@59
    .line 1358
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5c
    move-result-object v9

    #@5d
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@64
    move-result-object v3

    #@65
    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    goto :goto_0

    #@66
    .line 1359
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    :cond_3
    const-wide/16 v12, 0x0

    #@68
    cmp-long v9, v6, v12

    #@6a
    if-lez v9, :cond_4

    #@6c
    .line 1360
    invoke-static {v6, v7}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@6f
    move-result-object v5

    #@70
    .line 1361
    .local v5, "powerOfTen":Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@73
    move-result-object v9

    #@74
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@77
    move-result-object v12

    #@78
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7b
    move-result-object v12

    #@7c
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7f
    move-result-object v3

    #@80
    .line 1362
    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@83
    move-result-object v3

    #@84
    goto :goto_0

    #@85
    .line 1364
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    .end local v5    # "powerOfTen":Ljava/math/BigInteger;
    :cond_4
    neg-long v12, v6

    #@86
    invoke-static {v12, v13}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@89
    move-result-object v5

    #@8a
    .line 1365
    .restart local v5    # "powerOfTen":Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@91
    move-result-object v9

    #@92
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@99
    move-result-object v3

    #@9a
    .line 1367
    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    :goto_2
    const/4 v9, 0x0

    #@9b
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->testBit(I)Z

    #@9e
    move-result v9

    #@9f
    if-nez v9, :cond_7

    #@a1
    .line 1368
    sget-object v9, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@a3
    aget-object v9, v9, v2

    #@a5
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@a8
    move-result-object v8

    #@a9
    .line 1369
    const/4 v9, 0x1

    #@aa
    aget-object v9, v8, v9

    #@ac
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    #@af
    move-result v9

    #@b0
    if-nez v9, :cond_6

    #@b2
    .line 1370
    int-to-long v12, v2

    #@b3
    sub-long v12, v10, v12

    #@b5
    cmp-long v9, v12, v6

    #@b7
    if-ltz v9, :cond_6

    #@b9
    .line 1371
    int-to-long v12, v2

    #@ba
    sub-long/2addr v10, v12

    #@bb
    .line 1372
    if-ge v2, v4, :cond_5

    #@bd
    .line 1373
    add-int/lit8 v2, v2, 0x1

    #@bf
    .line 1375
    :cond_5
    const/4 v9, 0x0

    #@c0
    aget-object v3, v8, v9

    #@c2
    goto :goto_2

    #@c3
    .line 1377
    :cond_6
    const/4 v9, 0x1

    #@c4
    if-ne v2, v9, :cond_8

    #@c6
    .line 1383
    :cond_7
    move-wide v6, v10

    #@c7
    goto :goto_0

    #@c8
    .line 1380
    :cond_8
    const/4 v2, 0x1

    #@c9
    goto :goto_2

    #@ca
    .line 1387
    .end local v5    # "powerOfTen":Ljava/math/BigInteger;
    :cond_9
    new-instance v9, Ljava/math/BigDecimal;

    #@cc
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@cf
    move-result v12

    #@d0
    invoke-direct {v9, v3, v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d3
    goto/16 :goto_1
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 28
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1412
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    #@3
    move-result v12

    #@4
    .line 1413
    .local v12, "mcPrecision":I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    #@7
    move-result v21

    #@8
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    #@b
    move-result v22

    #@c
    sub-int v4, v21, v22

    #@e
    .line 1414
    .local v4, "diffPrecision":I
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@10
    move-object/from16 v0, v21

    #@12
    array-length v0, v0

    #@13
    move/from16 v21, v0

    #@15
    add-int/lit8 v11, v21, -0x1

    #@17
    .line 1415
    .local v11, "lastPow":I
    move-object/from16 v0, p0

    #@19
    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    #@1b
    move/from16 v21, v0

    #@1d
    move/from16 v0, v21

    #@1f
    int-to-long v0, v0

    #@20
    move-wide/from16 v22, v0

    #@22
    move-object/from16 v0, p1

    #@24
    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    #@26
    move/from16 v21, v0

    #@28
    move/from16 v0, v21

    #@2a
    int-to-long v0, v0

    #@2b
    move-wide/from16 v24, v0

    #@2d
    sub-long v6, v22, v24

    #@2f
    .line 1416
    .local v6, "diffScale":J
    move-wide v14, v6

    #@30
    .line 1417
    .local v14, "newScale":J
    int-to-long v0, v4

    #@31
    move-wide/from16 v22, v0

    #@33
    sub-long v22, v22, v6

    #@35
    const-wide/16 v24, 0x1

    #@37
    add-long v16, v22, v24

    #@39
    .line 1418
    .local v16, "quotPrecision":J
    const/16 v21, 0x2

    #@3b
    move/from16 v0, v21

    #@3d
    new-array v13, v0, [Ljava/math/BigInteger;

    #@3f
    .line 1420
    .local v13, "quotAndRem":[Ljava/math/BigInteger;
    if-eqz v12, :cond_0

    #@41
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    #@44
    move-result v21

    #@45
    if-nez v21, :cond_0

    #@47
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    #@4a
    move-result v21

    #@4b
    if-eqz v21, :cond_1

    #@4d
    .line 1421
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@50
    move-result-object v21

    #@51
    return-object v21

    #@52
    .line 1424
    :cond_1
    const-wide/16 v22, 0x0

    #@54
    cmp-long v21, v16, v22

    #@56
    if-gtz v21, :cond_3

    #@58
    .line 1425
    sget-object v21, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@5a
    const/16 v22, 0x0

    #@5c
    aput-object v21, v13, v22

    #@5e
    .line 1464
    :cond_2
    :goto_0
    const/16 v21, 0x0

    #@60
    aget-object v21, v13, v21

    #@62
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    #@65
    move-result v21

    #@66
    if-nez v21, :cond_7

    #@68
    .line 1465
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@6b
    move-result-object v21

    #@6c
    return-object v21

    #@6d
    .line 1426
    :cond_3
    const-wide/16 v22, 0x0

    #@6f
    cmp-long v21, v6, v22

    #@71
    if-nez v21, :cond_4

    #@73
    .line 1428
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@76
    move-result-object v21

    #@77
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@7a
    move-result-object v22

    #@7b
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7e
    move-result-object v21

    #@7f
    const/16 v22, 0x0

    #@81
    aput-object v21, v13, v22

    #@83
    goto :goto_0

    #@84
    .line 1429
    :cond_4
    const-wide/16 v22, 0x0

    #@86
    cmp-long v21, v6, v22

    #@88
    if-lez v21, :cond_5

    #@8a
    .line 1431
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@8d
    move-result-object v21

    #@8e
    .line 1432
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@91
    move-result-object v22

    #@92
    invoke-static {v6, v7}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@95
    move-result-object v23

    #@96
    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@99
    move-result-object v22

    #@9a
    .line 1431
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9d
    move-result-object v21

    #@9e
    const/16 v22, 0x0

    #@a0
    aput-object v21, v13, v22

    #@a2
    .line 1434
    int-to-long v0, v12

    #@a3
    move-wide/from16 v22, v0

    #@a5
    sub-long v22, v22, v16

    #@a7
    const-wide/16 v24, 0x1

    #@a9
    add-long v22, v22, v24

    #@ab
    const-wide/16 v24, 0x0

    #@ad
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@b0
    move-result-wide v22

    #@b1
    move-wide/from16 v0, v22

    #@b3
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@b6
    move-result-wide v14

    #@b7
    .line 1436
    const/16 v21, 0x0

    #@b9
    aget-object v21, v13, v21

    #@bb
    invoke-static {v14, v15}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@be
    move-result-object v22

    #@bf
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c2
    move-result-object v21

    #@c3
    const/16 v22, 0x0

    #@c5
    aput-object v21, v13, v22

    #@c7
    goto :goto_0

    #@c8
    .line 1440
    :cond_5
    neg-long v0, v6

    #@c9
    move-wide/from16 v22, v0

    #@cb
    int-to-long v0, v12

    #@cc
    move-wide/from16 v24, v0

    #@ce
    int-to-long v0, v4

    #@cf
    move-wide/from16 v26, v0

    #@d1
    sub-long v24, v24, v26

    #@d3
    const-wide/16 v26, 0x0

    #@d5
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    #@d8
    move-result-wide v24

    #@d9
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    #@dc
    move-result-wide v8

    #@dd
    .line 1443
    .local v8, "exp":J
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@e0
    move-result-object v21

    #@e1
    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@e4
    move-result-object v22

    #@e5
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e8
    move-result-object v21

    #@e9
    .line 1444
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@ec
    move-result-object v22

    #@ed
    .line 1443
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@f0
    move-result-object v13

    #@f1
    .line 1445
    add-long/2addr v14, v8

    #@f2
    .line 1446
    neg-long v8, v14

    #@f3
    .line 1448
    const/16 v21, 0x1

    #@f5
    aget-object v21, v13, v21

    #@f7
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    #@fa
    move-result v21

    #@fb
    if-eqz v21, :cond_2

    #@fd
    const-wide/16 v22, 0x0

    #@ff
    cmp-long v21, v8, v22

    #@101
    if-lez v21, :cond_2

    #@103
    .line 1450
    new-instance v21, Ljava/math/BigDecimal;

    #@105
    const/16 v22, 0x1

    #@107
    aget-object v22, v13, v22

    #@109
    invoke-direct/range {v21 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@10c
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->precision()I

    #@10f
    move-result v21

    #@110
    move/from16 v0, v21

    #@112
    int-to-long v0, v0

    #@113
    move-wide/from16 v22, v0

    #@115
    add-long v22, v22, v8

    #@117
    .line 1451
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    #@11a
    move-result v21

    #@11b
    move/from16 v0, v21

    #@11d
    int-to-long v0, v0

    #@11e
    move-wide/from16 v24, v0

    #@120
    .line 1450
    sub-long v2, v22, v24

    #@122
    .line 1452
    .local v2, "compRemDiv":J
    const-wide/16 v22, 0x0

    #@124
    cmp-long v21, v2, v22

    #@126
    if-nez v21, :cond_6

    #@128
    .line 1454
    const/16 v21, 0x1

    #@12a
    aget-object v21, v13, v21

    #@12c
    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@12f
    move-result-object v22

    #@130
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@133
    move-result-object v21

    #@134
    .line 1455
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@137
    move-result-object v22

    #@138
    .line 1454
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@13b
    move-result-object v21

    #@13c
    const/16 v22, 0x1

    #@13e
    aput-object v21, v13, v22

    #@140
    .line 1456
    const/16 v21, 0x1

    #@142
    aget-object v21, v13, v21

    #@144
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    #@147
    move-result v21

    #@148
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    #@14b
    move-result v21

    #@14c
    move/from16 v0, v21

    #@14e
    int-to-long v2, v0

    #@14f
    .line 1458
    :cond_6
    const-wide/16 v22, 0x0

    #@151
    cmp-long v21, v2, v22

    #@153
    if-lez v21, :cond_2

    #@155
    .line 1459
    new-instance v21, Ljava/lang/ArithmeticException;

    #@157
    const-string/jumbo v22, "Division impossible"

    #@15a
    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@15d
    throw v21

    #@15e
    .line 1467
    .end local v2    # "compRemDiv":J
    .end local v8    # "exp":J
    :cond_7
    const/16 v21, 0x0

    #@160
    aget-object v20, v13, v21

    #@162
    .line 1468
    .local v20, "strippedBI":Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigDecimal;

    #@164
    const/16 v21, 0x0

    #@166
    aget-object v21, v13, v21

    #@168
    move-object/from16 v0, v21

    #@16a
    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@16d
    .line 1469
    .local v10, "integralValue":Ljava/math/BigDecimal;
    invoke-virtual {v10}, Ljava/math/BigDecimal;->precision()I

    #@170
    move-result v21

    #@171
    move/from16 v0, v21

    #@173
    int-to-long v0, v0

    #@174
    move-wide/from16 v18, v0

    #@176
    .line 1470
    .local v18, "resultPrecision":J
    const/4 v5, 0x1

    #@177
    .line 1472
    .local v5, "i":I
    :goto_1
    const/16 v21, 0x0

    #@179
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    #@17c
    move-result v21

    #@17d
    if-nez v21, :cond_b

    #@17f
    .line 1473
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@181
    aget-object v21, v21, v5

    #@183
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@186
    move-result-object v13

    #@187
    .line 1474
    const/16 v21, 0x1

    #@189
    aget-object v21, v13, v21

    #@18b
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    #@18e
    move-result v21

    #@18f
    if-nez v21, :cond_a

    #@191
    .line 1475
    int-to-long v0, v5

    #@192
    move-wide/from16 v22, v0

    #@194
    sub-long v22, v18, v22

    #@196
    int-to-long v0, v12

    #@197
    move-wide/from16 v24, v0

    #@199
    cmp-long v21, v22, v24

    #@19b
    if-gez v21, :cond_8

    #@19d
    .line 1476
    int-to-long v0, v5

    #@19e
    move-wide/from16 v22, v0

    #@1a0
    sub-long v22, v14, v22

    #@1a2
    cmp-long v21, v22, v6

    #@1a4
    if-ltz v21, :cond_a

    #@1a6
    .line 1477
    :cond_8
    int-to-long v0, v5

    #@1a7
    move-wide/from16 v22, v0

    #@1a9
    sub-long v18, v18, v22

    #@1ab
    .line 1478
    int-to-long v0, v5

    #@1ac
    move-wide/from16 v22, v0

    #@1ae
    sub-long v14, v14, v22

    #@1b0
    .line 1479
    if-ge v5, v11, :cond_9

    #@1b2
    .line 1480
    add-int/lit8 v5, v5, 0x1

    #@1b4
    .line 1482
    :cond_9
    const/16 v21, 0x0

    #@1b6
    aget-object v20, v13, v21

    #@1b8
    goto :goto_1

    #@1b9
    .line 1484
    :cond_a
    const/16 v21, 0x1

    #@1bb
    move/from16 v0, v21

    #@1bd
    if-ne v5, v0, :cond_c

    #@1bf
    .line 1491
    :cond_b
    int-to-long v0, v12

    #@1c0
    move-wide/from16 v22, v0

    #@1c2
    cmp-long v21, v18, v22

    #@1c4
    if-lez v21, :cond_d

    #@1c6
    .line 1492
    new-instance v21, Ljava/lang/ArithmeticException;

    #@1c8
    const-string/jumbo v22, "Division impossible"

    #@1cb
    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1ce
    throw v21

    #@1cf
    .line 1487
    :cond_c
    const/4 v5, 0x1

    #@1d0
    goto :goto_1

    #@1d1
    .line 1494
    :cond_d
    invoke-static {v14, v15}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@1d4
    move-result v21

    #@1d5
    move/from16 v0, v21

    #@1d7
    iput v0, v10, Ljava/math/BigDecimal;->scale:I

    #@1d9
    .line 1495
    move-object/from16 v0, v20

    #@1db
    invoke-direct {v10, v0}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    #@1de
    .line 1496
    return-object v10
.end method

.method public doubleValue()D
    .locals 24

    #@0
    .prologue
    .line 2530
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    #@3
    move-result v14

    #@4
    .line 2531
    .local v14, "sign":I
    const/16 v6, 0x434

    #@6
    .line 2534
    .local v6, "exponent":I
    move-object/from16 v0, p0

    #@8
    iget v15, v0, Ljava/math/BigDecimal;->bitLength:I

    #@a
    int-to-long v0, v15

    #@b
    move-wide/from16 v18, v0

    #@d
    move-object/from16 v0, p0

    #@f
    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    #@11
    int-to-double v0, v15

    #@12
    move-wide/from16 v20, v0

    #@14
    const-wide v22, 0x3fd34413509f79ffL    # 0.3010299956639812

    #@19
    div-double v20, v20, v22

    #@1b
    move-wide/from16 v0, v20

    #@1d
    double-to-long v0, v0

    #@1e
    move-wide/from16 v20, v0

    #@20
    sub-long v12, v18, v20

    #@22
    .line 2539
    .local v12, "powerOfTwo":J
    const-wide/16 v18, -0x432

    #@24
    cmp-long v15, v12, v18

    #@26
    if-ltz v15, :cond_0

    #@28
    if-nez v14, :cond_1

    #@2a
    .line 2541
    :cond_0
    int-to-double v0, v14

    #@2b
    move-wide/from16 v18, v0

    #@2d
    const-wide/16 v20, 0x0

    #@2f
    mul-double v18, v18, v20

    #@31
    return-wide v18

    #@32
    .line 2542
    :cond_1
    const-wide/16 v18, 0x401

    #@34
    cmp-long v15, v12, v18

    #@36
    if-lez v15, :cond_2

    #@38
    .line 2544
    int-to-double v0, v14

    #@39
    move-wide/from16 v18, v0

    #@3b
    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@3d
    mul-double v18, v18, v20

    #@3f
    return-wide v18

    #@40
    .line 2546
    :cond_2
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@43
    move-result-object v15

    #@44
    invoke-virtual {v15}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@47
    move-result-object v9

    #@48
    .line 2548
    .local v9, "mantissa":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@4a
    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    #@4c
    if-gtz v15, :cond_4

    #@4e
    .line 2550
    move-object/from16 v0, p0

    #@50
    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    #@52
    neg-int v15, v15

    #@53
    int-to-long v0, v15

    #@54
    move-wide/from16 v18, v0

    #@56
    invoke-static/range {v18 .. v19}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@59
    move-result-object v15

    #@5a
    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5d
    move-result-object v9

    #@5e
    .line 2572
    :goto_0
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@61
    move-result v8

    #@62
    .line 2573
    .local v8, "lowestSetBit":I
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    #@65
    move-result v15

    #@66
    add-int/lit8 v5, v15, -0x36

    #@68
    .line 2574
    .local v5, "discardedSize":I
    if-lez v5, :cond_7

    #@6a
    .line 2576
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@6d
    move-result-object v15

    #@6e
    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    #@71
    move-result-wide v2

    #@72
    .line 2577
    .local v2, "bits":J
    move-wide/from16 v16, v2

    #@74
    .line 2579
    .local v16, "tempBits":J
    const-wide/16 v18, 0x1

    #@76
    and-long v18, v18, v2

    #@78
    const-wide/16 v20, 0x1

    #@7a
    cmp-long v15, v18, v20

    #@7c
    if-nez v15, :cond_6

    #@7e
    if-ge v8, v5, :cond_6

    #@80
    .line 2581
    :goto_1
    const-wide/16 v18, 0x2

    #@82
    add-long v2, v2, v18

    #@84
    .line 2593
    :cond_3
    :goto_2
    const-wide/high16 v18, 0x40000000000000L

    #@86
    and-long v18, v18, v2

    #@88
    const-wide/16 v20, 0x0

    #@8a
    cmp-long v15, v18, v20

    #@8c
    if-nez v15, :cond_8

    #@8e
    .line 2595
    const/4 v15, 0x1

    #@8f
    shr-long/2addr v2, v15

    #@90
    .line 2597
    add-int/2addr v6, v5

    #@91
    .line 2603
    :goto_3
    const/16 v15, 0x7fe

    #@93
    if-le v6, v15, :cond_9

    #@95
    .line 2604
    int-to-double v0, v14

    #@96
    move-wide/from16 v18, v0

    #@98
    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@9a
    mul-double v18, v18, v20

    #@9c
    return-wide v18

    #@9d
    .line 2553
    .end local v2    # "bits":J
    .end local v5    # "discardedSize":I
    .end local v8    # "lowestSetBit":I
    .end local v16    # "tempBits":J
    :cond_4
    move-object/from16 v0, p0

    #@9f
    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    #@a1
    int-to-long v0, v15

    #@a2
    move-wide/from16 v18, v0

    #@a4
    invoke-static/range {v18 .. v19}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@a7
    move-result-object v10

    #@a8
    .line 2554
    .local v10, "powerOfTen":Ljava/math/BigInteger;
    long-to-int v15, v12

    #@a9
    rsub-int/lit8 v7, v15, 0x64

    #@ab
    .line 2557
    .local v7, "k":I
    if-lez v7, :cond_5

    #@ad
    .line 2560
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@b0
    move-result-object v9

    #@b1
    .line 2561
    rsub-int v6, v7, 0x434

    #@b3
    .line 2564
    :cond_5
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@b6
    move-result-object v11

    #@b7
    .line 2566
    .local v11, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v15, 0x1

    #@b8
    aget-object v15, v11, v15

    #@ba
    invoke-virtual {v15}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    #@bd
    move-result-object v15

    #@be
    invoke-virtual {v15, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@c1
    move-result v4

    #@c2
    .line 2568
    .local v4, "compRem":I
    const/4 v15, 0x0

    #@c3
    aget-object v15, v11, v15

    #@c5
    const/16 v18, 0x2

    #@c7
    move/from16 v0, v18

    #@c9
    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@cc
    move-result-object v15

    #@cd
    .line 2569
    add-int/lit8 v18, v4, 0x3

    #@cf
    mul-int v18, v18, v4

    #@d1
    div-int/lit8 v18, v18, 0x2

    #@d3
    add-int/lit8 v18, v18, 0x1

    #@d5
    move/from16 v0, v18

    #@d7
    int-to-long v0, v0

    #@d8
    move-wide/from16 v18, v0

    #@da
    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@dd
    move-result-object v18

    #@de
    .line 2568
    move-object/from16 v0, v18

    #@e0
    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e3
    move-result-object v9

    #@e4
    .line 2570
    add-int/lit8 v6, v6, -0x2

    #@e6
    goto/16 :goto_0

    #@e8
    .line 2580
    .end local v4    # "compRem":I
    .end local v7    # "k":I
    .end local v10    # "powerOfTen":Ljava/math/BigInteger;
    .end local v11    # "quotAndRem":[Ljava/math/BigInteger;
    .restart local v2    # "bits":J
    .restart local v5    # "discardedSize":I
    .restart local v8    # "lowestSetBit":I
    .restart local v16    # "tempBits":J
    :cond_6
    const-wide/16 v18, 0x3

    #@ea
    and-long v18, v18, v2

    #@ec
    const-wide/16 v20, 0x3

    #@ee
    cmp-long v15, v18, v20

    #@f0
    if-nez v15, :cond_3

    #@f2
    goto :goto_1

    #@f3
    .line 2585
    .end local v2    # "bits":J
    .end local v16    # "tempBits":J
    :cond_7
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    #@f6
    move-result-wide v18

    #@f7
    neg-int v15, v5

    #@f8
    shl-long v2, v18, v15

    #@fa
    .line 2586
    .restart local v2    # "bits":J
    move-wide/from16 v16, v2

    #@fc
    .line 2588
    .restart local v16    # "tempBits":J
    const-wide/16 v18, 0x3

    #@fe
    and-long v18, v18, v2

    #@100
    const-wide/16 v20, 0x3

    #@102
    cmp-long v15, v18, v20

    #@104
    if-nez v15, :cond_3

    #@106
    .line 2589
    const-wide/16 v18, 0x2

    #@108
    add-long v2, v2, v18

    #@10a
    goto/16 :goto_2

    #@10c
    .line 2599
    :cond_8
    const/4 v15, 0x2

    #@10d
    shr-long/2addr v2, v15

    #@10e
    .line 2600
    add-int/lit8 v15, v5, 0x1

    #@110
    add-int/2addr v6, v15

    #@111
    goto :goto_3

    #@112
    .line 2605
    :cond_9
    if-gtz v6, :cond_d

    #@114
    .line 2607
    const/16 v15, -0x35

    #@116
    if-ge v6, v15, :cond_a

    #@118
    .line 2608
    int-to-double v0, v14

    #@119
    move-wide/from16 v18, v0

    #@11b
    const-wide/16 v20, 0x0

    #@11d
    mul-double v18, v18, v20

    #@11f
    return-wide v18

    #@120
    .line 2612
    :cond_a
    const/4 v15, 0x1

    #@121
    shr-long v2, v16, v15

    #@123
    .line 2613
    add-int/lit8 v15, v6, 0x3f

    #@125
    const-wide/16 v18, -0x1

    #@127
    ushr-long v18, v18, v15

    #@129
    and-long v16, v2, v18

    #@12b
    .line 2614
    neg-int v15, v6

    #@12c
    shr-long/2addr v2, v15

    #@12d
    .line 2616
    const-wide/16 v18, 0x3

    #@12f
    and-long v18, v18, v2

    #@131
    const-wide/16 v20, 0x3

    #@133
    cmp-long v15, v18, v20

    #@135
    if-eqz v15, :cond_b

    #@137
    const-wide/16 v18, 0x1

    #@139
    and-long v18, v18, v2

    #@13b
    const-wide/16 v20, 0x1

    #@13d
    cmp-long v15, v18, v20

    #@13f
    if-nez v15, :cond_c

    #@141
    const-wide/16 v18, 0x0

    #@143
    cmp-long v15, v16, v18

    #@145
    if-eqz v15, :cond_c

    #@147
    .line 2617
    if-ge v8, v5, :cond_c

    #@149
    .line 2618
    :cond_b
    const-wide/16 v18, 0x1

    #@14b
    add-long v2, v2, v18

    #@14d
    .line 2620
    :cond_c
    const/4 v6, 0x0

    #@14e
    .line 2621
    const/4 v15, 0x1

    #@14f
    shr-long/2addr v2, v15

    #@150
    .line 2624
    :cond_d
    int-to-long v0, v14

    #@151
    move-wide/from16 v18, v0

    #@153
    const-wide/high16 v20, -0x8000000000000000L

    #@155
    and-long v18, v18, v20

    #@157
    int-to-long v0, v6

    #@158
    move-wide/from16 v20, v0

    #@15a
    const/16 v15, 0x34

    #@15c
    shl-long v20, v20, v15

    #@15e
    or-long v18, v18, v20

    #@160
    .line 2625
    const-wide v20, 0xfffffffffffffL

    #@165
    and-long v20, v20, v2

    #@167
    .line 2624
    or-long v2, v18, v20

    #@169
    .line 2626
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@16c
    move-result-wide v18

    #@16d
    return-wide v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2118
    if-ne p0, p1, :cond_0

    #@4
    .line 2119
    return v1

    #@5
    .line 2121
    :cond_0
    instance-of v3, p1, Ljava/math/BigDecimal;

    #@7
    if-eqz v3, :cond_4

    #@9
    move-object v0, p1

    #@a
    .line 2122
    check-cast v0, Ljava/math/BigDecimal;

    #@c
    .line 2123
    .local v0, "x1":Ljava/math/BigDecimal;
    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    #@e
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    #@10
    if-ne v3, v4, :cond_3

    #@12
    .line 2124
    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    #@14
    const/16 v4, 0x40

    #@16
    if-ge v3, v4, :cond_2

    #@18
    iget-wide v4, v0, Ljava/math/BigDecimal;->smallValue:J

    #@1a
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1c
    cmp-long v3, v4, v6

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 2123
    :goto_0
    return v1

    #@21
    :cond_1
    move v1, v2

    #@22
    .line 2124
    goto :goto_0

    #@23
    .line 2125
    :cond_2
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@25
    iget-object v2, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@27
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    goto :goto_0

    #@2c
    :cond_3
    move v1, v2

    #@2d
    .line 2123
    goto :goto_0

    #@2e
    .line 2127
    .end local v0    # "x1":Ljava/math/BigDecimal;
    :cond_4
    return v2
.end method

.method public floatValue()F
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2495
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@4
    move-result v1

    #@5
    int-to-float v0, v1

    #@6
    .line 2496
    .local v0, "floatResult":F
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@8
    int-to-long v4, v1

    #@9
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@b
    int-to-double v6, v1

    #@c
    const-wide v8, 0x3fd34413509f79ffL    # 0.3010299956639812

    #@11
    div-double/2addr v6, v8

    #@12
    double-to-long v6, v6

    #@13
    sub-long v2, v4, v6

    #@15
    .line 2497
    .local v2, "powerOfTwo":J
    const-wide/16 v4, -0x95

    #@17
    cmp-long v1, v2, v4

    #@19
    if-ltz v1, :cond_0

    #@1b
    cmpl-float v1, v0, v10

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 2499
    :cond_0
    mul-float/2addr v0, v10

    #@20
    .line 2506
    :goto_0
    return v0

    #@21
    .line 2500
    :cond_1
    const-wide/16 v4, 0x81

    #@23
    cmp-long v1, v2, v4

    #@25
    if-lez v1, :cond_2

    #@27
    .line 2502
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@29
    mul-float/2addr v0, v1

    #@2a
    goto :goto_0

    #@2b
    .line 2504
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    #@2e
    move-result-wide v4

    #@2f
    double-to-float v0, v4

    #@30
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 2163
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2164
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@8
    return v0

    #@9
    .line 2166
    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@b
    const/16 v1, 0x40

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 2167
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@11
    and-long/2addr v0, v4

    #@12
    long-to-int v0, v0

    #@13
    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@15
    .line 2168
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@17
    mul-int/lit8 v0, v0, 0x21

    #@19
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1b
    const/16 v1, 0x20

    #@1d
    shr-long/2addr v2, v1

    #@1e
    and-long/2addr v2, v4

    #@1f
    long-to-int v1, v2

    #@20
    add-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@23
    .line 2169
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@25
    mul-int/lit8 v0, v0, 0x11

    #@27
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@29
    add-int/2addr v0, v1

    #@2a
    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@2c
    .line 2170
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@2e
    return v0

    #@2f
    .line 2172
    :cond_1
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    #@31
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@34
    move-result v0

    #@35
    mul-int/lit8 v0, v0, 0x11

    #@37
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@39
    add-int/2addr v0, v1

    #@3a
    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@3c
    .line 2173
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    #@3e
    return v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 2434
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    const/16 v1, -0x20

    #@4
    if-le v0, v1, :cond_0

    #@6
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@8
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@b
    move-result v1

    #@c
    if-le v0, v1, :cond_1

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    :goto_0
    return v0

    #@10
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@17
    move-result v0

    #@18
    goto :goto_0
.end method

.method public intValueExact()I
    .locals 2

    #@0
    .prologue
    .line 2446
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 2407
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    const/16 v1, -0x40

    #@4
    if-le v0, v1, :cond_0

    #@6
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@8
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@b
    move-result v1

    #@c
    if-le v0, v1, :cond_1

    #@e
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    :goto_0
    return-wide v0

    #@11
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@18
    move-result-wide v0

    #@19
    goto :goto_0
.end method

.method public longValueExact()J
    .locals 2

    #@0
    .prologue
    .line 2419
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "val"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 2153
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_0
    move-object p0, p1

    #@8
    goto :goto_0
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "val"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 2140
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_0
    move-object p0, p1

    #@8
    goto :goto_0
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 1953
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    int-to-long v0, v0

    #@3
    int-to-long v2, p1

    #@4
    add-long/2addr v0, v2

    #@5
    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 1991
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    int-to-long v0, v0

    #@3
    int-to-long v2, p1

    #@4
    sub-long/2addr v0, v2

    #@5
    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 933
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    int-to-long v2, v2

    #@3
    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    #@5
    int-to-long v4, v4

    #@6
    add-long v0, v2, v4

    #@8
    .line 935
    .local v0, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 936
    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 940
    :cond_1
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    #@1b
    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    #@1d
    add-int/2addr v2, v3

    #@1e
    const/16 v3, 0x40

    #@20
    if-ge v2, v3, :cond_2

    #@22
    .line 941
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@24
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@26
    mul-long/2addr v2, v4

    #@27
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@2a
    move-result v4

    #@2b
    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 943
    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    #@32
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@35
    move-result-object v3

    #@36
    .line 944
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@39
    move-result-object v4

    #@3a
    .line 943
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3d
    move-result-object v3

    #@3e
    .line 944
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@41
    move-result v4

    #@42
    .line 943
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@45
    return-object v2
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 961
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    .line 963
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@7
    .line 964
    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .locals 4

    #@0
    .prologue
    const/16 v1, 0x3f

    #@2
    .line 1702
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@8
    if-ne v0, v1, :cond_1

    #@a
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@c
    const-wide/high16 v2, -0x8000000000000000L

    #@e
    cmp-long v0, v0, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1703
    :cond_0
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@14
    neg-long v0, v0

    #@15
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@17
    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 1705
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    #@1e
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@28
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@2b
    return-object v0
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1717
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    .line 1718
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@7
    .line 1719
    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .locals 0

    #@0
    .prologue
    .line 1729
    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1741
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "n"    # I

    #@0
    .prologue
    .line 1611
    if-nez p1, :cond_0

    #@2
    .line 1612
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    #@4
    return-object v2

    #@5
    .line 1614
    :cond_0
    if-ltz p1, :cond_1

    #@7
    const v2, 0x3b9ac9ff

    #@a
    if-le p1, v2, :cond_2

    #@c
    .line 1615
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    #@e
    const-string/jumbo v3, "Invalid operation"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 1617
    :cond_2
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@17
    int-to-long v2, v2

    #@18
    int-to-long v4, p1

    #@19
    mul-long v0, v2, v4

    #@1b
    .line 1619
    .local v0, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@24
    move-result-object v2

    #@25
    :goto_0
    return-object v2

    #@26
    .line 1620
    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    #@28
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@33
    move-result v4

    #@34
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@37
    goto :goto_0
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8
    .param p1, "n"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1637
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v2

    #@4
    .line 1638
    .local v2, "m":I
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    #@7
    move-result v3

    #@8
    .line 1639
    .local v3, "mcPrecision":I
    int-to-double v6, v2

    #@9
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    #@c
    move-result-wide v6

    #@d
    double-to-int v6, v6

    #@e
    add-int/lit8 v1, v6, 0x1

    #@10
    .line 1642
    .local v1, "elength":I
    move-object v4, p2

    #@11
    .line 1645
    .local v4, "newPrecision":Ljava/math/MathContext;
    if-eqz p1, :cond_0

    #@13
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    if-lez p1, :cond_1

    #@1b
    .line 1646
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    #@1e
    move-result-object v6

    #@1f
    return-object v6

    #@20
    .line 1648
    :cond_1
    const v6, 0x3b9ac9ff

    #@23
    if-gt v2, v6, :cond_2

    #@25
    if-nez v3, :cond_3

    #@27
    if-gez p1, :cond_3

    #@29
    .line 1650
    :cond_2
    new-instance v6, Ljava/lang/ArithmeticException;

    #@2b
    const-string/jumbo v7, "Invalid operation"

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 1649
    :cond_3
    if-lez v3, :cond_4

    #@34
    if-gt v1, v3, :cond_2

    #@36
    .line 1652
    :cond_4
    if-lez v3, :cond_5

    #@38
    .line 1653
    new-instance v4, Ljava/math/MathContext;

    #@3a
    .end local v4    # "newPrecision":Ljava/math/MathContext;
    add-int v6, v3, v1

    #@3c
    add-int/lit8 v6, v6, 0x1

    #@3e
    .line 1654
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@41
    move-result-object v7

    #@42
    .line 1653
    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@45
    .line 1657
    .restart local v4    # "newPrecision":Ljava/math/MathContext;
    :cond_5
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@48
    move-result-object v0

    #@49
    .line 1658
    .local v0, "accum":Ljava/math/BigDecimal;
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    #@4c
    move-result v6

    #@4d
    shr-int/lit8 v5, v6, 0x1

    #@4f
    .line 1660
    .local v5, "oneBitMask":I
    :goto_0
    if-lez v5, :cond_7

    #@51
    .line 1661
    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@54
    move-result-object v0

    #@55
    .line 1662
    and-int v6, v2, v5

    #@57
    if-ne v6, v5, :cond_6

    #@59
    .line 1663
    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@5c
    move-result-object v0

    #@5d
    .line 1665
    :cond_6
    shr-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1668
    :cond_7
    if-gez p1, :cond_8

    #@62
    .line 1669
    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    #@64
    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@67
    move-result-object v0

    #@68
    .line 1672
    :cond_8
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@6b
    .line 1673
    return-object v0
.end method

.method public precision()I
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1785
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1786
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    #@7
    return v1

    #@8
    .line 1789
    :cond_0
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@a
    if-nez v1, :cond_1

    #@c
    .line 1790
    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    #@e
    .line 1801
    :goto_0
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    #@10
    return v1

    #@11
    .line 1791
    :cond_1
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@13
    const/16 v2, 0x40

    #@15
    if-ge v1, v2, :cond_2

    #@17
    .line 1792
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@19
    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->decimalDigitsInLong(J)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    #@1f
    goto :goto_0

    #@20
    .line 1794
    :cond_2
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@22
    add-int/lit8 v1, v1, -0x1

    #@24
    int-to-double v2, v1

    #@25
    const-wide v4, 0x3fd34413509f79ffL    # 0.3010299956639812

    #@2a
    mul-double/2addr v2, v4

    #@2b
    double-to-int v1, v2

    #@2c
    add-int/lit8 v0, v1, 0x1

    #@2e
    .line 1796
    .local v0, "decimalDigits":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@31
    move-result-object v1

    #@32
    int-to-long v2, v0

    #@33
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 1797
    add-int/lit8 v0, v0, 0x1

    #@43
    .line 1799
    :cond_3
    iput v0, p0, Ljava/math/BigDecimal;->precision:I

    #@45
    goto :goto_0
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1540
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 1841
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@8
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@b
    .line 1843
    .local v0, "thisBD":Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    #@e
    .line 1844
    return-object v0
.end method

.method public scale()I
    .locals 1

    #@0
    .prologue
    .line 1772
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "n"    # I

    #@0
    .prologue
    .line 2003
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    int-to-long v2, v2

    #@3
    int-to-long v4, p1

    #@4
    sub-long v0, v2, v4

    #@6
    .line 2004
    .local v0, "newScale":J
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    #@8
    const/16 v3, 0x40

    #@a
    if-ge v2, v3, :cond_1

    #@c
    .line 2006
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-nez v2, :cond_0

    #@14
    .line 2007
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 2009
    :cond_0
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@1b
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@1e
    move-result v4

    #@1f
    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 2011
    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    #@26
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@2d
    move-result v4

    #@2e
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@31
    return-object v2
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "newScale"    # I

    #@0
    .prologue
    .line 1937
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # I

    #@0
    .prologue
    .line 1917
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/16 v4, 0x40

    #@4
    .line 1870
    if-nez p2, :cond_0

    #@6
    .line 1871
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "roundingMode == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1873
    :cond_0
    int-to-long v0, p1

    #@10
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@12
    int-to-long v2, v2

    #@13
    sub-long v6, v0, v2

    #@15
    .line 1875
    .local v6, "diffScale":J
    cmp-long v0, v6, v8

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1876
    return-object p0

    #@1a
    .line 1878
    :cond_1
    cmp-long v0, v6, v8

    #@1c
    if-lez v0, :cond_3

    #@1e
    .line 1880
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@20
    array-length v0, v0

    #@21
    int-to-long v0, v0

    #@22
    cmp-long v0, v6, v0

    #@24
    if-gez v0, :cond_2

    #@26
    .line 1881
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@28
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@2a
    long-to-int v2, v6

    #@2b
    aget v1, v1, v2

    #@2d
    add-int/2addr v0, v1

    #@2e
    if-ge v0, v4, :cond_2

    #@30
    .line 1882
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@32
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@34
    long-to-int v3, v6

    #@35
    aget-wide v2, v2, v3

    #@37
    mul-long/2addr v0, v2

    #@38
    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 1884
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    #@3f
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@42
    move-result-object v1

    #@43
    long-to-int v2, v6

    #@44
    int-to-long v2, v2

    #@45
    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@4c
    return-object v0

    #@4d
    .line 1888
    :cond_3
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@4f
    if-ge v0, v4, :cond_4

    #@51
    neg-long v0, v6

    #@52
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@54
    array-length v2, v2

    #@55
    int-to-long v2, v2

    #@56
    cmp-long v0, v0, v2

    #@58
    if-gez v0, :cond_4

    #@5a
    .line 1889
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@5c
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@5e
    neg-long v4, v6

    #@5f
    long-to-int v3, v4

    #@60
    aget-wide v2, v2, v3

    #@62
    move v4, p1

    #@63
    move-object v5, p2

    #@64
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@67
    move-result-object v0

    #@68
    return-object v0

    #@69
    .line 1891
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@6c
    move-result-object v0

    #@6d
    neg-long v2, v6

    #@6e
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@71
    move-result-object v1

    #@72
    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@75
    move-result-object v0

    #@76
    return-object v0
.end method

.method public shortValueExact()S
    .locals 2

    #@0
    .prologue
    .line 2458
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    int-to-short v0, v0

    #@8
    return v0
.end method

.method public signum()I
    .locals 2

    #@0
    .prologue
    .line 1752
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    #@2
    const/16 v1, 0x40

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 1753
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1755
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2024
    const/4 v0, 0x1

    #@3
    .line 2025
    .local v0, "i":I
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@5
    array-length v6, v6

    #@6
    add-int/lit8 v1, v6, -0x1

    #@8
    .line 2026
    .local v1, "lastPow":I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    #@a
    int-to-long v2, v6

    #@b
    .line 2028
    .local v2, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 2031
    return-object p0

    #@12
    .line 2033
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@15
    move-result-object v5

    #@16
    .line 2037
    .local v5, "strippedBI":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->testBit(I)Z

    #@19
    move-result v6

    #@1a
    if-nez v6, :cond_3

    #@1c
    .line 2039
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    #@1e
    aget-object v6, v6, v0

    #@20
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@23
    move-result-object v4

    #@24
    .line 2041
    .local v4, "quotAndRem":[Ljava/math/BigInteger;
    aget-object v6, v4, v9

    #@26
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_2

    #@2c
    .line 2043
    int-to-long v6, v0

    #@2d
    sub-long/2addr v2, v6

    #@2e
    .line 2044
    if-ge v0, v1, :cond_1

    #@30
    .line 2046
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 2048
    :cond_1
    aget-object v5, v4, v8

    #@34
    goto :goto_0

    #@35
    .line 2050
    :cond_2
    if-ne v0, v9, :cond_4

    #@37
    .line 2058
    .end local v4    # "quotAndRem":[Ljava/math/BigInteger;
    :cond_3
    new-instance v6, Ljava/math/BigDecimal;

    #@39
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    #@3c
    move-result v7

    #@3d
    invoke-direct {v6, v5, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@40
    return-object v6

    #@41
    .line 2055
    .restart local v4    # "quotAndRem":[Ljava/math/BigInteger;
    :cond_4
    const/4 v0, 0x1

    #@42
    goto :goto_0
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 8
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    const/16 v4, 0x40

    #@2
    .line 837
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@4
    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    #@6
    sub-int v0, v1, v2

    #@8
    .line 839
    .local v0, "diffScale":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 840
    if-gtz v0, :cond_0

    #@10
    .line 841
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 843
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 844
    return-object p0

    #@1c
    .line 846
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 847
    if-ltz v0, :cond_2

    #@24
    .line 848
    return-object p0

    #@25
    .line 852
    :cond_2
    if-nez v0, :cond_4

    #@27
    .line 854
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@29
    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v1

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    if-ge v1, v4, :cond_3

    #@33
    .line 855
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@35
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@37
    sub-long/2addr v2, v4

    #@38
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@3a
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@3d
    move-result-object v1

    #@3e
    return-object v1

    #@3f
    .line 857
    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    #@41
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@44
    move-result-object v2

    #@45
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4c
    move-result-object v2

    #@4d
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    #@4f
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@52
    return-object v1

    #@53
    .line 858
    :cond_4
    if-lez v0, :cond_6

    #@55
    .line 860
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@57
    array-length v1, v1

    #@58
    if-ge v0, v1, :cond_5

    #@5a
    .line 861
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@5c
    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    #@5e
    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@60
    aget v3, v3, v0

    #@62
    add-int/2addr v2, v3

    #@63
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@66
    move-result v1

    #@67
    add-int/lit8 v1, v1, 0x1

    #@69
    if-ge v1, v4, :cond_5

    #@6b
    .line 862
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@6d
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@6f
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@71
    aget-wide v6, v1, v0

    #@73
    mul-long/2addr v4, v6

    #@74
    sub-long/2addr v2, v4

    #@75
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@77
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@7a
    move-result-object v1

    #@7b
    return-object v1

    #@7c
    .line 864
    :cond_5
    new-instance v1, Ljava/math/BigDecimal;

    #@7e
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@81
    move-result-object v2

    #@82
    .line 865
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@85
    move-result-object v3

    #@86
    int-to-long v4, v0

    #@87
    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@8a
    move-result-object v3

    #@8b
    .line 864
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8e
    move-result-object v2

    #@8f
    .line 865
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    #@91
    .line 864
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@94
    return-object v1

    #@95
    .line 867
    :cond_6
    neg-int v0, v0

    #@96
    .line 868
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@98
    array-length v1, v1

    #@99
    if-ge v0, v1, :cond_7

    #@9b
    .line 869
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    #@9d
    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    #@9f
    aget v2, v2, v0

    #@a1
    add-int/2addr v1, v2

    #@a2
    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    #@a4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@a7
    move-result v1

    #@a8
    add-int/lit8 v1, v1, 0x1

    #@aa
    if-ge v1, v4, :cond_7

    #@ac
    .line 870
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    #@ae
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@b0
    aget-wide v4, v1, v0

    #@b2
    mul-long/2addr v2, v4

    #@b3
    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    #@b5
    sub-long/2addr v2, v4

    #@b6
    iget v1, p1, Ljava/math/BigDecimal;->scale:I

    #@b8
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@bb
    move-result-object v1

    #@bc
    return-object v1

    #@bd
    .line 872
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    #@bf
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@c2
    move-result-object v2

    #@c3
    int-to-long v4, v0

    #@c4
    invoke-static {v2, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    #@c7
    move-result-object v2

    #@c8
    .line 873
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@cb
    move-result-object v3

    #@cc
    .line 872
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@cf
    move-result-object v2

    #@d0
    .line 873
    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    #@d2
    .line 872
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d5
    return-object v1
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 11
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    #@0
    .prologue
    const/16 v10, 0xa

    #@2
    .line 890
    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    #@4
    int-to-long v6, v5

    #@5
    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    #@7
    int-to-long v8, v5

    #@8
    sub-long v0, v6, v8

    #@a
    .line 895
    .local v0, "diffScale":J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 896
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_1

    #@1c
    .line 897
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@23
    move-result-object v5

    #@24
    return-object v5

    #@25
    .line 900
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    #@28
    move-result v5

    #@29
    int-to-long v6, v5

    #@2a
    const-wide/16 v8, 0x1

    #@2c
    sub-long v8, v0, v8

    #@2e
    cmp-long v5, v6, v8

    #@30
    if-gez v5, :cond_3

    #@32
    .line 902
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    #@35
    move-result v5

    #@36
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@39
    move-result v6

    #@3a
    if-ge v5, v6, :cond_3

    #@3c
    .line 903
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@3f
    move-result v4

    #@40
    .line 904
    .local v4, "thisSignum":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    #@43
    move-result v5

    #@44
    if-eq v4, v5, :cond_2

    #@46
    .line 905
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@49
    move-result-object v5

    #@4a
    invoke-static {v5, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@4d
    move-result-object v5

    #@4e
    .line 906
    int-to-long v6, v4

    #@4f
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@52
    move-result-object v6

    #@53
    .line 905
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@56
    move-result-object v3

    #@57
    .line 913
    .local v3, "tempBI":Ljava/math/BigInteger;
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    #@59
    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    #@5b
    add-int/lit8 v5, v5, 0x1

    #@5d
    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@60
    .line 914
    .local v2, "leftOperand":Ljava/math/BigDecimal;
    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@63
    move-result-object v5

    #@64
    return-object v5

    #@65
    .line 908
    .end local v2    # "leftOperand":Ljava/math/BigDecimal;
    .end local v3    # "tempBI":Ljava/math/BigInteger;
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@68
    move-result-object v5

    #@69
    int-to-long v6, v4

    #@6a
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@71
    move-result-object v3

    #@72
    .line 909
    .restart local v3    # "tempBI":Ljava/math/BigInteger;
    invoke-static {v3, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@75
    move-result-object v5

    #@76
    .line 910
    mul-int/lit8 v6, v4, 0x9

    #@78
    int-to-long v6, v6

    #@79
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7c
    move-result-object v6

    #@7d
    .line 909
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@80
    move-result-object v3

    #@81
    goto :goto_0

    #@82
    .line 918
    .end local v3    # "tempBI":Ljava/math/BigInteger;
    .end local v4    # "thisSignum":I
    :cond_3
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@89
    move-result-object v5

    #@8a
    return-object v5
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    .line 2357
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2358
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 2359
    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    #@11
    if-gez v0, :cond_2

    #@13
    .line 2360
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@19
    int-to-long v2, v1

    #@1a
    neg-long v2, v2

    #@1b
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 2362
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@27
    move-result-object v0

    #@28
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@2a
    int-to-long v2, v1

    #@2b
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2376
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 2377
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 2378
    :cond_1
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@12
    if-gez v1, :cond_2

    #@14
    .line 2379
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@1a
    int-to-long v2, v2

    #@1b
    neg-long v2, v2

    #@1c
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 2383
    :cond_2
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@27
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    #@2a
    move-result v2

    #@2b
    if-gt v1, v2, :cond_3

    #@2d
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@2f
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@36
    move-result v2

    #@37
    if-le v1, v2, :cond_4

    #@39
    .line 2384
    :cond_3
    new-instance v1, Ljava/lang/ArithmeticException;

    #@3b
    const-string/jumbo v2, "Rounding necessary"

    #@3e
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 2386
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@45
    move-result-object v1

    #@46
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@48
    int-to-long v2, v2

    #@49
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@50
    move-result-object v0

    #@51
    .line 2387
    .local v0, "integerAndFraction":[Ljava/math/BigInteger;
    const/4 v1, 0x1

    #@52
    aget-object v1, v0, v1

    #@54
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_5

    #@5a
    .line 2389
    new-instance v1, Ljava/lang/ArithmeticException;

    #@5c
    const-string/jumbo v2, "Rounding necessary"

    #@5f
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@62
    throw v1

    #@63
    .line 2391
    :cond_5
    aget-object v1, v0, v4

    #@65
    return-object v1
.end method

.method public toEngineeringString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    .line 2241
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@3
    move-result-object v10

    #@4
    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 2242
    .local v7, "intString":Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    #@a
    if-nez v10, :cond_0

    #@c
    .line 2243
    return-object v7

    #@d
    .line 2245
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@10
    move-result-object v10

    #@11
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    #@14
    move-result v10

    #@15
    if-gez v10, :cond_2

    #@17
    const/4 v0, 0x2

    #@18
    .line 2246
    .local v0, "begin":I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    .line 2247
    .local v2, "end":I
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    #@1e
    int-to-long v10, v10

    #@1f
    neg-long v10, v10

    #@20
    int-to-long v12, v2

    #@21
    add-long/2addr v10, v12

    #@22
    int-to-long v12, v0

    #@23
    sub-long v4, v10, v12

    #@25
    .line 2248
    .local v4, "exponent":J
    new-instance v9, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    .line 2250
    .local v9, "result":Ljava/lang/StringBuilder;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    #@2c
    if-lez v10, :cond_4

    #@2e
    const-wide/16 v10, -0x6

    #@30
    cmp-long v10, v4, v10

    #@32
    if-ltz v10, :cond_4

    #@34
    .line 2251
    const-wide/16 v10, 0x0

    #@36
    cmp-long v10, v4, v10

    #@38
    if-ltz v10, :cond_3

    #@3a
    .line 2252
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    #@3c
    sub-int v10, v2, v10

    #@3e
    const/16 v11, 0x2e

    #@40
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@43
    .line 2291
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    return-object v10

    #@48
    .line 2245
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v4    # "exponent":J
    .end local v9    # "result":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v0, 0x1

    #@49
    .restart local v0    # "begin":I
    goto :goto_0

    #@4a
    .line 2254
    .restart local v2    # "end":I
    .restart local v4    # "exponent":J
    .restart local v9    # "result":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v10, v0, -0x1

    #@4c
    const-string/jumbo v11, "0."

    #@4f
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 2255
    add-int/lit8 v10, v0, 0x1

    #@54
    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@56
    long-to-int v12, v4

    #@57
    neg-int v12, v12

    #@58
    add-int/lit8 v12, v12, -0x1

    #@5a
    const/4 v13, 0x0

    #@5b
    invoke-virtual {v9, v10, v11, v13, v12}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 2258
    :cond_4
    sub-int v1, v2, v0

    #@61
    .line 2259
    .local v1, "delta":I
    const-wide/16 v10, 0x3

    #@63
    rem-long v10, v4, v10

    #@65
    long-to-int v8, v10

    #@66
    .line 2261
    .local v8, "rem":I
    if-eqz v8, :cond_9

    #@68
    .line 2263
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    #@6f
    move-result v10

    #@70
    if-nez v10, :cond_6

    #@72
    .line 2265
    if-gez v8, :cond_5

    #@74
    neg-int v8, v8

    #@75
    .line 2266
    :goto_2
    int-to-long v10, v8

    #@76
    add-long/2addr v4, v10

    #@77
    .line 2273
    :goto_3
    const/4 v10, 0x3

    #@78
    if-ge v1, v10, :cond_9

    #@7a
    .line 2274
    sub-int v6, v8, v1

    #@7c
    .local v6, "i":I
    move v3, v2

    #@7d
    .end local v2    # "end":I
    .local v3, "end":I
    :goto_4
    if-lez v6, :cond_8

    #@7f
    .line 2275
    add-int/lit8 v2, v3, 0x1

    #@81
    .end local v3    # "end":I
    .restart local v2    # "end":I
    const/16 v10, 0x30

    #@83
    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@86
    .line 2274
    add-int/lit8 v6, v6, -0x1

    #@88
    move v3, v2

    #@89
    .end local v2    # "end":I
    .restart local v3    # "end":I
    goto :goto_4

    #@8a
    .line 2265
    .end local v3    # "end":I
    .end local v6    # "i":I
    .restart local v2    # "end":I
    :cond_5
    rsub-int/lit8 v8, v8, 0x3

    #@8c
    goto :goto_2

    #@8d
    .line 2269
    :cond_6
    if-gez v8, :cond_7

    #@8f
    add-int/lit8 v8, v8, 0x3

    #@91
    .line 2270
    :cond_7
    int-to-long v10, v8

    #@92
    sub-long/2addr v4, v10

    #@93
    .line 2271
    add-int/2addr v0, v8

    #@94
    goto :goto_3

    #@95
    .end local v2    # "end":I
    .restart local v3    # "end":I
    .restart local v6    # "i":I
    :cond_8
    move v2, v3

    #@96
    .line 2279
    .end local v3    # "end":I
    .end local v6    # "i":I
    .restart local v2    # "end":I
    :cond_9
    sub-int v10, v2, v0

    #@98
    const/4 v11, 0x1

    #@99
    if-lt v10, v11, :cond_a

    #@9b
    .line 2280
    const/16 v10, 0x2e

    #@9d
    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@a0
    .line 2281
    add-int/lit8 v2, v2, 0x1

    #@a2
    .line 2283
    :cond_a
    const-wide/16 v10, 0x0

    #@a4
    cmp-long v10, v4, v10

    #@a6
    if-eqz v10, :cond_1

    #@a8
    .line 2284
    const/16 v10, 0x45

    #@aa
    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@ad
    .line 2285
    const-wide/16 v10, 0x0

    #@af
    cmp-long v10, v4, v10

    #@b1
    if-lez v10, :cond_b

    #@b3
    .line 2286
    add-int/lit8 v2, v2, 0x1

    #@b5
    const/16 v10, 0x2b

    #@b7
    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@ba
    .line 2288
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@bc
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@bf
    move-result-object v10

    #@c0
    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    goto :goto_1
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2310
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 2311
    .local v2, "intStr":Ljava/lang/String;
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    #@b
    if-eqz v4, :cond_0

    #@d
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    #@15
    if-gez v4, :cond_1

    #@17
    .line 2312
    :cond_0
    return-object v2

    #@18
    .line 2314
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    #@1b
    move-result v4

    #@1c
    if-gez v4, :cond_3

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 2315
    .local v0, "begin":I
    :goto_0
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    #@21
    .line 2317
    .local v1, "delta":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v4

    #@27
    add-int/lit8 v4, v4, 0x1

    #@29
    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    #@2b
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    #@2e
    move-result v5

    #@2f
    add-int/2addr v4, v5

    #@30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@33
    .line 2319
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    #@34
    if-ne v0, v4, :cond_2

    #@36
    .line 2321
    const/16 v4, 0x2d

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 2323
    :cond_2
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    #@3d
    if-lez v4, :cond_6

    #@3f
    .line 2324
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@42
    move-result v4

    #@43
    sub-int/2addr v4, v0

    #@44
    sub-int/2addr v1, v4

    #@45
    .line 2325
    if-ltz v1, :cond_5

    #@47
    .line 2326
    const-string/jumbo v4, "0."

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 2328
    :goto_1
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@4f
    array-length v4, v4

    #@50
    if-le v1, v4, :cond_4

    #@52
    .line 2329
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@57
    .line 2328
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@59
    array-length v4, v4

    #@5a
    sub-int/2addr v1, v4

    #@5b
    goto :goto_1

    #@5c
    .line 2314
    .end local v0    # "begin":I
    .end local v1    # "delta":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v0, 0x0

    #@5d
    .restart local v0    # "begin":I
    goto :goto_0

    #@5e
    .line 2331
    .restart local v1    # "delta":I
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@60
    invoke-virtual {v3, v4, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@63
    .line 2332
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 2347
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    return-object v4

    #@6f
    .line 2334
    :cond_5
    sub-int v1, v0, v1

    #@71
    .line 2335
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 2336
    const/16 v4, 0x2e

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 2337
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_2

    #@85
    .line 2340
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 2342
    :goto_3
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@8e
    array-length v4, v4

    #@8f
    neg-int v4, v4

    #@90
    if-ge v1, v4, :cond_7

    #@92
    .line 2343
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@97
    .line 2342
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@99
    array-length v4, v4

    #@9a
    add-int/2addr v1, v4

    #@9b
    goto :goto_3

    #@9c
    .line 2345
    :cond_7
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@9e
    neg-int v5, v1

    #@9f
    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@a2
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/16 v11, 0x2e

    #@4
    const/4 v10, 0x0

    #@5
    .line 2189
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 2190
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@b
    return-object v6

    #@c
    .line 2192
    :cond_0
    iget v6, p0, Ljava/math/BigDecimal;->bitLength:I

    #@e
    const/16 v7, 0x20

    #@10
    if-ge v6, v7, :cond_1

    #@12
    .line 2193
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    #@14
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    #@16
    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@1c
    .line 2194
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@1e
    return-object v6

    #@1f
    .line 2196
    :cond_1
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 2197
    .local v4, "intString":Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    #@29
    if-nez v6, :cond_2

    #@2b
    .line 2198
    return-object v4

    #@2c
    .line 2200
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    #@33
    move-result v6

    #@34
    if-gez v6, :cond_3

    #@36
    const/4 v0, 0x2

    #@37
    .line 2201
    .local v0, "begin":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3a
    move-result v1

    #@3b
    .line 2202
    .local v1, "end":I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    #@3d
    int-to-long v6, v6

    #@3e
    neg-long v6, v6

    #@3f
    int-to-long v8, v1

    #@40
    add-long/2addr v6, v8

    #@41
    int-to-long v8, v0

    #@42
    sub-long v2, v6, v8

    #@44
    .line 2203
    .local v2, "exponent":J
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    .line 2205
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 2206
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    #@4e
    if-lez v6, :cond_5

    #@50
    const-wide/16 v6, -0x6

    #@52
    cmp-long v6, v2, v6

    #@54
    if-ltz v6, :cond_5

    #@56
    .line 2207
    cmp-long v6, v2, v12

    #@58
    if-ltz v6, :cond_4

    #@5a
    .line 2208
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    #@5c
    sub-int v6, v1, v6

    #@5e
    invoke-virtual {v5, v6, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@61
    .line 2224
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@67
    .line 2225
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    #@69
    return-object v6

    #@6a
    .line 2200
    .end local v0    # "begin":I
    .end local v1    # "end":I
    .end local v2    # "exponent":J
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v0, 0x1

    #@6b
    .restart local v0    # "begin":I
    goto :goto_0

    #@6c
    .line 2210
    .restart local v1    # "end":I
    .restart local v2    # "exponent":J
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v6, v0, -0x1

    #@6e
    const-string/jumbo v7, "0."

    #@71
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 2211
    add-int/lit8 v6, v0, 0x1

    #@76
    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    #@78
    long-to-int v8, v2

    #@79
    neg-int v8, v8

    #@7a
    add-int/lit8 v8, v8, -0x1

    #@7c
    invoke-virtual {v5, v6, v7, v10, v8}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_1

    #@80
    .line 2214
    :cond_5
    sub-int v6, v1, v0

    #@82
    const/4 v7, 0x1

    #@83
    if-lt v6, v7, :cond_6

    #@85
    .line 2215
    invoke-virtual {v5, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@88
    .line 2216
    add-int/lit8 v1, v1, 0x1

    #@8a
    .line 2218
    :cond_6
    const/16 v6, 0x45

    #@8c
    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@8f
    .line 2219
    cmp-long v6, v2, v12

    #@91
    if-lez v6, :cond_7

    #@93
    .line 2220
    add-int/lit8 v1, v1, 0x1

    #@95
    const/16 v6, 0x2b

    #@97
    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@9a
    .line 2222
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@9c
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    goto :goto_1
.end method

.method public ulp()Ljava/math/BigDecimal;
    .locals 3

    #@0
    .prologue
    .line 2644
    const-wide/16 v0, 0x1

    #@2
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    #@4
    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1819
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
