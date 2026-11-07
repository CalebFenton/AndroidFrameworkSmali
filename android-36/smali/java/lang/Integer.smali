.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/constant/Constable;
.implements Ljava/lang/constant/ConstantDesc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$IntegerCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/constant/Constable;",
        "Ljava/lang/constant/ConstantDesc;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x4

.field static final blacklist DigitOnes:[B

.field static final blacklist DigitTens:[B

.field public static final whitelist test-api MAX_VALUE:I = 0x7fffffff

.field public static final whitelist test-api MIN_VALUE:I = -0x80000000

.field public static final whitelist test-api SIZE:I = 0x20

.field private static final greylist-max-o SMALL_NEG_VALUES:[Ljava/lang/String;

.field private static final greylist-max-o SMALL_NONNEG_VALUES:[Ljava/lang/String;

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o digits:[C

.field private static final whitelist serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final greylist-max-p value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 97
    const-string v0, "int"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 102
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2a

    sput-object v0, Ljava/lang/Integer;->digits:[C

    .line 463
    const/16 v0, 0x64

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    .line 464
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .line 467
    new-array v1, v0, [B

    fill-array-data v1, :array_52

    sput-object v1, Ljava/lang/Integer;->DigitTens:[B

    .line 480
    new-array v0, v0, [B

    fill-array-data v0, :array_88

    sput-object v0, Ljava/lang/Integer;->DigitOnes:[B

    return-void

    :array_2a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_52
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
    .end array-data

    :array_88
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1221
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1222
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 1223
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1244
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1245
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljava/lang/Integer;->value:I

    .line 1246
    return-void
.end method

.method public static whitelist test-api bitCount(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1824
    ushr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 1825
    const v0, 0x33333333

    and-int v1, p0, v0

    ushr-int/lit8 v2, p0, 0x2

    and-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1826
    .end local p0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 p0, v1, 0x4

    add-int/2addr p0, v1

    const v0, 0xf0f0f0f

    and-int/2addr p0, v0

    .line 1827
    .end local v1    # "i":I
    .restart local p0    # "i":I
    ushr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 1828
    ushr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 1829
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static whitelist test-api compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1613
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    goto :goto_9

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static whitelist test-api compareUnsigned(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1630
    const/high16 v0, -0x80000000

    add-int v1, p0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api compress(II)I
    .registers 10
    .param p0, "i"    # I
    .param p1, "mask"    # I

    .line 1974
    and-int/2addr p0, p1

    .line 1975
    not-int v0, p1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 1977
    .local v0, "maskCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    const/4 v3, 0x5

    if-ge v2, v3, :cond_25

    .line 1980
    invoke-static {v0}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v3

    .line 1982
    .local v3, "maskPrefix":I
    and-int v4, v3, p1

    .line 1984
    .local v4, "maskMove":I
    xor-int v5, p1, v4

    shl-int v6, v1, v2

    ushr-int v6, v4, v6

    or-int p1, v5, v6

    .line 1986
    and-int v5, p0, v4

    .line 1988
    .local v5, "t":I
    xor-int v6, p0, v5

    shl-int v7, v1, v2

    ushr-int v7, v5, v7

    or-int p0, v6, v7

    .line 1990
    not-int v6, v3

    and-int/2addr v0, v6

    .line 1977
    .end local v3    # "maskPrefix":I
    .end local v4    # "maskMove":I
    .end local v5    # "t":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1992
    .end local v2    # "j":I
    :cond_25
    return p0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1535
    const/16 v0, 0xa

    .line 1536
    .local v0, "radix":I
    const/4 v1, 0x0

    .line 1537
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1540
    .local v2, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1542
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1544
    .local v3, "firstChar":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 1545
    const/4 v2, 0x1

    .line 1546
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1547
    :cond_17
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1d

    .line 1548
    add-int/lit8 v1, v1, 0x1

    .line 1551
    :cond_1d
    :goto_1d
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_50

    .line 1555
    :cond_2e
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1556
    add-int/lit8 v1, v1, 0x1

    .line 1557
    const/16 v0, 0x10

    goto :goto_54

    .line 1559
    :cond_3b
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_54

    .line 1560
    add-int/lit8 v1, v1, 0x1

    .line 1561
    const/16 v0, 0x8

    goto :goto_54

    .line 1552
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    .line 1553
    const/16 v0, 0x10

    .line 1564
    :cond_54
    :goto_54
    const-string v4, "-"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "+"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 1568
    :try_start_64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p0, v1, v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v4
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6c} :catch_72

    .line 1569
    .local v4, "result":I
    if-eqz v2, :cond_70

    neg-int v5, v4

    goto :goto_71

    :cond_70
    move v5, v4

    .line 1577
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_71
    goto :goto_95

    .line 1570
    .end local v5    # "result":I
    :catch_72
    move-exception v5

    .line 1574
    .local v5, "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_8b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8f

    .line 1575
    :cond_8b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_8f
    nop

    .line 1576
    .local v4, "constant":Ljava/lang/String;
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v5, v6

    .line 1578
    .end local v4    # "constant":Ljava/lang/String;
    .local v5, "result":I
    :goto_95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1565
    .end local v5    # "result":I
    :cond_9a
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "Sign character in wrong position"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1541
    .end local v3    # "firstChar":C
    :cond_a2
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length string"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist test-api divideUnsigned(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 1675
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api expand(II)I
    .registers 13
    .param p0, "i"    # I
    .param p1, "mask"    # I

    .line 2062
    move v0, p1

    .line 2064
    .local v0, "originalMask":I
    not-int v1, p1

    shl-int/lit8 v1, v1, 0x1

    .line 2065
    .local v1, "maskCount":I
    invoke-static {v1}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v2

    .line 2067
    .local v2, "maskPrefix":I
    and-int v3, v2, p1

    .line 2069
    .local v3, "maskMove1":I
    xor-int v4, p1, v3

    ushr-int/lit8 v5, v3, 0x1

    or-int p1, v4, v5

    .line 2070
    not-int v4, v2

    and-int/2addr v1, v4

    .line 2072
    invoke-static {v1}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v2

    .line 2074
    and-int v4, v2, p1

    .line 2076
    .local v4, "maskMove2":I
    xor-int v5, p1, v4

    ushr-int/lit8 v6, v4, 0x2

    or-int p1, v5, v6

    .line 2077
    not-int v5, v2

    and-int/2addr v1, v5

    .line 2079
    invoke-static {v1}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v2

    .line 2081
    and-int v5, v2, p1

    .line 2083
    .local v5, "maskMove3":I
    xor-int v6, p1, v5

    ushr-int/lit8 v7, v5, 0x4

    or-int p1, v6, v7

    .line 2084
    not-int v6, v2

    and-int/2addr v1, v6

    .line 2086
    invoke-static {v1}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v2

    .line 2088
    and-int v6, v2, p1

    .line 2090
    .local v6, "maskMove4":I
    xor-int v7, p1, v6

    ushr-int/lit8 v8, v6, 0x8

    or-int p1, v7, v8

    .line 2091
    not-int v7, v2

    and-int/2addr v1, v7

    .line 2093
    invoke-static {v1}, Ljava/lang/Integer;->parallelSuffix(I)I

    move-result v2

    .line 2095
    and-int v7, v2, p1

    .line 2097
    .local v7, "maskMove5":I
    shl-int/lit8 v8, p0, 0x10

    .line 2098
    .local v8, "t":I
    not-int v9, v7

    and-int/2addr v9, p0

    and-int v10, v8, v7

    or-int p0, v9, v10

    .line 2099
    shl-int/lit8 v8, p0, 0x8

    .line 2100
    not-int v9, v6

    and-int/2addr v9, p0

    and-int v10, v8, v6

    or-int p0, v9, v10

    .line 2101
    shl-int/lit8 v8, p0, 0x4

    .line 2102
    not-int v9, v5

    and-int/2addr v9, p0

    and-int v10, v8, v5

    or-int p0, v9, v10

    .line 2103
    shl-int/lit8 v8, p0, 0x2

    .line 2104
    not-int v9, v4

    and-int/2addr v9, p0

    and-int v10, v8, v4

    or-int p0, v9, v10

    .line 2105
    shl-int/lit8 v8, p0, 0x1

    .line 2106
    not-int v9, v3

    and-int/2addr v9, p0

    and-int v10, v8, v3

    or-int p0, v9, v10

    .line 2109
    and-int v9, p0, v0

    return v9
.end method

.method private static blacklist formatUnsignedInt(II[BI)V
    .registers 9
    .param p0, "val"    # I
    .param p1, "shift"    # I
    .param p2, "buf"    # [B
    .param p3, "len"    # I

    .line 427
    move v0, p3

    .line 428
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 429
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 431
    .local v2, "mask":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->digits:[C

    and-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    .line 432
    ushr-int/2addr p0, p1

    .line 433
    if-gtz v0, :cond_5

    .line 434
    return-void
.end method

.method static blacklist formatUnsignedInt(II[BII)V
    .registers 10
    .param p0, "val"    # I
    .param p1, "shift"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 438
    add-int v0, p3, p4

    .line 439
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 440
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 442
    .local v2, "mask":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->digits:[C

    and-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    .line 443
    ushr-int/2addr p0, p1

    .line 444
    if-gt v0, p3, :cond_6

    .line 445
    return-void
.end method

.method static blacklist formatUnsignedInt(II[CII)V
    .registers 10
    .param p0, "val"    # I
    .param p1, "shift"    # I
    .param p2, "buf"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 407
    add-int v0, p3, p4

    .line 408
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 409
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 411
    .local v2, "mask":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->digits:[C

    and-int v4, p0, v2

    aget-char v3, v3, v4

    aput-char v3, p2, v0

    .line 412
    ushr-int/2addr p0, p1

    .line 413
    if-gt v0, p3, :cond_6

    .line 414
    return-void
.end method

.method static blacklist getChars(II[B)I
    .registers 8
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [B

    .line 586
    move v0, p1

    .line 588
    .local v0, "charPos":I
    if-gez p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 589
    .local v1, "negative":Z
    :goto_6
    if-nez v1, :cond_9

    .line 590
    neg-int p0, p0

    .line 594
    :cond_9
    :goto_9
    const/16 v2, -0x64

    if-gt p0, v2, :cond_24

    .line 595
    div-int/lit8 v2, p0, 0x64

    .line 596
    .local v2, "q":I
    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v3, p0

    .line 597
    .local v3, "r":I
    move p0, v2

    .line 598
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v4, v4, v3

    aput-byte v4, p2, v0

    .line 599
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v4, v4, v3

    aput-byte v4, p2, v0

    goto :goto_9

    .line 603
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    sget-object v2, Ljava/lang/Integer;->DigitOnes:[B

    neg-int v3, p0

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 604
    const/16 v2, -0x9

    if-ge p0, v2, :cond_3a

    .line 605
    add-int/lit8 v0, v0, -0x1

    sget-object v2, Ljava/lang/Integer;->DigitTens:[B

    neg-int v3, p0

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 608
    :cond_3a
    if-eqz v1, :cond_42

    .line 609
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x2d

    aput-byte v2, p2, v0

    .line 611
    :cond_42
    return v0
.end method

.method static blacklist getChars(II[C)I
    .registers 8
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 618
    move v0, p1

    .line 620
    .local v0, "charPos":I
    if-gez p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 621
    .local v1, "negative":Z
    :goto_6
    if-nez v1, :cond_9

    .line 622
    neg-int p0, p0

    .line 626
    :cond_9
    :goto_9
    const/16 v2, -0x64

    if-gt p0, v2, :cond_26

    .line 627
    div-int/lit8 v2, p0, 0x64

    .line 628
    .local v2, "q":I
    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v3, p0

    .line 629
    .local v3, "r":I
    move p0, v2

    .line 630
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    aput-char v4, p2, v0

    .line 631
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    aput-char v4, p2, v0

    goto :goto_9

    .line 635
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_26
    div-int/lit8 v2, p0, 0xa

    .line 636
    .restart local v2    # "q":I
    mul-int/lit8 v3, v2, 0xa

    sub-int/2addr v3, p0

    .line 637
    .restart local v3    # "r":I
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, p2, v0

    .line 640
    if-gez v2, :cond_3b

    .line 641
    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, p2, v0

    .line 644
    :cond_3b
    if-eqz v1, :cond_43

    .line 645
    add-int/lit8 v0, v0, -0x1

    const/16 v4, 0x2d

    aput-char v4, p2, v0

    .line 647
    :cond_43
    return v0
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "nm"    # Ljava/lang/String;

    .line 1390
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 1436
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1437
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Integer;

    .line 1478
    const/4 v0, 0x0

    .line 1480
    .local v0, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 1482
    goto :goto_8

    .line 1481
    :catch_7
    move-exception v1

    .line 1483
    :goto_8
    if-eqz v0, :cond_10

    .line 1485
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-object v1

    .line 1486
    :catch_f
    move-exception v1

    .line 1489
    :cond_10
    return-object p1
.end method

.method public static whitelist test-api hashCode(I)I
    .registers 1
    .param p0, "value"    # I

    .line 1339
    return p0
.end method

.method public static whitelist test-api highestOneBit(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1729
    const/high16 v0, -0x80000000

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    ushr-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api lowestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .line 1747
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2177
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2191
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api numberOfLeadingZeros(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1774
    if-gtz p0, :cond_9

    .line 1775
    if-nez p0, :cond_7

    const/16 v0, 0x20

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 1776
    :cond_9
    const/16 v0, 0x1f

    .line 1777
    .local v0, "n":I
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_13

    add-int/lit8 v0, v0, -0x10

    ushr-int/lit8 p0, p0, 0x10

    .line 1778
    :cond_13
    const/16 v1, 0x100

    if-lt p0, v1, :cond_1b

    add-int/lit8 v0, v0, -0x8

    ushr-int/lit8 p0, p0, 0x8

    .line 1779
    :cond_1b
    const/16 v1, 0x10

    if-lt p0, v1, :cond_23

    add-int/lit8 v0, v0, -0x4

    ushr-int/lit8 p0, p0, 0x4

    .line 1780
    :cond_23
    const/4 v1, 0x4

    if-lt p0, v1, :cond_2a

    add-int/lit8 v0, v0, -0x2

    ushr-int/lit8 p0, p0, 0x2

    .line 1781
    :cond_2a
    ushr-int/lit8 v1, p0, 0x1

    sub-int v1, v0, v1

    return v1
.end method

.method public static whitelist test-api numberOfTrailingZeros(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1801
    not-int v0, p0

    add-int/lit8 v1, p0, -0x1

    and-int p0, v0, v1

    .line 1802
    if-gtz p0, :cond_a

    and-int/lit8 v0, p0, 0x20

    return v0

    .line 1803
    :cond_a
    const/4 v0, 0x1

    .line 1804
    .local v0, "n":I
    const/high16 v1, 0x10000

    if-le p0, v1, :cond_13

    add-int/lit8 v0, v0, 0x10

    ushr-int/lit8 p0, p0, 0x10

    .line 1805
    :cond_13
    const/16 v1, 0x100

    if-le p0, v1, :cond_1b

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 p0, p0, 0x8

    .line 1806
    :cond_1b
    const/16 v1, 0x10

    if-le p0, v1, :cond_23

    add-int/lit8 v0, v0, 0x4

    ushr-int/lit8 p0, p0, 0x4

    .line 1807
    :cond_23
    const/4 v1, 0x4

    if-le p0, v1, :cond_2a

    add-int/lit8 v0, v0, 0x2

    ushr-int/lit8 p0, p0, 0x2

    .line 1808
    :cond_2a
    ushr-int/lit8 v1, p0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method private static blacklist parallelSuffix(I)I
    .registers 3
    .param p0, "maskCount"    # I

    .line 2114
    shl-int/lit8 v0, p0, 0x1

    xor-int/2addr v0, p0

    .line 2115
    .local v0, "maskPrefix":I
    shl-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 2116
    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 2117
    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 2118
    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 2119
    return v0
.end method

.method public static whitelist test-api parseInt(Ljava/lang/CharSequence;III)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 824
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 827
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p3, v0, :cond_8b

    .line 831
    const/16 v0, 0x24

    if-gt p3, v0, :cond_6e

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "negative":Z
    move v1, p1

    .line 838
    .local v1, "i":I
    const v2, -0x7fffffff

    .line 840
    .local v2, "limit":I
    if-ge v1, p2, :cond_67

    .line 841
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 842
    .local v3, "firstChar":C
    const/16 v4, 0x30

    if-ge v3, v4, :cond_3d

    .line 843
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2a

    .line 844
    const/4 v0, 0x1

    .line 845
    const/high16 v2, -0x80000000

    goto :goto_2e

    .line 846
    :cond_2a
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_38

    .line 850
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    .line 851
    if-eq v1, p2, :cond_33

    goto :goto_3d

    .line 852
    :cond_33
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 847
    :cond_38
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 856
    :cond_3d
    :goto_3d
    div-int v4, v2, p3

    .line 857
    .local v4, "multmin":I
    const/4 v5, 0x0

    .line 858
    .local v5, "result":I
    :goto_40
    if-ge v1, p2, :cond_61

    .line 860
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 861
    .local v6, "digit":I
    if-ltz v6, :cond_5c

    if-lt v5, v4, :cond_5c

    .line 865
    mul-int/2addr v5, p3

    .line 866
    add-int v7, v2, v6

    if-lt v5, v7, :cond_57

    .line 870
    add-int/lit8 v1, v1, 0x1

    .line 871
    sub-int/2addr v5, v6

    .line 872
    .end local v6    # "digit":I
    goto :goto_40

    .line 867
    .restart local v6    # "digit":I
    :cond_57
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 862
    :cond_5c
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 873
    .end local v6    # "digit":I
    :cond_61
    if-eqz v0, :cond_65

    move v6, v5

    goto :goto_66

    :cond_65
    neg-int v6, v5

    :goto_66
    return v6

    .line 875
    .end local v3    # "firstChar":C
    .end local v4    # "multmin":I
    .end local v5    # "result":I
    :cond_67
    const-string v3, ""

    invoke-static {v3, p3}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 832
    .end local v0    # "negative":Z
    .end local v1    # "i":I
    .end local v2    # "limit":I
    :cond_6e
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than Character.MAX_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_8b
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than Character.MIN_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 897
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseInt(Ljava/lang/String;I)I
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 741
    if-eqz p0, :cond_a5

    .line 746
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p1, v0, :cond_88

    .line 751
    const/16 v0, 0x24

    if-gt p1, v0, :cond_6b

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "negative":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 758
    .local v2, "len":I
    const v3, -0x7fffffff

    .line 760
    .local v3, "limit":I
    if-lez v2, :cond_66

    .line 761
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 762
    .local v4, "firstChar":C
    const/16 v5, 0x30

    if-ge v4, v5, :cond_3b

    .line 763
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_27

    .line 764
    const/4 v0, 0x1

    .line 765
    const/high16 v3, -0x80000000

    goto :goto_2b

    .line 766
    :cond_27
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_36

    .line 770
    :goto_2b
    const/4 v5, 0x1

    if-eq v2, v5, :cond_31

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 771
    :cond_31
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 767
    :cond_36
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 775
    :cond_3b
    :goto_3b
    div-int v5, v3, p1

    .line 776
    .local v5, "multmin":I
    const/4 v6, 0x0

    .line 777
    .local v6, "result":I
    :goto_3e
    if-ge v1, v2, :cond_60

    .line 779
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 780
    .local v1, "digit":I
    if-ltz v1, :cond_5b

    if-lt v6, v5, :cond_5b

    .line 783
    mul-int/2addr v6, p1

    .line 784
    add-int v8, v3, v1

    if-lt v6, v8, :cond_56

    .line 787
    sub-int/2addr v6, v1

    .line 788
    .end local v1    # "digit":I
    move v1, v7

    goto :goto_3e

    .line 785
    .restart local v1    # "digit":I
    :cond_56
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 781
    :cond_5b
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 789
    .end local v7    # "i":I
    .local v1, "i":I
    :cond_60
    if-eqz v0, :cond_64

    move v7, v6

    goto :goto_65

    :cond_64
    neg-int v7, v6

    :goto_65
    return v7

    .line 791
    .end local v4    # "firstChar":C
    .end local v5    # "multmin":I
    .end local v6    # "result":I
    :cond_66
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 752
    .end local v0    # "negative":Z
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "limit":I
    :cond_6b
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than Character.MAX_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_88
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than Character.MIN_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_a5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseUnsignedInt(Ljava/lang/CharSequence;III)I
    .registers 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1005
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 1008
    move v0, p1

    .local v0, "start":I
    sub-int v1, p2, p1

    .line 1010
    .local v1, "len":I
    if-lez v1, :cond_5e

    .line 1011
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1012
    .local v2, "firstChar":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4e

    .line 1017
    const/4 v3, 0x5

    if-le v1, v3, :cond_47

    const/16 v3, 0xa

    if-ne p3, v3, :cond_23

    const/16 v3, 0x9

    if-gt v1, v3, :cond_23

    goto :goto_47

    .line 1021
    :cond_23
    add-int v3, v0, v1

    invoke-static {p0, v0, v3, p3}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v3

    .line 1022
    .local v3, "ell":J
    const-wide v5, -0x100000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_37

    .line 1023
    long-to-int v5, v3

    return v5

    .line 1025
    :cond_37
    new-instance v5, Ljava/lang/NumberFormatException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    .line 1026
    const-string v7, "String value %s exceeds range of unsigned int."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1019
    .end local v3    # "ell":J
    :cond_47
    :goto_47
    add-int v3, v0, v1

    invoke-static {p0, v0, v3, p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v3

    return v3

    .line 1013
    :cond_4e
    new-instance v3, Ljava/lang/NumberFormatException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    .line 1014
    const-string v5, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1032
    .end local v2    # "firstChar":C
    :cond_5e
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api parseUnsignedInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1053
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseUnsignedInt(Ljava/lang/String;I)I
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 945
    if-eqz p0, :cond_59

    .line 949
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 950
    .local v0, "len":I
    if-lez v0, :cond_54

    .line 951
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 952
    .local v1, "firstChar":C
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_44

    .line 957
    const/4 v2, 0x5

    if-le v0, v2, :cond_3f

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1d

    const/16 v2, 0x9

    if-gt v0, v2, :cond_1d

    goto :goto_3f

    .line 961
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 962
    .local v2, "ell":J
    const-wide v4, -0x100000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2f

    .line 963
    long-to-int v4, v2

    return v4

    .line 965
    :cond_2f
    new-instance v4, Ljava/lang/NumberFormatException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    .line 966
    const-string v6, "String value %s exceeds range of unsigned int."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 959
    .end local v2    # "ell":J
    :cond_3f
    :goto_3f
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 953
    :cond_44
    new-instance v2, Ljava/lang/NumberFormatException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 954
    const-string v4, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    .end local v1    # "firstChar":C
    :cond_54
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 946
    .end local v0    # "len":I
    :cond_59
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Cannot parse null string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api remainderUnsigned(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 1693
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api reverse(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1893
    const v0, 0x55555555

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v2, p0, 0x1

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1894
    const v0, 0x33333333

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, p0, 0x2

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1895
    const v0, 0xf0f0f0f

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v2, p0, 0x4

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1897
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api reverseBytes(I)I
    .registers 4
    .param p0, "i"    # I

    .line 2147
    shl-int/lit8 v0, p0, 0x18

    const v1, 0xff00

    and-int v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api rotateLeft(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 1853
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api rotateRight(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 1877
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api signum(I)I
    .registers 3
    .param p0, "i"    # I

    .line 2133
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method static greylist-max-o stringSize(I)I
    .registers 5
    .param p0, "x"    # I

    .line 663
    const/4 v0, 0x1

    .line 664
    .local v0, "d":I
    if-ltz p0, :cond_5

    .line 665
    const/4 v0, 0x0

    .line 666
    neg-int p0, p0

    .line 668
    :cond_5
    const/16 v1, -0xa

    .line 669
    .local v1, "p":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    const/16 v3, 0xa

    if-ge v2, v3, :cond_16

    .line 670
    if-le p0, v1, :cond_11

    .line 671
    add-int v3, v2, v0

    return v3

    .line 672
    :cond_11
    mul-int/lit8 v1, v1, 0xa

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 674
    .end local v2    # "i":I
    :cond_16
    add-int/lit8 v2, v0, 0xa

    return v2
.end method

.method public static whitelist test-api sum(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2163
    add-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api toBinaryString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 362
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toHexString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 292
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toOctalString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 330
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 12
    .param p0, "i"    # I

    .line 507
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 508
    .local v2, "negative":Z
    :goto_7
    if-eqz v2, :cond_e

    const/16 v3, -0x64

    if-le p0, v3, :cond_14

    goto :goto_12

    :cond_e
    const/16 v3, 0x64

    if-ge p0, v3, :cond_14

    :goto_12
    move v3, v0

    goto :goto_15

    :cond_14
    move v3, v1

    .line 509
    .local v3, "small":Z
    :goto_15
    if-eqz v3, :cond_83

    .line 510
    if-eqz v2, :cond_1c

    sget-object v4, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    goto :goto_1e

    :cond_1c
    sget-object v4, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .line 512
    .local v4, "smallValues":[Ljava/lang/String;
    :goto_1e
    const/16 v5, 0xa

    const/4 v6, 0x2

    if-eqz v2, :cond_56

    .line 513
    neg-int p0, p0

    .line 514
    aget-object v7, v4, p0

    if-nez v7, :cond_80

    .line 515
    nop

    .line 516
    const/16 v7, 0x2d

    if-ge p0, v5, :cond_3d

    new-instance v5, Ljava/lang/String;

    sget-object v8, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v8, v8, p0

    new-array v6, v6, [B

    aput-byte v7, v6, v1

    aput-byte v8, v6, v0

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_53

    .line 517
    :cond_3d
    new-instance v5, Ljava/lang/String;

    sget-object v8, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v8, v8, p0

    sget-object v9, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v9, v9, p0

    const/4 v10, 0x3

    new-array v10, v10, [B

    aput-byte v7, v10, v1

    aput-byte v8, v10, v0

    aput-byte v9, v10, v6

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>([B)V

    :goto_53
    aput-object v5, v4, p0

    goto :goto_80

    .line 520
    :cond_56
    aget-object v7, v4, p0

    if-nez v7, :cond_80

    .line 521
    nop

    .line 522
    if-ge p0, v5, :cond_6b

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v6, v6, p0

    new-array v0, v0, [B

    aput-byte v6, v0, v1

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_7e

    .line 523
    :cond_6b
    new-instance v5, Ljava/lang/String;

    sget-object v7, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v7, v7, p0

    sget-object v8, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v8, v8, p0

    new-array v6, v6, [B

    aput-byte v7, v6, v1

    aput-byte v8, v6, v0

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    :goto_7e
    aput-object v5, v4, p0

    .line 526
    :cond_80
    :goto_80
    aget-object v0, v4, p0

    return-object v0

    .line 529
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_83
    invoke-static {p0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    .line 535
    .local v0, "size":I
    new-array v1, v0, [B

    .line 536
    .local v1, "buf":[B
    invoke-static {p0, v0, v1}, Ljava/lang/Integer;->getChars(II[B)I

    .line 545
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public static whitelist test-api toString(II)Ljava/lang/String;
    .registers 8
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .line 156
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_9

    .line 157
    :cond_7
    const/16 p1, 0xa

    .line 160
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_12

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_12
    const/16 v0, 0x21

    new-array v0, v0, [B

    .line 169
    .local v0, "buf":[B
    if-gez p0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 170
    .local v1, "negative":Z
    :goto_1b
    const/16 v2, 0x20

    .line 172
    .local v2, "charPos":I
    if-nez v1, :cond_20

    .line 173
    neg-int p0, p0

    .line 176
    :cond_20
    :goto_20
    neg-int v3, p1

    if-gt p0, v3, :cond_32

    .line 177
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "charPos":I
    .local v3, "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    rem-int v5, p0, p1

    neg-int v5, v5

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 178
    div-int/2addr p0, p1

    move v2, v3

    goto :goto_20

    .line 180
    .end local v3    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_32
    sget-object v3, Ljava/lang/Integer;->digits:[C

    neg-int v4, p0

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 182
    if-eqz v1, :cond_42

    .line 183
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    .line 191
    :cond_42
    new-instance v3, Ljava/lang/String;

    rsub-int/lit8 v4, v2, 0x21

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method

.method public static whitelist test-api toUnsignedLong(I)J
    .registers 5
    .param p0, "x"    # I

    .line 1651
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api toUnsignedString(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .line 564
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(II)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o toUnsignedString0(II)Ljava/lang/String;
    .registers 6
    .param p0, "val"    # I
    .param p1, "shift"    # I

    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 371
    .local v0, "mag":I
    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, v0

    div-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 378
    .local v1, "chars":I
    new-array v2, v1, [B

    .line 379
    .local v2, "buf":[B
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, v1}, Ljava/lang/Integer;->formatUnsignedInt(II[BII)V

    .line 388
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static whitelist test-api valueOf(I)Ljava/lang/Integer;
    .registers 3
    .param p0, "i"    # I

    .line 1195
    const/16 v0, -0x80

    if-lt p0, v0, :cond_f

    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    if-gt p0, v0, :cond_f

    .line 1196
    sget-object v0, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0

    .line 1197
    :cond_f
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1108
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1082
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 1254
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Integer;)I
    .registers 4
    .param p1, "anotherInteger"    # Ljava/lang/Integer;

    .line 1595
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2204
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 1300
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1353
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1354
    iget v0, p0, Ljava/lang/Integer;->value:I

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 1356
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 1291
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1326
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 1272
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 1282
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Integer;
    .registers 2
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 2218
    return-object p0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 1263
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1314
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
