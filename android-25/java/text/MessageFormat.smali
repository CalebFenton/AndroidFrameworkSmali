.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field private static final DATE_TIME_MODIFIERS:[I

.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final INITIAL_FORMATS:I = 0xa

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_FULL:I = 0x4

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_LONG:I = 0x3

.field private static final MODIFIER_MEDIUM:I = 0x2

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final MODIFIER_SHORT:I = 0x1

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private maxOffset:I

.field private offsets:[I

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x2

    #@5
    .line 1366
    const/4 v0, 0x5

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 1367
    const-string/jumbo v1, ""

    #@b
    aput-object v1, v0, v3

    #@d
    .line 1368
    const-string/jumbo v1, "number"

    #@10
    aput-object v1, v0, v4

    #@12
    .line 1369
    const-string/jumbo v1, "date"

    #@15
    aput-object v1, v0, v2

    #@17
    .line 1370
    const-string/jumbo v1, "time"

    #@1a
    aput-object v1, v0, v5

    #@1c
    .line 1371
    const-string/jumbo v1, "choice"

    #@1f
    aput-object v1, v0, v6

    #@21
    .line 1366
    sput-object v0, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    #@23
    .line 1380
    new-array v0, v6, [Ljava/lang/String;

    #@25
    .line 1381
    const-string/jumbo v1, ""

    #@28
    aput-object v1, v0, v3

    #@2a
    .line 1382
    const-string/jumbo v1, "currency"

    #@2d
    aput-object v1, v0, v4

    #@2f
    .line 1383
    const-string/jumbo v1, "percent"

    #@32
    aput-object v1, v0, v2

    #@34
    .line 1384
    const-string/jumbo v1, "integer"

    #@37
    aput-object v1, v0, v5

    #@39
    .line 1380
    sput-object v0, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@3b
    .line 1393
    const/4 v0, 0x5

    #@3c
    new-array v0, v0, [Ljava/lang/String;

    #@3e
    .line 1394
    const-string/jumbo v1, ""

    #@41
    aput-object v1, v0, v3

    #@43
    .line 1395
    const-string/jumbo v1, "short"

    #@46
    aput-object v1, v0, v4

    #@48
    .line 1396
    const-string/jumbo v1, "medium"

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 1397
    const-string/jumbo v1, "long"

    #@50
    aput-object v1, v0, v5

    #@52
    .line 1398
    const-string/jumbo v1, "full"

    #@55
    aput-object v1, v0, v6

    #@57
    .line 1393
    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@59
    .line 1402
    filled-new-array {v2, v5, v2, v4, v3}, [I

    #@5c
    move-result-object v0

    #@5d
    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@5f
    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 362
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@5
    .line 1183
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@a
    .line 1192
    new-array v0, v1, [Ljava/text/Format;

    #@c
    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@e
    .line 1199
    new-array v0, v1, [I

    #@10
    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    #@12
    .line 1207
    new-array v0, v1, [I

    #@14
    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@16
    .line 1216
    const/4 v0, -0x1

    #@17
    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@19
    .line 363
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@1b
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@21
    .line 364
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@24
    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 380
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@5
    .line 1183
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@a
    .line 1192
    new-array v0, v1, [Ljava/text/Format;

    #@c
    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@e
    .line 1199
    new-array v0, v1, [I

    #@10
    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    #@12
    .line 1207
    new-array v0, v1, [I

    #@14
    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@16
    .line 1216
    const/4 v0, -0x1

    #@17
    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@19
    .line 381
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1b
    .line 382
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@1e
    .line 380
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const v2, 0xffff

    #@3
    .line 1343
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    #@6
    move-result v1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 1346
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    #@c
    move-result v1

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 1347
    :goto_0
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    #@13
    move-result v0

    #@14
    .local v0, "aChar":C
    if-eq v0, v2, :cond_0

    #@16
    .line 1348
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    goto :goto_0

    #@1a
    .line 1342
    .end local v0    # "aChar":C
    :cond_0
    return-void
.end method

.method private static final copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x27

    #@2
    .line 1547
    const/4 v2, 0x0

    #@3
    .line 1549
    .local v2, "quoted":Z
    move v1, p1

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    #@6
    .line 1550
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 1551
    .local v0, "ch":C
    const/16 v3, 0x7b

    #@c
    if-ne v0, v3, :cond_1

    #@e
    .line 1552
    if-nez v2, :cond_0

    #@10
    .line 1553
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 1554
    const/4 v2, 0x1

    #@14
    .line 1556
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 1549
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1557
    :cond_1
    if-ne v0, v4, :cond_2

    #@1c
    .line 1558
    const-string/jumbo v3, "\'\'"

    #@1f
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    goto :goto_1

    #@23
    .line 1560
    :cond_2
    if-eqz v2, :cond_3

    #@25
    .line 1561
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 1562
    const/4 v2, 0x0

    #@29
    .line 1564
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_1

    #@2d
    .line 1567
    .end local v0    # "ch":C
    :cond_4
    if-eqz v2, :cond_5

    #@2f
    .line 1568
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 1546
    :cond_5
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1529
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 1530
    aget-object v2, p1, v0

    #@6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1531
    return v0

    #@d
    .line 1529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1535
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 1536
    .local v1, "ls":Ljava/lang/String;
    if-eq v1, p0, :cond_3

    #@1c
    .line 1537
    const/4 v0, 0x0

    #@1d
    :goto_1
    array-length v2, p1

    #@1e
    if-ge v0, v2, :cond_3

    #@20
    .line 1538
    aget-object v2, p1, v0

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1539
    return v0

    #@29
    .line 1537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 1542
    :cond_3
    const/4 v2, -0x1

    #@2d
    return v2
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 839
    new-instance v0, Ljava/text/MessageFormat;

    #@2
    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@5
    .line 840
    .local v0, "temp":Ljava/text/MessageFormat;
    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method private makeFormat(II[Ljava/lang/StringBuilder;)V
    .locals 23
    .param p1, "position"    # I
    .param p2, "offsetNumber"    # I
    .param p3, "textSegments"    # [Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1413
    move-object/from16 v0, p3

    #@2
    array-length v0, v0

    #@3
    move/from16 v19, v0

    #@5
    move/from16 v0, v19

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    move-object/from16 v17, v0

    #@b
    .line 1414
    .local v17, "segments":[Ljava/lang/String;
    const/4 v8, 0x0

    #@c
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@e
    array-length v0, v0

    #@f
    move/from16 v19, v0

    #@11
    move/from16 v0, v19

    #@13
    if-ge v8, v0, :cond_1

    #@15
    .line 1415
    aget-object v16, p3, v8

    #@17
    .line 1416
    .local v16, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v16, :cond_0

    #@19
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v19

    #@1d
    :goto_1
    aput-object v19, v17, v8

    #@1f
    .line 1414
    add-int/lit8 v8, v8, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1416
    :cond_0
    const-string/jumbo v19, ""

    #@25
    goto :goto_1

    #@26
    .line 1422
    .end local v16    # "oneseg":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v19, 0x1

    #@28
    :try_start_0
    aget-object v19, v17, v19

    #@2a
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v4

    #@2e
    .line 1427
    .local v4, "argumentNumber":I
    if-gez v4, :cond_2

    #@30
    .line 1428
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v20, Ljava/lang/StringBuilder;

    #@34
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v21, "negative argument number: "

    #@3a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v20

    #@3e
    move-object/from16 v0, v20

    #@40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v20

    #@44
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v20

    #@48
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v19

    #@4c
    .line 1423
    .end local v4    # "argumentNumber":I
    :catch_0
    move-exception v7

    #@4d
    .line 1424
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance v20, Ljava/lang/StringBuilder;

    #@51
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v21, "can\'t parse argument number: "

    #@57
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v20

    #@5b
    .line 1425
    const/16 v21, 0x1

    #@5d
    aget-object v21, v17, v21

    #@5f
    .line 1424
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v20

    #@63
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v20

    #@67
    move-object/from16 v0, v19

    #@69
    move-object/from16 v1, v20

    #@6b
    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6e
    throw v19

    #@6f
    .line 1433
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "argumentNumber":I
    :cond_2
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@73
    move-object/from16 v19, v0

    #@75
    move-object/from16 v0, v19

    #@77
    array-length v0, v0

    #@78
    move/from16 v19, v0

    #@7a
    move/from16 v0, p2

    #@7c
    move/from16 v1, v19

    #@7e
    if-lt v0, v1, :cond_3

    #@80
    .line 1434
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@84
    move-object/from16 v19, v0

    #@86
    move-object/from16 v0, v19

    #@88
    array-length v0, v0

    #@89
    move/from16 v19, v0

    #@8b
    mul-int/lit8 v13, v19, 0x2

    #@8d
    .line 1435
    .local v13, "newLength":I
    new-array v12, v13, [Ljava/text/Format;

    #@8f
    .line 1436
    .local v12, "newFormats":[Ljava/text/Format;
    new-array v14, v13, [I

    #@91
    .line 1437
    .local v14, "newOffsets":[I
    new-array v10, v13, [I

    #@93
    .line 1438
    .local v10, "newArgumentNumbers":[I
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@97
    move-object/from16 v19, v0

    #@99
    move-object/from16 v0, p0

    #@9b
    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@9d
    move/from16 v20, v0

    #@9f
    add-int/lit8 v20, v20, 0x1

    #@a1
    const/16 v21, 0x0

    #@a3
    const/16 v22, 0x0

    #@a5
    move-object/from16 v0, v19

    #@a7
    move/from16 v1, v21

    #@a9
    move/from16 v2, v22

    #@ab
    move/from16 v3, v20

    #@ad
    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b0
    .line 1439
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    #@b4
    move-object/from16 v19, v0

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@ba
    move/from16 v20, v0

    #@bc
    add-int/lit8 v20, v20, 0x1

    #@be
    const/16 v21, 0x0

    #@c0
    const/16 v22, 0x0

    #@c2
    move-object/from16 v0, v19

    #@c4
    move/from16 v1, v21

    #@c6
    move/from16 v2, v22

    #@c8
    move/from16 v3, v20

    #@ca
    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@cd
    .line 1440
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@d1
    move-object/from16 v19, v0

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@d7
    move/from16 v20, v0

    #@d9
    add-int/lit8 v20, v20, 0x1

    #@db
    const/16 v21, 0x0

    #@dd
    const/16 v22, 0x0

    #@df
    move-object/from16 v0, v19

    #@e1
    move/from16 v1, v21

    #@e3
    move/from16 v2, v22

    #@e5
    move/from16 v3, v20

    #@e7
    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@ea
    .line 1441
    move-object/from16 v0, p0

    #@ec
    iput-object v12, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@ee
    .line 1442
    move-object/from16 v0, p0

    #@f0
    iput-object v14, v0, Ljava/text/MessageFormat;->offsets:[I

    #@f2
    .line 1443
    move-object/from16 v0, p0

    #@f4
    iput-object v10, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@f6
    .line 1445
    .end local v10    # "newArgumentNumbers":[I
    .end local v12    # "newFormats":[Ljava/text/Format;
    .end local v13    # "newLength":I
    .end local v14    # "newOffsets":[I
    :cond_3
    move-object/from16 v0, p0

    #@f8
    iget v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@fa
    .line 1446
    .local v15, "oldMaxOffset":I
    move/from16 v0, p2

    #@fc
    move-object/from16 v1, p0

    #@fe
    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    #@100
    .line 1447
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    #@104
    move-object/from16 v19, v0

    #@106
    const/16 v20, 0x0

    #@108
    aget-object v20, v17, v20

    #@10a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@10d
    move-result v20

    #@10e
    aput v20, v19, p2

    #@110
    .line 1448
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@114
    move-object/from16 v19, v0

    #@116
    aput v4, v19, p2

    #@118
    .line 1451
    const/4 v11, 0x0

    #@119
    .line 1452
    .local v11, "newFormat":Ljava/text/Format;
    const/16 v19, 0x2

    #@11b
    aget-object v19, v17, v19

    #@11d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@120
    move-result v19

    #@121
    if-eqz v19, :cond_4

    #@123
    .line 1453
    const/16 v19, 0x2

    #@125
    aget-object v19, v17, v19

    #@127
    sget-object v20, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    #@129
    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@12c
    move-result v18

    #@12d
    .line 1454
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    #@130
    .line 1520
    move-object/from16 v0, p0

    #@132
    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@134
    .line 1521
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@136
    new-instance v20, Ljava/lang/StringBuilder;

    #@138
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v21, "unknown format type: "

    #@13e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v20

    #@142
    .line 1522
    const/16 v21, 0x2

    #@144
    aget-object v21, v17, v21

    #@146
    .line 1521
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v20

    #@14a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v20

    #@14e
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@151
    throw v19

    #@152
    .line 1461
    :pswitch_0
    const/16 v19, 0x3

    #@154
    aget-object v19, v17, v19

    #@156
    sget-object v20, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@158
    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@15b
    move-result v19

    #@15c
    packed-switch v19, :pswitch_data_1

    #@15f
    .line 1476
    :try_start_1
    new-instance v11, Ljava/text/DecimalFormat;

    #@161
    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    #@163
    aget-object v19, v17, v19

    #@165
    .line 1477
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@169
    move-object/from16 v20, v0

    #@16b
    invoke-static/range {v20 .. v20}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@16e
    move-result-object v20

    #@16f
    .line 1476
    move-object/from16 v0, v19

    #@171
    move-object/from16 v1, v20

    #@173
    invoke-direct {v11, v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@176
    .line 1525
    .end local v18    # "type":I
    :cond_4
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@17a
    move-object/from16 v19, v0

    #@17c
    aput-object v11, v19, p2

    #@17e
    .line 1411
    return-void

    #@17f
    .line 1463
    .restart local v11    # "newFormat":Ljava/text/Format;
    .restart local v18    # "type":I
    :pswitch_2
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@183
    move-object/from16 v19, v0

    #@185
    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@188
    move-result-object v11

    #@189
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@18a
    .line 1466
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_3
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@18e
    move-object/from16 v19, v0

    #@190
    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@193
    move-result-object v11

    #@194
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@195
    .line 1469
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_4
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@199
    move-object/from16 v19, v0

    #@19b
    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@19e
    move-result-object v11

    #@19f
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@1a0
    .line 1472
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_5
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1a4
    move-object/from16 v19, v0

    #@1a6
    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@1a9
    move-result-object v11

    #@1aa
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@1ab
    .line 1478
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_1
    move-exception v6

    #@1ac
    .line 1479
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    #@1ae
    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@1b0
    .line 1480
    throw v6

    #@1b1
    .line 1488
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_6
    const/16 v19, 0x3

    #@1b3
    aget-object v19, v17, v19

    #@1b5
    sget-object v20, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@1b7
    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@1ba
    move-result v9

    #@1bb
    .line 1489
    .local v9, "mod":I
    if-ltz v9, :cond_6

    #@1bd
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@1bf
    move-object/from16 v0, v19

    #@1c1
    array-length v0, v0

    #@1c2
    move/from16 v19, v0

    #@1c4
    move/from16 v0, v19

    #@1c6
    if-ge v9, v0, :cond_6

    #@1c8
    .line 1490
    const/16 v19, 0x2

    #@1ca
    move/from16 v0, v18

    #@1cc
    move/from16 v1, v19

    #@1ce
    if-ne v0, v1, :cond_5

    #@1d0
    .line 1491
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@1d2
    aget v19, v19, v9

    #@1d4
    .line 1492
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1d8
    move-object/from16 v20, v0

    #@1da
    .line 1491
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@1dd
    move-result-object v11

    #@1de
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@1df
    .line 1494
    .local v11, "newFormat":Ljava/text/Format;
    :cond_5
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@1e1
    aget v19, v19, v9

    #@1e3
    .line 1495
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1e7
    move-object/from16 v20, v0

    #@1e9
    .line 1494
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@1ec
    move-result-object v11

    #@1ed
    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    #@1ee
    .line 1500
    .local v11, "newFormat":Ljava/text/Format;
    :cond_6
    :try_start_2
    new-instance v11, Ljava/text/SimpleDateFormat;

    #@1f0
    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    #@1f2
    aget-object v19, v17, v19

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1f8
    move-object/from16 v20, v0

    #@1fa
    move-object/from16 v0, v19

    #@1fc
    move-object/from16 v1, v20

    #@1fe
    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@201
    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_2

    #@203
    .line 1501
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_2
    move-exception v6

    #@204
    .line 1502
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    #@206
    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@208
    .line 1503
    throw v6

    #@209
    .line 1511
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "mod":I
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_7
    :try_start_3
    new-instance v11, Ljava/text/ChoiceFormat;

    #@20b
    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    #@20d
    aget-object v19, v17, v19

    #@20f
    move-object/from16 v0, v19

    #@211
    invoke-direct {v11, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@214
    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_2

    #@216
    .line 1512
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_3
    move-exception v5

    #@217
    .line 1513
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@219
    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@21b
    .line 1514
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@21d
    new-instance v20, Ljava/lang/StringBuilder;

    #@21f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@222
    const-string/jumbo v21, "Choice Pattern incorrect: "

    #@225
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v20

    #@229
    .line 1515
    const/16 v21, 0x3

    #@22b
    aget-object v21, v17, v21

    #@22d
    .line 1514
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v20

    #@231
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@234
    move-result-object v20

    #@235
    move-object/from16 v0, v19

    #@237
    move-object/from16 v1, v20

    #@239
    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23c
    throw v19

    #@23d
    .line 1454
    nop

    #@23e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@24c
    .line 1461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1578
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1579
    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@6
    const/4 v5, -0x1

    #@7
    if-lt v4, v5, :cond_3

    #@9
    .line 1580
    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@b
    array-length v4, v4

    #@c
    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@e
    if-le v4, v5, :cond_3

    #@10
    .line 1581
    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    #@12
    array-length v4, v4

    #@13
    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@15
    if-le v4, v5, :cond_3

    #@17
    .line 1582
    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@19
    array-length v4, v4

    #@1a
    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@1c
    if-le v4, v5, :cond_0

    #@1e
    const/4 v3, 0x1

    #@1f
    :cond_0
    move v1, v3

    #@20
    .line 1583
    .local v1, "isValid":Z
    :goto_0
    if-eqz v1, :cond_2

    #@22
    .line 1584
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@27
    move-result v3

    #@28
    add-int/lit8 v2, v3, 0x1

    #@2a
    .line 1585
    .local v2, "lastOffset":I
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@2c
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    #@2e
    .line 1586
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    #@30
    aget v3, v3, v0

    #@32
    if-ltz v3, :cond_1

    #@34
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    #@36
    aget v3, v3, v0

    #@38
    if-le v3, v2, :cond_4

    #@3a
    .line 1587
    :cond_1
    const/4 v1, 0x0

    #@3b
    .line 1594
    .end local v0    # "i":I
    .end local v1    # "isValid":Z
    .end local v2    # "lastOffset":I
    :cond_2
    if-nez v1, :cond_5

    #@3d
    .line 1595
    new-instance v3, Ljava/io/InvalidObjectException;

    #@3f
    const-string/jumbo v4, "Could not reconstruct MessageFormat from corrupt stream."

    #@42
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    :cond_3
    move v1, v3

    #@47
    .line 1579
    goto :goto_0

    #@48
    .line 1590
    .restart local v0    # "i":I
    .restart local v1    # "isValid":Z
    .restart local v2    # "lastOffset":I
    :cond_4
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    #@4a
    aget v2, v3, v0

    #@4c
    .line 1585
    add-int/lit8 v0, v0, -0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1577
    .end local v0    # "i":I
    .end local v1    # "isValid":Z
    .end local v2    # "lastOffset":I
    :cond_5
    return-void
.end method

.method private subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .param p4, "characterIterators"    # Ljava/util/List;

    #@0
    .prologue
    .line 1234
    const/4 v4, 0x0

    #@1
    .line 1235
    .local v4, "lastOffset":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@4
    move-result v3

    #@5
    .line 1236
    .local v3, "last":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@8
    if-gt v2, v8, :cond_f

    #@a
    .line 1237
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@c
    iget-object v9, p0, Ljava/text/MessageFormat;->offsets:[I

    #@e
    aget v9, v9, v2

    #@10
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 1238
    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    #@19
    aget v4, v8, v2

    #@1b
    .line 1239
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1d
    aget v1, v8, v2

    #@1f
    .line 1240
    .local v1, "argumentNumber":I
    if-eqz p1, :cond_0

    #@21
    array-length v8, p1

    #@22
    if-lt v1, v8, :cond_2

    #@24
    .line 1241
    :cond_0
    const/16 v8, 0x7b

    #@26
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v8

    #@2e
    const/16 v9, 0x7d

    #@30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 1236
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1249
    :cond_2
    aget-object v5, p1, v1

    #@38
    .line 1250
    .local v5, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    #@39
    .line 1251
    .local v0, "arg":Ljava/lang/String;
    const/4 v6, 0x0

    #@3a
    .line 1252
    .local v6, "subFormatter":Ljava/text/Format;
    if-nez v5, :cond_7

    #@3c
    .line 1253
    const-string/jumbo v0, "null"

    #@3f
    .line 1283
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_3
    :goto_2
    if-eqz p4, :cond_c

    #@41
    .line 1286
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@44
    move-result v8

    #@45
    if-eq v3, v8, :cond_4

    #@47
    .line 1288
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    #@4e
    move-result-object v8

    #@4f
    .line 1287
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 1290
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@55
    move-result v3

    #@56
    .line 1292
    :cond_4
    if-eqz v6, :cond_6

    #@58
    .line 1294
    invoke-virtual {v6, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@5b
    move-result-object v7

    #@5c
    .line 1296
    .local v7, "subIterator":Ljava/text/AttributedCharacterIterator;
    invoke-direct {p0, p2, v7}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    #@5f
    .line 1297
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@62
    move-result v8

    #@63
    if-eq v3, v8, :cond_5

    #@65
    .line 1300
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@67
    .line 1301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v9

    #@6b
    .line 1299
    invoke-virtual {p0, v7, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@6e
    move-result-object v8

    #@6f
    .line 1298
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@72
    .line 1302
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@75
    move-result v3

    #@76
    .line 1304
    :cond_5
    const/4 v0, 0x0

    #@77
    .line 1306
    .end local v7    # "subIterator":Ljava/text/AttributedCharacterIterator;
    :cond_6
    if-eqz v0, :cond_1

    #@79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7c
    move-result v8

    #@7d
    if-lez v8, :cond_1

    #@7f
    .line 1307
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 1310
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@84
    .line 1311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v9

    #@88
    .line 1309
    invoke-virtual {p0, v0, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@8b
    move-result-object v8

    #@8c
    .line 1308
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8f
    .line 1312
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@92
    move-result v3

    #@93
    goto :goto_1

    #@94
    .line 1254
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v6    # "subFormatter":Ljava/text/Format;
    :cond_7
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@96
    aget-object v8, v8, v2

    #@98
    if-eqz v8, :cond_8

    #@9a
    .line 1255
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@9c
    aget-object v6, v8, v2

    #@9e
    .line 1256
    .local v6, "subFormatter":Ljava/text/Format;
    instance-of v8, v6, Ljava/text/ChoiceFormat;

    #@a0
    if-eqz v8, :cond_3

    #@a2
    .line 1257
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@a4
    aget-object v8, v8, v2

    #@a6
    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    .line 1258
    .local v0, "arg":Ljava/lang/String;
    const/16 v8, 0x7b

    #@ac
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    #@af
    move-result v8

    #@b0
    if-ltz v8, :cond_3

    #@b2
    .line 1259
    new-instance v6, Ljava/text/MessageFormat;

    #@b4
    .end local v6    # "subFormatter":Ljava/text/Format;
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@b6
    invoke-direct {v6, v0, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@b9
    .line 1260
    .restart local v6    # "subFormatter":Ljava/text/Format;
    move-object v5, p1

    #@ba
    .line 1261
    const/4 v0, 0x0

    #@bb
    .local v0, "arg":Ljava/lang/String;
    goto :goto_2

    #@bc
    .line 1264
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_8
    instance-of v8, v5, Ljava/lang/Number;

    #@be
    if-eqz v8, :cond_9

    #@c0
    .line 1266
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@c2
    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@c5
    move-result-object v6

    #@c6
    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_2

    #@c8
    .line 1267
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_9
    instance-of v8, v5, Ljava/util/Date;

    #@ca
    if-eqz v8, :cond_a

    #@cc
    .line 1270
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@ce
    const/4 v9, 0x3

    #@cf
    const/4 v10, 0x3

    #@d0
    .line 1269
    invoke-static {v9, v10, v8}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    #@d3
    move-result-object v6

    #@d4
    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_2

    #@d6
    .line 1271
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_a
    instance-of v8, v5, Ljava/lang/String;

    #@d8
    if-eqz v8, :cond_b

    #@da
    move-object v0, v5

    #@db
    .line 1272
    check-cast v0, Ljava/lang/String;

    #@dd
    .local v0, "arg":Ljava/lang/String;
    goto/16 :goto_2

    #@df
    .line 1275
    .local v0, "arg":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    .line 1276
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_3

    #@e5
    const-string/jumbo v0, "null"

    #@e8
    goto/16 :goto_2

    #@ea
    .line 1316
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_c
    if-eqz v6, :cond_d

    #@ec
    .line 1317
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@ef
    move-result-object v0

    #@f0
    .line 1319
    :cond_d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@f3
    move-result v3

    #@f4
    .line 1320
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f7
    .line 1321
    if-nez v2, :cond_e

    #@f9
    if-eqz p3, :cond_e

    #@fb
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@fd
    .line 1322
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@100
    move-result-object v9

    #@101
    .line 1321
    invoke-virtual {v8, v9}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v8

    #@105
    if-eqz v8, :cond_e

    #@107
    .line 1323
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@10a
    .line 1324
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@10d
    move-result v8

    #@10e
    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@111
    .line 1326
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@114
    move-result v3

    #@115
    goto/16 :goto_1

    #@117
    .line 1330
    .end local v1    # "argumentNumber":I
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_f
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@119
    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@11b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@11e
    move-result v9

    #@11f
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@122
    move-result-object v8

    #@123
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@126
    .line 1331
    if-eqz p4, :cond_10

    #@128
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@12b
    move-result v8

    #@12c
    if-eq v3, v8, :cond_10

    #@12e
    .line 1333
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    .line 1332
    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    #@135
    move-result-object v8

    #@136
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@139
    .line 1335
    :cond_10
    return-object p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 14
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x27

    #@2
    const/4 v12, 0x2

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v9, 0x0

    #@6
    .line 427
    const/4 v7, 0x4

    #@7
    new-array v6, v7, [Ljava/lang/StringBuilder;

    #@9
    .line 430
    .local v6, "segments":[Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    aput-object v7, v6, v9

    #@10
    .line 432
    const/4 v5, 0x0

    #@11
    .line 433
    .local v5, "part":I
    const/4 v2, 0x0

    #@12
    .line 434
    .local v2, "formatNumber":I
    const/4 v4, 0x0

    #@13
    .line 435
    .local v4, "inQuote":Z
    const/4 v0, 0x0

    #@14
    .line 436
    .local v0, "braceStack":I
    const/4 v7, -0x1

    #@15
    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@17
    .line 437
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v7

    #@1c
    if-ge v3, v7, :cond_b

    #@1e
    .line 438
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v1

    #@22
    .line 439
    .local v1, "ch":C
    if-nez v5, :cond_6

    #@24
    .line 440
    if-ne v1, v13, :cond_3

    #@26
    .line 441
    add-int/lit8 v7, v3, 0x1

    #@28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v8

    #@2c
    if-ge v7, v8, :cond_1

    #@2e
    .line 442
    add-int/lit8 v7, v3, 0x1

    #@30
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v7

    #@34
    if-ne v7, v13, :cond_1

    #@36
    .line 443
    aget-object v7, v6, v5

    #@38
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 444
    add-int/lit8 v3, v3, 0x1

    #@3d
    .line 437
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 446
    :cond_1
    if-eqz v4, :cond_2

    #@42
    const/4 v4, 0x0

    #@43
    goto :goto_1

    #@44
    :cond_2
    const/4 v4, 0x1

    #@45
    goto :goto_1

    #@46
    .line 448
    :cond_3
    const/16 v7, 0x7b

    #@48
    if-ne v1, v7, :cond_4

    #@4a
    if-eqz v4, :cond_5

    #@4c
    .line 454
    :cond_4
    aget-object v7, v6, v5

    #@4e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    goto :goto_1

    #@52
    .line 449
    :cond_5
    const/4 v5, 0x1

    #@53
    .line 450
    aget-object v7, v6, v11

    #@55
    if-nez v7, :cond_0

    #@57
    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    aput-object v7, v6, v11

    #@5e
    goto :goto_1

    #@5f
    .line 457
    :cond_6
    if-eqz v4, :cond_7

    #@61
    .line 458
    aget-object v7, v6, v5

    #@63
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    .line 459
    if-ne v1, v13, :cond_0

    #@68
    .line 460
    const/4 v4, 0x0

    #@69
    goto :goto_1

    #@6a
    .line 463
    :cond_7
    sparse-switch v1, :sswitch_data_0

    #@6d
    .line 501
    :goto_2
    aget-object v7, v6, v5

    #@6f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    goto :goto_1

    #@73
    .line 465
    :sswitch_0
    const/4 v7, 0x3

    #@74
    if-ge v5, v7, :cond_8

    #@76
    .line 466
    add-int/lit8 v5, v5, 0x1

    #@78
    aget-object v7, v6, v5

    #@7a
    if-nez v7, :cond_0

    #@7c
    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    aput-object v7, v6, v5

    #@83
    goto :goto_1

    #@84
    .line 470
    :cond_8
    aget-object v7, v6, v5

    #@86
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    goto :goto_1

    #@8a
    .line 474
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    #@8c
    .line 475
    aget-object v7, v6, v5

    #@8e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    goto :goto_1

    #@92
    .line 478
    :sswitch_2
    if-nez v0, :cond_9

    #@94
    .line 479
    const/4 v5, 0x0

    #@95
    .line 480
    invoke-direct {p0, v3, v2, v6}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    #@98
    .line 481
    add-int/lit8 v2, v2, 0x1

    #@9a
    .line 483
    aput-object v10, v6, v11

    #@9c
    .line 484
    aput-object v10, v6, v12

    #@9e
    .line 485
    const/4 v7, 0x3

    #@9f
    aput-object v10, v6, v7

    #@a1
    goto :goto_1

    #@a2
    .line 487
    :cond_9
    add-int/lit8 v0, v0, -0x1

    #@a4
    .line 488
    aget-object v7, v6, v5

    #@a6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a9
    goto :goto_1

    #@aa
    .line 493
    :sswitch_3
    if-ne v5, v12, :cond_a

    #@ac
    aget-object v7, v6, v12

    #@ae
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@b1
    move-result v7

    #@b2
    if-lez v7, :cond_0

    #@b4
    .line 494
    :cond_a
    aget-object v7, v6, v5

    #@b6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b9
    goto :goto_1

    #@ba
    .line 498
    :sswitch_4
    const/4 v4, 0x1

    #@bb
    goto :goto_2

    #@bc
    .line 507
    .end local v1    # "ch":C
    :cond_b
    if-nez v0, :cond_c

    #@be
    if-eqz v5, :cond_c

    #@c0
    .line 508
    const/4 v7, -0x1

    #@c1
    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@c3
    .line 509
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@c5
    const-string/jumbo v8, "Unmatched braces in the pattern."

    #@c8
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v7

    #@cc
    .line 511
    :cond_c
    aget-object v7, v6, v9

    #@ce
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    iput-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@d4
    .line 426
    return-void

    #@d5
    .line 463
    nop

    #@d6
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x27 -> :sswitch_4
        0x2c -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 1078
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/MessageFormat;

    #@6
    .line 1081
    .local v1, "other":Ljava/text/MessageFormat;
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Ljava/text/Format;

    #@e
    iput-object v2, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@10
    .line 1082
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@13
    array-length v2, v2

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 1083
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@18
    aget-object v2, v2, v0

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 1084
    iget-object v3, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@1e
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@20
    aget-object v2, v2, v0

    #@22
    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/text/Format;

    #@28
    aput-object v2, v3, v0

    #@2a
    .line 1082
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1087
    :cond_1
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    #@2f
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, [I

    #@35
    iput-object v2, v1, Ljava/text/MessageFormat;->offsets:[I

    #@37
    .line 1088
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, [I

    #@3f
    iput-object v2, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@41
    .line 1090
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1097
    if-ne p0, p1, :cond_0

    #@3
    .line 1098
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1099
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Ljava/text/MessageFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 1100
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1101
    check-cast v0, Ljava/text/MessageFormat;

    #@15
    .line 1102
    .local v0, "other":Ljava/text/MessageFormat;
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@17
    iget v3, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@19
    if-ne v2, v3, :cond_5

    #@1b
    .line 1103
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@1d
    iget-object v3, v0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 1102
    if-eqz v2, :cond_5

    #@25
    .line 1104
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@27
    if-eqz v2, :cond_3

    #@29
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2b
    iget-object v3, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2d
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_4

    #@33
    .line 1105
    :cond_3
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@35
    if-nez v2, :cond_5

    #@37
    iget-object v2, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@39
    if-nez v2, :cond_5

    #@3b
    .line 1106
    :cond_4
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    #@3d
    iget-object v3, v0, Ljava/text/MessageFormat;->offsets:[I

    #@3f
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@42
    move-result v2

    #@43
    .line 1102
    if-eqz v2, :cond_5

    #@45
    .line 1107
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@47
    iget-object v3, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@49
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@4c
    move-result v2

    #@4d
    .line 1102
    if-eqz v2, :cond_5

    #@4f
    .line 1108
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@51
    iget-object v2, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@53
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    .line 1102
    :cond_5
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 864
    check-cast p1, [Ljava/lang/Object;

    #@2
    .end local p1    # "arguments":Ljava/lang/Object;
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 823
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4
    .param p1, "arguments"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 903
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 904
    .local v1, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 906
    .local v0, "iterators":Ljava/util/ArrayList;
    if-nez p1, :cond_0

    #@d
    .line 907
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    .line 908
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    #@12
    .line 907
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 910
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    #@18
    .end local p1    # "arguments":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v2, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@1b
    .line 911
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 912
    const-string/jumbo v2, ""

    #@24
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 916
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v2

    #@2d
    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    #@2f
    .line 915
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    #@35
    .line 914
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    #@38
    move-result-object v2

    #@39
    return-object v2
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 750
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    new-array v0, v1, [Ljava/text/Format;

    #@7
    .line 751
    .local v0, "resultArray":[Ljava/text/Format;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@9
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 752
    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 5

    #@0
    .prologue
    .line 720
    const/4 v1, -0x1

    #@1
    .line 721
    .local v1, "maximumArgumentNumber":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@4
    if-gt v0, v3, :cond_1

    #@6
    .line 722
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@8
    aget v3, v3, v0

    #@a
    if-le v3, v1, :cond_0

    #@c
    .line 723
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@e
    aget v1, v3, v0

    #@10
    .line 721
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 726
    :cond_1
    add-int/lit8 v3, v1, 0x1

    #@15
    new-array v2, v3, [Ljava/text/Format;

    #@17
    .line 727
    .local v2, "resultArray":[Ljava/text/Format;
    const/4 v0, 0x0

    #@18
    :goto_1
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@1a
    if-gt v0, v3, :cond_2

    #@1c
    .line 728
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1e
    aget v3, v3, v0

    #@20
    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@22
    aget-object v4, v4, v0

    #@24
    aput-object v4, v2, v3

    #@26
    .line 727
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1

    #@29
    .line 730
    :cond_2
    return-object v2
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1036
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 1037
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1038
    .local v1, "result":[Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1039
    new-instance v2, Ljava/text/ParseException;

    #@10
    const-string/jumbo v3, "MessageFormat parse error!"

    #@13
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@15
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@18
    throw v2

    #@19
    .line 1041
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 13
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 947
    if-nez p1, :cond_0

    #@2
    .line 948
    const/4 v11, 0x0

    #@3
    new-array v0, v11, [Ljava/lang/Object;

    #@5
    .line 949
    .local v0, "empty":[Ljava/lang/Object;
    return-object v0

    #@6
    .line 952
    .end local v0    # "empty":[Ljava/lang/Object;
    :cond_0
    const/4 v3, -0x1

    #@7
    .line 953
    .local v3, "maximumArgumentNumber":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@a
    if-gt v1, v11, :cond_2

    #@c
    .line 954
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@e
    aget v11, v11, v1

    #@10
    if-le v11, v3, :cond_1

    #@12
    .line 955
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@14
    aget v3, v11, v1

    #@16
    .line 953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 958
    :cond_2
    add-int/lit8 v11, v3, 0x1

    #@1b
    new-array v6, v11, [Ljava/lang/Object;

    #@1d
    .line 960
    .local v6, "resultArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    #@1e
    .line 961
    .local v5, "patternOffset":I
    iget v7, p2, Ljava/text/ParsePosition;->index:I

    #@20
    .line 962
    .local v7, "sourceOffset":I
    new-instance v10, Ljava/text/ParsePosition;

    #@22
    const/4 v11, 0x0

    #@23
    invoke-direct {v10, v11}, Ljava/text/ParsePosition;-><init>(I)V

    #@26
    .line 963
    .local v10, "tempStatus":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    #@27
    :goto_1
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@29
    if-gt v1, v11, :cond_b

    #@2b
    .line 965
    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    #@2d
    aget v11, v11, v1

    #@2f
    sub-int v2, v11, v5

    #@31
    .line 966
    .local v2, "len":I
    if-eqz v2, :cond_3

    #@33
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@35
    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@38
    move-result v11

    #@39
    if-eqz v11, :cond_4

    #@3b
    .line 968
    :cond_3
    add-int/2addr v7, v2

    #@3c
    .line 969
    add-int/2addr v5, v2

    #@3d
    .line 976
    iget-object v11, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@3f
    aget-object v11, v11, v1

    #@41
    if-nez v11, :cond_9

    #@43
    .line 980
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@45
    if-eq v1, v11, :cond_5

    #@47
    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    #@49
    add-int/lit8 v12, v1, 0x1

    #@4b
    aget v9, v11, v12

    #@4d
    .line 983
    .local v9, "tempLength":I
    :goto_2
    if-lt v5, v9, :cond_6

    #@4f
    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v4

    #@53
    .line 990
    .local v4, "next":I
    :goto_3
    if-gez v4, :cond_7

    #@55
    .line 991
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    #@57
    .line 992
    const/4 v11, 0x0

    #@58
    return-object v11

    #@59
    .line 971
    .end local v4    # "next":I
    .end local v9    # "tempLength":I
    :cond_4
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    #@5b
    .line 972
    const/4 v11, 0x0

    #@5c
    return-object v11

    #@5d
    .line 980
    :cond_5
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@5f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@62
    move-result v9

    #@63
    goto :goto_2

    #@64
    .line 986
    .restart local v9    # "tempLength":I
    :cond_6
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@66
    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@6d
    move-result v4

    #@6e
    .restart local v4    # "next":I
    goto :goto_3

    #@6f
    .line 994
    :cond_7
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    .line 995
    .local v8, "strValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v12, "{"

    #@7b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    iget-object v12, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@81
    aget v12, v12, v1

    #@83
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v11

    #@87
    const-string/jumbo v12, "}"

    #@8a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v11

    #@8e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v11

    #@92
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v11

    #@96
    if-nez v11, :cond_8

    #@98
    .line 996
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@9a
    aget v11, v11, v1

    #@9c
    .line 997
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9f
    move-result-object v12

    #@a0
    .line 996
    aput-object v12, v6, v11

    #@a2
    .line 998
    :cond_8
    move v7, v4

    #@a3
    .line 963
    .end local v4    # "next":I
    .end local v8    # "strValue":Ljava/lang/String;
    .end local v9    # "tempLength":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto :goto_1

    #@a6
    .line 1001
    :cond_9
    iput v7, v10, Ljava/text/ParsePosition;->index:I

    #@a8
    .line 1002
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@aa
    aget v11, v11, v1

    #@ac
    .line 1003
    iget-object v12, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@ae
    aget-object v12, v12, v1

    #@b0
    invoke-virtual {v12, p1, v10}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@b3
    move-result-object v12

    #@b4
    .line 1002
    aput-object v12, v6, v11

    #@b6
    .line 1004
    iget v11, v10, Ljava/text/ParsePosition;->index:I

    #@b8
    if-ne v11, v7, :cond_a

    #@ba
    .line 1005
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    #@bc
    .line 1006
    const/4 v11, 0x0

    #@bd
    return-object v11

    #@be
    .line 1008
    :cond_a
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    #@c0
    goto :goto_4

    #@c1
    .line 1011
    .end local v2    # "len":I
    :cond_b
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@c3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@c6
    move-result v11

    #@c7
    sub-int v2, v11, v5

    #@c9
    .line 1012
    .restart local v2    # "len":I
    if-eqz v2, :cond_c

    #@cb
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@cd
    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@d0
    move-result v11

    #@d1
    if-eqz v11, :cond_d

    #@d3
    .line 1014
    :cond_c
    add-int v11, v7, v2

    #@d5
    iput v11, p2, Ljava/text/ParsePosition;->index:I

    #@d7
    .line 1019
    return-object v6

    #@d8
    .line 1016
    :cond_d
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    #@da
    .line 1017
    const/4 v11, 0x0

    #@db
    return-object v11
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1069
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    #@0
    .prologue
    .line 693
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 694
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@b
    throw v0

    #@c
    .line 696
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@e
    aput-object p2, v0, p1

    #@10
    .line 692
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    #@0
    .prologue
    .line 668
    const/4 v0, 0x0

    #@1
    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@3
    if-gt v0, v1, :cond_1

    #@5
    .line 669
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 670
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@d
    aput-object p2, v1, v0

    #@f
    .line 668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 667
    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4
    .param p1, "newFormats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 640
    array-length v1, p1

    #@1
    .line 641
    .local v1, "runsToCopy":I
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    if-le v1, v2, :cond_0

    #@7
    .line 642
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@9
    add-int/lit8 v1, v2, 0x1

    #@b
    .line 644
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@e
    .line 645
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@10
    aget-object v3, p1, v0

    #@12
    aput-object v3, v2, v0

    #@14
    .line 644
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 639
    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4
    .param p1, "newFormats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 609
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@3
    if-gt v0, v2, :cond_1

    #@5
    .line 610
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@7
    aget v1, v2, v0

    #@9
    .line 611
    .local v1, "j":I
    array-length v2, p1

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 612
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@e
    aget-object v3, p1, v1

    #@10
    aput-object v3, v2, v0

    #@12
    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 608
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 403
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2
    .line 402
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 524
    const/4 v4, 0x0

    #@1
    .line 525
    .local v4, "lastOffset":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 526
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@9
    if-gt v2, v6, :cond_c

    #@b
    .line 527
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@d
    iget-object v7, p0, Ljava/text/MessageFormat;->offsets:[I

    #@f
    aget v7, v7, v2

    #@11
    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    #@14
    .line 528
    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    #@16
    aget v4, v6, v2

    #@18
    .line 529
    const/16 v6, 0x7b

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    iget-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@20
    aget v7, v7, v2

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    .line 530
    iget-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@27
    aget-object v1, v6, v2

    #@29
    .line 531
    .local v1, "fmt":Ljava/text/Format;
    if-nez v1, :cond_1

    #@2b
    .line 579
    .end local v1    # "fmt":Ljava/text/Format;
    :cond_0
    :goto_1
    const/16 v6, 0x7d

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 526
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 533
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_1
    instance-of v6, v1, Ljava/text/NumberFormat;

    #@35
    if-eqz v6, :cond_7

    #@37
    .line 534
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@39
    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 535
    const-string/jumbo v6, ",number"

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_1

    #@4a
    .line 536
    :cond_2
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@4c
    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_3

    #@56
    .line 537
    const-string/jumbo v6, ",number,currency"

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_1

    #@5d
    .line 538
    :cond_3
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@5f
    invoke-static {v6}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_4

    #@69
    .line 539
    const-string/jumbo v6, ",number,percent"

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    goto :goto_1

    #@70
    .line 540
    :cond_4
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@72
    invoke-static {v6}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_5

    #@7c
    .line 541
    const-string/jumbo v6, ",number,integer"

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    goto :goto_1

    #@83
    .line 543
    :cond_5
    instance-of v6, v1, Ljava/text/DecimalFormat;

    #@85
    if-eqz v6, :cond_6

    #@87
    .line 544
    const-string/jumbo v6, ",number,"

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    check-cast v1, Ljava/text/DecimalFormat;

    #@90
    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    goto :goto_1

    #@98
    .line 545
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_6
    instance-of v6, v1, Ljava/text/ChoiceFormat;

    #@9a
    if-eqz v6, :cond_0

    #@9c
    .line 546
    const-string/jumbo v6, ",choice,"

    #@9f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    check-cast v1, Ljava/text/ChoiceFormat;

    #@a5
    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto/16 :goto_1

    #@ae
    .line 551
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_7
    instance-of v6, v1, Ljava/text/DateFormat;

    #@b0
    if-eqz v6, :cond_0

    #@b2
    .line 553
    const/4 v3, 0x0

    #@b3
    .local v3, "index":I
    :goto_2
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@b5
    array-length v6, v6

    #@b6
    if-ge v3, v6, :cond_8

    #@b8
    .line 554
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@ba
    aget v6, v6, v3

    #@bc
    .line 555
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@be
    .line 554
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@c1
    move-result-object v0

    #@c2
    .line 556
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v6

    #@c6
    if-eqz v6, :cond_9

    #@c8
    .line 557
    const-string/jumbo v6, ",date"

    #@cb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    .line 567
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_8
    :goto_3
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@d0
    array-length v6, v6

    #@d1
    if-lt v3, v6, :cond_b

    #@d3
    .line 568
    instance-of v6, v1, Ljava/text/SimpleDateFormat;

    #@d5
    if-eqz v6, :cond_0

    #@d7
    .line 569
    const-string/jumbo v6, ",date,"

    #@da
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v6

    #@de
    check-cast v1, Ljava/text/SimpleDateFormat;

    #@e0
    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    goto/16 :goto_1

    #@e9
    .line 560
    .restart local v0    # "df":Ljava/text/DateFormat;
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_9
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    #@eb
    aget v6, v6, v3

    #@ed
    .line 561
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@ef
    .line 560
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@f2
    move-result-object v0

    #@f3
    .line 562
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v6

    #@f7
    if-eqz v6, :cond_a

    #@f9
    .line 563
    const-string/jumbo v6, ",time"

    #@fc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    goto :goto_3

    #@100
    .line 553
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@102
    goto :goto_2

    #@103
    .line 573
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_b
    if-eqz v3, :cond_0

    #@105
    .line 574
    const/16 v6, 0x2c

    #@107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    sget-object v7, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    #@10d
    aget-object v7, v7, v3

    #@10f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    goto/16 :goto_1

    #@114
    .line 581
    .end local v1    # "fmt":Ljava/text/Format;
    .end local v3    # "index":I
    :cond_c
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@116
    iget-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    #@118
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@11b
    move-result v7

    #@11c
    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    #@11f
    .line 582
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v6

    #@123
    return-object v6
.end method
