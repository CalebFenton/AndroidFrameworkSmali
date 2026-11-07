.class public final Landroid/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterName$AlgorithmName;
    }
.end annotation


# static fields
.field static final blacklist EXTENDED_CATEGORY_:I = 0x21

.field private static final blacklist FILE_NAME_:Ljava/lang/String; = "unames.icu"

.field private static final blacklist GROUP_MASK_:I = 0x1f

.field private static final blacklist GROUP_SHIFT_:I = 0x5

.field public static final blacklist INSTANCE:Landroid/icu/impl/UCharacterName;

.field private static final blacklist LEAD_SURROGATE_:I = 0x1f

.field public static final blacklist LINES_PER_GROUP_:I = 0x20

.field private static final blacklist NON_CHARACTER_:I = 0x1e

.field private static final blacklist OFFSET_HIGH_OFFSET_:I = 0x1

.field private static final blacklist OFFSET_LOW_OFFSET_:I = 0x2

.field private static final blacklist SINGLE_NIBBLE_MAX_:I = 0xb

.field private static final blacklist TRAIL_SURROGATE_:I = 0x20

.field private static final blacklist TYPE_NAMES_:[Ljava/lang/String;

.field private static final blacklist UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"


# instance fields
.field private blacklist m_ISOCommentSet_:[I

.field private blacklist m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

.field public blacklist m_groupcount_:I

.field private blacklist m_groupinfo_:[C

.field private blacklist m_grouplengths_:[C

.field private blacklist m_groupoffsets_:[C

.field blacklist m_groupsize_:I

.field private blacklist m_groupstring_:[B

.field private blacklist m_maxISOCommentLength_:I

.field private blacklist m_maxNameLength_:I

.field private blacklist m_nameSet_:[I

.field private blacklist m_tokenstring_:[B

.field private blacklist m_tokentable_:[C

.field private blacklist m_utilIntBuffer_:[I

.field private blacklist m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smadd([ILjava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smadd([ILjava/lang/StringBuffer;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 35

    .line 50
    :try_start_0
    new-instance v0, Landroid/icu/impl/UCharacterName;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterName;-><init>()V

    sput-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_51

    .line 55
    nop

    .line 1106
    const-string v33, "lead surrogate"

    const-string v34, "trail surrogate"

    const-string v2, "unassigned"

    const-string v3, "uppercase letter"

    const-string v4, "lowercase letter"

    const-string v5, "titlecase letter"

    const-string v6, "modifier letter"

    const-string v7, "other letter"

    const-string v8, "non spacing mark"

    const-string v9, "enclosing mark"

    const-string v10, "combining spacing mark"

    const-string v11, "decimal digit number"

    const-string v12, "letter number"

    const-string v13, "other number"

    const-string v14, "space separator"

    const-string v15, "line separator"

    const-string v16, "paragraph separator"

    const-string v17, "control"

    const-string v18, "format"

    const-string v19, "private use area"

    const-string v20, "surrogate"

    const-string v21, "dash punctuation"

    const-string v22, "start punctuation"

    const-string v23, "end punctuation"

    const-string v24, "connector punctuation"

    const-string v25, "other punctuation"

    const-string v26, "math symbol"

    const-string v27, "currency symbol"

    const-string v28, "modifier symbol"

    const-string v29, "other symbol"

    const-string v30, "initial punctuation"

    const-string v31, "final punctuation"

    const-string v32, "noncharacter"

    filled-new-array/range {v2 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    .line 51
    :catch_51
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "Could not construct UCharacterName. Missing unames.icu"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 955
    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    .line 1037
    const/16 v0, 0x21

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    .line 1038
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    .line 1081
    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    .line 1086
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    .line 1090
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 1094
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    .line 1172
    const-string v0, "unames.icu"

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1173
    .local v0, "b":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Landroid/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1174
    .local v1, "reader":Landroid/icu/impl/UCharacterNameReader;
    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterNameReader;->read(Landroid/icu/impl/UCharacterName;)V

    .line 1175
    return-void
.end method

.method private static blacklist add([ILjava/lang/String;)I
    .registers 5
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/String;

    .line 1426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1428
    .local v0, "result":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 1429
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    .line 1428
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1431
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method private static blacklist add([ILjava/lang/StringBuffer;)I
    .registers 5
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 1442
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1444
    .local v0, "result":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 1445
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    .line 1444
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1447
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method private static blacklist add([IC)V
    .registers 6
    .param p0, "set"    # [I
    .param p1, "ch"    # C

    .line 1403
    ushr-int/lit8 v0, p1, 0x5

    aget v1, p0, v0

    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    aput v1, p0, v0

    .line 1404
    return-void
.end method

.method private blacklist addAlgorithmName(I)I
    .registers 6
    .param p1, "maxlength"    # I

    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_18

    .line 1461
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->add([II)I

    move-result v0

    .line 1462
    if-le v0, p1, :cond_15

    .line 1463
    move p1, v0

    .line 1460
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1466
    .end local v1    # "i":I
    :cond_18
    return p1
.end method

.method private blacklist addExtendedName(I)I
    .registers 5
    .param p1, "maxlength"    # I

    .line 1477
    sget-object v0, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_19

    .line 1483
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    .line 1484
    .local v1, "length":I
    if-le v1, p1, :cond_16

    .line 1485
    move p1, v1

    .line 1477
    .end local v1    # "length":I
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1488
    .end local v0    # "i":I
    :cond_19
    return p1
.end method

.method private blacklist addGroupName(I)V
    .registers 15
    .param p1, "maxlength"    # I

    .line 1562
    const/4 v0, 0x0

    .line 1563
    .local v0, "maxisolength":I
    const/16 v1, 0x22

    new-array v2, v1, [C

    .line 1564
    .local v2, "offsets":[C
    new-array v1, v1, [C

    .line 1565
    .local v1, "lengths":[C
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v3, v3

    new-array v3, v3, [B

    .line 1569
    .local v3, "tokenlengths":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    iget v5, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v4, v5, :cond_63

    .line 1570
    invoke-virtual {p0, v4, v2, v1}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v5

    .line 1574
    .local v5, "offset":I
    const/4 v6, 0x0

    .local v6, "linenumber":I
    :goto_16
    const/16 v7, 0x20

    if-ge v6, v7, :cond_60

    .line 1576
    aget-char v7, v2, v6

    add-int/2addr v7, v5

    .line 1577
    .local v7, "lineoffset":I
    aget-char v8, v1, v6

    .line 1578
    .local v8, "length":I
    if-nez v8, :cond_22

    .line 1579
    goto :goto_5d

    .line 1583
    :cond_22
    iget-object v9, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v7, v8, v3, v9}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v9

    .line 1585
    .local v9, "parsed":[I
    const/4 v10, 0x0

    aget v11, v9, v10

    if-le v11, p1, :cond_2f

    .line 1587
    aget p1, v9, v10

    .line 1589
    :cond_2f
    const/4 v11, 0x1

    aget v12, v9, v11

    add-int/2addr v7, v12

    .line 1590
    aget v12, v9, v11

    if-lt v12, v8, :cond_38

    .line 1592
    goto :goto_5d

    .line 1594
    :cond_38
    aget v12, v9, v11

    sub-int/2addr v8, v12

    .line 1596
    iget-object v12, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v7, v8, v3, v12}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v9

    .line 1598
    aget v12, v9, v10

    if-le v12, p1, :cond_47

    .line 1600
    aget p1, v9, v10

    .line 1602
    :cond_47
    aget v10, v9, v11

    add-int/2addr v7, v10

    .line 1603
    aget v10, v9, v11

    if-lt v10, v8, :cond_4f

    .line 1605
    goto :goto_5d

    .line 1607
    :cond_4f
    aget v10, v9, v11

    sub-int/2addr v8, v10

    .line 1609
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v7, v8, v3, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v9

    .line 1611
    aget v10, v9, v11

    if-le v10, v0, :cond_5d

    .line 1612
    move v0, v8

    .line 1575
    .end local v7    # "lineoffset":I
    .end local v8    # "length":I
    .end local v9    # "parsed":[I
    :cond_5d
    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1569
    .end local v5    # "offset":I
    .end local v6    # "linenumber":I
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1618
    .end local v4    # "i":I
    :cond_63
    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    .line 1619
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1620
    return-void
.end method

.method private blacklist addGroupName(II[B[I)[I
    .registers 13
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "tokenlength"    # [B
    .param p4, "set"    # [I

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, "resultnlength":I
    const/4 v1, 0x0

    .line 1506
    .local v1, "resultplength":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_6b

    .line 1507
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v4, p1, v1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 1508
    .local v3, "b":C
    add-int/lit8 v1, v1, 0x1

    .line 1509
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_15

    .line 1510
    goto :goto_6b

    .line 1513
    :cond_15
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v4, v4

    if-lt v3, v4, :cond_20

    .line 1514
    invoke-static {p4, v3}, Landroid/icu/impl/UCharacterName;->add([IC)V

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1518
    :cond_20
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v5, v3, 0xff

    aget-char v4, v4, v5

    .line 1519
    .local v4, "token":C
    const v5, 0xfffe

    if-ne v4, v5, :cond_3d

    .line 1521
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v7, p1, v1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v3, v5

    .line 1523
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    aget-char v4, v5, v3

    .line 1524
    add-int/lit8 v1, v1, 0x1

    .line 1526
    :cond_3d
    const v5, 0xffff

    if-ne v4, v5, :cond_48

    .line 1527
    invoke-static {p4, v3}, Landroid/icu/impl/UCharacterName;->add([IC)V

    .line 1528
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1533
    :cond_48
    aget-byte v5, p3, v3

    .line 1534
    .local v5, "tlength":B
    if-nez v5, :cond_69

    .line 1535
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v6

    .line 1536
    :try_start_4f
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1537
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v2, v7, v4}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    .line 1540
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p4, v2}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result v2

    int-to-byte v5, v2

    .line 1541
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_66

    .line 1542
    aput-byte v5, p3, v3

    goto :goto_69

    .line 1541
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v6
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    .line 1544
    :cond_69
    :goto_69
    add-int/2addr v0, v5

    .line 1547
    .end local v3    # "b":C
    .end local v4    # "token":C
    .end local v5    # "tlength":B
    :goto_6a
    goto :goto_2

    .line 1548
    :cond_6b
    :goto_6b
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    aput v0, v3, v2

    .line 1549
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 1550
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    return-object v2
.end method

.method private static blacklist contains([IC)Z
    .registers 5
    .param p0, "set"    # [I
    .param p1, "ch"    # C

    .line 1415
    ushr-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method private blacklist convert([ILandroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "set"    # [I
    .param p2, "uset"    # Landroid/icu/text/UnicodeSet;

    .line 1656
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1657
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1658
    return-void

    .line 1662
    :cond_a
    const/16 v0, 0xff

    .local v0, "c":C
    :goto_c
    if-lez v0, :cond_1b

    .line 1663
    invoke-static {p1, v0}, Landroid/icu/impl/UCharacterName;->contains([IC)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1664
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1662
    :cond_17
    add-int/lit8 v1, v0, -0x1

    int-to-char v0, v1

    goto :goto_c

    .line 1667
    .end local v0    # "c":C
    :cond_1b
    return-void
.end method

.method private blacklist getAlgName(II)Ljava/lang/String;
    .registers 7
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    .line 1188
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_34

    .line 1192
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v0

    .line 1193
    :try_start_8
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1195
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_13
    if-ltz v1, :cond_33

    .line 1197
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1198
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 1199
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1195
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1202
    .end local v1    # "index":I
    :cond_33
    monitor-exit v0

    .line 1204
    :cond_34
    const/4 v0, 0x0

    return-object v0

    .line 1202
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public static blacklist getCodepointMSB(I)I
    .registers 2
    .param p0, "codepoint"    # I

    .line 411
    shr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private static blacklist getExtendedChar(Ljava/lang/String;I)I
    .registers 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "choice"    # I

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_67

    .line 1348
    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_66

    .line 1349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1350
    .local v0, "endIndex":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_66

    .line 1351
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1352
    .local v3, "startIndex":I
    if-ltz v3, :cond_66

    .line 1353
    add-int/2addr v3, v2

    .line 1356
    sub-int v4, v0, v3

    .line 1357
    .local v4, "hexLength":I
    if-lt v4, v2, :cond_65

    const/16 v5, 0x8

    if-ge v5, v4, :cond_2d

    goto :goto_65

    .line 1360
    :cond_2d
    const/4 v5, -0x1

    .line 1362
    .local v5, "result":I
    nop

    .line 1363
    :try_start_2f
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1362
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_39} :catch_63

    .line 1368
    .end local v5    # "result":I
    .local v6, "result":I
    nop

    .line 1369
    if-ltz v6, :cond_62

    const v5, 0x10ffff

    if-ge v5, v6, :cond_42

    goto :goto_62

    .line 1374
    :cond_42
    invoke-static {v6}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result v5

    .line 1375
    .local v5, "charType":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "type":Ljava/lang/String;
    sget-object v7, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v7, v7

    .line 1377
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_50
    if-ge v8, v7, :cond_66

    .line 1378
    sget-object v9, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5f

    .line 1379
    if-ne v5, v8, :cond_66

    .line 1380
    return v6

    .line 1377
    :cond_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 1370
    .end local v2    # "type":Ljava/lang/String;
    .end local v5    # "charType":I
    .end local v7    # "length":I
    .end local v8    # "i":I
    :cond_62
    :goto_62
    return v1

    .line 1366
    .end local v6    # "result":I
    .local v5, "result":I
    :catch_63
    move-exception v2

    .line 1367
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 1358
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "result":I
    :cond_65
    :goto_65
    return v1

    .line 1388
    .end local v0    # "endIndex":I
    .end local v3    # "startIndex":I
    .end local v4    # "hexLength":I
    :cond_66
    return v1

    .line 1390
    :cond_67
    const/4 v0, -0x2

    return v0
.end method

.method private blacklist getGroupChar(I[CLjava/lang/String;I)I
    .registers 22
    .param p1, "index"    # I
    .param p2, "length"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "choice"    # I

    .line 1245
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 1248
    .local v3, "b":B
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1252
    .local v4, "namelen":I
    const/4 v5, 0x0

    move v6, v5

    move v5, v3

    move/from16 v3, p1

    .end local p1    # "index":I
    .local v3, "index":I
    .local v5, "b":B
    .local v6, "result":I
    :goto_10
    const/16 v7, 0x20

    const/4 v8, -0x1

    if-gt v6, v7, :cond_9c

    .line 1253
    const/4 v7, 0x0

    .line 1254
    .local v7, "nindex":I
    aget-char v9, p2, v6

    .line 1256
    .local v9, "len":I
    const/16 v10, 0x3b

    if-eqz v2, :cond_32

    const/4 v11, 0x2

    if-eq v2, v11, :cond_32

    .line 1263
    const/4 v12, 0x4

    if-ne v2, v12, :cond_23

    goto :goto_24

    :cond_23
    move v11, v2

    .line 1265
    .local v11, "fieldIndex":I
    :cond_24
    :goto_24
    move v12, v3

    .line 1266
    .local v12, "oldindex":I
    iget-object v13, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v13, v3, v9, v10}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v13

    add-int/2addr v3, v13

    .line 1268
    sub-int v13, v3, v12

    sub-int/2addr v9, v13

    .line 1269
    .end local v12    # "oldindex":I
    add-int/2addr v11, v8

    if-gtz v11, :cond_24

    .line 1274
    .end local v11    # "fieldIndex":I
    :cond_32
    const/4 v11, 0x0

    .local v11, "count":I
    :goto_33
    if-ge v11, v9, :cond_8a

    if-eq v7, v8, :cond_8a

    if-ge v7, v4, :cond_8a

    .line 1276
    iget-object v12, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v13, v3, v11

    aget-byte v5, v12, v13

    .line 1277
    add-int/lit8 v11, v11, 0x1

    .line 1279
    iget-object v12, v0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v12, v12

    if-lt v5, v12, :cond_54

    .line 1280
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "nindex":I
    .local v12, "nindex":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit16 v13, v5, 0xff

    if-eq v7, v13, :cond_52

    .line 1281
    const/4 v7, -0x1

    .end local v12    # "nindex":I
    .restart local v7    # "nindex":I
    goto :goto_33

    .line 1280
    .end local v7    # "nindex":I
    .restart local v12    # "nindex":I
    :cond_52
    move v7, v12

    goto :goto_33

    .line 1285
    .end local v12    # "nindex":I
    .restart local v7    # "nindex":I
    :cond_54
    iget-object v12, v0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v13, v5, 0xff

    aget-char v12, v12, v13

    .line 1286
    .local v12, "token":C
    const v13, 0xfffe

    if-ne v12, v13, :cond_70

    .line 1288
    iget-object v13, v0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v14, v5, 0x8

    iget-object v15, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v16, v3, v11

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aget-char v12, v13, v14

    .line 1290
    add-int/lit8 v11, v11, 0x1

    .line 1292
    :cond_70
    const v13, 0xffff

    if-ne v12, v13, :cond_83

    .line 1293
    add-int/lit8 v13, v7, 0x1

    .end local v7    # "nindex":I
    .local v13, "nindex":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit16 v14, v5, 0xff

    if-eq v7, v14, :cond_81

    .line 1294
    const/4 v7, -0x1

    .end local v13    # "nindex":I
    .restart local v7    # "nindex":I
    goto :goto_33

    .line 1293
    .end local v7    # "nindex":I
    .restart local v13    # "nindex":I
    :cond_81
    move v7, v13

    goto :goto_33

    .line 1299
    .end local v13    # "nindex":I
    .restart local v7    # "nindex":I
    :cond_83
    iget-object v13, v0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v1, v13, v7, v12}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v7

    goto :goto_33

    .line 1305
    .end local v12    # "token":C
    :cond_8a
    if-ne v4, v7, :cond_97

    if-eq v11, v9, :cond_96

    iget-object v8, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v12, v3, v11

    aget-byte v8, v8, v12

    if-ne v8, v10, :cond_97

    .line 1307
    :cond_96
    return v6

    .line 1310
    :cond_97
    add-int/2addr v3, v9

    .line 1252
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    .line 1312
    .end local v6    # "result":I
    .end local v7    # "nindex":I
    .end local v9    # "len":I
    .end local v11    # "count":I
    :cond_9c
    return v8
.end method

.method private declared-synchronized blacklist getGroupChar(Ljava/lang/String;I)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "choice"    # I

    monitor-enter p0

    .line 1215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_26

    .line 1218
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v1

    .line 1222
    .local v1, "startgpstrindex":I
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v1, v3, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v3

    .line 1224
    .local v3, "result":I
    if-eq v3, v2, :cond_23

    .line 1225
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v4, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v4, v0

    aget-char v2, v2, v4
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_28

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, v3

    monitor-exit p0

    return v2

    .line 1215
    .end local v1    # "startgpstrindex":I
    .end local v3    # "result":I
    .end local p0    # "this":Landroid/icu/impl/UCharacterName;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1229
    .end local v0    # "i":I
    :cond_26
    monitor-exit p0

    return v2

    .line 1214
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "choice":I
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public static blacklist getGroupLimit(I)I
    .registers 2
    .param p0, "msb"    # I

    .line 421
    shl-int/lit8 v0, p0, 0x5

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static blacklist getGroupMin(I)I
    .registers 2
    .param p0, "msb"    # I

    .line 431
    shl-int/lit8 v0, p0, 0x5

    return v0
.end method

.method public static blacklist getGroupMinFromCodepoint(I)I
    .registers 2
    .param p0, "codepoint"    # I

    .line 452
    and-int/lit8 v0, p0, -0x20

    return v0
.end method

.method public static blacklist getGroupOffset(I)I
    .registers 2
    .param p0, "codepoint"    # I

    .line 441
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static blacklist getType(I)I
    .registers 3
    .param p0, "ch"    # I

    .line 1322
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1324
    const/16 v0, 0x1e

    return v0

    .line 1326
    :cond_9
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    .line 1327
    .local v0, "result":I
    const/16 v1, 0x12

    if-ne v0, v1, :cond_1b

    .line 1328
    const v1, 0xdbff

    if-gt p0, v1, :cond_19

    .line 1329
    const/16 v0, 0x1f

    goto :goto_1b

    .line 1332
    :cond_19
    const/16 v0, 0x20

    .line 1335
    :cond_1b
    :goto_1b
    return v0
.end method

.method private blacklist initNameSetsLengths()Z
    .registers 6

    .line 1628
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    .line 1629
    return v1

    .line 1632
    :cond_6
    const-string v0, "0123456789ABCDEF<>-"

    .line 1635
    .local v0, "extra":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_1b

    .line 1636
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Landroid/icu/impl/UCharacterName;->add([IC)V

    .line 1635
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 1640
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addAlgorithmName(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1642
    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addExtendedName(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1644
    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addGroupName(I)V

    .line 1645
    return v1
.end method


# virtual methods
.method public blacklist getAlgorithmEnd(I)I
    .registers 3
    .param p1, "index"    # I

    .line 482
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-$$Nest$fgetm_rangeend_(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result v0

    return v0
.end method

.method public blacklist getAlgorithmLength()I
    .registers 2

    .line 462
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    return v0
.end method

.method public blacklist getAlgorithmName(II)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I
    .param p2, "codepoint"    # I

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 495
    :try_start_4
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 496
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 497
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 498
    monitor-exit v1

    .line 499
    return-object v0

    .line 498
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public blacklist getAlgorithmStart(I)I
    .registers 3
    .param p1, "index"    # I

    .line 472
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-$$Nest$fgetm_rangestart_(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result v0

    return v0
.end method

.method public blacklist getCharFromName(ILjava/lang/String;)I
    .registers 9
    .param p1, "choice"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ge p1, v0, :cond_52

    if-eqz p2, :cond_52

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_52

    .line 121
    :cond_d
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "result":I
    if-lt v0, v1, :cond_1a

    .line 123
    return v0

    .line 126
    :cond_1a
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "upperCaseName":Ljava/lang/String;
    const/4 v3, 0x2

    if-eqz p1, :cond_25

    if-ne p1, v3, :cond_3e

    .line 133
    :cond_25
    const/4 v4, 0x0

    .line 134
    .local v4, "count":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v5, :cond_2d

    .line 135
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v4, v5

    .line 137
    :cond_2d
    add-int/2addr v4, v1

    :goto_2e
    if-ltz v4, :cond_3e

    .line 138
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v0

    .line 139
    if-ltz v0, :cond_3b

    .line 140
    return v0

    .line 137
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 145
    .end local v4    # "count":I
    :cond_3e
    if-ne p1, v3, :cond_4d

    .line 146
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    .line 148
    if-ne v0, v1, :cond_51

    .line 149
    const/4 v1, 0x3

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    goto :goto_51

    .line 154
    :cond_4d
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    .line 156
    :cond_51
    :goto_51
    return v0

    .line 117
    .end local v0    # "result":I
    .end local v2    # "upperCaseName":Ljava/lang/String;
    :cond_52
    :goto_52
    return v1
.end method

.method public blacklist getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 566
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    .line 567
    return-void
.end method

.method public blacklist getExtendedName(I)Ljava/lang/String;
    .registers 3
    .param p1, "ch"    # I

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 322
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_b
    return-object v0
.end method

.method public blacklist getExtendedOr10Name(I)Ljava/lang/String;
    .registers 9
    .param p1, "ch"    # I

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_63

    .line 363
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result v1

    .line 366
    .local v1, "type":I
    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_f

    .line 367
    const-string v0, "unknown"

    goto :goto_13

    .line 370
    :cond_f
    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 372
    :goto_13
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v2

    .line 373
    :try_start_16
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 374
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "chStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    .line 379
    .local v4, "zeros":I
    :goto_3f
    if-lez v4, :cond_4b

    .line 380
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    add-int/lit8 v4, v4, -0x1

    goto :goto_3f

    .line 383
    :cond_4b
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 386
    .end local v3    # "chStr":Ljava/lang/String;
    .end local v4    # "zeros":I
    monitor-exit v2

    goto :goto_63

    :catchall_60
    move-exception v3

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_16 .. :try_end_62} :catchall_60

    throw v3

    .line 388
    .end local v1    # "type":I
    :cond_63
    :goto_63
    return-object v0
.end method

.method public blacklist getGroup(I)I
    .registers 7
    .param p1, "codepoint"    # I

    .line 334
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 335
    .local v0, "endGroup":I
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v1

    .line 336
    .local v1, "msb":I
    const/4 v2, 0x0

    .line 340
    .local v2, "result":I
    :goto_7
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_19

    .line 341
    add-int v3, v2, v0

    shr-int/lit8 v3, v3, 0x1

    .line 342
    .local v3, "gindex":I
    invoke-virtual {p0, v3}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v4

    if-ge v1, v4, :cond_17

    .line 343
    move v0, v3

    goto :goto_18

    .line 346
    :cond_17
    move v2, v3

    .line 348
    .end local v3    # "gindex":I
    :goto_18
    goto :goto_7

    .line 349
    :cond_19
    return v2
.end method

.method public blacklist getGroupLengths(I[C[C)I
    .registers 14
    .param p1, "index"    # I
    .param p2, "offsets"    # [C
    .param p3, "lengths"    # [C

    .line 179
    const v0, 0xffff

    .line 180
    .local v0, "length":C
    const/4 v1, 0x0

    .line 181
    .local v1, "b":B
    const/4 v2, 0x0

    .line 183
    .local v2, "n":B
    iget v3, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr p1, v3

    .line 184
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v4, p1, 0x1

    aget-char v3, v3, v4

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v5, p1, 0x2

    aget-char v4, v4, v5

    invoke-static {v3, v4}, Landroid/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result v3

    .line 188
    .local v3, "stringoffset":I
    const/4 v4, 0x0

    aput-char v4, p2, v4

    .line 192
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    const/16 v5, 0x20

    if-ge v4, v5, :cond_5f

    .line 193
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v1, v6, v3

    .line 194
    const/4 v6, 0x4

    .line 196
    .local v6, "shift":I
    :goto_25
    if-ltz v6, :cond_5c

    .line 198
    shr-int v7, v1, v6

    and-int/lit8 v7, v7, 0xf

    int-to-byte v2, v7

    .line 199
    const v7, 0xffff

    if-ne v0, v7, :cond_3b

    const/16 v8, 0xb

    if-le v2, v8, :cond_3b

    .line 200
    add-int/lit8 v7, v2, -0xc

    shl-int/lit8 v7, v7, 0x4

    int-to-char v0, v7

    goto :goto_59

    .line 203
    :cond_3b
    if-eq v0, v7, :cond_45

    .line 204
    or-int v7, v0, v2

    add-int/lit8 v7, v7, 0xc

    int-to-char v7, v7

    aput-char v7, p3, v4

    goto :goto_48

    .line 207
    :cond_45
    int-to-char v7, v2

    aput-char v7, p3, v4

    .line 210
    :goto_48
    if-ge v4, v5, :cond_54

    .line 211
    add-int/lit8 v7, v4, 0x1

    aget-char v8, p2, v4

    aget-char v9, p3, v4

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p2, v7

    .line 214
    :cond_54
    const v0, 0xffff

    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 218
    :goto_59
    add-int/lit8 v6, v6, -0x4

    goto :goto_25

    .line 192
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 221
    .end local v4    # "i":I
    .end local v6    # "shift":I
    :cond_5f
    return v3
.end method

.method public blacklist getGroupMSB(I)I
    .registers 4
    .param p1, "gindex"    # I

    .line 398
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-lt p1, v0, :cond_6

    .line 399
    const/4 v0, -0x1

    return v0

    .line 401
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v1, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public declared-synchronized blacklist getGroupName(II)Ljava/lang/String;
    .registers 9
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    monitor-enter p0

    .line 510
    :try_start_1
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v0

    .line 511
    .local v0, "msb":I
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v1

    .line 514
    .local v1, "group":I
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v3, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v3, v1

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_2b

    .line 515
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v2

    .line 517
    .local v2, "index":I
    and-int/lit8 v3, p1, 0x1f

    .line 518
    .local v3, "offset":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    aget-char v4, v4, v3

    add-int/2addr v4, v2

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    aget-char v5, v5, v3

    invoke-virtual {p0, v4, v5, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    monitor-exit p0

    return-object v4

    .line 522
    .end local v2    # "index":I
    .end local v3    # "offset":I
    .end local p0    # "this":Landroid/icu/impl/UCharacterName;
    :cond_2b
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 509
    .end local v0    # "msb":I
    .end local v1    # "group":I
    .end local p1    # "ch":I
    .end local p2    # "choice":I
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public blacklist getGroupName(III)Ljava/lang/String;
    .registers 15
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "choice"    # I

    .line 240
    const v0, 0xffff

    const/4 v1, 0x2

    const/16 v2, 0x3b

    if-eqz p3, :cond_2e

    if-eq p3, v1, :cond_2e

    .line 243
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v3, v3

    if-ge v2, v3, :cond_18

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    aget-char v3, v3, v2

    if-ne v3, v0, :cond_16

    goto :goto_18

    .line 260
    :cond_16
    const/4 p2, 0x0

    goto :goto_2e

    .line 248
    :cond_18
    :goto_18
    const/4 v3, 0x4

    if-ne p3, v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, p3

    .line 250
    .local v3, "fieldIndex":I
    :cond_1e
    :goto_1e
    move v4, p1

    .line 251
    .local v4, "oldindex":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v5, p1, p2, v2}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v5

    add-int/2addr p1, v5

    .line 253
    sub-int v5, p1, v4

    sub-int/2addr p2, v5

    .line 254
    .end local v4    # "oldindex":I
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1e

    .line 255
    .end local v3    # "fieldIndex":I
    nop

    .line 264
    :cond_2e
    :goto_2e
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 265
    :try_start_31
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 268
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    if-ge v4, p2, :cond_8d

    .line 269
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v6, p1, v4

    aget-byte v5, v5, v6

    .line 270
    .local v5, "b":B
    add-int/lit8 v4, v4, 0x1

    .line 272
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v6, v6

    if-lt v5, v6, :cond_50

    .line 273
    if-ne v5, v2, :cond_4a

    .line 274
    goto :goto_8d

    .line 276
    :cond_4a
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 279
    :cond_50
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v7, v5, 0xff

    aget-char v6, v6, v7

    .line 280
    .local v6, "token":C
    const v7, 0xfffe

    if-ne v6, v7, :cond_6d

    .line 282
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v8, v5, 0x8

    iget-object v9, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v10, p1, v4

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    move v6, v7

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 286
    :cond_6d
    if-ne v6, v0, :cond_85

    .line 287
    if-ne v5, v2, :cond_7c

    .line 291
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_8d

    if-ne p3, v1, :cond_8d

    .line 293
    goto :goto_38

    .line 298
    :cond_7c
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    and-int/lit16 v8, v5, 0xff

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 301
    :cond_85
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v7, v8, v6}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    goto :goto_38

    .line 307
    .end local v4    # "i":I
    .end local v5    # "b":B
    .end local v6    # "token":C
    :cond_8d
    :goto_8d
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9d

    .line 308
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 310
    :cond_9d
    monitor-exit v3

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 310
    :catchall_a0
    move-exception v0

    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_31 .. :try_end_a2} :catchall_a0

    throw v0
.end method

.method public blacklist getISOCommentCharacters(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 577
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    .line 578
    return-void
.end method

.method public blacklist getMaxCharNameLength()I
    .registers 2

    .line 534
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    return v0

    .line 538
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxISOCommentLength()I
    .registers 2

    .line 550
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    return v0

    .line 554
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName(II)Ljava/lang/String;
    .registers 5
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    .line 84
    if-ltz p1, :cond_25

    const v0, 0x10ffff

    if-gt p1, v0, :cond_25

    const/4 v0, 0x4

    if-le p2, v0, :cond_b

    goto :goto_25

    .line 89
    :cond_b
    const/4 v0, 0x0

    .line 91
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    .line 95
    :cond_18
    const/4 v1, 0x2

    if-ne p2, v1, :cond_20

    .line 96
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 98
    :cond_20
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_24
    :goto_24
    return-object v0

    .line 86
    .end local v0    # "result":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z
    .registers 3
    .param p1, "alg"    # [Landroid/icu/impl/UCharacterName$AlgorithmName;

    .line 983
    if-eqz p1, :cond_9

    array-length v0, p1

    if-eqz v0, :cond_9

    .line 984
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    .line 985
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setGroup([C[B)Z
    .registers 4
    .param p1, "group"    # [C
    .param p2, "groupstring"    # [B

    .line 1014
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    array-length v0, p2

    if-lez v0, :cond_10

    .line 1016
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    .line 1017
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    .line 1018
    const/4 v0, 0x1

    return v0

    .line 1020
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setGroupCountSize(II)Z
    .registers 4
    .param p1, "count"    # I
    .param p2, "size"    # I

    .line 998
    if-lez p1, :cond_b

    if-gtz p2, :cond_5

    goto :goto_b

    .line 1001
    :cond_5
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 1002
    iput p2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    .line 1003
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setToken([C[B)Z
    .registers 4
    .param p1, "token"    # [C
    .param p2, "tokenstring"    # [B

    .line 967
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    array-length v0, p2

    if-lez v0, :cond_10

    .line 969
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    .line 970
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    .line 971
    const/4 v0, 0x1

    return v0

    .line 973
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
