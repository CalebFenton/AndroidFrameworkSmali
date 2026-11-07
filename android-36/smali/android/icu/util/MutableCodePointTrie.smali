.class public final Landroid/icu/util/MutableCodePointTrie;
.super Landroid/icu/util/CodePointMap;
.source "MutableCodePointTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;,
        Landroid/icu/util/MutableCodePointTrie$MixedBlocks;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ALL_SAME:B = 0x0t

.field private static final blacklist ASCII_I_LIMIT:I = 0x8

.field private static final blacklist ASCII_LIMIT:I = 0x80

.field private static final blacklist BMP_I_LIMIT:I = 0x1000

.field private static final blacklist BMP_LIMIT:I = 0x10000

.field private static final blacklist I3_16:B = 0x2t

.field private static final blacklist I3_18:B = 0x3t

.field private static final blacklist I3_BMP:B = 0x1t

.field private static final blacklist I3_NULL:B = 0x0t

.field private static final blacklist INDEX_3_18BIT_BLOCK_LENGTH:I = 0x24

.field private static final blacklist INITIAL_DATA_LENGTH:I = 0x4000

.field private static final blacklist I_LIMIT:I = 0x11000

.field private static final blacklist MAX_DATA_LENGTH:I = 0x110000

.field private static final blacklist MAX_UNICODE:I = 0x10ffff

.field private static final blacklist MEDIUM_DATA_LENGTH:I = 0x20000

.field private static final blacklist MIXED:B = 0x1t

.field private static final blacklist SAME_AS:B = 0x2t

.field private static final blacklist SMALL_DATA_BLOCKS_PER_BMP_BLOCK:I = 0x4

.field private static final blacklist UNICODE_LIMIT:I = 0x110000


# instance fields
.field private blacklist data:[I

.field private blacklist dataLength:I

.field private blacklist dataNullOffset:I

.field private blacklist errorValue:I

.field private blacklist flags:[B

.field private blacklist highStart:I

.field private blacklist highValue:I

.field private blacklist index:[I

.field private blacklist index16:[C

.field private blacklist index3NullOffset:I

.field private blacklist initialValue:I

.field private blacklist origInitialValue:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smallValuesSameAs([IIII)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/MutableCodePointTrie;->allValuesSameAs([IIII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalBlocks([CI[CII)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalBlocks([CI[III)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([CI[III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalBlocks([II[III)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([II[III)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "initialValue"    # I
    .param p2, "errorValue"    # I

    .line 40
    invoke-direct {p0}, Landroid/icu/util/CodePointMap;-><init>()V

    .line 405
    const v0, 0x11000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    .line 41
    const/16 v0, 0x1000

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 43
    const/16 v1, 0x4000

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    .line 44
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 45
    iput p1, p0, Landroid/icu/util/MutableCodePointTrie;->origInitialValue:I

    .line 46
    iput p1, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 47
    iput p2, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    .line 48
    iput p1, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 49
    return-void
.end method

.method private static blacklist allValuesSameAs([IIII)Z
    .registers 6
    .param p0, "p"    # [I
    .param p1, "pi"    # I
    .param p2, "length"    # I
    .param p3, "value"    # I

    .line 524
    add-int v0, p1, p2

    .line 525
    .local v0, "pLimit":I
    :goto_2
    if-ge p1, v0, :cond_b

    aget v1, p0, p1

    if-ne v1, p3, :cond_b

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 526
    :cond_b
    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private blacklist allocDataBlock(I)I
    .registers 8
    .param p1, "blockLength"    # I

    .line 427
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    .line 428
    .local v0, "newBlock":I
    add-int v1, v0, p1

    .line 429
    .local v1, "newTop":I
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    array-length v2, v2

    if-le v1, v2, :cond_35

    .line 431
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    array-length v2, v2

    const/high16 v3, 0x20000

    if-ge v2, v3, :cond_13

    .line 432
    const/high16 v2, 0x20000

    .local v2, "capacity":I
    goto :goto_1c

    .line 433
    .end local v2    # "capacity":I
    :cond_13
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    array-length v2, v2

    const/high16 v3, 0x110000

    if-ge v2, v3, :cond_2f

    .line 434
    const/high16 v2, 0x110000

    .line 441
    .restart local v2    # "capacity":I
    :goto_1c
    new-array v3, v2, [I

    .line 442
    .local v3, "newData":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1f
    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v4, v5, :cond_2c

    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v5, v5, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 443
    .end local v4    # "j":I
    :cond_2c
    iput-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    goto :goto_35

    .line 439
    .end local v2    # "capacity":I
    .end local v3    # "newData":[I
    :cond_2f
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 445
    :cond_35
    :goto_35
    iput v1, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    .line 446
    return v0
.end method

.method private blacklist build(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;
    .registers 13
    .param p1, "type"    # Landroid/icu/util/CodePointTrie$Type;
    .param p2, "valueWidth"    # Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 1430
    sget-object v0, Landroid/icu/util/MutableCodePointTrie$1;->$SwitchMap$android$icu$util$CodePointTrie$ValueWidth:[I

    invoke-virtual {p2}, Landroid/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1fc

    .line 1441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1437
    :pswitch_11
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/icu/util/MutableCodePointTrie;->maskValues(I)V

    .line 1438
    goto :goto_1f

    .line 1434
    :pswitch_17
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/icu/util/MutableCodePointTrie;->maskValues(I)V

    .line 1435
    goto :goto_1f

    .line 1432
    :pswitch_1e
    nop

    .line 1444
    :goto_1f
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne p1, v0, :cond_26

    const/high16 v0, 0x10000

    goto :goto_28

    :cond_26
    const/16 v0, 0x1000

    .line 1445
    .local v0, "fastLimit":I
    :goto_28
    shr-int/lit8 v1, v0, 0x4

    invoke-direct {p0, v1}, Landroid/icu/util/MutableCodePointTrie;->compactTrie(I)I

    move-result v1

    .line 1448
    .local v1, "indexLength":I
    sget-object v2, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    if-ne p2, v2, :cond_40

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_40

    .line 1449
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "indexLength":I
    .local v3, "indexLength":I
    const v4, 0xffee

    aput-char v4, v2, v1

    move v1, v3

    .line 1454
    .end local v3    # "indexLength":I
    .restart local v1    # "indexLength":I
    :cond_40
    mul-int/lit8 v2, v1, 0x2

    .line 1455
    .local v2, "length":I
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    const/4 v4, 0x2

    if-ne p2, v3, :cond_8f

    .line 1456
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    xor-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5a

    .line 1458
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    aput v6, v3, v5

    .line 1460
    :cond_5a
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v3, v5, :cond_71

    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    sub-int/2addr v5, v4

    aget v3, v3, v5

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v3, v5, :cond_89

    .line 1461
    :cond_71
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    aput v6, v3, v5

    .line 1462
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    aput v6, v3, v5

    .line 1464
    :cond_89
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    goto/16 :goto_13c

    .line 1465
    :cond_8f
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    if-ne p2, v3, :cond_d4

    .line 1467
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v3, v5, :cond_aa

    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    sub-int/2addr v5, v4

    aget v3, v3, v5

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v3, v4, :cond_ce

    .line 1468
    :cond_aa
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v3, v4, :cond_c2

    .line 1469
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    aput v5, v3, v4

    .line 1471
    :cond_c2
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    aput v5, v3, v4

    .line 1473
    :cond_ce
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    goto :goto_13c

    .line 1475
    :cond_d4
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/2addr v3, v2

    const/4 v5, 0x3

    and-int/2addr v3, v5

    .line 1476
    .local v3, "and3":I
    if-nez v3, :cond_f3

    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v6, v7, :cond_f3

    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    sub-int/2addr v7, v4

    aget v6, v6, v7

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v6, v7, :cond_f3

    goto :goto_139

    .line 1478
    :cond_f3
    if-ne v3, v5, :cond_10e

    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v6, v7, :cond_10e

    .line 1479
    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    aput v6, v4, v5

    goto :goto_139

    .line 1481
    :cond_10e
    :goto_10e
    if-eq v3, v4, :cond_121

    .line 1482
    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    aput v8, v6, v7

    .line 1483
    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v3, v6, 0x3

    goto :goto_10e

    .line 1485
    :cond_121
    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    aput v6, v4, v5

    .line 1486
    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    aput v6, v4, v5

    .line 1488
    :goto_139
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/2addr v2, v4

    .line 1490
    .end local v3    # "and3":I
    :goto_13c
    nop

    .line 1494
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    if-gt v3, v0, :cond_155

    .line 1496
    new-array v3, v1, [C

    .line 1497
    .local v3, "trieIndex":[C
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_145
    if-ge v5, v1, :cond_153

    .line 1498
    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v6, v6, v4

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1497
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_145

    :cond_153
    move-object v5, v3

    .end local v4    # "i":I
    .end local v5    # "j":I
    goto :goto_168

    .line 1501
    .end local v3    # "trieIndex":[C
    :cond_155
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    array-length v3, v3

    if-ne v1, v3, :cond_161

    .line 1502
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    .line 1503
    .restart local v3    # "trieIndex":[C
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move-object v5, v3

    goto :goto_168

    .line 1505
    .end local v3    # "trieIndex":[C
    :cond_161
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v3

    move-object v5, v3

    .line 1510
    .local v5, "trieIndex":[C
    :goto_168
    sget-object v3, Landroid/icu/util/MutableCodePointTrie$1;->$SwitchMap$android$icu$util$CodePointTrie$ValueWidth:[I

    invoke-virtual {p2}, Landroid/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_206

    .line 1542
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1532
    :pswitch_179
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    new-array v6, v3, [B

    .line 1533
    .local v6, "data8":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17e
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v3, v4, :cond_18c

    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v4, v4, v3

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17e

    .line 1534
    .end local v3    # "i":I
    :cond_18c
    sget-object v3, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne p1, v3, :cond_19c

    .line 1535
    new-instance v4, Landroid/icu/util/CodePointTrie$Fast8;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Fast8;-><init>([C[BIII)V

    goto :goto_1a7

    .line 1537
    :cond_19c
    new-instance v4, Landroid/icu/util/CodePointTrie$Small8;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Small8;-><init>([C[BIII)V

    .line 1534
    :goto_1a7
    return-object v4

    .line 1513
    .end local v6    # "data8":[B
    :pswitch_1a8
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    new-array v6, v3, [C

    .line 1514
    .local v6, "data16":[C
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1ad
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v3, v4, :cond_1bb

    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v4, v4, v3

    int-to-char v4, v4

    aput-char v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ad

    .line 1515
    .end local v3    # "i":I
    :cond_1bb
    sget-object v3, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne p1, v3, :cond_1cb

    .line 1516
    new-instance v4, Landroid/icu/util/CodePointTrie$Fast16;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Fast16;-><init>([C[CIII)V

    goto :goto_1d6

    .line 1518
    :cond_1cb
    new-instance v4, Landroid/icu/util/CodePointTrie$Small16;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Small16;-><init>([C[CIII)V

    .line 1515
    :goto_1d6
    return-object v4

    .line 1523
    .end local v6    # "data16":[C
    :pswitch_1d7
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 1524
    .local v6, "data32":[I
    sget-object v3, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne p1, v3, :cond_1ef

    .line 1525
    new-instance v4, Landroid/icu/util/CodePointTrie$Fast32;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Fast32;-><init>([C[IIII)V

    goto :goto_1fa

    .line 1527
    :cond_1ef
    new-instance v4, Landroid/icu/util/CodePointTrie$Small32;

    iget v7, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Small32;-><init>([C[IIII)V

    .line 1524
    :goto_1fa
    return-object v4

    nop

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_17
        :pswitch_11
    .end packed-switch

    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_1d7
        :pswitch_1a8
        :pswitch_179
    .end packed-switch
.end method

.method private blacklist clear()V
    .registers 3

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    .line 116
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->origInitialValue:I

    iput v1, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    iput v1, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 117
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    .line 119
    return-void
.end method

.method private blacklist compactData(I[IILandroid/icu/util/MutableCodePointTrie$MixedBlocks;)I
    .registers 22
    .param p1, "fastILimit"    # I
    .param p2, "newData"    # [I
    .param p3, "dataNullIndex"    # I
    .param p4, "mixedBlocks"    # Landroid/icu/util/MutableCodePointTrie$MixedBlocks;

    .line 1017
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 1018
    .local v4, "newDataLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    const/16 v6, 0x80

    if-ge v4, v6, :cond_17

    .line 1020
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v4, v6, v5

    .line 1019
    add-int/lit8 v4, v4, 0x40

    add-int/lit8 v5, v5, 0x4

    goto :goto_a

    .line 1023
    .end local v5    # "i":I
    :cond_17
    const/16 v5, 0x40

    .line 1024
    .local v5, "blockLength":I
    array-length v6, v2

    invoke-virtual {v3, v6, v5}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1025
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    .line 1027
    iget v7, v0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v7, v7, 0x4

    .line 1028
    .local v7, "iLimit":I
    const/4 v8, 0x4

    .line 1029
    .local v8, "inc":I
    const/4 v9, 0x0

    .line 1030
    .local v9, "fastLength":I
    const/16 v10, 0x8

    .local v10, "i":I
    :goto_29
    if-ge v10, v7, :cond_ce

    .line 1031
    if-ne v10, v1, :cond_38

    .line 1032
    const/16 v5, 0x10

    .line 1033
    const/4 v8, 0x1

    .line 1034
    move v9, v4

    .line 1035
    array-length v11, v2

    invoke-virtual {v3, v11, v5}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1036
    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    .line 1038
    :cond_38
    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v11, v11, v10

    if-nez v11, :cond_81

    .line 1039
    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v10

    .line 1042
    .local v11, "value":I
    invoke-virtual {v3, v2, v11}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findAllSameBlock([II)I

    move-result v12

    .line 1050
    .local v12, "n":I
    :goto_46
    if-ltz v12, :cond_5f

    move/from16 v13, p3

    if-ne v10, v13, :cond_61

    if-lt v10, v1, :cond_61

    if-ge v12, v9, :cond_61

    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    .line 1051
    invoke-static {v12, v14, v1}, Landroid/icu/util/MutableCodePointTrie;->isStartOfSomeFastBlock(I[II)Z

    move-result v14

    if-eqz v14, :cond_61

    .line 1052
    add-int/lit8 v14, v12, 0x1

    invoke-static {v2, v14, v4, v11, v5}, Landroid/icu/util/MutableCodePointTrie;->findAllSameBlock([IIIII)I

    move-result v12

    goto :goto_46

    .line 1050
    :cond_5f
    move/from16 v13, p3

    .line 1054
    :cond_61
    if-ltz v12, :cond_68

    .line 1055
    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v12, v14, v10

    goto :goto_80

    .line 1057
    :cond_68
    invoke-static {v2, v4, v11, v5}, Landroid/icu/util/MutableCodePointTrie;->getAllSameOverlap([IIII)I

    move-result v12

    .line 1058
    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    sub-int v15, v4, v12

    aput v15, v14, v10

    .line 1059
    move v14, v4

    .line 1060
    .local v14, "prevDataLength":I
    :goto_73
    if-ge v12, v5, :cond_7d

    .line 1061
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "newDataLength":I
    .local v15, "newDataLength":I
    aput v11, v2, v4

    .line 1062
    add-int/lit8 v12, v12, 0x1

    move v4, v15

    goto :goto_73

    .line 1064
    .end local v15    # "newDataLength":I
    .restart local v4    # "newDataLength":I
    :cond_7d
    invoke-virtual {v3, v2, v6, v14, v4}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    .line 1066
    .end local v11    # "value":I
    .end local v12    # "n":I
    .end local v14    # "prevDataLength":I
    :goto_80
    goto :goto_cb

    :cond_81
    move/from16 v13, p3

    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v11, v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_bf

    .line 1067
    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v10

    .line 1068
    .local v11, "block":I
    iget-object v12, v0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    invoke-virtual {v3, v2, v12, v11}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([I[II)I

    move-result v12

    .line 1069
    .restart local v12    # "n":I
    if-ltz v12, :cond_9b

    .line 1070
    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v12, v14, v10

    goto :goto_be

    .line 1072
    :cond_9b
    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    invoke-static {v2, v4, v14, v11, v5}, Landroid/icu/util/MutableCodePointTrie;->getOverlap([II[III)I

    move-result v12

    .line 1073
    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    sub-int v15, v4, v12

    aput v15, v14, v10

    .line 1074
    move v14, v4

    .line 1075
    .restart local v14    # "prevDataLength":I
    :goto_a8
    if-ge v12, v5, :cond_ba

    .line 1076
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "newDataLength":I
    .restart local v15    # "newDataLength":I
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v16, v12, 0x1

    .end local v12    # "n":I
    .local v16, "n":I
    add-int/2addr v12, v11

    aget v6, v6, v12

    aput v6, v2, v4

    move v4, v15

    move/from16 v12, v16

    const/4 v6, 0x0

    goto :goto_a8

    .line 1078
    .end local v15    # "newDataLength":I
    .end local v16    # "n":I
    .restart local v4    # "newDataLength":I
    .restart local v12    # "n":I
    :cond_ba
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v14, v4}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    .line 1080
    .end local v11    # "block":I
    .end local v12    # "n":I
    .end local v14    # "prevDataLength":I
    :goto_be
    goto :goto_cb

    .line 1081
    :cond_bf
    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v10

    .line 1082
    .local v11, "j":I
    iget-object v12, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    iget-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v14, v14, v11

    aput v14, v12, v10

    .line 1030
    .end local v11    # "j":I
    :goto_cb
    add-int/2addr v10, v8

    goto/16 :goto_29

    :cond_ce
    move/from16 v13, p3

    .line 1086
    .end local v10    # "i":I
    return v4
.end method

.method private blacklist compactIndex(ILandroid/icu/util/MutableCodePointTrie$MixedBlocks;)I
    .registers 39
    .param p1, "fastILimit"    # I
    .param p2, "mixedBlocks"    # Landroid/icu/util/MutableCodePointTrie$MixedBlocks;

    .line 1090
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    shr-int/lit8 v3, v1, 0x2

    .line 1091
    .local v3, "fastIndexLength":I
    iget v4, v0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v4, v4, 0x6

    const/16 v5, 0x7fff

    if-gt v4, v3, :cond_13

    .line 1093
    iput v5, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 1094
    return v3

    .line 1099
    :cond_13
    new-array v4, v3, [C

    .line 1100
    .local v4, "fastIndex":[C
    const/4 v6, -0x1

    .line 1101
    .local v6, "i3FirstNull":I
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_18
    const/16 v9, 0x20

    const/4 v10, 0x1

    if-ge v7, v1, :cond_48

    .line 1102
    iget-object v11, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v7

    .line 1103
    .local v11, "i3":I
    int-to-char v12, v11

    aput-char v12, v4, v8

    .line 1104
    iget v12, v0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    if-ne v11, v12, :cond_38

    .line 1105
    if-gez v6, :cond_2c

    .line 1106
    move v6, v8

    goto :goto_39

    .line 1107
    :cond_2c
    iget v12, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v12, :cond_39

    sub-int v12, v8, v6

    add-int/2addr v12, v10

    if-ne v12, v9, :cond_39

    .line 1109
    iput v6, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    goto :goto_39

    .line 1112
    :cond_38
    const/4 v6, -0x1

    .line 1116
    :cond_39
    :goto_39
    add-int/lit8 v9, v7, 0x4

    .line 1117
    .local v9, "iNext":I
    :goto_3b
    add-int/2addr v7, v10

    if-ge v7, v9, :cond_45

    .line 1118
    add-int/lit8 v11, v11, 0x10

    .line 1119
    iget-object v12, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v11, v12, v7

    goto :goto_3b

    .line 1101
    .end local v9    # "iNext":I
    .end local v11    # "i3":I
    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 1123
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_48
    invoke-virtual {v2, v3, v9}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1124
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v7, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1134
    const/4 v8, 0x0

    .line 1135
    .local v8, "index3Capacity":I
    iget v6, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 1136
    const/4 v11, 0x0

    .line 1140
    .local v11, "hasLongI3Blocks":Z
    const/16 v12, 0x1000

    if-ge v1, v12, :cond_58

    move v12, v7

    .line 1141
    .local v12, "iStart":I
    :cond_58
    iget v13, v0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v13, v13, 0x4

    .line 1142
    .local v13, "iLimit":I
    move v14, v12

    .local v14, "i":I
    :goto_5d
    move/from16 v16, v7

    const v7, 0xffff

    const/16 v17, 0x3

    if-ge v14, v13, :cond_ca

    .line 1143
    move/from16 v18, v14

    .line 1144
    .local v18, "j":I
    add-int/lit8 v5, v14, 0x20

    .line 1145
    .local v5, "jLimit":I
    const/16 v19, 0x0

    .line 1146
    .local v19, "oredI3":I
    const/16 v20, 0x1

    .line 1148
    .local v20, "isNull":Z
    :goto_6e
    const/16 v21, 0x2

    iget-object v15, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v15, v15, v18

    .line 1149
    .local v15, "i3":I
    move/from16 v22, v10

    or-int v10, v19, v15

    .line 1150
    .end local v19    # "oredI3":I
    .local v10, "oredI3":I
    iget v9, v0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    if-eq v15, v9, :cond_7f

    .line 1151
    const/4 v9, 0x0

    move/from16 v20, v9

    .line 1153
    .end local v15    # "i3":I
    :cond_7f
    add-int/lit8 v9, v18, 0x1

    .end local v18    # "j":I
    .local v9, "j":I
    if-lt v9, v5, :cond_c1

    .line 1154
    if-eqz v20, :cond_95

    .line 1155
    iget-object v15, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v16, v15, v14

    .line 1156
    if-gez v6, :cond_b7

    .line 1157
    if-gt v10, v7, :cond_90

    .line 1158
    add-int/lit8 v8, v8, 0x20

    goto :goto_93

    .line 1160
    :cond_90
    add-int/lit8 v8, v8, 0x24

    .line 1161
    const/4 v11, 0x1

    .line 1163
    :goto_93
    const/4 v6, 0x0

    goto :goto_b7

    .line 1166
    :cond_95
    if-gt v10, v7, :cond_af

    .line 1167
    iget-object v7, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    invoke-virtual {v2, v4, v7, v14}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[II)I

    move-result v7

    .line 1168
    .local v7, "n":I
    if-ltz v7, :cond_a8

    .line 1169
    iget-object v15, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v22, v15, v14

    .line 1170
    iget-object v15, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v7, v15, v14

    goto :goto_ae

    .line 1172
    :cond_a8
    iget-object v15, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v21, v15, v14

    .line 1173
    add-int/lit8 v8, v8, 0x20

    .line 1175
    .end local v7    # "n":I
    :goto_ae
    goto :goto_b7

    .line 1176
    :cond_af
    iget-object v7, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v17, v7, v14

    .line 1177
    add-int/lit8 v8, v8, 0x24

    .line 1178
    const/4 v7, 0x1

    move v11, v7

    .line 1181
    :cond_b7
    :goto_b7
    move v14, v9

    .line 1182
    .end local v5    # "jLimit":I
    .end local v9    # "j":I
    .end local v10    # "oredI3":I
    .end local v20    # "isNull":Z
    move/from16 v7, v16

    move/from16 v10, v22

    const/16 v5, 0x7fff

    const/16 v9, 0x20

    goto :goto_5d

    .line 1153
    .restart local v5    # "jLimit":I
    .restart local v9    # "j":I
    .restart local v10    # "oredI3":I
    .restart local v20    # "isNull":Z
    :cond_c1
    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v10, v22

    const/16 v9, 0x20

    goto :goto_6e

    .line 1142
    .end local v5    # "jLimit":I
    .end local v9    # "j":I
    .end local v10    # "oredI3":I
    .end local v20    # "isNull":Z
    :cond_ca
    move/from16 v22, v10

    const/16 v21, 0x2

    .line 1184
    .end local v14    # "i":I
    sub-int v5, v13, v12

    shr-int/lit8 v5, v5, 0x5

    .line 1187
    .local v5, "index2Capacity":I
    add-int/lit8 v9, v5, 0x1f

    shr-int/lit8 v9, v9, 0x5

    .line 1191
    .local v9, "index1Length":I
    add-int v10, v3, v9

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    .line 1192
    .local v10, "index16Capacity":I
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v14

    iput-object v14, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    .line 1194
    const/16 v14, 0x20

    invoke-virtual {v2, v10, v14}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1195
    const/4 v14, 0x0

    .line 1196
    .local v14, "longI3Blocks":Landroid/icu/util/MutableCodePointTrie$MixedBlocks;
    if-eqz v11, :cond_f6

    .line 1197
    new-instance v7, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;-><init>(Landroid/icu/util/MutableCodePointTrie-IA;)V

    move-object v14, v7

    .line 1198
    const/16 v7, 0x24

    invoke-virtual {v14, v10, v7}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1202
    :cond_f6
    new-array v7, v5, [C

    .line 1203
    .local v7, "index2":[C
    const/4 v15, 0x0

    .line 1204
    .local v15, "i2Length":I
    iget v6, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 1205
    add-int v1, v3, v9

    .line 1206
    .local v1, "index3Start":I
    move/from16 v20, v1

    .line 1207
    .local v20, "indexLength":I
    move/from16 v23, v12

    move/from16 v29, v20

    move/from16 v20, v3

    move/from16 v3, v29

    move-object/from16 v29, v4

    move/from16 v4, v23

    .local v3, "indexLength":I
    .local v4, "i":I
    .local v20, "fastIndexLength":I
    .local v29, "fastIndex":[C
    :goto_10b
    if-ge v4, v13, :cond_30b

    .line 1209
    move/from16 v30, v5

    .end local v5    # "index2Capacity":I
    .local v30, "index2Capacity":I
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v5, v5, v4

    .line 1210
    .local v5, "f":B
    if-nez v5, :cond_12a

    if-gez v6, :cond_12a

    .line 1212
    move/from16 v23, v5

    .end local v5    # "f":B
    .local v23, "f":B
    iget v5, v0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move/from16 v31, v6

    const v6, 0xffff

    .end local v6    # "i3FirstNull":I
    .local v31, "i3FirstNull":I
    if-gt v5, v6, :cond_125

    move/from16 v5, v21

    goto :goto_127

    :cond_125
    move/from16 v5, v17

    .line 1213
    .end local v23    # "f":B
    .restart local v5    # "f":B
    :goto_127
    const/16 v16, 0x0

    .end local v31    # "i3FirstNull":I
    .local v16, "i3FirstNull":I
    goto :goto_135

    .line 1210
    .end local v16    # "i3FirstNull":I
    .restart local v6    # "i3FirstNull":I
    :cond_12a
    move/from16 v23, v5

    move/from16 v31, v6

    const v6, 0xffff

    .line 1215
    .end local v5    # "f":B
    .end local v6    # "i3FirstNull":I
    .restart local v23    # "f":B
    .restart local v31    # "i3FirstNull":I
    move/from16 v5, v23

    move/from16 v16, v31

    .end local v23    # "f":B
    .end local v31    # "i3FirstNull":I
    .restart local v5    # "f":B
    .restart local v16    # "i3FirstNull":I
    :goto_135
    if-nez v5, :cond_143

    .line 1216
    iget v6, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    move/from16 v27, v4

    move/from16 v24, v5

    move/from16 v32, v8

    move/from16 v33, v9

    .local v6, "i3":I
    goto/16 :goto_2e7

    .line 1217
    .end local v6    # "i3":I
    :cond_143
    move/from16 v6, v22

    if-ne v5, v6, :cond_157

    .line 1218
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v6, v6, v4

    move/from16 v27, v4

    move/from16 v24, v5

    move/from16 v32, v8

    move/from16 v33, v9

    const/16 v22, 0x1

    .restart local v6    # "i3":I
    goto/16 :goto_2e7

    .line 1219
    .end local v6    # "i3":I
    :cond_157
    move/from16 v6, v21

    if-ne v5, v6, :cond_1bb

    .line 1220
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v24, v5

    .end local v5    # "f":B
    .local v24, "f":B
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    invoke-virtual {v2, v6, v5, v4}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[II)I

    move-result v5

    .line 1221
    .local v5, "n":I
    if-ltz v5, :cond_16d

    .line 1222
    move v6, v5

    move/from16 v27, v4

    move/from16 v32, v8

    .restart local v6    # "i3":I
    goto :goto_1b3

    .line 1224
    .end local v6    # "i3":I
    :cond_16d
    if-ne v3, v1, :cond_175

    .line 1226
    const/4 v5, 0x0

    move/from16 v32, v8

    const/16 v8, 0x20

    goto :goto_183

    .line 1228
    :cond_175
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v25, v5

    .end local v5    # "n":I
    .local v25, "n":I
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    move/from16 v32, v8

    const/16 v8, 0x20

    .end local v8    # "index3Capacity":I
    .local v32, "index3Capacity":I
    invoke-static {v6, v3, v5, v4, v8}, Landroid/icu/util/MutableCodePointTrie;->getOverlap([CI[III)I

    move-result v5

    .line 1231
    .end local v25    # "n":I
    .restart local v5    # "n":I
    :goto_183
    sub-int v6, v3, v5

    .line 1232
    .restart local v6    # "i3":I
    move/from16 v19, v3

    .line 1233
    .local v19, "prevIndexLength":I
    :goto_187
    if-ge v5, v8, :cond_1a3

    .line 1234
    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v26, v3, 0x1

    move/from16 v27, v4

    .end local v3    # "indexLength":I
    .end local v4    # "i":I
    .local v26, "indexLength":I
    .local v27, "i":I
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v28, v5, 0x1

    .end local v5    # "n":I
    .local v28, "n":I
    add-int v5, v27, v5

    aget v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v8, v3

    move/from16 v3, v26

    move/from16 v4, v27

    move/from16 v5, v28

    const/16 v8, 0x20

    goto :goto_187

    .line 1236
    .end local v26    # "indexLength":I
    .end local v27    # "i":I
    .end local v28    # "n":I
    .restart local v3    # "indexLength":I
    .restart local v4    # "i":I
    .restart local v5    # "n":I
    :cond_1a3
    move/from16 v27, v4

    .end local v4    # "i":I
    .restart local v27    # "i":I
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v8, v19

    .end local v19    # "prevIndexLength":I
    .local v8, "prevIndexLength":I
    invoke-virtual {v2, v4, v1, v8, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1237
    if-eqz v11, :cond_1b3

    .line 1238
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v14, v4, v1, v8, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1241
    .end local v5    # "n":I
    .end local v8    # "prevIndexLength":I
    :cond_1b3
    :goto_1b3
    move/from16 v33, v9

    const/16 v21, 0x2

    const/16 v22, 0x1

    goto/16 :goto_2e7

    .line 1242
    .end local v6    # "i3":I
    .end local v24    # "f":B
    .end local v27    # "i":I
    .end local v32    # "index3Capacity":I
    .restart local v4    # "i":I
    .local v5, "f":B
    .local v8, "index3Capacity":I
    :cond_1bb
    move/from16 v27, v4

    move/from16 v24, v5

    move/from16 v32, v8

    .line 1243
    .end local v4    # "i":I
    .end local v5    # "f":B
    .end local v8    # "index3Capacity":I
    .restart local v24    # "f":B
    .restart local v27    # "i":I
    .restart local v32    # "index3Capacity":I
    nop

    .line 1245
    move/from16 v4, v27

    .line 1246
    .local v4, "j":I
    add-int/lit8 v5, v27, 0x20

    .line 1247
    .local v5, "jLimit":I
    move v6, v3

    .line 1249
    .local v6, "k":I
    :goto_1c7
    const/16 v22, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 1250
    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v19, v4, 0x1

    .end local v4    # "j":I
    .local v19, "j":I
    aget v4, v8, v4

    .line 1251
    .local v4, "v":I
    const/high16 v8, 0x30000

    and-int v26, v4, v8

    const/16 v21, 0x2

    shr-int/lit8 v26, v26, 0x2

    .line 1252
    .local v26, "upperBits":I
    move/from16 v28, v8

    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v31, v6, 0x1

    move/from16 v33, v6

    .end local v6    # "k":I
    .local v31, "k":I
    .local v33, "k":I
    int-to-char v6, v4

    aput-char v6, v8, v33

    .line 1253
    .end local v33    # "k":I
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v8, v19, 0x1

    .end local v19    # "j":I
    .local v8, "j":I
    aget v4, v6, v19

    .line 1254
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0x4

    or-int v6, v26, v6

    .line 1255
    .end local v26    # "upperBits":I
    .local v6, "upperBits":I
    move/from16 v19, v6

    .end local v6    # "upperBits":I
    .local v19, "upperBits":I
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v26, v31, 0x1

    move-object/from16 v33, v6

    .end local v31    # "k":I
    .local v26, "k":I
    int-to-char v6, v4

    aput-char v6, v33, v31

    .line 1256
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v31, v8, 0x1

    .end local v8    # "j":I
    .local v31, "j":I
    aget v4, v6, v8

    .line 1257
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0x6

    or-int v6, v19, v6

    .line 1258
    .end local v19    # "upperBits":I
    .restart local v6    # "upperBits":I
    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v19, v26, 0x1

    move/from16 v33, v6

    .end local v6    # "upperBits":I
    .end local v26    # "k":I
    .local v19, "k":I
    .local v33, "upperBits":I
    int-to-char v6, v4

    aput-char v6, v8, v26

    .line 1259
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v8, v31, 0x1

    .end local v31    # "j":I
    .restart local v8    # "j":I
    aget v4, v6, v31

    .line 1260
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0x8

    or-int v6, v33, v6

    .line 1261
    .end local v33    # "upperBits":I
    .restart local v6    # "upperBits":I
    move/from16 v26, v6

    .end local v6    # "upperBits":I
    .local v26, "upperBits":I
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v31, v19, 0x1

    move-object/from16 v33, v6

    .end local v19    # "k":I
    .local v31, "k":I
    int-to-char v6, v4

    aput-char v6, v33, v19

    .line 1262
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v19, v8, 0x1

    .end local v8    # "j":I
    .local v19, "j":I
    aget v4, v6, v8

    .line 1263
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0xa

    or-int v6, v26, v6

    .line 1264
    .end local v26    # "upperBits":I
    .restart local v6    # "upperBits":I
    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v26, v31, 0x1

    move/from16 v33, v6

    .end local v6    # "upperBits":I
    .end local v31    # "k":I
    .local v26, "k":I
    .restart local v33    # "upperBits":I
    int-to-char v6, v4

    aput-char v6, v8, v31

    .line 1265
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v8, v19, 0x1

    .end local v19    # "j":I
    .restart local v8    # "j":I
    aget v4, v6, v19

    .line 1266
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0xc

    or-int v6, v33, v6

    .line 1267
    .end local v33    # "upperBits":I
    .restart local v6    # "upperBits":I
    move/from16 v19, v6

    .end local v6    # "upperBits":I
    .local v19, "upperBits":I
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v31, v26, 0x1

    move-object/from16 v33, v6

    .end local v26    # "k":I
    .restart local v31    # "k":I
    int-to-char v6, v4

    aput-char v6, v33, v26

    .line 1268
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v26, v8, 0x1

    .end local v8    # "j":I
    .local v26, "j":I
    aget v4, v6, v8

    .line 1269
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0xe

    or-int v6, v19, v6

    .line 1270
    .end local v19    # "upperBits":I
    .restart local v6    # "upperBits":I
    iget-object v8, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v19, v31, 0x1

    move/from16 v33, v6

    .end local v6    # "upperBits":I
    .end local v31    # "k":I
    .local v19, "k":I
    .restart local v33    # "upperBits":I
    int-to-char v6, v4

    aput-char v6, v8, v31

    .line 1271
    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v8, v26, 0x1

    .end local v26    # "j":I
    .restart local v8    # "j":I
    aget v4, v6, v26

    .line 1272
    and-int v6, v4, v28

    shr-int/lit8 v6, v6, 0x10

    or-int v6, v33, v6

    .line 1273
    .end local v33    # "upperBits":I
    .restart local v6    # "upperBits":I
    move/from16 v33, v9

    .end local v9    # "index1Length":I
    .local v33, "index1Length":I
    iget-object v9, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v28, v9

    .end local v19    # "k":I
    .local v26, "k":I
    int-to-char v9, v4

    aput-char v9, v28, v19

    .line 1274
    iget-object v9, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v19, v26, -0x9

    move/from16 v28, v4

    .end local v4    # "v":I
    .local v28, "v":I
    int-to-char v4, v6

    aput-char v4, v9, v19

    .line 1275
    .end local v6    # "upperBits":I
    .end local v28    # "v":I
    if-lt v8, v5, :cond_302

    .line 1276
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v14, v4, v6, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[CI)I

    move-result v4

    .line 1277
    .local v4, "n":I
    const v6, 0x8000

    if-ltz v4, :cond_299

    .line 1278
    or-int/2addr v6, v4

    .local v6, "i3":I
    goto :goto_2e7

    .line 1280
    .end local v6    # "i3":I
    :cond_299
    if-ne v3, v1, :cond_29f

    .line 1282
    const/4 v4, 0x0

    move/from16 v19, v6

    goto :goto_2ae

    .line 1284
    :cond_29f
    iget-object v9, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v19, v6

    iget-object v6, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v28, v4

    const/16 v4, 0x24

    .end local v4    # "n":I
    .local v28, "n":I
    invoke-static {v9, v3, v6, v3, v4}, Landroid/icu/util/MutableCodePointTrie;->getOverlap([CI[CII)I

    move-result v6

    move v4, v6

    .line 1287
    .end local v28    # "n":I
    .restart local v4    # "n":I
    :goto_2ae
    sub-int v6, v3, v4

    or-int v6, v6, v19

    .line 1288
    .restart local v6    # "i3":I
    move v9, v3

    .line 1289
    .local v9, "prevIndexLength":I
    if-lez v4, :cond_2d7

    .line 1290
    move/from16 v19, v3

    .line 1291
    .local v19, "start":I
    :goto_2b7
    move/from16 v28, v5

    const/16 v5, 0x24

    .end local v5    # "jLimit":I
    .local v28, "jLimit":I
    if-ge v4, v5, :cond_2d4

    .line 1292
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v31, v3, 0x1

    move/from16 v34, v3

    .end local v3    # "indexLength":I
    .local v31, "indexLength":I
    .local v34, "indexLength":I
    iget-object v3, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v35, v4, 0x1

    .end local v4    # "n":I
    .local v35, "n":I
    add-int v4, v19, v4

    aget-char v3, v3, v4

    aput-char v3, v5, v34

    move/from16 v5, v28

    move/from16 v3, v31

    move/from16 v4, v35

    .end local v34    # "indexLength":I
    goto :goto_2b7

    .line 1291
    .end local v31    # "indexLength":I
    .end local v35    # "n":I
    .restart local v3    # "indexLength":I
    .restart local v4    # "n":I
    :cond_2d4
    move/from16 v34, v3

    .line 1294
    .end local v3    # "indexLength":I
    .end local v19    # "start":I
    .restart local v34    # "indexLength":I
    goto :goto_2db

    .line 1295
    .end local v28    # "jLimit":I
    .end local v34    # "indexLength":I
    .restart local v3    # "indexLength":I
    .restart local v5    # "jLimit":I
    :cond_2d7
    move/from16 v28, v5

    .end local v5    # "jLimit":I
    .restart local v28    # "jLimit":I
    add-int/lit8 v3, v3, 0x24

    .line 1297
    :goto_2db
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v5, v1, v9, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1298
    if-eqz v11, :cond_2e7

    .line 1299
    iget-object v5, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v14, v5, v1, v9, v3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1303
    .end local v4    # "n":I
    .end local v8    # "j":I
    .end local v9    # "prevIndexLength":I
    .end local v26    # "k":I
    .end local v28    # "jLimit":I
    :cond_2e7
    :goto_2e7
    iget v4, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v4, :cond_2ef

    if-ltz v16, :cond_2ef

    .line 1304
    iput v6, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 1307
    :cond_2ef
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "i2Length":I
    .local v4, "i2Length":I
    int-to-char v5, v6

    aput-char v5, v7, v15

    .line 1207
    .end local v6    # "i3":I
    .end local v24    # "f":B
    add-int/lit8 v5, v27, 0x20

    move v15, v4

    move v4, v5

    move/from16 v6, v16

    move/from16 v5, v30

    move/from16 v8, v32

    move/from16 v9, v33

    .end local v27    # "i":I
    .local v5, "i":I
    goto/16 :goto_10b

    .line 1275
    .end local v4    # "i2Length":I
    .local v5, "jLimit":I
    .restart local v8    # "j":I
    .restart local v15    # "i2Length":I
    .restart local v24    # "f":B
    .restart local v26    # "k":I
    .restart local v27    # "i":I
    :cond_302
    move/from16 v28, v5

    .end local v5    # "jLimit":I
    .restart local v28    # "jLimit":I
    move v4, v8

    move/from16 v6, v26

    move/from16 v9, v33

    goto/16 :goto_1c7

    .line 1207
    .end local v16    # "i3FirstNull":I
    .end local v24    # "f":B
    .end local v26    # "k":I
    .end local v27    # "i":I
    .end local v28    # "jLimit":I
    .end local v30    # "index2Capacity":I
    .end local v32    # "index3Capacity":I
    .end local v33    # "index1Length":I
    .local v4, "i":I
    .local v5, "index2Capacity":I
    .local v6, "i3FirstNull":I
    .local v8, "index3Capacity":I
    .local v9, "index1Length":I
    :cond_30b
    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v8

    move/from16 v33, v9

    .line 1309
    .end local v4    # "i":I
    .end local v5    # "index2Capacity":I
    .end local v6    # "i3FirstNull":I
    .end local v8    # "index3Capacity":I
    .end local v9    # "index1Length":I
    .restart local v30    # "index2Capacity":I
    .local v31, "i3FirstNull":I
    .restart local v32    # "index3Capacity":I
    .restart local v33    # "index1Length":I
    nop

    .line 1310
    nop

    .line 1312
    iget v4, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v4, :cond_31f

    .line 1313
    const/16 v4, 0x7fff

    iput v4, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 1315
    :cond_31f
    const v4, 0x801f

    if-ge v3, v4, :cond_3ac

    .line 1325
    const/16 v4, 0x20

    .line 1326
    .local v4, "blockLength":I
    move/from16 v5, v20

    .line 1327
    .local v5, "i1":I
    const/4 v6, 0x0

    move/from16 v25, v3

    .end local v3    # "indexLength":I
    .local v6, "i":I
    .local v25, "indexLength":I
    :goto_32b
    if-ge v6, v15, :cond_3a4

    .line 1329
    sub-int v3, v15, v6

    if-lt v3, v4, :cond_33e

    .line 1331
    nop

    .line 1332
    iget-object v3, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v3, v7, v6}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[CI)I

    move-result v3

    move v8, v6

    move-object v6, v7

    move v7, v1

    move/from16 v1, v25

    .local v3, "n":I
    goto :goto_358

    .line 1335
    .end local v3    # "n":I
    :cond_33e
    sub-int v28, v15, v6

    .line 1336
    .end local v4    # "blockLength":I
    .local v28, "blockLength":I
    iget-object v3, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v24, v1

    move-object/from16 v23, v3

    move/from16 v27, v6

    move-object/from16 v26, v7

    .end local v1    # "index3Start":I
    .end local v6    # "i":I
    .end local v7    # "index2":[C
    .local v24, "index3Start":I
    .local v26, "index2":[C
    .restart local v27    # "i":I
    invoke-static/range {v23 .. v28}, Landroid/icu/util/MutableCodePointTrie;->findSameBlock([CII[CII)I

    move-result v3

    move/from16 v7, v24

    move-object/from16 v6, v26

    move/from16 v8, v27

    move/from16 v4, v28

    move/from16 v1, v25

    .line 1340
    .end local v24    # "index3Start":I
    .end local v25    # "indexLength":I
    .end local v26    # "index2":[C
    .end local v27    # "i":I
    .end local v28    # "blockLength":I
    .local v1, "indexLength":I
    .restart local v3    # "n":I
    .restart local v4    # "blockLength":I
    .local v6, "index2":[C
    .local v7, "index3Start":I
    .local v8, "i":I
    :goto_358
    if-ltz v3, :cond_360

    .line 1341
    move v9, v3

    move/from16 v18, v4

    move/from16 v25, v1

    .local v9, "i2":I
    goto :goto_392

    .line 1343
    .end local v9    # "i2":I
    :cond_360
    if-ne v1, v7, :cond_364

    .line 1345
    const/4 v3, 0x0

    goto :goto_36a

    .line 1347
    :cond_364
    iget-object v9, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    invoke-static {v9, v1, v6, v8, v4}, Landroid/icu/util/MutableCodePointTrie;->getOverlap([CI[CII)I

    move-result v3

    .line 1349
    :goto_36a
    sub-int v9, v1, v3

    .line 1350
    .restart local v9    # "i2":I
    move/from16 v16, v1

    .line 1351
    .local v16, "prevIndexLength":I
    :goto_36e
    if-ge v3, v4, :cond_383

    .line 1352
    move/from16 v17, v3

    .end local v3    # "n":I
    .local v17, "n":I
    iget-object v3, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v25, v1, 0x1

    .end local v1    # "indexLength":I
    .restart local v25    # "indexLength":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "n":I
    .local v18, "n":I
    add-int v17, v8, v17

    aget-char v17, v6, v17

    aput-char v17, v3, v1

    move/from16 v3, v18

    move/from16 v1, v25

    goto :goto_36e

    .line 1354
    .end local v18    # "n":I
    .end local v25    # "indexLength":I
    .restart local v1    # "indexLength":I
    .restart local v3    # "n":I
    :cond_383
    move/from16 v17, v3

    .end local v3    # "n":I
    .restart local v17    # "n":I
    iget-object v3, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    move/from16 v18, v4

    move/from16 v4, v16

    .end local v16    # "prevIndexLength":I
    .local v4, "prevIndexLength":I
    .local v18, "blockLength":I
    invoke-virtual {v2, v3, v7, v4, v1}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    move/from16 v3, v17

    move/from16 v25, v1

    .line 1357
    .end local v1    # "indexLength":I
    .end local v4    # "prevIndexLength":I
    .end local v17    # "n":I
    .restart local v3    # "n":I
    .restart local v25    # "indexLength":I
    :goto_392
    iget-object v1, v0, Landroid/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i1":I
    .local v4, "i1":I
    int-to-char v0, v9

    aput-char v0, v1, v5

    .line 1327
    .end local v3    # "n":I
    .end local v9    # "i2":I
    add-int v0, v8, v18

    move v5, v4

    move v1, v7

    move/from16 v4, v18

    move-object v7, v6

    move v6, v0

    move-object/from16 v0, p0

    .end local v8    # "i":I
    .local v0, "i":I
    goto :goto_32b

    .end local v0    # "i":I
    .end local v18    # "blockLength":I
    .local v1, "index3Start":I
    .local v4, "blockLength":I
    .restart local v5    # "i1":I
    .local v6, "i":I
    .local v7, "index2":[C
    :cond_3a4
    move v8, v6

    move-object v6, v7

    move v7, v1

    move/from16 v1, v25

    .line 1359
    .end local v25    # "indexLength":I
    .local v1, "indexLength":I
    .local v6, "index2":[C
    .local v7, "index3Start":I
    nop

    .line 1360
    nop

    .line 1362
    return v1

    .line 1318
    .end local v4    # "blockLength":I
    .end local v5    # "i1":I
    .end local v6    # "index2":[C
    .local v1, "index3Start":I
    .local v3, "indexLength":I
    .local v7, "index2":[C
    :cond_3ac
    move-object v6, v7

    move v7, v1

    .end local v1    # "index3Start":I
    .restart local v6    # "index2":[C
    .local v7, "index3Start":I
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The trie data exceeds limitations of the data structure."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist compactTrie(I)I
    .registers 13
    .param p1, "fastILimit"    # I

    .line 1367
    nop

    .line 1368
    const v0, 0x10ffff

    invoke-virtual {p0, v0}, Landroid/icu/util/MutableCodePointTrie;->get(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 1369
    invoke-direct {p0}, Landroid/icu/util/MutableCodePointTrie;->findHighStart()I

    move-result v0

    .line 1370
    .local v0, "realHighStart":I
    add-int/lit16 v1, v0, 0x1ff

    and-int/lit16 v0, v1, -0x200

    .line 1372
    const/high16 v1, 0x110000

    if-ne v0, v1, :cond_1a

    .line 1373
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    iput v1, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 1378
    :cond_1a
    shl-int/lit8 v1, p1, 0x4

    .line 1379
    .local v1, "fastLimit":I
    if-ge v0, v1, :cond_33

    .line 1380
    shr-int/lit8 v2, v0, 0x4

    .local v2, "i":I
    :goto_20
    if-ge v2, p1, :cond_30

    .line 1381
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 1382
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    aput v4, v3, v2

    .line 1380
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1384
    .end local v2    # "i":I
    :cond_30
    iput v1, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    goto :goto_35

    .line 1386
    :cond_33
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    .line 1389
    :goto_35
    const/16 v2, 0x80

    new-array v3, v2, [I

    .line 1390
    .local v3, "asciiData":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v2, :cond_45

    .line 1391
    invoke-virtual {p0, v4}, Landroid/icu/util/MutableCodePointTrie;->get(I)I

    move-result v5

    aput v5, v3, v4

    .line 1390
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1397
    .end local v4    # "i":I
    :cond_45
    new-instance v2, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;

    invoke-direct {v2}, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;-><init>()V

    .line 1398
    .local v2, "allSameBlocks":Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;
    invoke-direct {p0, p1, v2}, Landroid/icu/util/MutableCodePointTrie;->compactWholeDataBlocks(ILandroid/icu/util/MutableCodePointTrie$AllSameBlocks;)I

    move-result v4

    .line 1399
    .local v4, "newDataCapacity":I
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 1401
    .local v5, "newData":[I
    invoke-virtual {v2}, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->findMostUsed()I

    move-result v6

    .line 1403
    .local v6, "dataNullIndex":I
    new-instance v7, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;-><init>(Landroid/icu/util/MutableCodePointTrie-IA;)V

    .line 1404
    .local v7, "mixedBlocks":Landroid/icu/util/MutableCodePointTrie$MixedBlocks;
    invoke-direct {p0, p1, v5, v6, v7}, Landroid/icu/util/MutableCodePointTrie;->compactData(I[IILandroid/icu/util/MutableCodePointTrie$MixedBlocks;)I

    move-result v8

    .line 1405
    .local v8, "newDataLength":I
    nop

    .line 1406
    iput-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    .line 1407
    iput v8, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    .line 1408
    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    const v10, 0x4000f

    if-gt v9, v10, :cond_89

    .line 1414
    if-ltz v6, :cond_7d

    .line 1415
    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v9, v9, v6

    iput v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 1416
    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget v10, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    aget v9, v9, v10

    iput v9, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    goto :goto_82

    .line 1418
    :cond_7d
    const v9, 0xfffff

    iput v9, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 1421
    :goto_82
    invoke-direct {p0, p1, v7}, Landroid/icu/util/MutableCodePointTrie;->compactIndex(ILandroid/icu/util/MutableCodePointTrie$MixedBlocks;)I

    move-result v9

    .line 1422
    .local v9, "indexLength":I
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    .line 1423
    return v9

    .line 1410
    .end local v9    # "indexLength":I
    :cond_89
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    const-string v10, "The trie data exceeds limitations of the data structure."

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private blacklist compactWholeDataBlocks(ILandroid/icu/util/MutableCodePointTrie$AllSameBlocks;)I
    .registers 13
    .param p1, "fastILimit"    # I
    .param p2, "allSameBlocks"    # Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;

    .line 919
    const/16 v0, 0x80

    .line 922
    .local v0, "newDataCapacity":I
    add-int/lit8 v0, v0, 0x10

    .line 924
    add-int/lit8 v0, v0, 0x4

    .line 925
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v1, v1, 0x4

    .line 926
    .local v1, "iLimit":I
    const/16 v2, 0x40

    .line 927
    .local v2, "blockLength":I
    const/4 v3, 0x4

    .line 928
    .local v3, "inc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_96

    .line 929
    if-ne v4, p1, :cond_15

    .line 930
    const/16 v2, 0x10

    .line 931
    const/4 v3, 0x1

    .line 933
    :cond_15
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v4

    .line 934
    .local v5, "value":I
    iget-object v6, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v6, v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3d

    .line 936
    move v6, v5

    .line 937
    .local v6, "p":I
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v5, v7, v6

    .line 938
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-static {v7, v8, v9, v5}, Landroid/icu/util/MutableCodePointTrie;->allValuesSameAs([IIII)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 939
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v8, 0x0

    aput-byte v8, v7, v4

    .line 940
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v5, v7, v4

    .line 946
    .end local v6    # "p":I
    goto :goto_5f

    .line 943
    .restart local v6    # "p":I
    :cond_3b
    add-int/2addr v0, v2

    .line 944
    goto :goto_93

    .line 947
    .end local v6    # "p":I
    :cond_3d
    nop

    .line 948
    if-le v3, v7, :cond_5f

    .line 950
    const/4 v6, 0x1

    .line 951
    .local v6, "allSame":Z
    add-int v7, v4, v3

    .line 952
    .local v7, "next_i":I
    add-int/lit8 v8, v4, 0x1

    .local v8, "j":I
    :goto_45
    if-ge v8, v7, :cond_53

    .line 953
    nop

    .line 954
    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v9, v9, v8

    if-eq v9, v5, :cond_50

    .line 955
    const/4 v6, 0x0

    .line 956
    goto :goto_53

    .line 952
    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 959
    .end local v8    # "j":I
    :cond_53
    :goto_53
    if-nez v6, :cond_5f

    .line 961
    invoke-direct {p0, v4}, Landroid/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v8

    if-gez v8, :cond_5d

    .line 962
    const/4 v8, -0x1

    return v8

    .line 964
    :cond_5d
    add-int/2addr v0, v2

    .line 965
    goto :goto_93

    .line 970
    .end local v6    # "allSame":Z
    .end local v7    # "next_i":I
    :cond_5f
    :goto_5f
    invoke-virtual {p2, v4, v3, v5}, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->findOrAdd(III)I

    move-result v6

    .line 971
    .local v6, "other":I
    const/4 v7, -0x2

    if-ne v6, v7, :cond_86

    .line 973
    const/4 v7, 0x4

    .line 974
    .local v7, "jInc":I
    const/4 v8, 0x0

    .line 975
    .restart local v8    # "j":I
    :goto_68
    if-ne v8, v4, :cond_6e

    .line 976
    invoke-virtual {p2, v4, v3, v5}, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->add(III)V

    .line 977
    goto :goto_86

    .line 979
    :cond_6e
    if-ne v8, p1, :cond_71

    .line 980
    const/4 v7, 0x1

    .line 982
    :cond_71
    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v9, v9, v8

    if-nez v9, :cond_84

    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v9, v9, v8

    if-ne v9, v5, :cond_84

    .line 983
    add-int v9, v7, v3

    invoke-virtual {p2, v8, v9, v5}, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->add(III)V

    .line 984
    move v6, v8

    .line 985
    goto :goto_86

    .line 974
    :cond_84
    add-int/2addr v8, v7

    goto :goto_68

    .line 992
    .end local v7    # "jInc":I
    .end local v8    # "j":I
    :cond_86
    :goto_86
    if-ltz v6, :cond_92

    .line 993
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v8, 0x2

    aput-byte v8, v7, v4

    .line 994
    iget-object v7, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v6, v7, v4

    goto :goto_93

    .line 997
    :cond_92
    add-int/2addr v0, v2

    .line 928
    .end local v5    # "value":I
    .end local v6    # "other":I
    :goto_93
    add-int/2addr v4, v3

    goto/16 :goto_e

    .line 1000
    .end local v4    # "i":I
    :cond_96
    return v0
.end method

.method private blacklist ensureHighStart(I)V
    .registers 7
    .param p1, "c"    # I

    .line 408
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    if-lt p1, v0, :cond_38

    .line 410
    add-int/lit16 v0, p1, 0x200

    and-int/lit16 v0, v0, -0x200

    .line 411
    .end local p1    # "c":I
    .local v0, "c":I
    iget p1, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 p1, p1, 0x4

    .line 412
    .local p1, "i":I
    shr-int/lit8 v1, v0, 0x4

    .line 413
    .local v1, "iLimit":I
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    array-length v2, v2

    if-le v1, v2, :cond_26

    .line 414
    const v2, 0x11000

    new-array v2, v2, [I

    .line 415
    .local v2, "newIndex":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_19
    if-ge v3, p1, :cond_24

    iget-object v4, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v4, v4, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 416
    .end local v3    # "j":I
    :cond_24
    iput-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    .line 419
    .end local v2    # "newIndex":[I
    :cond_26
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v3, 0x0

    aput-byte v3, v2, p1

    .line 420
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    aput v3, v2, p1

    .line 421
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v1, :cond_26

    .line 422
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    move p1, v0

    .line 424
    .end local v0    # "c":I
    .end local v1    # "iLimit":I
    .local p1, "c":I
    :cond_38
    return-void
.end method

.method private static blacklist equalBlocks([CI[CII)Z
    .registers 7
    .param p0, "s"    # [C
    .param p1, "si"    # I
    .param p2, "t"    # [C
    .param p3, "ti"    # I
    .param p4, "length"    # I

    .line 515
    nop

    :goto_1
    if-lez p4, :cond_10

    aget-char v0, p0, p1

    aget-char v1, p2, p3

    if-ne v0, v1, :cond_10

    .line 516
    add-int/lit8 p1, p1, 0x1

    .line 517
    add-int/lit8 p3, p3, 0x1

    .line 518
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 520
    :cond_10
    if-nez p4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static blacklist equalBlocks([CI[III)Z
    .registers 7
    .param p0, "s"    # [C
    .param p1, "si"    # I
    .param p2, "t"    # [I
    .param p3, "ti"    # I
    .param p4, "length"    # I

    .line 506
    nop

    :goto_1
    if-lez p4, :cond_10

    aget-char v0, p0, p1

    aget v1, p2, p3

    if-ne v0, v1, :cond_10

    .line 507
    add-int/lit8 p1, p1, 0x1

    .line 508
    add-int/lit8 p3, p3, 0x1

    .line 509
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 511
    :cond_10
    if-nez p4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static blacklist equalBlocks([II[III)Z
    .registers 7
    .param p0, "s"    # [I
    .param p1, "si"    # I
    .param p2, "t"    # [I
    .param p3, "ti"    # I
    .param p4, "length"    # I

    .line 497
    nop

    :goto_1
    if-lez p4, :cond_10

    aget v0, p0, p1

    aget v1, p2, p3

    if-ne v0, v1, :cond_10

    .line 498
    add-int/lit8 p1, p1, 0x1

    .line 499
    add-int/lit8 p3, p3, 0x1

    .line 500
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 502
    :cond_10
    if-nez p4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private blacklist fillBlock(IIII)V
    .registers 8
    .param p1, "block"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I

    .line 257
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    add-int v1, p1, p2

    add-int v2, p1, p3

    invoke-static {v0, v1, v2, p4}, Ljava/util/Arrays;->fill([IIII)V

    .line 258
    return-void
.end method

.method private static blacklist findAllSameBlock([IIIII)I
    .registers 8
    .param p0, "p"    # [I
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I
    .param p4, "blockLength"    # I

    .line 547
    sub-int/2addr p2, p4

    .line 549
    move v0, p1

    .local v0, "block":I
    :goto_2
    if-gt v0, p2, :cond_1a

    .line 550
    aget v1, p0, v0

    if-ne v1, p3, :cond_17

    .line 551
    const/4 v1, 0x1

    .line 552
    .local v1, "i":I
    :goto_9
    if-ne v1, p4, :cond_c

    .line 553
    return v0

    .line 555
    :cond_c
    add-int v2, v0, v1

    aget v2, p0, v2

    if-eq v2, p3, :cond_14

    .line 556
    add-int/2addr v0, v1

    .line 557
    goto :goto_17

    .line 551
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 549
    .end local v1    # "i":I
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 562
    .end local v0    # "block":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findHighStart()I
    .registers 6

    .line 617
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v0, v0, 0x4

    .line 618
    .local v0, "i":I
    :goto_4
    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 620
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v3

    if-nez v0, :cond_19

    .line 621
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v0, v0, v3

    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v0, v2, :cond_18

    const/4 v1, 0x1

    .local v1, "match":Z
    :cond_18
    goto :goto_30

    .line 623
    .end local v1    # "match":Z
    :cond_19
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v0, v3

    .line 624
    .local v2, "p":I
    const/4 v0, 0x0

    .line 625
    .local v0, "j":I
    :goto_1e
    const/16 v1, 0x10

    if-ne v0, v1, :cond_24

    .line 626
    const/4 v1, 0x1

    .line 627
    .restart local v1    # "match":Z
    goto :goto_30

    .line 629
    .end local v1    # "match":Z
    :cond_24
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    add-int v4, v2, v0

    aget v1, v1, v4

    iget v4, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v1, v4, :cond_39

    .line 630
    const/4 v1, 0x0

    .line 631
    .restart local v1    # "match":Z
    nop

    .line 635
    .end local v0    # "j":I
    .end local v2    # "p":I
    :goto_30
    if-nez v1, :cond_37

    .line 636
    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v0, v0, 0x4

    return v0

    .line 638
    .end local v1    # "match":Z
    :cond_37
    move v0, v3

    goto :goto_4

    .line 624
    .restart local v0    # "j":I
    .restart local v2    # "p":I
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 639
    .end local v2    # "p":I
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_3c
    return v1
.end method

.method private static blacklist findSameBlock([CII[CII)I
    .registers 7
    .param p0, "p"    # [C
    .param p1, "pStart"    # I
    .param p2, "length"    # I
    .param p3, "q"    # [C
    .param p4, "qStart"    # I
    .param p5, "blockLength"    # I

    .line 533
    sub-int/2addr p2, p5

    .line 535
    :goto_1
    if-gt p1, p2, :cond_d

    .line 536
    invoke-static {p0, p1, p3, p4, p5}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 537
    return p1

    .line 539
    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 541
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist fromCodePointMap(Landroid/icu/util/CodePointMap;)Landroid/icu/util/MutableCodePointTrie;
    .registers 8
    .param p0, "map"    # Landroid/icu/util/CodePointMap;

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/CodePointMap;->get(I)I

    move-result v0

    .line 94
    .local v0, "errorValue":I
    const v1, 0x10ffff

    invoke-virtual {p0, v1}, Landroid/icu/util/CodePointMap;->get(I)I

    move-result v1

    .line 95
    .local v1, "initialValue":I
    new-instance v2, Landroid/icu/util/MutableCodePointTrie;

    invoke-direct {v2, v1, v0}, Landroid/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 96
    .local v2, "mutableTrie":Landroid/icu/util/MutableCodePointTrie;
    new-instance v3, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v3}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    .line 97
    .local v3, "range":Landroid/icu/util/CodePointMap$Range;
    const/4 v4, 0x0

    .line 98
    .local v4, "start":I
    :goto_17
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Landroid/icu/util/CodePointMap;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 99
    invoke-virtual {v3}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v5

    .line 100
    .local v5, "end":I
    invoke-virtual {v3}, Landroid/icu/util/CodePointMap$Range;->getValue()I

    move-result v6

    .line 101
    .local v6, "value":I
    if-eq v6, v1, :cond_31

    .line 102
    if-ne v4, v5, :cond_2e

    .line 103
    invoke-virtual {v2, v4, v6}, Landroid/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_31

    .line 105
    :cond_2e
    invoke-virtual {v2, v4, v5, v6}, Landroid/icu/util/MutableCodePointTrie;->setRange(III)V

    .line 108
    :cond_31
    :goto_31
    add-int/lit8 v4, v5, 0x1

    .line 109
    .end local v5    # "end":I
    .end local v6    # "value":I
    goto :goto_17

    .line 110
    :cond_34
    return-object v2
.end method

.method private static blacklist getAllSameOverlap([IIII)I
    .registers 7
    .param p0, "p"    # [I
    .param p1, "length"    # I
    .param p2, "value"    # I
    .param p3, "blockLength"    # I

    .line 597
    add-int/lit8 v0, p3, -0x1

    sub-int v0, p1, v0

    .line 598
    .local v0, "min":I
    move v1, p1

    .line 599
    .local v1, "i":I
    :goto_5
    if-ge v0, v1, :cond_10

    add-int/lit8 v2, v1, -0x1

    aget v2, p0, v2

    if-ne v2, p2, :cond_10

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 600
    :cond_10
    sub-int v2, p1, v1

    return v2
.end method

.method private blacklist getDataBlock(I)I
    .registers 9
    .param p1, "i"    # I

    .line 454
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 455
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v0, v0, p1

    return v0

    .line 457
    :cond_c
    const/16 v0, 0x1000

    const/16 v2, 0x10

    if-ge p1, v0, :cond_38

    .line 458
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/icu/util/MutableCodePointTrie;->allocDataBlock(I)I

    move-result v0

    .line 459
    .local v0, "newBlock":I
    and-int/lit8 v3, p1, -0x4

    .line 460
    .local v3, "iStart":I
    add-int/lit8 v4, v3, 0x4

    .line 462
    .local v4, "iLimit":I
    :goto_1c
    nop

    .line 463
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v3

    invoke-direct {p0, v0, v5}, Landroid/icu/util/MutableCodePointTrie;->writeBlock(II)V

    .line 464
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v1, v5, v3

    .line 465
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "iStart":I
    .local v6, "iStart":I
    aput v0, v5, v3

    .line 466
    add-int/2addr v0, v2

    .line 467
    if-lt v6, v4, :cond_36

    .line 468
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v1, v1, p1

    return v1

    .line 467
    :cond_36
    move v3, v6

    goto :goto_1c

    .line 470
    .end local v0    # "newBlock":I
    .end local v4    # "iLimit":I
    .end local v6    # "iStart":I
    :cond_38
    invoke-direct {p0, v2}, Landroid/icu/util/MutableCodePointTrie;->allocDataBlock(I)I

    move-result v0

    .line 471
    .restart local v0    # "newBlock":I
    if-gez v0, :cond_3f

    return v0

    .line 472
    :cond_3f
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v2, p1

    invoke-direct {p0, v0, v2}, Landroid/icu/util/MutableCodePointTrie;->writeBlock(II)V

    .line 473
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v1, v2, p1

    .line 474
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput v0, v1, p1

    .line 475
    return v0
.end method

.method private static blacklist getOverlap([CI[CII)I
    .registers 7
    .param p0, "p"    # [C
    .param p1, "length"    # I
    .param p2, "q"    # [C
    .param p3, "qStart"    # I
    .param p4, "blockLength"    # I

    .line 588
    add-int/lit8 v0, p4, -0x1

    .line 589
    .local v0, "overlap":I
    nop

    .line 590
    :goto_3
    if-lez v0, :cond_10

    sub-int v1, p1, v0

    invoke-static {p0, v1, p2, p3, v0}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result v1

    if-nez v1, :cond_10

    .line 591
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 593
    :cond_10
    return v0
.end method

.method private static blacklist getOverlap([CI[III)I
    .registers 7
    .param p0, "p"    # [C
    .param p1, "length"    # I
    .param p2, "q"    # [I
    .param p3, "qStart"    # I
    .param p4, "blockLength"    # I

    .line 579
    add-int/lit8 v0, p4, -0x1

    .line 580
    .local v0, "overlap":I
    nop

    .line 581
    :goto_3
    if-lez v0, :cond_10

    sub-int v1, p1, v0

    invoke-static {p0, v1, p2, p3, v0}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([CI[III)Z

    move-result v1

    if-nez v1, :cond_10

    .line 582
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 584
    :cond_10
    return v0
.end method

.method private static blacklist getOverlap([II[III)I
    .registers 7
    .param p0, "p"    # [I
    .param p1, "length"    # I
    .param p2, "q"    # [I
    .param p3, "qStart"    # I
    .param p4, "blockLength"    # I

    .line 570
    add-int/lit8 v0, p4, -0x1

    .line 571
    .local v0, "overlap":I
    nop

    .line 572
    :goto_3
    if-lez v0, :cond_10

    sub-int v1, p1, v0

    invoke-static {p0, v1, p2, p3, v0}, Landroid/icu/util/MutableCodePointTrie;->equalBlocks([II[III)Z

    move-result v1

    if-nez v1, :cond_10

    .line 573
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 575
    :cond_10
    return v0
.end method

.method private static blacklist isStartOfSomeFastBlock(I[II)Z
    .registers 5
    .param p0, "dataOffset"    # I
    .param p1, "index"    # [I
    .param p2, "fastILimit"    # I

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_c

    .line 605
    aget v1, p1, v0

    if-ne v1, p0, :cond_9

    .line 606
    const/4 v1, 0x1

    return v1

    .line 604
    :cond_9
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 609
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist maskValues(I)V
    .registers 6
    .param p1, "mask"    # I

    .line 482
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    and-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 483
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    and-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    .line 484
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    and-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 485
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v0, v0, 0x4

    .line 486
    .local v0, "iLimit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_26

    .line 487
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_23

    .line 488
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v3, v2, v1

    and-int/2addr v3, p1

    aput v3, v2, v1

    .line 486
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 491
    .end local v1    # "i":I
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_27
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v1, v2, :cond_35

    .line 492
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v3, v2, v1

    and-int/2addr v3, p1

    aput v3, v2, v1

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 494
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method private static final blacklist maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "initialValue"    # I
    .param p2, "nullValue"    # I
    .param p3, "filter"    # Landroid/icu/util/CodePointMap$ValueFilter;

    .line 142
    if-ne p0, p1, :cond_4

    .line 143
    move p0, p2

    goto :goto_a

    .line 144
    :cond_4
    if-eqz p3, :cond_a

    .line 145
    invoke-interface {p3, p0}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result p0

    .line 147
    :cond_a
    :goto_a
    return p0
.end method

.method private blacklist writeBlock(II)V
    .registers 5
    .param p1, "block"    # I
    .param p2, "value"    # I

    .line 236
    add-int/lit8 v0, p1, 0x10

    .line 237
    .local v0, "limit":I
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    invoke-static {v1, p1, v0, p2}, Ljava/util/Arrays;->fill([IIII)V

    .line 238
    return-void
.end method


# virtual methods
.method public blacklist buildImmutable(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;
    .registers 5
    .param p1, "type"    # Landroid/icu/util/CodePointTrie$Type;
    .param p2, "valueWidth"    # Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 343
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 348
    :try_start_4
    invoke-direct {p0, p1, p2}, Landroid/icu/util/MutableCodePointTrie;->build(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 350
    invoke-direct {p0}, Landroid/icu/util/MutableCodePointTrie;->clear()V

    .line 348
    return-object v0

    .line 350
    :catchall_c
    move-exception v0

    invoke-direct {p0}, Landroid/icu/util/MutableCodePointTrie;->clear()V

    .line 351
    throw v0

    .line 344
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type and valueWidth must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clone()Landroid/icu/util/MutableCodePointTrie;
    .registers 7

    .line 59
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/MutableCodePointTrie;

    .line 60
    .local v0, "builder":Landroid/icu/util/MutableCodePointTrie;
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    const/high16 v2, 0x10000

    const v3, 0x11000

    if-gt v1, v2, :cond_12

    const/16 v1, 0x1000

    goto :goto_13

    :cond_12
    move v1, v3

    .line 61
    .local v1, "iCapacity":I
    :goto_13
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    .line 62
    new-array v2, v3, [B

    iput-object v2, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    .line 63
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v3, v3, 0x4

    .local v3, "iLimit":I
    :goto_20
    if-ge v2, v3, :cond_35

    .line 64
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 65
    iget-object v4, v0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v2

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 67
    .end local v2    # "i":I
    .end local v3    # "iLimit":I
    :cond_35
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 68
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    .line 69
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->dataLength:I

    .line 70
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 71
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->origInitialValue:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->origInitialValue:I

    .line 72
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 73
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    .line 74
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    .line 75
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    iput v2, v0, Landroid/icu/util/MutableCodePointTrie;->highValue:I
    :try_end_5f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_5f} :catch_61

    .line 76
    nop

    .line 77
    return-object v0

    .line 78
    .end local v0    # "builder":Landroid/icu/util/MutableCodePointTrie;
    .end local v1    # "iCapacity":I
    :catch_61
    move-exception v0

    .line 80
    .local v0, "ignored":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/icu/util/MutableCodePointTrie;->clone()Landroid/icu/util/MutableCodePointTrie;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(I)I
    .registers 6
    .param p1, "c"    # I

    .line 126
    if-ltz p1, :cond_28

    const v0, 0x10ffff

    if-ge v0, p1, :cond_8

    goto :goto_28

    .line 129
    :cond_8
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    if-lt p1, v0, :cond_f

    .line 130
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    return v0

    .line 132
    :cond_f
    shr-int/lit8 v0, p1, 0x4

    .line 133
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_1c

    .line 134
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v1, v1, v0

    return v1

    .line 136
    :cond_1c
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v2, v0

    and-int/lit8 v3, p1, 0xf

    add-int/2addr v2, v3

    aget v1, v1, v2

    return v1

    .line 127
    .end local v0    # "i":I
    :cond_28
    :goto_28
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie;->errorValue:I

    return v0
.end method

.method public blacklist getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z
    .registers 15
    .param p1, "start"    # I
    .param p2, "filter"    # Landroid/icu/util/CodePointMap$ValueFilter;
    .param p3, "range"    # Landroid/icu/util/CodePointMap$Range;

    .line 158
    if-ltz p1, :cond_bb

    const v0, 0x10ffff

    if-ge v0, p1, :cond_9

    goto/16 :goto_bb

    .line 161
    :cond_9
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1a

    .line 162
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    .line 163
    .local v1, "value":I
    if-eqz p2, :cond_16

    invoke-interface {p2, v1}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v1

    .line 164
    :cond_16
    invoke-virtual {p3, p1, v0, v1}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 165
    return v2

    .line 167
    .end local v1    # "value":I
    :cond_1a
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 168
    .local v1, "nullValue":I
    if-eqz p2, :cond_22

    invoke-interface {p2, v1}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v1

    .line 169
    :cond_22
    move v3, p1

    .line 171
    .local v3, "c":I
    const/4 v4, 0x0

    .local v4, "trieValue":I
    const/4 v5, 0x0

    .line 172
    .local v5, "value":I
    const/4 v6, 0x0

    .line 173
    .local v6, "haveValue":Z
    shr-int/lit8 v7, v3, 0x4

    .line 175
    .local v7, "i":I
    :cond_28
    iget-object v8, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v8, v8, v7

    if-nez v8, :cond_56

    .line 176
    iget-object v8, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v7

    .line 177
    .local v8, "trieValue2":I
    if-eqz v6, :cond_49

    .line 178
    if-eq v8, v4, :cond_51

    .line 179
    if-eqz p2, :cond_43

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 180
    invoke-static {v8, v9, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v9

    if-eq v9, v5, :cond_41

    goto :goto_43

    .line 185
    :cond_41
    move v4, v8

    goto :goto_51

    .line 182
    :cond_43
    :goto_43
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p3, p1, v0, v5}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 183
    return v2

    .line 188
    :cond_49
    move v4, v8

    .line 189
    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v8, v9, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v5

    .line 190
    const/4 v6, 0x1

    .line 192
    :cond_51
    :goto_51
    add-int/lit8 v9, v3, 0x10

    and-int/lit8 v3, v9, -0x10

    .line 193
    .end local v8    # "trieValue2":I
    goto :goto_a0

    .line 194
    :cond_56
    iget-object v8, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v7

    and-int/lit8 v9, v3, 0xf

    add-int/2addr v8, v9

    .line 195
    .local v8, "di":I
    iget-object v9, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    aget v9, v9, v8

    .line 196
    .local v9, "trieValue2":I
    if-eqz v6, :cond_78

    .line 197
    if-eq v9, v4, :cond_80

    .line 198
    if-eqz p2, :cond_72

    iget v10, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 199
    invoke-static {v9, v10, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v10

    if-eq v10, v5, :cond_70

    goto :goto_72

    .line 204
    :cond_70
    move v4, v9

    goto :goto_80

    .line 201
    :cond_72
    :goto_72
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p3, p1, v0, v5}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 202
    return v2

    .line 207
    :cond_78
    move v4, v9

    .line 208
    iget v10, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v9, v10, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v5

    .line 209
    const/4 v6, 0x1

    .line 211
    :cond_80
    :goto_80
    add-int/2addr v3, v2

    and-int/lit8 v10, v3, 0xf

    if-eqz v10, :cond_a0

    .line 212
    iget-object v10, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v8, v8, 0x1

    aget v9, v10, v8

    .line 213
    if-eq v9, v4, :cond_80

    .line 214
    if-eqz p2, :cond_9a

    iget v10, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    .line 215
    invoke-static {v9, v10, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v10

    if-eq v10, v5, :cond_98

    goto :goto_9a

    .line 220
    :cond_98
    move v4, v9

    goto :goto_80

    .line 217
    :cond_9a
    :goto_9a
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p3, p1, v0, v5}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 218
    return v2

    .line 224
    .end local v8    # "di":I
    .end local v9    # "trieValue2":I
    :cond_a0
    :goto_a0
    add-int/lit8 v7, v7, 0x1

    .line 225
    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->highStart:I

    if-lt v3, v8, :cond_28

    .line 226
    nop

    .line 227
    iget v8, p0, Landroid/icu/util/MutableCodePointTrie;->highValue:I

    iget v9, p0, Landroid/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v8, v9, v1, p2}, Landroid/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v8

    if-eq v8, v5, :cond_b7

    .line 228
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p3, p1, v0, v5}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    goto :goto_ba

    .line 230
    :cond_b7
    invoke-virtual {p3, p1, v0, v5}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 232
    :goto_ba
    return v2

    .line 159
    .end local v1    # "nullValue":I
    .end local v3    # "c":I
    .end local v4    # "trieValue":I
    .end local v5    # "value":I
    .end local v6    # "haveValue":Z
    .end local v7    # "i":I
    :cond_bb
    :goto_bb
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist set(II)V
    .registers 6
    .param p1, "c"    # I
    .param p2, "value"    # I

    .line 247
    if-ltz p1, :cond_18

    const v0, 0x10ffff

    if-lt v0, p1, :cond_18

    .line 251
    invoke-direct {p0, p1}, Landroid/icu/util/MutableCodePointTrie;->ensureHighStart(I)V

    .line 252
    shr-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Landroid/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v0

    .line 253
    .local v0, "block":I
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie;->data:[I

    and-int/lit8 v2, p1, 0xf

    add-int/2addr v2, v0

    aput p2, v1, v2

    .line 254
    return-void

    .line 248
    .end local v0    # "block":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid code point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRange(III)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .line 269
    if-ltz p1, :cond_5e

    const v0, 0x10ffff

    if-lt v0, p1, :cond_5e

    if-ltz p2, :cond_5e

    if-lt v0, p2, :cond_5e

    if-gt p1, p2, :cond_5e

    .line 272
    invoke-direct {p0, p2}, Landroid/icu/util/MutableCodePointTrie;->ensureHighStart(I)V

    .line 274
    add-int/lit8 v0, p2, 0x1

    .line 275
    .local v0, "limit":I
    and-int/lit8 v1, p1, 0xf

    const/16 v2, 0x10

    if-eqz v1, :cond_33

    .line 277
    shr-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1}, Landroid/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v1

    .line 278
    .local v1, "block":I
    add-int/lit8 v3, p1, 0xf

    and-int/lit8 v3, v3, -0x10

    .line 279
    .local v3, "nextStart":I
    if-gt v3, v0, :cond_2b

    .line 280
    and-int/lit8 v4, p1, 0xf

    invoke-direct {p0, v1, v4, v2, p3}, Landroid/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    .line 282
    move p1, v3

    goto :goto_33

    .line 284
    :cond_2b
    and-int/lit8 v2, p1, 0xf

    and-int/lit8 v4, v0, 0xf

    invoke-direct {p0, v1, v2, v4, p3}, Landroid/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    .line 286
    return-void

    .line 291
    .end local v1    # "block":I
    .end local v3    # "nextStart":I
    :cond_33
    :goto_33
    and-int/lit8 v1, v0, 0xf

    .line 294
    .local v1, "rest":I
    and-int/lit8 v0, v0, -0x10

    .line 297
    :goto_37
    const/4 v3, 0x0

    if-ge p1, v0, :cond_52

    .line 298
    shr-int/lit8 v4, p1, 0x4

    .line 299
    .local v4, "i":I
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_47

    .line 300
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aput p3, v3, v4

    goto :goto_4e

    .line 302
    :cond_47
    iget-object v5, p0, Landroid/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v4

    invoke-direct {p0, v5, v3, v2, p3}, Landroid/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    .line 304
    :goto_4e
    nop

    .end local v4    # "i":I
    add-int/lit8 p1, p1, 0x10

    .line 305
    goto :goto_37

    .line 307
    :cond_52
    if-lez v1, :cond_5d

    .line 309
    shr-int/lit8 v2, p1, 0x4

    invoke-direct {p0, v2}, Landroid/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v2

    .line 310
    .local v2, "block":I
    invoke-direct {p0, v2, v3, v1, p3}, Landroid/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    .line 312
    .end local v2    # "block":I
    :cond_5d
    return-void

    .line 270
    .end local v0    # "limit":I
    .end local v1    # "rest":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid code point range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
