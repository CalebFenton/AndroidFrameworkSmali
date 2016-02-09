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
.field static final EXTENDED_CATEGORY_:I = 0x21

.field private static final FILE_NAME_:Ljava/lang/String; = "unames.icu"

.field private static final GROUP_MASK_:I = 0x1f

.field private static final GROUP_SHIFT_:I = 0x5

.field public static final INSTANCE:Landroid/icu/impl/UCharacterName;

.field private static final LEAD_SURROGATE_:I = 0x1f

.field public static final LINES_PER_GROUP_:I = 0x20

.field private static final NON_CHARACTER_:I = 0x1e

.field private static final OFFSET_HIGH_OFFSET_:I = 0x1

.field private static final OFFSET_LOW_OFFSET_:I = 0x2

.field private static final SINGLE_NIBBLE_MAX_:I = 0xb

.field private static final TRAIL_SURROGATE_:I = 0x20

.field private static final TYPE_NAMES_:[Ljava/lang/String;

.field private static final UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_maxISOCommentLength_:I

.field private m_maxNameLength_:I

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static synthetic -wrap0([ILjava/lang/StringBuffer;)I
    .locals 1
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1([ILjava/lang/String;)I
    .locals 1
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 47
    :try_start_0
    new-instance v1, Landroid/icu/impl/UCharacterName;

    #@2
    invoke-direct {v1}, Landroid/icu/impl/UCharacterName;-><init>()V

    #@5
    sput-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1104
    const/16 v1, 0x21

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    const-string/jumbo v2, "unassigned"

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    .line 1105
    const-string/jumbo v2, "uppercase letter"

    #@14
    const/4 v3, 0x1

    #@15
    aput-object v2, v1, v3

    #@17
    .line 1106
    const-string/jumbo v2, "lowercase letter"

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 1107
    const-string/jumbo v2, "titlecase letter"

    #@20
    const/4 v3, 0x3

    #@21
    aput-object v2, v1, v3

    #@23
    .line 1108
    const-string/jumbo v2, "modifier letter"

    #@26
    const/4 v3, 0x4

    #@27
    aput-object v2, v1, v3

    #@29
    .line 1109
    const-string/jumbo v2, "other letter"

    #@2c
    const/4 v3, 0x5

    #@2d
    aput-object v2, v1, v3

    #@2f
    .line 1110
    const-string/jumbo v2, "non spacing mark"

    #@32
    const/4 v3, 0x6

    #@33
    aput-object v2, v1, v3

    #@35
    .line 1111
    const-string/jumbo v2, "enclosing mark"

    #@38
    const/4 v3, 0x7

    #@39
    aput-object v2, v1, v3

    #@3b
    .line 1112
    const-string/jumbo v2, "combining spacing mark"

    #@3e
    const/16 v3, 0x8

    #@40
    aput-object v2, v1, v3

    #@42
    .line 1113
    const-string/jumbo v2, "decimal digit number"

    #@45
    const/16 v3, 0x9

    #@47
    aput-object v2, v1, v3

    #@49
    .line 1114
    const-string/jumbo v2, "letter number"

    #@4c
    const/16 v3, 0xa

    #@4e
    aput-object v2, v1, v3

    #@50
    .line 1115
    const-string/jumbo v2, "other number"

    #@53
    const/16 v3, 0xb

    #@55
    aput-object v2, v1, v3

    #@57
    .line 1116
    const-string/jumbo v2, "space separator"

    #@5a
    const/16 v3, 0xc

    #@5c
    aput-object v2, v1, v3

    #@5e
    .line 1117
    const-string/jumbo v2, "line separator"

    #@61
    const/16 v3, 0xd

    #@63
    aput-object v2, v1, v3

    #@65
    .line 1118
    const-string/jumbo v2, "paragraph separator"

    #@68
    const/16 v3, 0xe

    #@6a
    aput-object v2, v1, v3

    #@6c
    .line 1119
    const-string/jumbo v2, "control"

    #@6f
    const/16 v3, 0xf

    #@71
    aput-object v2, v1, v3

    #@73
    .line 1120
    const-string/jumbo v2, "format"

    #@76
    const/16 v3, 0x10

    #@78
    aput-object v2, v1, v3

    #@7a
    .line 1121
    const-string/jumbo v2, "private use area"

    #@7d
    const/16 v3, 0x11

    #@7f
    aput-object v2, v1, v3

    #@81
    .line 1122
    const-string/jumbo v2, "surrogate"

    #@84
    const/16 v3, 0x12

    #@86
    aput-object v2, v1, v3

    #@88
    .line 1123
    const-string/jumbo v2, "dash punctuation"

    #@8b
    const/16 v3, 0x13

    #@8d
    aput-object v2, v1, v3

    #@8f
    .line 1124
    const-string/jumbo v2, "start punctuation"

    #@92
    const/16 v3, 0x14

    #@94
    aput-object v2, v1, v3

    #@96
    .line 1125
    const-string/jumbo v2, "end punctuation"

    #@99
    const/16 v3, 0x15

    #@9b
    aput-object v2, v1, v3

    #@9d
    .line 1126
    const-string/jumbo v2, "connector punctuation"

    #@a0
    const/16 v3, 0x16

    #@a2
    aput-object v2, v1, v3

    #@a4
    .line 1127
    const-string/jumbo v2, "other punctuation"

    #@a7
    const/16 v3, 0x17

    #@a9
    aput-object v2, v1, v3

    #@ab
    .line 1128
    const-string/jumbo v2, "math symbol"

    #@ae
    const/16 v3, 0x18

    #@b0
    aput-object v2, v1, v3

    #@b2
    .line 1129
    const-string/jumbo v2, "currency symbol"

    #@b5
    const/16 v3, 0x19

    #@b7
    aput-object v2, v1, v3

    #@b9
    .line 1130
    const-string/jumbo v2, "modifier symbol"

    #@bc
    const/16 v3, 0x1a

    #@be
    aput-object v2, v1, v3

    #@c0
    .line 1131
    const-string/jumbo v2, "other symbol"

    #@c3
    const/16 v3, 0x1b

    #@c5
    aput-object v2, v1, v3

    #@c7
    .line 1132
    const-string/jumbo v2, "initial punctuation"

    #@ca
    const/16 v3, 0x1c

    #@cc
    aput-object v2, v1, v3

    #@ce
    .line 1133
    const-string/jumbo v2, "final punctuation"

    #@d1
    const/16 v3, 0x1d

    #@d3
    aput-object v2, v1, v3

    #@d5
    .line 1134
    const-string/jumbo v2, "noncharacter"

    #@d8
    const/16 v3, 0x1e

    #@da
    aput-object v2, v1, v3

    #@dc
    .line 1135
    const-string/jumbo v2, "lead surrogate"

    #@df
    const/16 v3, 0x1f

    #@e1
    aput-object v2, v1, v3

    #@e3
    .line 1136
    const-string/jumbo v2, "trail surrogate"

    #@e6
    const/16 v3, 0x20

    #@e8
    aput-object v2, v1, v3

    #@ea
    .line 1104
    sput-object v1, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@ec
    .line 36
    return-void

    #@ed
    .line 48
    :catch_0
    move-exception v0

    #@ee
    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    #@f0
    const-string/jumbo v2, "Could not construct UCharacterName. Missing unames.icu"

    #@f3
    const-string/jumbo v3, ""

    #@f6
    const-string/jumbo v4, ""

    #@f9
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fc
    throw v1
.end method

.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x21

    #@2
    const/16 v3, 0x8

    #@4
    const/4 v2, 0x0

    #@5
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 63
    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@a
    .line 953
    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@c
    .line 1035
    new-array v2, v4, [C

    #@e
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    #@10
    .line 1036
    new-array v2, v4, [C

    #@12
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    #@14
    .line 1079
    new-array v2, v3, [I

    #@16
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@18
    .line 1084
    new-array v2, v3, [I

    #@1a
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    #@1c
    .line 1088
    new-instance v2, Ljava/lang/StringBuffer;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@21
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@23
    .line 1092
    const/4 v2, 0x2

    #@24
    new-array v2, v2, [I

    #@26
    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    #@28
    .line 1170
    const-string/jumbo v2, "unames.icu"

    #@2b
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v0

    #@2f
    .line 1171
    .local v0, "b":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/icu/impl/UCharacterNameReader;

    #@31
    invoke-direct {v1, v0}, Landroid/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    #@34
    .line 1172
    .local v1, "reader":Landroid/icu/impl/UCharacterNameReader;
    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterNameReader;->read(Landroid/icu/impl/UCharacterName;)V

    #@37
    .line 1168
    return-void
.end method

.method private static add([ILjava/lang/String;)I
    .locals 3
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 1416
    .local v1, "result":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1417
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    #@f
    .line 1416
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 1419
    :cond_0
    return v1
.end method

.method private static add([ILjava/lang/StringBuffer;)I
    .locals 3
    .param p0, "set"    # [I
    .param p1, "str"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1430
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v1

    #@4
    .line 1432
    .local v1, "result":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1433
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    #@f
    .line 1432
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 1435
    :cond_0
    return v1
.end method

.method private static add([IC)V
    .locals 4
    .param p0, "set"    # [I
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1391
    ushr-int/lit8 v0, p1, 0x5

    #@2
    aget v1, p0, v0

    #@4
    and-int/lit8 v2, p1, 0x1f

    #@6
    const/4 v3, 0x1

    #@7
    shl-int v2, v3, v2

    #@9
    or-int/2addr v1, v2

    #@a
    aput v1, p0, v0

    #@c
    .line 1389
    return-void
.end method

.method private addAlgorithmName(I)I
    .locals 4
    .param p1, "maxlength"    # I

    #@0
    .prologue
    .line 1447
    const/4 v1, 0x0

    #@1
    .line 1448
    .local v1, "result":I
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@3
    array-length v2, v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@8
    .line 1449
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@a
    aget-object v2, v2, v0

    #@c
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@e
    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->add([II)I

    #@11
    move-result v1

    #@12
    .line 1450
    if-le v1, p1, :cond_0

    #@14
    .line 1451
    move p1, v1

    #@15
    .line 1448
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1454
    :cond_1
    return p1
.end method

.method private addExtendedName(I)I
    .locals 4
    .param p1, "maxlength"    # I

    #@0
    .prologue
    .line 1465
    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@2
    array-length v2, v2

    #@3
    add-int/lit8 v0, v2, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 1471
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@9
    sget-object v3, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@b
    aget-object v3, v3, v0

    #@d
    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    add-int/lit8 v1, v2, 0x9

    #@13
    .line 1472
    .local v1, "length":I
    if-le v1, p1, :cond_0

    #@15
    .line 1473
    move p1, v1

    #@16
    .line 1465
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 1476
    .end local v1    # "length":I
    :cond_1
    return p1
.end method

.method private addGroupName(I)V
    .locals 13
    .param p1, "maxlength"    # I

    #@0
    .prologue
    const/16 v10, 0x22

    #@2
    const/4 v12, 0x0

    #@3
    const/4 v11, 0x1

    #@4
    .line 1551
    const/4 v5, 0x0

    #@5
    .line 1552
    .local v5, "maxisolength":I
    new-array v7, v10, [C

    #@7
    .line 1553
    .local v7, "offsets":[C
    new-array v2, v10, [C

    #@9
    .line 1554
    .local v2, "lengths":[C
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@b
    array-length v10, v10

    #@c
    new-array v9, v10, [B

    #@e
    .line 1558
    .local v9, "tokenlengths":[B
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v10, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@11
    if-ge v0, v10, :cond_5

    #@13
    .line 1559
    invoke-virtual {p0, v0, v7, v2}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    #@16
    move-result v6

    #@17
    .line 1563
    .local v6, "offset":I
    const/4 v3, 0x0

    #@18
    .local v3, "linenumber":I
    :goto_1
    const/16 v10, 0x20

    #@1a
    if-ge v3, v10, :cond_4

    #@1c
    .line 1565
    aget-char v10, v7, v3

    #@1e
    add-int v4, v6, v10

    #@20
    .line 1566
    .local v4, "lineoffset":I
    aget-char v1, v2, v3

    #@22
    .line 1567
    .local v1, "length":I
    if-nez v1, :cond_1

    #@24
    .line 1564
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 1573
    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@29
    .line 1572
    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    #@2c
    move-result-object v8

    #@2d
    .line 1574
    .local v8, "parsed":[I
    aget v10, v8, v12

    #@2f
    if-le v10, p1, :cond_2

    #@31
    .line 1576
    aget p1, v8, v12

    #@33
    .line 1578
    :cond_2
    aget v10, v8, v11

    #@35
    add-int/2addr v4, v10

    #@36
    .line 1579
    aget v10, v8, v11

    #@38
    if-ge v10, v1, :cond_0

    #@3a
    .line 1583
    aget v10, v8, v11

    #@3c
    sub-int/2addr v1, v10

    #@3d
    .line 1586
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@3f
    .line 1585
    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    #@42
    move-result-object v8

    #@43
    .line 1587
    aget v10, v8, v12

    #@45
    if-le v10, p1, :cond_3

    #@47
    .line 1589
    aget p1, v8, v12

    #@49
    .line 1591
    :cond_3
    aget v10, v8, v11

    #@4b
    add-int/2addr v4, v10

    #@4c
    .line 1592
    aget v10, v8, v11

    #@4e
    if-ge v10, v1, :cond_0

    #@50
    .line 1596
    aget v10, v8, v11

    #@52
    sub-int/2addr v1, v10

    #@53
    .line 1599
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    #@55
    .line 1598
    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    #@58
    move-result-object v8

    #@59
    .line 1600
    aget v10, v8, v11

    #@5b
    if-le v10, v5, :cond_0

    #@5d
    .line 1601
    move v5, v1

    #@5e
    goto :goto_2

    #@5f
    .line 1558
    .end local v1    # "length":I
    .end local v4    # "lineoffset":I
    .end local v8    # "parsed":[I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_0

    #@62
    .line 1607
    .end local v3    # "linenumber":I
    .end local v6    # "offset":I
    :cond_5
    iput v5, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    #@64
    .line 1608
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@66
    .line 1549
    return-void
.end method

.method private addGroupName(II[B[I)[I
    .locals 10
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "tokenlength"    # [B
    .param p4, "set"    # [I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1492
    const/4 v1, 0x0

    #@2
    .line 1493
    .local v1, "resultnlength":I
    const/4 v2, 0x0

    #@3
    .line 1494
    .local v2, "resultplength":I
    :goto_0
    if-ge v2, p2, :cond_0

    #@5
    .line 1495
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@7
    add-int v6, p1, v2

    #@9
    aget-byte v5, v5, v6

    #@b
    and-int/lit16 v5, v5, 0xff

    #@d
    int-to-char v0, v5

    #@e
    .line 1496
    .local v0, "b":C
    add-int/lit8 v2, v2, 0x1

    #@10
    .line 1497
    const/16 v5, 0x3b

    #@12
    if-ne v0, v5, :cond_1

    #@14
    .line 1537
    .end local v0    # "b":C
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    #@16
    aput v1, v5, v9

    #@18
    .line 1538
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    #@1a
    const/4 v6, 0x1

    #@1b
    aput v2, v5, v6

    #@1d
    .line 1539
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    #@1f
    return-object v5

    #@20
    .line 1501
    .restart local v0    # "b":C
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@22
    array-length v5, v5

    #@23
    if-lt v0, v5, :cond_2

    #@25
    .line 1502
    invoke-static {p4, v0}, Landroid/icu/impl/UCharacterName;->add([IC)V

    #@28
    .line 1503
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1506
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@2d
    and-int/lit16 v6, v0, 0xff

    #@2f
    aget-char v4, v5, v6

    #@31
    .line 1507
    .local v4, "token":C
    const v5, 0xfffe

    #@34
    if-ne v4, v5, :cond_3

    #@36
    .line 1509
    shl-int/lit8 v5, v0, 0x8

    #@38
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@3a
    add-int v7, p1, v2

    #@3c
    aget-byte v6, v6, v7

    #@3e
    and-int/lit16 v6, v6, 0xff

    #@40
    or-int/2addr v5, v6

    #@41
    int-to-char v0, v5

    #@42
    .line 1511
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@44
    aget-char v4, v5, v0

    #@46
    .line 1512
    add-int/lit8 v2, v2, 0x1

    #@48
    .line 1514
    :cond_3
    const v5, 0xffff

    #@4b
    if-ne v4, v5, :cond_4

    #@4d
    .line 1515
    invoke-static {p4, v0}, Landroid/icu/impl/UCharacterName;->add([IC)V

    #@50
    .line 1516
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1521
    :cond_4
    aget-byte v3, p3, v0

    #@55
    .line 1522
    .local v3, "tlength":B
    if-nez v3, :cond_5

    #@57
    .line 1523
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@59
    monitor-enter v6

    #@5a
    .line 1524
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@5c
    .line 1525
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    #@61
    move-result v7

    #@62
    .line 1524
    const/4 v8, 0x0

    #@63
    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@66
    .line 1527
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@68
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    #@6a
    .line 1526
    invoke-static {v5, v7, v4}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    #@6d
    .line 1529
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@6f
    invoke-static {p4, v5}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    move-result v5

    #@73
    int-to-byte v3, v5

    #@74
    monitor-exit v6

    #@75
    .line 1531
    aput-byte v3, p3, v0

    #@77
    .line 1533
    :cond_5
    add-int/2addr v1, v3

    #@78
    goto :goto_0

    #@79
    .line 1523
    :catchall_0
    move-exception v5

    #@7a
    monitor-exit v6

    #@7b
    throw v5
.end method

.method private static contains([IC)Z
    .locals 4
    .param p0, "set"    # [I
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1403
    ushr-int/lit8 v2, p1, 0x5

    #@4
    aget v2, p0, v2

    #@6
    and-int/lit8 v3, p1, 0x1f

    #@8
    shl-int v3, v0, v3

    #@a
    and-int/2addr v2, v3

    #@b
    if-eqz v2, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method

.method private convert([ILandroid/icu/text/UnicodeSet;)V
    .locals 2
    .param p1, "set"    # [I
    .param p2, "uset"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1645
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@3
    .line 1646
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1647
    return-void

    #@a
    .line 1651
    :cond_0
    const/16 v0, 0xff

    #@c
    :goto_0
    if-lez v0, :cond_2

    #@e
    .line 1652
    invoke-static {p1, v0}, Landroid/icu/impl/UCharacterName;->contains([IC)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1653
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@17
    .line 1651
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@19
    int-to-char v0, v1

    #@1a
    .local v0, "c":C
    goto :goto_0

    #@1b
    .line 1643
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private getAlgName(II)Ljava/lang/String;
    .locals 5
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    #@0
    .prologue
    .line 1186
    if-eqz p2, :cond_0

    #@2
    .line 1187
    const/4 v1, 0x2

    #@3
    if-ne p2, v1, :cond_3

    #@5
    .line 1190
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@7
    monitor-enter v2

    #@8
    .line 1191
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@a
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@14
    .line 1193
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@16
    array-length v1, v1

    #@17
    add-int/lit8 v0, v1, -0x1

    #@19
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_2

    #@1b
    .line 1195
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@1d
    aget-object v1, v1, v0

    #@1f
    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 1196
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@27
    aget-object v1, v1, v0

    #@29
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@2b
    invoke-virtual {v1, p1, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    #@2e
    .line 1197
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result-object v1

    #@34
    monitor-exit v2

    #@35
    return-object v1

    #@36
    .line 1193
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0

    #@39
    :cond_2
    monitor-exit v2

    #@3a
    .line 1202
    .end local v0    # "index":I
    :cond_3
    const/4 v1, 0x0

    #@3b
    return-object v1

    #@3c
    .line 1190
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public static getCodepointMSB(I)I
    .locals 1
    .param p0, "codepoint"    # I

    #@0
    .prologue
    .line 408
    shr-int/lit8 v0, p0, 0x5

    #@2
    return v0
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "choice"    # I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1345
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v7

    #@6
    const/16 v8, 0x3c

    #@8
    if-ne v7, v8, :cond_2

    #@a
    .line 1346
    const/4 v7, 0x2

    #@b
    if-ne p1, v7, :cond_1

    #@d
    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v7

    #@11
    add-int/lit8 v1, v7, -0x1

    #@13
    .line 1348
    .local v1, "endIndex":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v7

    #@17
    const/16 v8, 0x3e

    #@19
    if-ne v7, v8, :cond_1

    #@1b
    .line 1349
    const/16 v7, 0x2d

    #@1d
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@20
    move-result v5

    #@21
    .line 1350
    .local v5, "startIndex":I
    if-ltz v5, :cond_1

    #@23
    .line 1351
    add-int/lit8 v5, v5, 0x1

    #@25
    .line 1352
    const/4 v4, -0x1

    #@26
    .line 1355
    .local v4, "result":I
    :try_start_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    .line 1356
    const/16 v8, 0x10

    #@2c
    .line 1354
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result v4

    #@30
    .line 1363
    add-int/lit8 v7, v5, -0x1

    #@32
    const/4 v8, 0x1

    #@33
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 1364
    .local v6, "type":Ljava/lang/String;
    sget-object v7, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@39
    array-length v3, v7

    #@3a
    .line 1365
    .local v3, "length":I
    const/4 v2, 0x0

    #@3b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@3d
    .line 1366
    sget-object v7, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@3f
    aget-object v7, v7, v2

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@44
    move-result v7

    #@45
    if-nez v7, :cond_0

    #@47
    .line 1367
    invoke-static {v4}, Landroid/icu/impl/UCharacterName;->getType(I)I

    #@4a
    move-result v7

    #@4b
    if-ne v7, v2, :cond_1

    #@4d
    .line 1368
    return v4

    #@4e
    .line 1358
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v6    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4f
    .line 1359
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v9

    #@50
    .line 1365
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v6    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1376
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "result":I
    .end local v5    # "startIndex":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    return v9

    #@54
    .line 1378
    :cond_2
    const/4 v7, -0x2

    #@55
    return v7
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 15
    .param p1, "index"    # I
    .param p2, "length"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "choice"    # I

    #@0
    .prologue
    .line 1243
    const/4 v1, 0x0

    #@1
    .line 1246
    .local v1, "b":B
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@4
    move-result v5

    #@5
    .line 1250
    .local v5, "namelen":I
    const/4 v9, 0x0

    #@6
    .end local v1    # "b":B
    .local v9, "result":I
    :goto_0
    const/16 v11, 0x20

    #@8
    if-gt v9, v11, :cond_a

    #@a
    .line 1251
    const/4 v6, 0x0

    #@b
    .line 1252
    .local v6, "nindex":I
    aget-char v4, p2, v9

    #@d
    .line 1254
    .local v4, "len":I
    if-eqz p4, :cond_1

    #@f
    .line 1255
    const/4 v11, 0x2

    #@10
    move/from16 v0, p4

    #@12
    if-eq v0, v11, :cond_1

    #@14
    .line 1261
    const/4 v11, 0x4

    #@15
    move/from16 v0, p4

    #@17
    if-ne v0, v11, :cond_3

    #@19
    const/4 v3, 0x2

    #@1a
    .line 1263
    .local v3, "fieldIndex":I
    :cond_0
    :goto_1
    move/from16 v8, p1

    #@1c
    .line 1264
    .local v8, "oldindex":I
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@1e
    .line 1265
    const/16 v12, 0x3b

    #@20
    .line 1264
    move/from16 v0, p1

    #@22
    invoke-static {v11, v0, v4, v12}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    #@25
    move-result v11

    #@26
    add-int p1, p1, v11

    #@28
    .line 1266
    sub-int v11, p1, v8

    #@2a
    sub-int/2addr v4, v11

    #@2b
    .line 1267
    add-int/lit8 v3, v3, -0x1

    #@2d
    if-gtz v3, :cond_0

    #@2f
    .line 1272
    .end local v3    # "fieldIndex":I
    .end local v8    # "oldindex":I
    :cond_1
    const/4 v2, 0x0

    #@30
    .local v2, "count":I
    move v7, v6

    #@31
    .end local v6    # "nindex":I
    .local v7, "nindex":I
    :goto_2
    if-ge v2, v4, :cond_7

    #@33
    const/4 v11, -0x1

    #@34
    if-eq v7, v11, :cond_7

    #@36
    if-ge v7, v5, :cond_7

    #@38
    .line 1274
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@3a
    add-int v12, p1, v2

    #@3c
    aget-byte v1, v11, v12

    #@3e
    .line 1275
    .local v1, "b":B
    add-int/lit8 v2, v2, 0x1

    #@40
    .line 1277
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@42
    array-length v11, v11

    #@43
    if-lt v1, v11, :cond_4

    #@45
    .line 1278
    add-int/lit8 v6, v7, 0x1

    #@47
    .end local v7    # "nindex":I
    .restart local v6    # "nindex":I
    move-object/from16 v0, p3

    #@49
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v11

    #@4d
    and-int/lit16 v12, v1, 0xff

    #@4f
    if-eq v11, v12, :cond_2

    #@51
    .line 1279
    const/4 v6, -0x1

    #@52
    :cond_2
    :goto_3
    move v7, v6

    #@53
    .end local v6    # "nindex":I
    .restart local v7    # "nindex":I
    goto :goto_2

    #@54
    .line 1261
    .end local v1    # "b":B
    .end local v2    # "count":I
    .end local v7    # "nindex":I
    .restart local v6    # "nindex":I
    :cond_3
    move/from16 v3, p4

    #@56
    .restart local v3    # "fieldIndex":I
    goto :goto_1

    #@57
    .line 1283
    .end local v3    # "fieldIndex":I
    .end local v6    # "nindex":I
    .restart local v1    # "b":B
    .restart local v2    # "count":I
    .restart local v7    # "nindex":I
    :cond_4
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@59
    and-int/lit16 v12, v1, 0xff

    #@5b
    aget-char v10, v11, v12

    #@5d
    .line 1284
    .local v10, "token":C
    const v11, 0xfffe

    #@60
    if-ne v10, v11, :cond_5

    #@62
    .line 1286
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@64
    shl-int/lit8 v12, v1, 0x8

    #@66
    .line 1287
    iget-object v13, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@68
    add-int v14, p1, v2

    #@6a
    aget-byte v13, v13, v14

    #@6c
    and-int/lit16 v13, v13, 0xff

    #@6e
    .line 1286
    or-int/2addr v12, v13

    #@6f
    aget-char v10, v11, v12

    #@71
    .line 1288
    add-int/lit8 v2, v2, 0x1

    #@73
    .line 1290
    :cond_5
    const v11, 0xffff

    #@76
    if-ne v10, v11, :cond_6

    #@78
    .line 1291
    add-int/lit8 v6, v7, 0x1

    #@7a
    .end local v7    # "nindex":I
    .restart local v6    # "nindex":I
    move-object/from16 v0, p3

    #@7c
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v11

    #@80
    and-int/lit16 v12, v1, 0xff

    #@82
    if-eq v11, v12, :cond_2

    #@84
    .line 1292
    const/4 v6, -0x1

    #@85
    goto :goto_3

    #@86
    .line 1298
    .end local v6    # "nindex":I
    .restart local v7    # "nindex":I
    :cond_6
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    #@88
    .line 1297
    move-object/from16 v0, p3

    #@8a
    invoke-static {v0, v11, v7, v10}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    #@8d
    move-result v6

    #@8e
    .end local v7    # "nindex":I
    .restart local v6    # "nindex":I
    goto :goto_3

    #@8f
    .line 1303
    .end local v1    # "b":B
    .end local v6    # "nindex":I
    .end local v10    # "token":C
    .restart local v7    # "nindex":I
    :cond_7
    if-ne v5, v7, :cond_9

    #@91
    .line 1304
    if-eq v2, v4, :cond_8

    #@93
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@95
    add-int v12, p1, v2

    #@97
    aget-byte v11, v11, v12

    #@99
    const/16 v12, 0x3b

    #@9b
    if-ne v11, v12, :cond_9

    #@9d
    .line 1305
    :cond_8
    return v9

    #@9e
    .line 1308
    :cond_9
    add-int p1, p1, v4

    #@a0
    .line 1250
    add-int/lit8 v9, v9, 0x1

    #@a2
    goto/16 :goto_0

    #@a4
    .line 1310
    .end local v2    # "count":I
    .end local v4    # "len":I
    .end local v7    # "nindex":I
    :cond_a
    const/4 v11, -0x1

    #@a5
    return v11
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "choice"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 1213
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 1216
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    #@9
    .line 1217
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    #@b
    .line 1216
    invoke-virtual {p0, v0, v3, v4}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    #@e
    move-result v2

    #@f
    .line 1220
    .local v2, "startgpstrindex":I
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    #@11
    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    #@14
    move-result v1

    #@15
    .line 1222
    .local v1, "result":I
    if-eq v1, v5, :cond_0

    #@17
    .line 1223
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@19
    iget v4, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@1b
    mul-int/2addr v4, v0

    #@1c
    aget-char v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    shl-int/lit8 v3, v3, 0x5

    #@20
    or-int/2addr v3, v1

    #@21
    monitor-exit p0

    #@22
    return v3

    #@23
    .line 1213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .end local v1    # "result":I
    .end local v2    # "startgpstrindex":I
    :cond_1
    monitor-exit p0

    #@27
    .line 1227
    return v5

    #@28
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3
.end method

.method public static getGroupLimit(I)I
    .locals 1
    .param p0, "msb"    # I

    #@0
    .prologue
    .line 418
    shl-int/lit8 v0, p0, 0x5

    #@2
    add-int/lit8 v0, v0, 0x20

    #@4
    return v0
.end method

.method public static getGroupMin(I)I
    .locals 1
    .param p0, "msb"    # I

    #@0
    .prologue
    .line 428
    shl-int/lit8 v0, p0, 0x5

    #@2
    return v0
.end method

.method public static getGroupMinFromCodepoint(I)I
    .locals 1
    .param p0, "codepoint"    # I

    #@0
    .prologue
    .line 449
    and-int/lit8 v0, p0, -0x20

    #@2
    return v0
.end method

.method public static getGroupOffset(I)I
    .locals 1
    .param p0, "codepoint"    # I

    #@0
    .prologue
    .line 438
    and-int/lit8 v0, p0, 0x1f

    #@2
    return v0
.end method

.method private static getType(I)I
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 1320
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1322
    const/16 v1, 0x1e

    #@8
    return v1

    #@9
    .line 1324
    :cond_0
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@c
    move-result v0

    #@d
    .line 1325
    .local v0, "result":I
    const/16 v1, 0x12

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 1326
    const v1, 0xdbff

    #@14
    if-gt p0, v1, :cond_2

    #@16
    .line 1327
    const/16 v0, 0x1f

    #@18
    .line 1333
    :cond_1
    :goto_0
    return v0

    #@19
    .line 1330
    :cond_2
    const/16 v0, 0x20

    #@1b
    goto :goto_0
.end method

.method private initNameSetsLengths()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1617
    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@4
    if-lez v2, :cond_0

    #@6
    .line 1618
    return v5

    #@7
    .line 1621
    :cond_0
    const-string/jumbo v0, "0123456789ABCDEF<>-"

    #@a
    .line 1624
    .local v0, "extra":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v1, v2, -0x1

    #@10
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@12
    .line 1625
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v3

    #@18
    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterName;->add([IC)V

    #@1b
    .line 1624
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1629
    :cond_1
    invoke-direct {p0, v4}, Landroid/icu/impl/UCharacterName;->addAlgorithmName(I)I

    #@21
    move-result v2

    #@22
    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@24
    .line 1631
    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@26
    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addExtendedName(I)I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@2c
    .line 1633
    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@2e
    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addGroupName(I)V

    #@31
    .line 1634
    return v5
.end method


# virtual methods
.method public getAlgorithmEnd(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-get0(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getAlgorithmLength()I
    .locals 1

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getAlgorithmName(II)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "codepoint"    # I

    #@0
    .prologue
    .line 490
    const/4 v0, 0x0

    #@1
    .line 491
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@3
    monitor-enter v2

    #@4
    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@6
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    #@b
    move-result v3

    #@c
    const/4 v4, 0x0

    #@d
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@10
    .line 493
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@12
    aget-object v1, v1, p1

    #@14
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@16
    invoke-virtual {v1, p2, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    #@19
    .line 494
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v0

    #@1f
    .local v0, "result":Ljava/lang/String;
    monitor-exit v2

    #@20
    .line 496
    return-object v0

    #@21
    .line 491
    .local v0, "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public getAlgorithmStart(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-get1(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCharFromName(ILjava/lang/String;)I
    .locals 7
    .param p1, "choice"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 112
    const/4 v3, 0x4

    #@4
    if-ge p1, v3, :cond_0

    #@6
    .line 113
    if-nez p2, :cond_1

    #@8
    .line 114
    :cond_0
    return v5

    #@9
    .line 113
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 118
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@11
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3, p1}, Landroid/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    #@18
    move-result v1

    #@19
    .line 119
    .local v1, "result":I
    if-lt v1, v5, :cond_2

    #@1b
    .line 120
    return v1

    #@1c
    .line 123
    :cond_2
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1e
    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 127
    .local v2, "upperCaseName":Ljava/lang/String;
    if-eqz p1, :cond_3

    #@24
    .line 128
    if-ne p1, v6, :cond_6

    #@26
    .line 130
    :cond_3
    const/4 v0, 0x0

    #@27
    .line 131
    .local v0, "count":I
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@29
    if-eqz v3, :cond_4

    #@2b
    .line 132
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@2d
    array-length v0, v3

    #@2e
    .line 134
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@30
    :goto_0
    if-ltz v0, :cond_6

    #@32
    .line 135
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@34
    aget-object v3, v3, v0

    #@36
    invoke-virtual {v3, v2}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    #@39
    move-result v1

    #@3a
    .line 136
    if-ltz v1, :cond_5

    #@3c
    .line 137
    return v1

    #@3d
    .line 134
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@3f
    goto :goto_0

    #@40
    .line 142
    .end local v0    # "count":I
    :cond_6
    if-ne p1, v6, :cond_8

    #@42
    .line 143
    invoke-direct {p0, v2, v4}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    #@45
    move-result v1

    #@46
    .line 145
    if-ne v1, v5, :cond_7

    #@48
    .line 147
    const/4 v3, 0x3

    #@49
    .line 146
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    #@4c
    move-result v1

    #@4d
    .line 153
    :cond_7
    :goto_1
    return v1

    #@4e
    .line 151
    :cond_8
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    #@51
    move-result v1

    #@52
    goto :goto_1
.end method

.method public getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    #@5
    .line 561
    return-void
.end method

.method public getExtendedName(I)Ljava/lang/String;
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 316
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 317
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 319
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 321
    :cond_0
    return-object v0
.end method

.method public getExtendedOr10Name(I)Ljava/lang/String;
    .locals 8
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 357
    const/4 v1, 0x0

    #@1
    .line 360
    .local v1, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getType(I)I

    #@4
    move-result v2

    #@5
    .line 363
    .local v2, "type":I
    sget-object v4, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@7
    array-length v4, v4

    #@8
    if-lt v2, v4, :cond_0

    #@a
    .line 364
    const-string/jumbo v1, "unknown"

    #@d
    .line 369
    .local v1, "result":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@f
    monitor-enter v5

    #@10
    .line 370
    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@12
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@14
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@17
    move-result v6

    #@18
    const/4 v7, 0x0

    #@19
    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@1c
    .line 371
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@1e
    const/16 v6, 0x3c

    #@20
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@23
    .line 372
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 373
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@2a
    const/16 v6, 0x2d

    #@2c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@35
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 375
    .local v0, "chStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3c
    move-result v4

    #@3d
    rsub-int/lit8 v3, v4, 0x4

    #@3f
    .line 376
    .local v3, "zeros":I
    :goto_1
    if-lez v3, :cond_1

    #@41
    .line 377
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@43
    const/16 v6, 0x30

    #@45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 378
    add-int/lit8 v3, v3, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 367
    .end local v0    # "chStr":Ljava/lang/String;
    .end local v3    # "zeros":I
    .local v1, "result":Ljava/lang/String;
    :cond_0
    sget-object v4, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    #@4d
    aget-object v1, v4, v2

    #@4f
    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 380
    .restart local v0    # "chStr":Ljava/lang/String;
    .restart local v3    # "zeros":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    .line 381
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@57
    const/16 v6, 0x3e

    #@59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5c
    .line 382
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    move-result-object v1

    #@62
    monitor-exit v5

    #@63
    .line 385
    return-object v1

    #@64
    .line 369
    .end local v0    # "chStr":Ljava/lang/String;
    .end local v3    # "zeros":I
    :catchall_0
    move-exception v4

    #@65
    monitor-exit v5

    #@66
    throw v4
.end method

.method public getGroup(I)I
    .locals 5
    .param p1, "codepoint"    # I

    #@0
    .prologue
    .line 331
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@2
    .line 332
    .local v0, "endGroup":I
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    #@5
    move-result v2

    #@6
    .line 333
    .local v2, "msb":I
    const/4 v3, 0x0

    #@7
    .line 337
    .local v3, "result":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    #@9
    if-ge v3, v4, :cond_1

    #@b
    .line 338
    add-int v4, v3, v0

    #@d
    shr-int/lit8 v1, v4, 0x1

    #@f
    .line 339
    .local v1, "gindex":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    #@12
    move-result v4

    #@13
    if-ge v2, v4, :cond_0

    #@15
    .line 340
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 343
    :cond_0
    move v3, v1

    #@18
    goto :goto_0

    #@19
    .line 346
    .end local v1    # "gindex":I
    :cond_1
    return v3
.end method

.method public getGroupLengths(I[C[C)I
    .locals 12
    .param p1, "index"    # I
    .param p2, "offsets"    # [C
    .param p3, "lengths"    # [C

    #@0
    .prologue
    const v11, 0xffff

    #@3
    const/16 v10, 0x20

    #@5
    const/4 v9, 0x0

    #@6
    .line 176
    const v2, 0xffff

    #@9
    .line 177
    .local v2, "length":C
    const/4 v0, 0x0

    #@a
    .line 178
    .local v0, "b":B
    const/4 v3, 0x0

    #@b
    .line 180
    .local v3, "n":B
    iget v6, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@d
    mul-int/2addr p1, v6

    #@e
    .line 182
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@10
    add-int/lit8 v7, p1, 0x1

    #@12
    aget-char v6, v6, v7

    #@14
    .line 183
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@16
    add-int/lit8 v8, p1, 0x2

    #@18
    aget-char v7, v7, v8

    #@1a
    .line 181
    invoke-static {v6, v7}, Landroid/icu/impl/UCharacterUtility;->toInt(CC)I

    #@1d
    move-result v5

    #@1e
    .line 185
    .local v5, "stringoffset":I
    aput-char v9, p2, v9

    #@20
    .line 189
    const/4 v1, 0x0

    #@21
    .end local v0    # "b":B
    .end local v2    # "length":C
    .end local v3    # "n":B
    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_4

    #@23
    .line 190
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@25
    aget-byte v0, v6, v5

    #@27
    .line 191
    .local v0, "b":B
    const/4 v4, 0x4

    #@28
    .line 193
    .local v4, "shift":I
    :goto_1
    if-ltz v4, :cond_3

    #@2a
    .line 195
    shr-int v6, v0, v4

    #@2c
    and-int/lit8 v6, v6, 0xf

    #@2e
    int-to-byte v3, v6

    #@2f
    .line 196
    .local v3, "n":B
    if-ne v2, v11, :cond_0

    #@31
    const/16 v6, 0xb

    #@33
    if-le v3, v6, :cond_0

    #@35
    .line 197
    add-int/lit8 v6, v3, -0xc

    #@37
    shl-int/lit8 v6, v6, 0x4

    #@39
    int-to-char v2, v6

    #@3a
    .line 215
    :goto_2
    add-int/lit8 v4, v4, -0x4

    #@3c
    goto :goto_1

    #@3d
    .line 200
    :cond_0
    if-eq v2, v11, :cond_2

    #@3f
    .line 201
    or-int v6, v2, v3

    #@41
    add-int/lit8 v6, v6, 0xc

    #@43
    int-to-char v6, v6

    #@44
    aput-char v6, p3, v1

    #@46
    .line 207
    :goto_3
    if-ge v1, v10, :cond_1

    #@48
    .line 208
    add-int/lit8 v6, v1, 0x1

    #@4a
    aget-char v7, p2, v1

    #@4c
    aget-char v8, p3, v1

    #@4e
    add-int/2addr v7, v8

    #@4f
    int-to-char v7, v7

    #@50
    aput-char v7, p2, v6

    #@52
    .line 211
    :cond_1
    const v2, 0xffff

    #@55
    .line 212
    .restart local v2    # "length":C
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_2

    #@58
    .line 204
    .end local v2    # "length":C
    :cond_2
    int-to-char v6, v3

    #@59
    aput-char v6, p3, v1

    #@5b
    goto :goto_3

    #@5c
    .line 189
    .end local v3    # "n":B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 218
    .end local v0    # "b":B
    .end local v4    # "shift":I
    :cond_4
    return v5
.end method

.method public getGroupMSB(I)I
    .locals 2
    .param p1, "gindex"    # I

    #@0
    .prologue
    .line 395
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 396
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 398
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@8
    iget v1, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@a
    mul-int/2addr v1, p1

    #@b
    aget-char v0, v0, v1

    #@d
    return v0
.end method

.method public declared-synchronized getGroupName(II)Ljava/lang/String;
    .locals 6
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 507
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    #@4
    move-result v2

    #@5
    .line 508
    .local v2, "msb":I
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    #@8
    move-result v0

    #@9
    .line 511
    .local v0, "group":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@b
    iget v5, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@d
    mul-int/2addr v5, v0

    #@e
    aget-char v4, v4, v5

    #@10
    if-ne v2, v4, :cond_0

    #@12
    .line 512
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    #@14
    .line 513
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    #@16
    .line 512
    invoke-virtual {p0, v0, v4, v5}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    #@19
    move-result v1

    #@1a
    .line 514
    .local v1, "index":I
    and-int/lit8 v3, p1, 0x1f

    #@1c
    .line 515
    .local v3, "offset":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    #@1e
    aget-char v4, v4, v3

    #@20
    add-int/2addr v4, v1

    #@21
    .line 516
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    #@23
    aget-char v5, v5, v3

    #@25
    .line 515
    invoke-virtual {p0, v4, v5, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v4

    #@29
    monitor-exit p0

    #@2a
    return-object v4

    #@2b
    .line 519
    .end local v1    # "index":I
    .end local v3    # "offset":I
    :cond_0
    const/4 v4, 0x0

    #@2c
    monitor-exit p0

    #@2d
    return-object v4

    #@2e
    .end local v0    # "group":I
    .end local v2    # "msb":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit p0

    #@30
    throw v4
.end method

.method public getGroupName(III)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "choice"    # I

    #@0
    .prologue
    .line 237
    if-eqz p3, :cond_2

    #@2
    .line 238
    const/4 v5, 0x2

    #@3
    if-eq p3, v5, :cond_2

    #@5
    .line 240
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@7
    array-length v5, v5

    #@8
    const/16 v6, 0x3b

    #@a
    if-ge v6, v5, :cond_0

    #@c
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@e
    const/16 v6, 0x3b

    #@10
    aget-char v5, v5, v6

    #@12
    const v6, 0xffff

    #@15
    if-ne v5, v6, :cond_5

    #@17
    .line 245
    :cond_0
    const/4 v5, 0x4

    #@18
    if-ne p3, v5, :cond_4

    #@1a
    const/4 v1, 0x2

    #@1b
    .line 247
    .local v1, "fieldIndex":I
    :cond_1
    :goto_0
    move v3, p1

    #@1c
    .line 248
    .local v3, "oldindex":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@1e
    .line 249
    const/16 v6, 0x3b

    #@20
    .line 248
    invoke-static {v5, p1, p2, v6}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    #@23
    move-result v5

    #@24
    add-int/2addr p1, v5

    #@25
    .line 250
    sub-int v5, p1, v3

    #@27
    sub-int/2addr p2, v5

    #@28
    .line 251
    add-int/lit8 v1, v1, -0x1

    #@2a
    if-gtz v1, :cond_1

    #@2c
    .line 261
    .end local v1    # "fieldIndex":I
    .end local v3    # "oldindex":I
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@2e
    monitor-enter v6

    #@2f
    .line 262
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@31
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    #@36
    move-result v7

    #@37
    const/4 v8, 0x0

    #@38
    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@3b
    .line 265
    const/4 v2, 0x0

    #@3c
    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_3

    #@3e
    .line 266
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@40
    add-int v7, p1, v2

    #@42
    aget-byte v0, v5, v7

    #@44
    .line 267
    .local v0, "b":B
    add-int/lit8 v2, v2, 0x1

    #@46
    .line 269
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@48
    array-length v5, v5

    #@49
    if-lt v0, v5, :cond_7

    #@4b
    .line 270
    const/16 v5, 0x3b

    #@4d
    if-ne v0, v5, :cond_6

    #@4f
    .line 304
    .end local v0    # "b":B
    :cond_3
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@54
    move-result v5

    #@55
    if-lez v5, :cond_b

    #@57
    .line 305
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    move-result-object v5

    #@5d
    monitor-exit v6

    #@5e
    return-object v5

    #@5f
    .line 245
    .end local v2    # "i":I
    :cond_4
    move v1, p3

    #@60
    .restart local v1    # "fieldIndex":I
    goto :goto_0

    #@61
    .line 257
    .end local v1    # "fieldIndex":I
    :cond_5
    const/4 p2, 0x0

    #@62
    goto :goto_1

    #@63
    .line 273
    .restart local v0    # "b":B
    .restart local v2    # "i":I
    :cond_6
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_2

    #@69
    .line 261
    .end local v0    # "b":B
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    #@6a
    monitor-exit v6

    #@6b
    throw v5

    #@6c
    .line 276
    .restart local v0    # "b":B
    .restart local v2    # "i":I
    :cond_7
    :try_start_2
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@6e
    and-int/lit16 v7, v0, 0xff

    #@70
    aget-char v4, v5, v7

    #@72
    .line 277
    .local v4, "token":C
    const v5, 0xfffe

    #@75
    if-ne v4, v5, :cond_8

    #@77
    .line 279
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@79
    shl-int/lit8 v7, v0, 0x8

    #@7b
    .line 280
    iget-object v8, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@7d
    add-int v9, p1, v2

    #@7f
    aget-byte v8, v8, v9

    #@81
    and-int/lit16 v8, v8, 0xff

    #@83
    .line 279
    or-int/2addr v7, v8

    #@84
    aget-char v4, v5, v7

    #@86
    .line 281
    add-int/lit8 v2, v2, 0x1

    #@88
    .line 283
    :cond_8
    const v5, 0xffff

    #@8b
    if-ne v4, v5, :cond_a

    #@8d
    .line 284
    const/16 v5, 0x3b

    #@8f
    if-ne v0, v5, :cond_9

    #@91
    .line 288
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@93
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@96
    move-result v5

    #@97
    if-nez v5, :cond_3

    #@99
    .line 289
    const/4 v5, 0x2

    #@9a
    .line 288
    if-ne p3, v5, :cond_3

    #@9c
    goto :goto_2

    #@9d
    .line 295
    :cond_9
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@9f
    and-int/lit16 v7, v0, 0xff

    #@a1
    int-to-char v7, v7

    #@a2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a5
    goto :goto_2

    #@a6
    .line 299
    :cond_a
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@a8
    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    #@aa
    .line 298
    invoke-static {v5, v7, v4}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    goto :goto_2

    #@ae
    .end local v0    # "b":B
    .end local v4    # "token":C
    :cond_b
    monitor-exit v6

    #@af
    .line 308
    const/4 v5, 0x0

    #@b0
    return-object v5
.end method

.method public getISOCommentCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    #@5
    .line 572
    return-void
.end method

.method public getMaxCharNameLength()I
    .locals 1

    #@0
    .prologue
    .line 531
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 532
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    #@8
    return v0

    #@9
    .line 535
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getMaxISOCommentLength()I
    .locals 1

    #@0
    .prologue
    .line 547
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 548
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    #@8
    return v0

    #@9
    .line 551
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getName(II)Ljava/lang/String;
    .locals 3
    .param p1, "ch"    # I
    .param p2, "choice"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 81
    if-ltz p1, :cond_0

    #@3
    const v1, 0x10ffff

    #@6
    if-le p1, v1, :cond_1

    #@8
    .line 83
    :cond_0
    return-object v2

    #@9
    .line 82
    :cond_1
    const/4 v1, 0x4

    #@a
    if-gt p2, v1, :cond_0

    #@c
    .line 86
    const/4 v0, 0x0

    #@d
    .line 88
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 91
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_3

    #@19
    .line 92
    :cond_2
    const/4 v1, 0x2

    #@1a
    if-ne p2, v1, :cond_4

    #@1c
    .line 93
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 99
    :cond_3
    :goto_0
    return-object v0

    #@21
    .line 95
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    goto :goto_0
.end method

.method setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 2
    .param p1, "alg"    # [Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 981
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 982
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@8
    .line 983
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 985
    :cond_0
    return v1
.end method

.method setGroup([C[B)Z
    .locals 2
    .param p1, "group"    # [C
    .param p2, "groupstring"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1012
    if-eqz p1, :cond_0

    #@3
    if-eqz p2, :cond_0

    #@5
    array-length v0, p1

    #@6
    if-lez v0, :cond_0

    #@8
    .line 1013
    array-length v0, p2

    #@9
    if-lez v0, :cond_0

    #@b
    .line 1014
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    #@d
    .line 1015
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    #@f
    .line 1016
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1018
    :cond_0
    return v1
.end method

.method setGroupCountSize(II)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 996
    if-lez p1, :cond_0

    #@3
    if-gtz p2, :cond_1

    #@5
    .line 997
    :cond_0
    return v0

    #@6
    .line 999
    :cond_1
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@8
    .line 1000
    iput p2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    #@a
    .line 1001
    const/4 v0, 0x1

    #@b
    return v0
.end method

.method setToken([C[B)Z
    .locals 2
    .param p1, "token"    # [C
    .param p2, "tokenstring"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 965
    if-eqz p1, :cond_0

    #@3
    if-eqz p2, :cond_0

    #@5
    array-length v0, p1

    #@6
    if-lez v0, :cond_0

    #@8
    .line 966
    array-length v0, p2

    #@9
    if-lez v0, :cond_0

    #@b
    .line 967
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    #@d
    .line 968
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    #@f
    .line 969
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 971
    :cond_0
    return v1
.end method
