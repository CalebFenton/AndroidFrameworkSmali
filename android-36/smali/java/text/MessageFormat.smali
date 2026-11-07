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
.field private static final greylist-max-o DATE_TIME_MODIFIERS:[I

.field private static final greylist-max-o DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o INITIAL_FORMATS:I = 0xa

.field private static final greylist-max-o MODIFIER_CURRENCY:I = 0x1

.field private static final greylist-max-o MODIFIER_DEFAULT:I = 0x0

.field private static final greylist-max-o MODIFIER_FULL:I = 0x4

.field private static final greylist-max-o MODIFIER_INTEGER:I = 0x3

.field private static final greylist-max-o MODIFIER_LONG:I = 0x3

.field private static final greylist-max-o MODIFIER_MEDIUM:I = 0x2

.field private static final greylist-max-o MODIFIER_PERCENT:I = 0x2

.field private static final greylist-max-o MODIFIER_SHORT:I = 0x1

.field private static final greylist-max-o NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o SEG_INDEX:I = 0x1

.field private static final greylist-max-o SEG_MODIFIER:I = 0x3

.field private static final greylist-max-o SEG_RAW:I = 0x0

.field private static final greylist-max-o SEG_TYPE:I = 0x2

.field private static final greylist-max-o TYPE_CHOICE:I = 0x4

.field private static final greylist-max-o TYPE_DATE:I = 0x2

.field private static final greylist-max-o TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o TYPE_NULL:I = 0x0

.field private static final greylist-max-o TYPE_NUMBER:I = 0x1

.field private static final greylist-max-o TYPE_TIME:I = 0x3

.field private static final whitelist serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private greylist-max-o argumentNumbers:[I

.field private greylist-max-o formats:[Ljava/text/Format;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o maxOffset:I

.field private greylist-max-o offsets:[I

.field private greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 1396
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v4, "number"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "date"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "time"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    const-string v4, "choice"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    sput-object v1, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 1410
    new-array v1, v8, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v4, "currency"

    aput-object v4, v1, v5

    const-string v4, "percent"

    aput-object v4, v1, v6

    const-string v4, "integer"

    aput-object v4, v1, v7

    sput-object v1, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1423
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "short"

    aput-object v1, v0, v5

    const-string v1, "medium"

    aput-object v1, v0, v6

    const-string v1, "long"

    aput-object v1, v0, v7

    const-string v1, "full"

    aput-object v1, v0, v8

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1432
    filled-new-array {v6, v7, v6, v5, v2}, [I

    move-result-object v0

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 370
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1222
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/text/Format;

    iput-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1229
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1237
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1246
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 371
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 372
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 390
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1222
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/text/Format;

    iput-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1229
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1237
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1246
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 391
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 392
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .line 1373
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    .line 1376
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1377
    :goto_10
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    move v2, v0

    .local v2, "aChar":C
    if-eq v0, v1, :cond_1b

    .line 1378
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1381
    .end local v2    # "aChar":C
    :cond_1b
    return-void
.end method

.method private static final greylist-max-o copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # Ljava/lang/StringBuilder;

    .line 1577
    const/4 v0, 0x0

    .line 1579
    .local v0, "quoted":Z
    move v1, p1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x27

    if-ge v1, p2, :cond_2c

    .line 1580
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1581
    .local v3, "ch":C
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_18

    .line 1582
    if-nez v0, :cond_14

    .line 1583
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1584
    const/4 v0, 0x1

    .line 1586
    :cond_14
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1587
    :cond_18
    if-ne v3, v2, :cond_20

    .line 1588
    const-string v2, "\'\'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1590
    :cond_20
    if-eqz v0, :cond_26

    .line 1591
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1592
    const/4 v0, 0x0

    .line 1594
    :cond_26
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1579
    .end local v3    # "ch":C
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1597
    .end local v1    # "i":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 1598
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1600
    :cond_31
    return-void
.end method

.method private static final greylist-max-o findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .line 1559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 1560
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1561
    return v0

    .line 1559
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1565
    .end local v0    # "i":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "ls":Ljava/lang/String;
    if-eq v0, p0, :cond_2c

    .line 1567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 1568
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1569
    return v1

    .line 1567
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1572
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method public static varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 860
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "temp":Ljava/text/MessageFormat;
    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o makeFormat(II[Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "offsetNumber"    # I
    .param p3, "textSegments"    # [Ljava/lang/StringBuilder;

    .line 1443
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    .line 1444
    .local v0, "segments":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p3

    if-ge v1, v2, :cond_17

    .line 1445
    aget-object v2, p3, v1

    .line 1446
    .local v2, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_10
    const-string v3, ""

    :goto_12
    aput-object v3, v0, v1

    .line 1444
    .end local v2    # "oneseg":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1452
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x1

    :try_start_18
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1e} :catch_14c

    .line 1456
    .local v2, "argumentNumber":I
    nop

    .line 1457
    if-ltz v2, :cond_133

    .line 1463
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt p2, v3, :cond_50

    .line 1464
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    mul-int/2addr v3, v4

    .line 1465
    .local v3, "newLength":I
    new-array v6, v3, [Ljava/text/Format;

    .line 1466
    .local v6, "newFormats":[Ljava/text/Format;
    new-array v7, v3, [I

    .line 1467
    .local v7, "newOffsets":[I
    new-array v8, v3, [I

    .line 1468
    .local v8, "newArgumentNumbers":[I
    iget-object v9, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v9, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    iget-object v9, p0, Ljava/text/MessageFormat;->offsets:[I

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v9, v5, v7, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1470
    iget-object v9, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v9, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iput-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1472
    iput-object v7, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1473
    iput-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1475
    .end local v3    # "newLength":I
    .end local v6    # "newFormats":[Ljava/text/Format;
    .end local v7    # "newOffsets":[I
    .end local v8    # "newArgumentNumbers":[I
    :cond_50
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1476
    .local v1, "oldMaxOffset":I
    iput p2, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1477
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v3, p2

    .line 1478
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aput v2, v3, p2

    .line 1481
    const/4 v3, 0x0

    .line 1482
    .local v3, "newFormat":Ljava/text/Format;
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 1483
    aget-object v5, v0, v4

    sget-object v6, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1484
    .local v5, "type":I
    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_168

    .line 1550
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1551
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown format type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1541
    :pswitch_94
    :try_start_94
    new-instance v4, Ljava/text/ChoiceFormat;

    aget-object v7, v0, v6

    invoke-direct {v4, v7}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9b} :catch_9e

    move-object v3, v4

    .line 1546
    goto/16 :goto_12e

    .line 1542
    :catch_9e
    move-exception v4

    .line 1543
    .local v4, "e":Ljava/lang/Exception;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1544
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choice Pattern incorrect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v6, v0, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1518
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_bc
    aget-object v7, v0, v6

    sget-object v8, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1519
    .local v7, "mod":I
    if-ltz v7, :cond_e3

    sget-object v8, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_e3

    .line 1520
    if-ne v5, v4, :cond_d8

    .line 1521
    sget-object v4, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v4, v4, v7

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_12e

    .line 1524
    :cond_d8
    sget-object v4, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v4, v4, v7

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v6}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_12e

    .line 1530
    :cond_e3
    :try_start_e3
    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v6, v0, v6

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v4, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_ec} :catch_ee

    move-object v3, v4

    .line 1534
    goto :goto_12e

    .line 1531
    :catch_ee
    move-exception v4

    .line 1532
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1533
    throw v4

    .line 1491
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "mod":I
    :pswitch_f2
    aget-object v4, v0, v6

    sget-object v7, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v7}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_176

    .line 1506
    :try_start_fd
    new-instance v4, Ljava/text/DecimalFormat;
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_ff} :catch_129

    goto :goto_11c

    .line 1502
    :pswitch_100
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1503
    goto :goto_12e

    .line 1499
    :pswitch_107
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1500
    goto :goto_12e

    .line 1496
    :pswitch_10e
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1497
    goto :goto_12e

    .line 1493
    :pswitch_115
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1494
    goto :goto_12e

    .line 1506
    :goto_11c
    :try_start_11c
    aget-object v6, v0, v6

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1507
    invoke-static {v7}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_127
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11c .. :try_end_127} :catch_129

    move-object v3, v4

    .line 1511
    goto :goto_12e

    .line 1508
    :catch_129
    move-exception v4

    .line 1509
    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1510
    throw v4

    .line 1488
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_12d
    nop

    .line 1555
    .end local v5    # "type":I
    :cond_12e
    :goto_12e
    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v3, v4, p2

    .line 1556
    return-void

    .line 1458
    .end local v1    # "oldMaxOffset":I
    .end local v3    # "newFormat":Ljava/text/Format;
    :cond_133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative argument number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    .end local v2    # "argumentNumber":I
    :catch_14c
    move-exception v2

    .line 1454
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t parse argument number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_12d
        :pswitch_f2
        :pswitch_bc
        :pswitch_bc
        :pswitch_94
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_115
        :pswitch_10e
        :pswitch_107
        :pswitch_100
    .end packed-switch
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1609
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1610
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v0, v0

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v0, v1, :cond_20

    iget-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    array-length v0, v0

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v0, v1, :cond_20

    iget-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    array-length v0, v0

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v0, v1, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1614
    .local v0, "isValid":Z
    :goto_21
    if-eqz v0, :cond_44

    .line 1615
    iget-object v1, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 1616
    .local v1, "lastOffset":I
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    .local v2, "i":I
    :goto_2c
    if-ltz v2, :cond_44

    .line 1617
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v2

    if-ltz v3, :cond_42

    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v2

    if-le v3, v1, :cond_3b

    goto :goto_42

    .line 1621
    :cond_3b
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v1, v3, v2

    .line 1616
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 1618
    :cond_42
    :goto_42
    const/4 v0, 0x0

    .line 1619
    nop

    .line 1625
    .end local v1    # "lastOffset":I
    .end local v2    # "i":I
    :cond_44
    if-eqz v0, :cond_47

    .line 1628
    return-void

    .line 1626
    :cond_47
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 15
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/AttributedCharacterIterator;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1264
    .local p4, "characterIterators":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedCharacterIterator;>;"
    const/4 v0, 0x0

    .line 1265
    .local v0, "lastOffset":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1266
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_110

    .line 1267
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v4, v2

    invoke-virtual {p2, v3, v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 1268
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v0, v3, v2

    .line 1269
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    .line 1270
    .local v3, "argumentNumber":I
    const/16 v4, 0x7b

    if-eqz p1, :cond_fe

    array-length v5, p1

    if-lt v3, v5, :cond_24

    goto/16 :goto_fe

    .line 1279
    :cond_24
    aget-object v5, p1, v3

    .line 1280
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1281
    .local v6, "arg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1282
    .local v7, "subFormatter":Ljava/text/Format;
    if-nez v5, :cond_2d

    .line 1283
    const-string v6, "null"

    goto :goto_7b

    .line 1284
    :cond_2d
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    if-eqz v8, :cond_54

    .line 1285
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v8, v2

    .line 1286
    instance-of v8, v7, Ljava/text/ChoiceFormat;

    if-eqz v8, :cond_7b

    .line 1287
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1288
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_7b

    .line 1289
    new-instance v4, Ljava/text/MessageFormat;

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v4, v6, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v7, v4

    .line 1290
    move-object v5, p1

    .line 1291
    const/4 v6, 0x0

    goto :goto_7b

    .line 1294
    :cond_54
    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_5f

    .line 1296
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    goto :goto_7b

    .line 1297
    :cond_5f
    instance-of v4, v5, Ljava/util/Date;

    if-eqz v4, :cond_6b

    .line 1299
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v8, 0x3

    invoke-static {v8, v8, v4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v7

    goto :goto_7b

    .line 1301
    :cond_6b
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_73

    .line 1302
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    goto :goto_7b

    .line 1305
    :cond_73
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1306
    if-nez v6, :cond_7b

    const-string v6, "null"

    .line 1313
    :cond_7b
    :goto_7b
    if-eqz p4, :cond_d2

    .line 1316
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eq v1, v4, :cond_93

    .line 1317
    nop

    .line 1319
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1318
    invoke-virtual {p0, v4}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1317
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1322
    :cond_93
    if-eqz v7, :cond_b5

    .line 1323
    nop

    .line 1324
    invoke-virtual {v7, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1326
    .local v4, "subIterator":Ljava/text/AttributedCharacterIterator;
    invoke-direct {p0, p2, v4}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 1327
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v1, v8, :cond_b4

    .line 1328
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1329
    invoke-virtual {p0, v4, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1328
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1334
    :cond_b4
    const/4 v6, 0x0

    .line 1336
    .end local v4    # "subIterator":Ljava/text/AttributedCharacterIterator;
    :cond_b5
    if-eqz v6, :cond_10c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10c

    .line 1337
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    sget-object v4, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1339
    invoke-virtual {p0, v6, v4, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1338
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_10c

    .line 1346
    :cond_d2
    if-eqz v7, :cond_d8

    .line 1347
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1349
    :cond_d8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1350
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    if-nez v2, :cond_f9

    if-eqz p3, :cond_f9

    sget-object v4, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1352
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    .line 1351
    invoke-virtual {v4, v8}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1353
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1354
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1356
    :cond_f9
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_10c

    .line 1271
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "subFormatter":Ljava/text/Format;
    :cond_fe
    :goto_fe
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1272
    nop

    .line 1266
    .end local v3    # "argumentNumber":I
    :cond_10c
    :goto_10c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1360
    .end local v2    # "i":I
    :cond_110
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 1361
    if-eqz p4, :cond_12f

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eq v1, v2, :cond_12f

    .line 1362
    nop

    .line 1363
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1362
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_12f
    return-object p2
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;

    .line 440
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 443
    .local v0, "segments":[Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "part":I
    const/4 v3, 0x0

    .line 447
    .local v3, "formatNumber":I
    const/4 v4, 0x0

    .line 448
    .local v4, "inQuote":Z
    const/4 v5, 0x0

    .line 449
    .local v5, "braceStack":I
    const/4 v6, -0x1

    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 450
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_c0

    .line 451
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 452
    .local v8, "ch":C
    const/16 v9, 0x27

    const/4 v10, 0x1

    if-nez v1, :cond_5f

    .line 453
    if-ne v8, v9, :cond_45

    .line 454
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_3d

    add-int/lit8 v11, v7, 0x1

    .line 455
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3d

    .line 456
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_bd

    .line 459
    :cond_3d
    if-nez v4, :cond_41

    move v9, v10

    goto :goto_42

    :cond_41
    move v9, v2

    :goto_42
    move v4, v9

    .end local v4    # "inQuote":Z
    .local v9, "inQuote":Z
    goto/16 :goto_bd

    .line 461
    .end local v9    # "inQuote":Z
    .restart local v4    # "inQuote":Z
    :cond_45
    const/16 v9, 0x7b

    if-ne v8, v9, :cond_59

    if-nez v4, :cond_59

    .line 462
    const/4 v1, 0x1

    .line 463
    aget-object v9, v0, v10

    if-nez v9, :cond_bd

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v0, v10

    goto/16 :goto_bd

    .line 467
    :cond_59
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 470
    :cond_5f
    if-eqz v4, :cond_6a

    .line 471
    aget-object v11, v0, v1

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    if-ne v8, v9, :cond_bd

    .line 473
    const/4 v4, 0x0

    goto :goto_bd

    .line 476
    :cond_6a
    const/4 v9, 0x3

    const/4 v11, 0x2

    sparse-switch v8, :sswitch_data_d8

    goto :goto_b8

    .line 491
    :sswitch_70
    if-nez v5, :cond_80

    .line 492
    const/4 v1, 0x0

    .line 493
    invoke-direct {p0, v7, v3, v0}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    .line 494
    add-int/lit8 v3, v3, 0x1

    .line 496
    const/4 v12, 0x0

    aput-object v12, v0, v10

    .line 497
    aput-object v12, v0, v11

    .line 498
    aput-object v12, v0, v9

    goto :goto_bd

    .line 500
    :cond_80
    add-int/lit8 v5, v5, -0x1

    .line 501
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    goto :goto_bd

    .line 487
    :sswitch_88
    add-int/lit8 v5, v5, 0x1

    .line 488
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    goto :goto_bd

    .line 478
    :sswitch_90
    if-ge v1, v9, :cond_a0

    .line 479
    add-int/lit8 v1, v1, 0x1

    aget-object v9, v0, v1

    if-nez v9, :cond_bd

    .line 480
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v0, v1

    goto :goto_bd

    .line 483
    :cond_a0
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    goto :goto_bd

    .line 511
    :sswitch_a6
    const/4 v4, 0x1

    goto :goto_b8

    .line 506
    :sswitch_a8
    if-ne v1, v11, :cond_b2

    aget-object v9, v0, v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_bd

    .line 507
    :cond_b2
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 514
    :goto_b8
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    .end local v8    # "ch":C
    :cond_bd
    :goto_bd
    add-int/2addr v7, v10

    goto/16 :goto_13

    .line 520
    .end local v7    # "i":I
    :cond_c0
    if-nez v5, :cond_cf

    if-nez v1, :cond_c5

    goto :goto_cf

    .line 521
    :cond_c5
    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 522
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unmatched braces in the pattern."

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_cf
    :goto_cf
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 525
    return-void

    :sswitch_data_d8
    .sparse-switch
        0x20 -> :sswitch_a8
        0x27 -> :sswitch_a6
        0x2c -> :sswitch_90
        0x7b -> :sswitch_88
        0x7d -> :sswitch_70
    .end sparse-switch
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 1106
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/MessageFormat;

    .line 1109
    .local v0, "other":Ljava/text/MessageFormat;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v1}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/text/Format;

    iput-object v1, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 1111
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2a

    .line 1112
    iget-object v2, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v2, v1

    .line 1110
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1115
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/text/MessageFormat;->offsets:[I

    .line 1116
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1118
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1126
    return v0

    .line 1127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    .line 1129
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/text/MessageFormat;

    .line 1130
    .local v2, "other":Ljava/text/MessageFormat;
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v4, v2, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_33

    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v4, v2, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1132
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_33
    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v3, :cond_5a

    iget-object v3, v2, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v3, :cond_5a

    :cond_3b
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    iget-object v4, v2, Ljava/text/MessageFormat;->offsets:[I

    .line 1134
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget-object v4, v2, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1135
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v4, v2, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1136
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    .line 1130
    :goto_5b
    return v0

    .line 1128
    .end local v2    # "other":Ljava/text/MessageFormat;
    :cond_5c
    :goto_5c
    return v1
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 886
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 840
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 925
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 926
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v1, "iterators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedCharacterIterator;>;"
    if-eqz p1, :cond_32

    .line 932
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 933
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_20

    .line 934
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 936
    :cond_20
    nop

    .line 938
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    .line 937
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    .line 936
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 929
    :cond_32
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getFormats()[Ljava/text/Format;
    .registers 5

    .line 763
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/text/Format;

    .line 764
    .local v0, "resultArray":[Ljava/text/Format;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    return-object v0
.end method

.method public whitelist test-api getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 6

    .line 733
    const/4 v0, -0x1

    .line 734
    .local v0, "maximumArgumentNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_13

    .line 735
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    if-le v2, v0, :cond_10

    .line 736
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v0, v2, v1

    .line 734
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 739
    .end local v1    # "i":I
    :cond_13
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/text/Format;

    .line 740
    .local v1, "resultArray":[Ljava/text/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_29

    .line 741
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 743
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 422
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1143
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1064
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1065
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 1066
    .local v1, "result":[Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 1069
    return-object v1

    .line 1067
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "MessageFormat parse error!"

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 15
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 975
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 976
    new-array v0, v0, [Ljava/lang/Object;

    .line 977
    .local v0, "empty":[Ljava/lang/Object;
    return-object v0

    .line 980
    .end local v0    # "empty":[Ljava/lang/Object;
    :cond_6
    const/4 v1, -0x1

    .line 981
    .local v1, "maximumArgumentNumber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_19

    .line 982
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    if-le v3, v1, :cond_16

    .line 983
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v3, v2

    .line 981
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 986
    .end local v2    # "i":I
    :cond_19
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 988
    .local v2, "resultArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 989
    .local v3, "patternOffset":I
    iget v4, p2, Ljava/text/ParsePosition;->index:I

    .line 990
    .local v4, "sourceOffset":I
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 991
    .local v5, "tempStatus":Ljava/text/ParsePosition;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v7, 0x0

    if-gt v0, v6, :cond_be

    .line 993
    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v6, v6, v0

    sub-int/2addr v6, v3

    .line 994
    .local v6, "len":I
    if-eqz v6, :cond_3e

    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v3, p1, v4, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3b

    goto :goto_3e

    .line 999
    :cond_3b
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1000
    return-object v7

    .line 996
    :cond_3e
    :goto_3e
    add-int/2addr v4, v6

    .line 997
    add-int/2addr v3, v6

    .line 1004
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v0

    if-nez v8, :cond_a1

    .line 1008
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v0, v8, :cond_51

    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    goto :goto_57

    :cond_51
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 1011
    .local v8, "tempLength":I
    :goto_57
    if-lt v3, v8, :cond_5e

    .line 1012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "next":I
    goto :goto_68

    .line 1014
    .end local v9    # "next":I
    :cond_5e
    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 1018
    .restart local v9    # "next":I
    :goto_68
    if-gez v9, :cond_6d

    .line 1019
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1020
    return-object v7

    .line 1022
    :cond_6d
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1023
    .local v7, "strValue":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9e

    .line 1024
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v0

    .line 1025
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1026
    :cond_9e
    nop

    .line 1028
    .end local v4    # "sourceOffset":I
    .end local v7    # "strValue":Ljava/lang/String;
    .end local v8    # "tempLength":I
    .local v9, "sourceOffset":I
    move v4, v9

    goto :goto_ba

    .line 1029
    .end local v9    # "sourceOffset":I
    .restart local v4    # "sourceOffset":I
    :cond_a1
    iput v4, v5, Ljava/text/ParsePosition;->index:I

    .line 1030
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v8, v8, v0

    iget-object v9, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v9, v9, v0

    .line 1031
    invoke-virtual {v9, p1, v5}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v8

    .line 1032
    iget v8, v5, Ljava/text/ParsePosition;->index:I

    if-ne v8, v4, :cond_b8

    .line 1033
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1034
    return-object v7

    .line 1036
    :cond_b8
    iget v4, v5, Ljava/text/ParsePosition;->index:I

    .line 991
    .end local v6    # "len":I
    :goto_ba
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    .line 1039
    .end local v0    # "i":I
    :cond_be
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1040
    .local v0, "len":I
    if-eqz v0, :cond_d3

    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v3, p1, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_d0

    goto :goto_d3

    .line 1044
    :cond_d0
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1045
    return-object v7

    .line 1042
    :cond_d3
    :goto_d3
    add-int v6, v4, v0

    iput v6, p2, Ljava/text/ParsePosition;->index:I

    .line 1047
    return-object v2
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1097
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setFormat(ILjava/text/Format;)V
    .registers 4
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 706
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt p1, v0, :cond_9

    .line 709
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 710
    return-void

    .line 707
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public whitelist test-api setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 5
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 681
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_12

    .line 682
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_f

    .line 683
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 681
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    .end local v0    # "j":I
    :cond_12
    return-void
.end method

.method public whitelist test-api setFormats([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 653
    array-length v0, p1

    .line 654
    .local v0, "runsToCopy":I
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_b

    .line 655
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v0, v1, 0x1

    .line 657
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_17

    .line 658
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 660
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist test-api setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_15

    .line 623
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    .line 624
    .local v1, "j":I
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 625
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 622
    .end local v1    # "j":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 628
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 413
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 414
    return-void
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 9

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "lastOffset":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_113

    .line 540
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v4, v2

    invoke-static {v3, v0, v4, v1}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 541
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v0, v3, v2

    .line 542
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    .line 544
    .local v3, "fmt":Ljava/text/Format;
    if-nez v3, :cond_2d

    goto/16 :goto_10a

    .line 546
    :cond_2d
    instance-of v4, v3, Ljava/text/NumberFormat;

    if-eqz v4, :cond_a8

    .line 547
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 548
    const-string v4, ",number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10a

    .line 549
    :cond_44
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 550
    const-string v4, ",number,currency"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10a

    .line 551
    :cond_57
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 552
    const-string v4, ",number,percent"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10a

    .line 553
    :cond_6a
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 554
    const-string v4, ",number,integer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10a

    .line 556
    :cond_7d
    instance-of v4, v3, Ljava/text/DecimalFormat;

    if-eqz v4, :cond_93

    .line 557
    const-string v4, ",number,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10a

    .line 558
    :cond_93
    instance-of v4, v3, Ljava/text/ChoiceFormat;

    if-eqz v4, :cond_10a

    .line 559
    const-string v4, ",choice,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/text/ChoiceFormat;

    invoke-virtual {v5}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10a

    .line 564
    :cond_a8
    instance-of v4, v3, Ljava/text/DateFormat;

    if-eqz v4, :cond_10a

    .line 566
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_ad
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_e1

    .line 567
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v5, v5, v4

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    .line 569
    .local v5, "df":Ljava/text/DateFormat;
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 570
    const-string v6, ",date"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    goto :goto_e1

    .line 573
    :cond_c8
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v4

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    .line 575
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 576
    const-string v6, ",time"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    goto :goto_e1

    .line 566
    .end local v5    # "df":Ljava/text/DateFormat;
    :cond_de
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 580
    :cond_e1
    :goto_e1
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v5, v5

    if-lt v4, v5, :cond_fb

    .line 581
    instance-of v5, v3, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_10a

    .line 582
    const-string v5, ",date,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10a

    .line 586
    :cond_fb
    if-eqz v4, :cond_10a

    .line 587
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .end local v4    # "index":I
    :cond_10a
    :goto_10a
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    .end local v3    # "fmt":Ljava/text/Format;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 594
    .end local v2    # "i":I
    :cond_113
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v0, v3, v1}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
