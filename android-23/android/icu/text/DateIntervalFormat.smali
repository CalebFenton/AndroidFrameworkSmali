.class public Landroid/icu/text/DateIntervalFormat;
.super Landroid/icu/text/UFormat;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalFormat$BestMatchInfo;,
        Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    }
.end annotation


# static fields
.field private static LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fDateFormat:Landroid/icu/text/SimpleDateFormat;

.field private fFromCalendar:Landroid/icu/util/Calendar;

.field private fInfo:Landroid/icu/text/DateIntervalInfo;

.field private transient fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fSkeleton:Ljava/lang/String;

.field private fToCalendar:Landroid/icu/util/Calendar;

.field private isDateIntervalInfoDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 288
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 287
    sput-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@7
    .line 250
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 330
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 312
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 323
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 330
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V
    .locals 2
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "dtItvInfo"    # Landroid/icu/text/DateIntervalInfo;
    .param p3, "simpleDateFormat"    # Landroid/icu/text/SimpleDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 350
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 312
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 323
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 353
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@a
    .line 355
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@d
    .line 356
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@f
    .line 357
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@11
    .line 358
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@14
    .line 359
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@16
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/icu/util/Calendar;

    #@20
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@22
    .line 360
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@24
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/icu/util/Calendar;

    #@2e
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@30
    .line 361
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@33
    .line 351
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V
    .locals 1
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "simpleDateFormat"    # Landroid/icu/text/SimpleDateFormat;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 364
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 312
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 323
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 367
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@a
    .line 368
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@c
    .line 369
    new-instance v0, Landroid/icu/text/DateIntervalInfo;

    #@e
    invoke-direct {v0, p2}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@11
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@17
    .line 370
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@1a
    .line 371
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@1c
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/icu/util/Calendar;

    #@26
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@28
    .line 372
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2a
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/icu/util/Calendar;

    #@34
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@36
    .line 373
    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@38
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@3b
    .line 365
    return-void
.end method

.method private static adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p0, "inputSkeleton"    # Ljava/lang/String;
    .param p1, "bestMatchSkeleton"    # Ljava/lang/String;
    .param p2, "bestMatchIntervalPattern"    # Ljava/lang/String;
    .param p3, "differenceInfo"    # I

    #@0
    .prologue
    .line 1579
    if-nez p2, :cond_0

    #@2
    .line 1580
    const/4 v14, 0x0

    #@3
    return-object v14

    #@4
    .line 1582
    :cond_0
    const/16 v14, 0x3a

    #@6
    new-array v10, v14, [I

    #@8
    .line 1583
    .local v10, "inputSkeletonFieldWidth":[I
    const/16 v14, 0x3a

    #@a
    new-array v3, v14, [I

    #@c
    .line 1599
    .local v3, "bestMatchSkeletonFieldWidth":[I
    move-object/from16 v0, p0

    #@e
    invoke-static {v0, v10}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@11
    .line 1600
    move-object/from16 v0, p1

    #@13
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@16
    .line 1601
    const/4 v14, 0x2

    #@17
    move/from16 v0, p3

    #@19
    if-ne v0, v14, :cond_1

    #@1b
    .line 1602
    const/16 v14, 0x76

    #@1d
    const/16 v15, 0x7a

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    .line 1605
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    move-object/from16 v0, p2

    #@29
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 1607
    .local v1, "adjustedPtn":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    #@2d
    .line 1608
    .local v8, "inQuote":Z
    const/4 v12, 0x0

    #@2e
    .line 1609
    .local v12, "prevCh":C
    const/4 v5, 0x0

    #@2f
    .line 1614
    .local v5, "count":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@32
    move-result v2

    #@33
    .line 1615
    .local v2, "adjustedPtnLength":I
    const/4 v7, 0x0

    #@34
    .end local v12    # "prevCh":C
    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_b

    #@36
    .line 1616
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    #@39
    move-result v4

    #@3a
    .line 1617
    .local v4, "ch":C
    if-eq v4, v12, :cond_5

    #@3c
    if-lez v5, :cond_5

    #@3e
    .line 1619
    move v13, v12

    #@3f
    .line 1620
    .local v13, "skeletonChar":C
    const/16 v14, 0x4c

    #@41
    if-ne v13, v14, :cond_2

    #@43
    .line 1622
    const/16 v13, 0x4d

    #@45
    .line 1624
    .end local v13    # "skeletonChar":C
    :cond_2
    add-int/lit8 v14, v13, -0x41

    #@47
    aget v6, v3, v14

    #@49
    .line 1625
    .local v6, "fieldCount":I
    add-int/lit8 v14, v13, -0x41

    #@4b
    aget v9, v10, v14

    #@4d
    .line 1626
    .local v9, "inputFieldCount":I
    if-ne v6, v5, :cond_4

    #@4f
    if-le v9, v6, :cond_4

    #@51
    .line 1627
    sub-int v5, v9, v6

    #@53
    .line 1628
    const/4 v11, 0x0

    #@54
    .local v11, "j":I
    :goto_1
    if-ge v11, v5, :cond_3

    #@56
    .line 1629
    invoke-virtual {v1, v7, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@59
    .line 1628
    add-int/lit8 v11, v11, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1631
    :cond_3
    add-int/2addr v7, v5

    #@5d
    .line 1632
    add-int/2addr v2, v5

    #@5e
    .line 1634
    .end local v11    # "j":I
    :cond_4
    const/4 v5, 0x0

    #@5f
    .line 1636
    .end local v6    # "fieldCount":I
    .end local v9    # "inputFieldCount":I
    :cond_5
    const/16 v14, 0x27

    #@61
    if-ne v4, v14, :cond_9

    #@63
    .line 1639
    add-int/lit8 v14, v7, 0x1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@68
    move-result v15

    #@69
    if-ge v14, v15, :cond_7

    #@6b
    add-int/lit8 v14, v7, 0x1

    #@6d
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    #@70
    move-result v14

    #@71
    const/16 v15, 0x27

    #@73
    if-ne v14, v15, :cond_7

    #@75
    .line 1640
    add-int/lit8 v7, v7, 0x1

    #@77
    .line 1615
    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 1642
    :cond_7
    if-eqz v8, :cond_8

    #@7c
    const/4 v8, 0x0

    #@7d
    goto :goto_2

    #@7e
    :cond_8
    const/4 v8, 0x1

    #@7f
    goto :goto_2

    #@80
    .line 1645
    :cond_9
    if-nez v8, :cond_6

    #@82
    const/16 v14, 0x61

    #@84
    if-lt v4, v14, :cond_a

    #@86
    const/16 v14, 0x7a

    #@88
    if-gt v4, v14, :cond_a

    #@8a
    .line 1648
    :goto_3
    move v12, v4

    #@8b
    .line 1649
    .local v12, "prevCh":C
    add-int/lit8 v5, v5, 0x1

    #@8d
    goto :goto_2

    #@8e
    .line 1646
    .end local v12    # "prevCh":C
    :cond_a
    const/16 v14, 0x41

    #@90
    if-lt v4, v14, :cond_6

    #@92
    const/16 v14, 0x5a

    #@94
    if-gt v4, v14, :cond_6

    #@96
    goto :goto_3

    #@97
    .line 1652
    .end local v4    # "ch":C
    :cond_b
    if-lez v5, :cond_d

    #@99
    .line 1655
    move v13, v12

    #@9a
    .line 1656
    .restart local v13    # "skeletonChar":C
    const/16 v14, 0x4c

    #@9c
    if-ne v13, v14, :cond_c

    #@9e
    .line 1658
    const/16 v13, 0x4d

    #@a0
    .line 1660
    .end local v13    # "skeletonChar":C
    :cond_c
    add-int/lit8 v14, v13, -0x41

    #@a2
    aget v6, v3, v14

    #@a4
    .line 1661
    .restart local v6    # "fieldCount":I
    add-int/lit8 v14, v13, -0x41

    #@a6
    aget v9, v10, v14

    #@a8
    .line 1662
    .restart local v9    # "inputFieldCount":I
    if-ne v6, v5, :cond_d

    #@aa
    if-le v9, v6, :cond_d

    #@ac
    .line 1663
    sub-int v5, v9, v6

    #@ae
    .line 1664
    const/4 v11, 0x0

    #@af
    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v5, :cond_d

    #@b1
    .line 1665
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    .line 1664
    add-int/lit8 v11, v11, 0x1

    #@b6
    goto :goto_4

    #@b7
    .line 1669
    .end local v6    # "fieldCount":I
    .end local v9    # "inputFieldCount":I
    .end local v11    # "j":I
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v14

    #@bb
    return-object v14
.end method

.method private concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .param p1, "dtfmt"    # Ljava/lang/String;
    .param p2, "datePattern"    # Ljava/lang/String;
    .param p3, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1691
    .local p4, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2
    aget-object v3, v3, p3

    #@4
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@a
    .line 1692
    .local v2, "timeItvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-eqz v2, :cond_0

    #@c
    .line 1693
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    .line 1694
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1696
    .local v1, "timeIntervalPattern":Ljava/lang/String;
    const/4 v3, 0x2

    #@26
    new-array v3, v3, [Ljava/lang/Object;

    #@28
    const/4 v4, 0x0

    #@29
    aput-object v1, v3, v4

    #@2b
    const/4 v4, 0x1

    #@2c
    aput-object p2, v3, v4

    #@2e
    .line 1695
    invoke-static {p1, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 1698
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@35
    move-result v3

    #@36
    .line 1697
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@39
    move-result-object v2

    #@3a
    .line 1700
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@3c
    aget-object v3, v3, p3

    #@3e
    .line 1699
    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 1687
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "timeIntervalPattern":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/16 v5, 0x40

    #@2
    .line 772
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 773
    .local v0, "earlierDate":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@9
    invoke-virtual {v4, p1, v0, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@c
    move-result-object v0

    #@d
    .line 774
    new-instance v3, Ljava/lang/StringBuffer;

    #@f
    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@12
    .line 775
    .local v3, "laterDate":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@14
    invoke-virtual {v4, p2, v3, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v3

    #@18
    .line 776
    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@1a
    invoke-virtual {v4}, Landroid/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 778
    .local v2, "fallbackPattern":Ljava/lang/String;
    const/4 v4, 0x2

    #@1f
    new-array v4, v4, [Ljava/lang/Object;

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    const/4 v6, 0x0

    #@26
    aput-object v5, v4, v6

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    const/4 v6, 0x1

    #@2d
    aput-object v5, v4, v6

    #@2f
    .line 777
    invoke-static {v2, v4}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 779
    .local v1, "fallback":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 780
    return-object p3
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;
    .param p5, "fullPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 807
    .local v0, "originalPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v1, p5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@b
    .line 808
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    .line 809
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@10
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@13
    .line 810
    return-object p3
.end method

.method private static fieldExistsInSkeleton(ILjava/lang/String;)Z
    .locals 3
    .param p0, "field"    # I
    .param p1, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1715
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2
    aget-object v0, v1, p0

    #@4
    .line 1716
    .local v0, "fieldChar":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x1

    #@e
    goto :goto_0
.end method

.method private genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V
    .locals 4
    .param p1, "field"    # I
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p4, "dtpng"    # Landroid/icu/text/DateTimePatternGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1172
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@6
    .line 1173
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    .line 1172
    invoke-direct {v1, v3, v0, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@10
    .line 1175
    .local v1, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@12
    aget-object v2, v2, p1

    #@14
    .line 1174
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1166
    return-void
.end method

.method private genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .locals 15
    .param p1, "field"    # I
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "bestSkeleton"    # Ljava/lang/String;
    .param p4, "differenceInfo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)",
            "Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;"
        }
    .end annotation

    #@0
    .prologue
    .line 1470
    .local p5, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v9, 0x0

    #@1
    .line 1471
    .local v9, "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@3
    move-object/from16 v0, p3

    #@5
    move/from16 v1, p1

    #@7
    invoke-virtual {v12, v0, v1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@a
    move-result-object v6

    #@b
    .line 1473
    .local v6, "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-nez v6, :cond_6

    #@d
    .line 1475
    move-object/from16 v0, p3

    #@f
    move/from16 v1, p1

    #@11
    invoke-static {v0, v1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    #@14
    move-result v12

    #@15
    if-eqz v12, :cond_0

    #@17
    .line 1477
    new-instance v8, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@19
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@1b
    invoke-virtual {v12}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@1e
    move-result-object v12

    #@1f
    .line 1479
    iget-object v13, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@21
    invoke-virtual {v13}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@24
    move-result v13

    #@25
    .line 1478
    const/4 v14, 0x0

    #@26
    .line 1477
    invoke-direct {v8, v12, v14, v13}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@29
    .line 1480
    .local v8, "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2b
    aget-object v12, v12, p1

    #@2d
    move-object/from16 v0, p5

    #@2f
    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 1482
    const/4 v12, 0x0

    #@33
    return-object v12

    #@34
    .line 1489
    .end local v8    # "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_0
    const/16 v12, 0x9

    #@36
    move/from16 v0, p1

    #@38
    if-ne v0, v12, :cond_2

    #@3a
    .line 1490
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@3c
    .line 1491
    const/16 v13, 0xa

    #@3e
    .line 1490
    move-object/from16 v0, p3

    #@40
    invoke-virtual {v12, v0, v13}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@43
    move-result-object v6

    #@44
    .line 1492
    if-eqz v6, :cond_1

    #@46
    .line 1494
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@48
    aget-object v12, v12, p1

    #@4a
    move-object/from16 v0, p5

    #@4c
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 1498
    :cond_1
    const/4 v12, 0x0

    #@50
    return-object v12

    #@51
    .line 1507
    :cond_2
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@53
    .line 1506
    aget-object v3, v12, p1

    #@55
    .line 1508
    .local v3, "fieldLetter":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v12

    #@5e
    move-object/from16 v0, p3

    #@60
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v12

    #@64
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object p3

    #@68
    .line 1509
    new-instance v12, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v12

    #@77
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object p2

    #@7b
    .line 1512
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@7d
    move-object/from16 v0, p3

    #@7f
    move/from16 v1, p1

    #@81
    invoke-virtual {v12, v0, v1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@84
    move-result-object v6

    #@85
    .line 1513
    if-nez v6, :cond_3

    #@87
    if-nez p4, :cond_3

    #@89
    .line 1516
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v12, v0}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    #@90
    move-result-object v11

    #@91
    .line 1517
    .local v11, "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v10, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    #@93
    .line 1518
    .local v10, "tmpBestSkeleton":Ljava/lang/String;
    iget v0, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    #@95
    move/from16 p4, v0

    #@97
    .line 1519
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@9a
    move-result v12

    #@9b
    if-eqz v12, :cond_3

    #@9d
    const/4 v12, -0x1

    #@9e
    move/from16 v0, p4

    #@a0
    if-eq v0, v12, :cond_3

    #@a2
    .line 1520
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@a4
    move/from16 v0, p1

    #@a6
    invoke-virtual {v12, v10, v0}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@a9
    move-result-object v6

    #@aa
    .line 1521
    move-object/from16 p3, v10

    #@ac
    .line 1524
    .end local v10    # "tmpBestSkeleton":Ljava/lang/String;
    .end local v11    # "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_3
    if-eqz v6, :cond_6

    #@ae
    .line 1525
    new-instance v9, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@b0
    .end local v9    # "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, p3

    #@b4
    invoke-direct {v9, v0, v1}, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b7
    .local v9, "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    move-object v7, v6

    #@b8
    .line 1528
    .end local v3    # "fieldLetter":Ljava/lang/String;
    .end local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .end local v9    # "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .local v7, "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :goto_0
    if-eqz v7, :cond_5

    #@ba
    .line 1529
    if-eqz p4, :cond_4

    #@bc
    .line 1531
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    .line 1530
    move-object/from16 v0, p2

    #@c2
    move-object/from16 v1, p3

    #@c4
    move/from16 v2, p4

    #@c6
    invoke-static {v0, v1, v12, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    .line 1533
    .local v4, "part1":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@cd
    move-result-object v12

    #@ce
    .line 1532
    move-object/from16 v0, p2

    #@d0
    move-object/from16 v1, p3

    #@d2
    move/from16 v2, p4

    #@d4
    invoke-static {v0, v1, v12, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    .line 1534
    .local v5, "part2":Ljava/lang/String;
    new-instance v6, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@da
    .line 1535
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@dd
    move-result v12

    #@de
    .line 1534
    invoke-direct {v6, v4, v5, v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@e1
    .line 1541
    .end local v4    # "part1":Ljava/lang/String;
    .end local v5    # "part2":Ljava/lang/String;
    .end local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :goto_1
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@e3
    aget-object v12, v12, p1

    #@e5
    .line 1540
    move-object/from16 v0, p5

    #@e7
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 1543
    :goto_2
    return-object v9

    #@eb
    .end local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_4
    move-object v6, v7

    #@ec
    .end local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    goto :goto_1

    #@ed
    .end local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_5
    move-object v6, v7

    #@ee
    .end local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    goto :goto_2

    #@ef
    .local v9, "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    :cond_6
    move-object v7, v6

    #@f0
    .end local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    goto :goto_0
.end method

.method private genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .param p1, "dateSkeleton"    # Ljava/lang/String;
    .param p2, "timeSkeleton"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v8, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1394
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1395
    move-object v2, p2

    #@9
    .line 1409
    .local v2, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@b
    invoke-virtual {v0, v2}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    #@e
    move-result-object v6

    #@f
    .line 1410
    .local v6, "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v3, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    #@11
    .line 1411
    .local v3, "bestSkeleton":Ljava/lang/String;
    iget v4, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    #@13
    .line 1418
    .local v4, "differenceInfo":I
    const/4 v0, -0x1

    #@14
    if-ne v4, v0, :cond_1

    #@16
    .line 1420
    return v1

    #@17
    .line 1397
    .end local v2    # "skeleton":Ljava/lang/String;
    .end local v3    # "bestSkeleton":Ljava/lang/String;
    .end local v4    # "differenceInfo":I
    .end local v6    # "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_0
    move-object v2, p1

    #@18
    .restart local v2    # "skeleton":Ljava/lang/String;
    goto :goto_0

    #@19
    .line 1423
    .restart local v3    # "bestSkeleton":Ljava/lang/String;
    .restart local v4    # "differenceInfo":I
    .restart local v6    # "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_3

    #@1f
    .line 1425
    const/4 v1, 0x5

    #@20
    move-object v0, p0

    #@21
    move-object v5, p3

    #@22
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@25
    .line 1427
    const/4 v1, 0x2

    #@26
    move-object v0, p0

    #@27
    move-object v5, p3

    #@28
    .line 1426
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@2b
    move-result-object v7

    #@2c
    .line 1430
    .local v7, "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    if-eqz v7, :cond_2

    #@2e
    .line 1431
    iget-object v3, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    #@30
    .line 1432
    iget-object v2, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    #@32
    :cond_2
    move-object v0, p0

    #@33
    move v1, v8

    #@34
    move-object v5, p3

    #@35
    .line 1434
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@38
    .line 1440
    .end local v7    # "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    :goto_1
    return v8

    #@39
    .line 1436
    :cond_3
    const/16 v1, 0xc

    #@3b
    move-object v0, p0

    #@3c
    move-object v5, p3

    #@3d
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@40
    .line 1437
    const/16 v1, 0xa

    #@42
    move-object v0, p0

    #@43
    move-object v5, p3

    #@44
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@47
    .line 1438
    const/16 v1, 0x9

    #@49
    move-object v0, p0

    #@4a
    move-object v5, p3

    #@4b
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@4e
    goto :goto_1
.end method

.method private static getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 13
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "dateSkeleton"    # Ljava/lang/StringBuilder;
    .param p2, "normalizedDateSkeleton"    # Ljava/lang/StringBuilder;
    .param p3, "timeSkeleton"    # Ljava/lang/StringBuilder;
    .param p4, "normalizedTimeSkeleton"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1228
    const/4 v1, 0x0

    #@1
    .line 1229
    .local v1, "ECount":I
    const/4 v5, 0x0

    #@2
    .line 1230
    .local v5, "dCount":I
    const/4 v3, 0x0

    #@3
    .line 1231
    .local v3, "MCount":I
    const/4 v10, 0x0

    #@4
    .line 1232
    .local v10, "yCount":I
    const/4 v6, 0x0

    #@5
    .line 1233
    .local v6, "hCount":I
    const/4 v2, 0x0

    #@6
    .line 1234
    .local v2, "HCount":I
    const/4 v8, 0x0

    #@7
    .line 1235
    .local v8, "mCount":I
    const/4 v9, 0x0

    #@8
    .line 1236
    .local v9, "vCount":I
    const/4 v11, 0x0

    #@9
    .line 1238
    .local v11, "zCount":I
    const/4 v7, 0x0

    #@a
    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v12

    #@e
    if-ge v7, v12, :cond_0

    #@10
    .line 1239
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v4

    #@14
    .line 1240
    .local v4, "ch":C
    packed-switch v4, :pswitch_data_0

    #@17
    .line 1238
    :goto_1
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1242
    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 1243
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 1244
    goto :goto_1

    #@20
    .line 1246
    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 1247
    add-int/lit8 v5, v5, 0x1

    #@25
    .line 1248
    goto :goto_1

    #@26
    .line 1250
    :pswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 1251
    add-int/lit8 v3, v3, 0x1

    #@2b
    .line 1252
    goto :goto_1

    #@2c
    .line 1254
    :pswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 1255
    add-int/lit8 v10, v10, 0x1

    #@31
    .line 1256
    goto :goto_1

    #@32
    .line 1273
    :pswitch_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 1274
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    goto :goto_1

    #@39
    .line 1278
    :pswitch_6
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_1

    #@3f
    .line 1281
    :pswitch_7
    move-object/from16 v0, p3

    #@41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 1282
    add-int/lit8 v6, v6, 0x1

    #@46
    .line 1283
    goto :goto_1

    #@47
    .line 1285
    :pswitch_8
    move-object/from16 v0, p3

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 1286
    add-int/lit8 v2, v2, 0x1

    #@4e
    .line 1287
    goto :goto_1

    #@4f
    .line 1289
    :pswitch_9
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 1290
    add-int/lit8 v8, v8, 0x1

    #@56
    .line 1291
    goto :goto_1

    #@57
    .line 1293
    :pswitch_a
    add-int/lit8 v11, v11, 0x1

    #@59
    .line 1294
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 1297
    :pswitch_b
    add-int/lit8 v9, v9, 0x1

    #@61
    .line 1298
    move-object/from16 v0, p3

    #@63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    goto :goto_1

    #@67
    .line 1308
    :pswitch_c
    move-object/from16 v0, p3

    #@69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 1309
    move-object/from16 v0, p4

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    goto :goto_1

    #@72
    .line 1315
    .end local v4    # "ch":C
    :cond_0
    if-eqz v10, :cond_1

    #@74
    .line 1316
    const/4 v7, 0x0

    #@75
    :goto_2
    if-ge v7, v10, :cond_1

    #@77
    .line 1317
    const/16 v12, 0x79

    #@79
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    .line 1316
    add-int/lit8 v7, v7, 0x1

    #@7e
    goto :goto_2

    #@7f
    .line 1320
    :cond_1
    if-eqz v3, :cond_2

    #@81
    .line 1321
    const/4 v12, 0x3

    #@82
    if-ge v3, v12, :cond_9

    #@84
    .line 1322
    const/16 v12, 0x4d

    #@86
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    .line 1329
    :cond_2
    if-eqz v1, :cond_3

    #@8b
    .line 1330
    const/4 v12, 0x3

    #@8c
    if-gt v1, v12, :cond_a

    #@8e
    .line 1331
    const/16 v12, 0x45

    #@90
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@93
    .line 1338
    :cond_3
    if-eqz v5, :cond_4

    #@95
    .line 1339
    const/16 v12, 0x64

    #@97
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    .line 1343
    :cond_4
    if-eqz v2, :cond_b

    #@9c
    .line 1344
    const/16 v12, 0x48

    #@9e
    move-object/from16 v0, p4

    #@a0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    .line 1349
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    #@a5
    .line 1350
    const/16 v12, 0x6d

    #@a7
    move-object/from16 v0, p4

    #@a9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    .line 1352
    :cond_6
    if-eqz v11, :cond_7

    #@ae
    .line 1353
    const/16 v12, 0x7a

    #@b0
    move-object/from16 v0, p4

    #@b2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    .line 1355
    :cond_7
    if-eqz v9, :cond_8

    #@b7
    .line 1356
    const/16 v12, 0x76

    #@b9
    move-object/from16 v0, p4

    #@bb
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    .line 1223
    :cond_8
    return-void

    #@bf
    .line 1324
    :cond_9
    const/4 v7, 0x0

    #@c0
    :goto_4
    if-ge v7, v3, :cond_2

    #@c2
    const/4 v12, 0x5

    #@c3
    if-ge v7, v12, :cond_2

    #@c5
    .line 1325
    const/16 v12, 0x4d

    #@c7
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 1324
    add-int/lit8 v7, v7, 0x1

    #@cc
    goto :goto_4

    #@cd
    .line 1333
    :cond_a
    const/4 v7, 0x0

    #@ce
    :goto_5
    if-ge v7, v1, :cond_3

    #@d0
    const/4 v12, 0x5

    #@d1
    if-ge v7, v12, :cond_3

    #@d3
    .line 1334
    const/16 v12, 0x45

    #@d5
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d8
    .line 1333
    add-int/lit8 v7, v7, 0x1

    #@da
    goto :goto_5

    #@db
    .line 1346
    :cond_b
    if-eqz v6, :cond_5

    #@dd
    .line 1347
    const/16 v12, 0x68

    #@df
    move-object/from16 v0, p4

    #@e1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e4
    goto :goto_3

    #@e5
    .line 1240
    nop

    #@e6
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 393
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    #@0
    .prologue
    .line 471
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;
    .locals 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 448
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v0

    #@4
    .line 449
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    #@6
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@f
    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V

    #@12
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    #@0
    .prologue
    .line 541
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    .end local p2    # "dtitvinf":Landroid/icu/text/DateIntervalInfo;
    check-cast p2, Landroid/icu/text/DateIntervalInfo;

    #@6
    .line 542
    .restart local p2    # "dtitvinf":Landroid/icu/text/DateIntervalInfo;
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@9
    move-result-object v0

    #@a
    .line 543
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    #@c
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    #@e
    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@15
    invoke-direct {v1, p0, p2, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V

    #@18
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateIntervalFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 412
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    #@0
    .prologue
    .line 494
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p2}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;
    .locals 23
    .param p1, "fullPattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 996
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v7

    #@4
    .line 997
    .local v7, "dtpng":Landroid/icu/text/DateTimePatternGenerator;
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@8
    move-object/from16 v20, v0

    #@a
    if-nez v20, :cond_0

    #@c
    .line 1000
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getSkeleton(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v20

    #@12
    move-object/from16 v0, v20

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@18
    .line 1002
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@1c
    move-object/from16 v17, v0

    #@1e
    .line 1004
    .local v17, "skeleton":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    #@20
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@23
    .line 1009
    .local v9, "intervalPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@28
    move-result v20

    #@29
    move/from16 v0, v20

    #@2b
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2e
    .line 1010
    .local v4, "date":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    #@30
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@33
    move-result v20

    #@34
    move/from16 v0, v20

    #@36
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@39
    .line 1011
    .local v10, "normalizedDate":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    #@3b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@3e
    move-result v20

    #@3f
    move-object/from16 v0, v18

    #@41
    move/from16 v1, v20

    #@43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@46
    .line 1012
    .local v18, "time":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    #@48
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@4b
    move-result v20

    #@4c
    move/from16 v0, v20

    #@4e
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@51
    .line 1025
    .local v12, "normalizedTime":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    #@53
    move-object/from16 v1, v18

    #@55
    invoke-static {v0, v4, v10, v1, v12}, Landroid/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    #@58
    .line 1028
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    .line 1029
    .local v6, "dateSkeleton":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v19

    #@60
    .line 1030
    .local v19, "timeSkeleton":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v11

    #@64
    .line 1031
    .local v11, "normalizedDateSkeleton":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v13

    #@68
    .line 1033
    .local v13, "normalizedTimeSkeleton":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a
    invoke-direct {v0, v11, v13, v9}, Landroid/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    #@6d
    move-result v8

    #@6e
    .line 1037
    .local v8, "found":Z
    if-nez v8, :cond_2

    #@70
    .line 1041
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    #@73
    move-result v20

    #@74
    if-eqz v20, :cond_1

    #@76
    .line 1045
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@79
    move-result v20

    #@7a
    if-nez v20, :cond_1

    #@7c
    .line 1047
    new-instance v20, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v21, "yMd"

    #@84
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v20

    #@88
    move-object/from16 v0, v20

    #@8a
    move-object/from16 v1, v19

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v20

    #@90
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v19

    #@94
    .line 1048
    move-object/from16 v0, v19

    #@96
    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v14

    #@9a
    .line 1053
    .local v14, "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@9c
    .line 1054
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@a0
    move-object/from16 v20, v0

    #@a2
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@a5
    move-result v20

    #@a6
    .line 1053
    const/16 v21, 0x0

    #@a8
    move-object/from16 v0, v16

    #@aa
    move-object/from16 v1, v21

    #@ac
    move/from16 v2, v20

    #@ae
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@b1
    .line 1055
    .local v16, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@b3
    .line 1056
    const/16 v21, 0x5

    #@b5
    .line 1055
    aget-object v20, v20, v21

    #@b7
    move-object/from16 v0, v20

    #@b9
    move-object/from16 v1, v16

    #@bb
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 1058
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@c0
    .line 1059
    const/16 v21, 0x2

    #@c2
    .line 1058
    aget-object v20, v20, v21

    #@c4
    move-object/from16 v0, v20

    #@c6
    move-object/from16 v1, v16

    #@c8
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 1061
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@cd
    .line 1062
    const/16 v21, 0x1

    #@cf
    .line 1061
    aget-object v20, v20, v21

    #@d1
    move-object/from16 v0, v20

    #@d3
    move-object/from16 v1, v16

    #@d5
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 1073
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_1
    return-object v9

    #@d9
    .line 1076
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    #@dc
    move-result v20

    #@dd
    if-nez v20, :cond_3

    #@df
    .line 1152
    :goto_0
    return-object v9

    #@e0
    .line 1078
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@e3
    move-result v20

    #@e4
    if-nez v20, :cond_4

    #@e6
    .line 1091
    new-instance v20, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v21, "yMd"

    #@ee
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v20

    #@f2
    move-object/from16 v0, v20

    #@f4
    move-object/from16 v1, v19

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v20

    #@fa
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v19

    #@fe
    .line 1092
    move-object/from16 v0, v19

    #@100
    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@103
    move-result-object v14

    #@104
    .line 1097
    .restart local v14    # "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@106
    .line 1098
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@10a
    move-object/from16 v20, v0

    #@10c
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@10f
    move-result v20

    #@110
    const/16 v21, 0x0

    #@112
    .line 1097
    move-object/from16 v0, v16

    #@114
    move-object/from16 v1, v21

    #@116
    move/from16 v2, v20

    #@118
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@11b
    .line 1099
    .restart local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@11d
    .line 1100
    const/16 v21, 0x5

    #@11f
    .line 1099
    aget-object v20, v20, v21

    #@121
    move-object/from16 v0, v20

    #@123
    move-object/from16 v1, v16

    #@125
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    .line 1101
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@12a
    .line 1102
    const/16 v21, 0x2

    #@12c
    .line 1101
    aget-object v20, v20, v21

    #@12e
    move-object/from16 v0, v20

    #@130
    move-object/from16 v1, v16

    #@132
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@135
    .line 1103
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@137
    .line 1104
    const/16 v21, 0x1

    #@139
    .line 1103
    aget-object v20, v20, v21

    #@13b
    move-object/from16 v0, v20

    #@13d
    move-object/from16 v1, v16

    #@13f
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    goto :goto_0

    #@143
    .line 1117
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_4
    const/16 v20, 0x5

    #@145
    move/from16 v0, v20

    #@147
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@14a
    move-result v20

    #@14b
    if-nez v20, :cond_5

    #@14d
    .line 1119
    new-instance v20, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@154
    .line 1120
    const/16 v22, 0x5

    #@156
    .line 1119
    aget-object v21, v21, v22

    #@158
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v20

    #@15c
    move-object/from16 v0, v20

    #@15e
    move-object/from16 v1, v17

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v20

    #@164
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v17

    #@168
    .line 1121
    const/16 v20, 0x5

    #@16a
    move-object/from16 v0, p0

    #@16c
    move/from16 v1, v20

    #@16e
    move-object/from16 v2, v17

    #@170
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@173
    .line 1123
    :cond_5
    const/16 v20, 0x2

    #@175
    move/from16 v0, v20

    #@177
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@17a
    move-result v20

    #@17b
    if-nez v20, :cond_6

    #@17d
    .line 1125
    new-instance v20, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@184
    .line 1126
    const/16 v22, 0x2

    #@186
    .line 1125
    aget-object v21, v21, v22

    #@188
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v20

    #@18c
    move-object/from16 v0, v20

    #@18e
    move-object/from16 v1, v17

    #@190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v20

    #@194
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v17

    #@198
    .line 1127
    const/16 v20, 0x2

    #@19a
    move-object/from16 v0, p0

    #@19c
    move/from16 v1, v20

    #@19e
    move-object/from16 v2, v17

    #@1a0
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@1a3
    .line 1129
    :cond_6
    const/16 v20, 0x1

    #@1a5
    move/from16 v0, v20

    #@1a7
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@1aa
    move-result v20

    #@1ab
    if-nez v20, :cond_7

    #@1ad
    .line 1131
    new-instance v20, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1b4
    .line 1132
    const/16 v22, 0x1

    #@1b6
    .line 1131
    aget-object v21, v21, v22

    #@1b8
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v20

    #@1bc
    move-object/from16 v0, v20

    #@1be
    move-object/from16 v1, v17

    #@1c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v20

    #@1c4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v17

    #@1c8
    .line 1133
    const/16 v20, 0x1

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move/from16 v1, v20

    #@1ce
    move-object/from16 v2, v17

    #@1d0
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@1d3
    .line 1144
    :cond_7
    new-instance v3, Landroid/icu/impl/CalendarData;

    #@1d5
    const/16 v20, 0x0

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    move-object/from16 v1, v20

    #@1db
    invoke-direct {v3, v0, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@1de
    .line 1145
    .local v3, "calData":Landroid/icu/impl/CalendarData;
    invoke-virtual {v3}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    #@1e1
    move-result-object v15

    #@1e2
    .line 1146
    .local v15, "patterns":[Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@1e5
    move-result-object v5

    #@1e6
    .line 1147
    .local v5, "datePattern":Ljava/lang/String;
    const/16 v20, 0x8

    #@1e8
    aget-object v20, v15, v20

    #@1ea
    const/16 v21, 0x9

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    move-object/from16 v1, v20

    #@1f0
    move/from16 v2, v21

    #@1f2
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@1f5
    .line 1148
    const/16 v20, 0x8

    #@1f7
    aget-object v20, v15, v20

    #@1f9
    const/16 v21, 0xa

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    move-object/from16 v1, v20

    #@1ff
    move/from16 v2, v21

    #@201
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@204
    .line 1149
    const/16 v20, 0x8

    #@206
    aget-object v20, v15, v20

    #@208
    const/16 v21, 0xc

    #@20a
    move-object/from16 v0, p0

    #@20c
    move-object/from16 v1, v20

    #@20e
    move/from16 v2, v21

    #@210
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@213
    goto/16 :goto_0
.end method

.method private initializePattern(Landroid/icu/impl/ICUCache;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 935
    .local p1, "cache":Landroid/icu/impl/ICUCache;, "Lcom/ibm/icu/impl/ICUCache<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 936
    .local v0, "fullPattern":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    #@b
    move-result-object v3

    #@c
    .line 937
    .local v3, "locale":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    #@d
    .line 938
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x0

    #@e
    .line 939
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz p1, :cond_0

    #@10
    .line 940
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    const-string/jumbo v6, "+"

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    const-string/jumbo v6, "+"

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 945
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    .end local v4    # "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    check-cast v4, Ljava/util/Map;

    #@43
    .line 947
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    #@45
    .line 948
    invoke-direct {p0, v0, v3}, Landroid/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;

    #@48
    move-result-object v1

    #@49
    .line 949
    .local v1, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4c
    move-result-object v4

    #@4d
    .line 950
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz p1, :cond_1

    #@4f
    .line 951
    invoke-interface {p1, v2, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@52
    .line 954
    .end local v1    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v4    # "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_1
    iput-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@54
    .line 934
    return-void

    #@55
    .line 943
    .local v2, "key":Ljava/lang/String;
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    const-string/jumbo v6, "+"

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    .local v2, "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1725
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1726
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@9
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@c
    .line 1724
    return-void

    #@d
    .line 1726
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 554
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    #@6
    .line 555
    .local v0, "other":Landroid/icu/text/DateIntervalFormat;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/text/SimpleDateFormat;

    #@e
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@10
    .line 556
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@12
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    #@18
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@1a
    .line 557
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@1c
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/icu/util/Calendar;

    #@22
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@24
    .line 558
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@26
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/icu/util/Calendar;

    #@2c
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@2e
    .line 559
    return-object v0
.end method

.method public final format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 670
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "can not format on two different calendars"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 675
    :cond_0
    const/4 v6, -0x1

    #@14
    .line 677
    .local v6, "field":I
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@17
    move-result v0

    #@18
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@1b
    move-result v1

    #@1c
    if-eq v0, v1, :cond_1

    #@1e
    .line 678
    const/4 v6, 0x0

    #@1f
    .line 705
    :goto_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@21
    .line 706
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@23
    aget-object v1, v1, v6

    #@25
    .line 705
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v8

    #@29
    check-cast v8, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@2b
    .line 708
    .local v8, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-nez v8, :cond_9

    #@2d
    .line 709
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2f
    invoke-virtual {v0, v6}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_8

    #@35
    .line 714
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@37
    invoke-virtual {v0, p1, p3, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v0

    #@3b
    return-object v0

    #@3c
    .line 679
    .end local v8    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@3f
    move-result v0

    #@40
    .line 680
    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@43
    move-result v1

    #@44
    .line 679
    if-eq v0, v1, :cond_2

    #@46
    .line 681
    const/4 v6, 0x1

    #@47
    goto :goto_0

    #@48
    .line 682
    :cond_2
    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@4b
    move-result v0

    #@4c
    .line 683
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@4f
    move-result v1

    #@50
    .line 682
    if-eq v0, v1, :cond_3

    #@52
    .line 684
    const/4 v6, 0x2

    #@53
    goto :goto_0

    #@54
    .line 685
    :cond_3
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@57
    move-result v0

    #@58
    .line 686
    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@5b
    move-result v1

    #@5c
    .line 685
    if-eq v0, v1, :cond_4

    #@5e
    .line 687
    const/4 v6, 0x5

    #@5f
    goto :goto_0

    #@60
    .line 688
    :cond_4
    const/16 v0, 0x9

    #@62
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@65
    move-result v0

    #@66
    .line 689
    const/16 v1, 0x9

    #@68
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6b
    move-result v1

    #@6c
    .line 688
    if-eq v0, v1, :cond_5

    #@6e
    .line 690
    const/16 v6, 0x9

    #@70
    goto :goto_0

    #@71
    .line 691
    :cond_5
    const/16 v0, 0xa

    #@73
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@76
    move-result v0

    #@77
    .line 692
    const/16 v1, 0xa

    #@79
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@7c
    move-result v1

    #@7d
    .line 691
    if-eq v0, v1, :cond_6

    #@7f
    .line 693
    const/16 v6, 0xa

    #@81
    goto :goto_0

    #@82
    .line 694
    :cond_6
    const/16 v0, 0xc

    #@84
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@87
    move-result v0

    #@88
    .line 695
    const/16 v1, 0xc

    #@8a
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@8d
    move-result v1

    #@8e
    .line 694
    if-eq v0, v1, :cond_7

    #@90
    .line 696
    const/16 v6, 0xc

    #@92
    goto :goto_0

    #@93
    .line 701
    :cond_7
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@95
    invoke-virtual {v0, p1, p3, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@98
    move-result-object v0

    #@99
    return-object v0

    #@9a
    .line 717
    .restart local v8    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9d
    move-result-object v0

    #@9e
    return-object v0

    #@9f
    .line 723
    :cond_9
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@a2
    move-result-object v0

    #@a3
    if-nez v0, :cond_a

    #@a5
    .line 726
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    move-object v0, p0

    #@aa
    move-object v1, p1

    #@ab
    move-object v2, p2

    #@ac
    move-object v3, p3

    #@ad
    move-object v4, p4

    #@ae
    .line 725
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b1
    move-result-object v0

    #@b2
    return-object v0

    #@b3
    .line 730
    :cond_a
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@b6
    move-result v0

    #@b7
    if-eqz v0, :cond_c

    #@b9
    .line 731
    move-object v7, p2

    #@ba
    .line 732
    .local v7, "firstCal":Landroid/icu/util/Calendar;
    move-object v10, p1

    #@bb
    .line 739
    .local v10, "secondCal":Landroid/icu/util/Calendar;
    :goto_1
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@bd
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@c0
    move-result-object v9

    #@c1
    .line 740
    .local v9, "originalPattern":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@c3
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@ca
    .line 741
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@cc
    invoke-virtual {v0, v7, p3, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@cf
    .line 742
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    if-eqz v0, :cond_b

    #@d5
    .line 743
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@d7
    invoke-virtual {v8}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@de
    .line 744
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@e0
    invoke-virtual {v0, v10, p3, p4}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e3
    .line 746
    :cond_b
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@e5
    invoke-virtual {v0, v9}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@e8
    .line 747
    return-object p3

    #@e9
    .line 734
    .end local v7    # "firstCal":Landroid/icu/util/Calendar;
    .end local v9    # "originalPattern":Ljava/lang/String;
    .end local v10    # "secondCal":Landroid/icu/util/Calendar;
    :cond_c
    move-object v7, p1

    #@ea
    .line 735
    .restart local v7    # "firstCal":Landroid/icu/util/Calendar;
    move-object v10, p2

    #@eb
    .restart local v10    # "secondCal":Landroid/icu/util/Calendar;
    goto :goto_1
.end method

.method public final format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "dtInterval"    # Landroid/icu/util/DateInterval;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getFromDate()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 607
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@b
    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getToDate()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 608
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@14
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@16
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 583
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 584
    check-cast p1, Landroid/icu/util/DateInterval;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 587
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Cannot format given Object ("

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, ") as a DateInterval"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method public getDateFormat()Landroid/icu/text/DateFormat;
    .locals 1

    #@0
    .prologue
    .line 923
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DateFormat;

    #@8
    return-object v0
.end method

.method public getDateIntervalInfo()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@8
    return-object v0
.end method

.method public getPatterns(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 8
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p3, "part2":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/String;>;"
    const/16 v7, 0x9

    #@2
    const/4 v6, 0x5

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 621
    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@9
    move-result v2

    #@a
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@d
    move-result v3

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 622
    const/4 v0, 0x0

    #@11
    .line 644
    .local v0, "field":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@13
    .line 645
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@15
    aget-object v3, v3, v0

    #@17
    .line 644
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@1d
    .line 646
    .local v1, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@23
    .line 647
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 623
    .end local v0    # "field":I
    .end local v1    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@2b
    move-result v2

    #@2c
    .line 624
    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@2f
    move-result v3

    #@30
    .line 623
    if-eq v2, v3, :cond_1

    #@32
    .line 625
    const/4 v0, 0x1

    #@33
    .restart local v0    # "field":I
    goto :goto_0

    #@34
    .line 626
    .end local v0    # "field":I
    :cond_1
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@37
    move-result v2

    #@38
    .line 627
    invoke-virtual {p2, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@3b
    move-result v3

    #@3c
    .line 626
    if-eq v2, v3, :cond_2

    #@3e
    .line 628
    const/4 v0, 0x2

    #@3f
    .restart local v0    # "field":I
    goto :goto_0

    #@40
    .line 629
    .end local v0    # "field":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@43
    move-result v2

    #@44
    .line 630
    invoke-virtual {p2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@47
    move-result v3

    #@48
    .line 629
    if-eq v2, v3, :cond_3

    #@4a
    .line 631
    const/4 v0, 0x5

    #@4b
    .restart local v0    # "field":I
    goto :goto_0

    #@4c
    .line 632
    .end local v0    # "field":I
    :cond_3
    invoke-virtual {p1, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@4f
    move-result v2

    #@50
    .line 633
    invoke-virtual {p2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@53
    move-result v3

    #@54
    .line 632
    if-eq v2, v3, :cond_4

    #@56
    .line 634
    const/16 v0, 0x9

    #@58
    .restart local v0    # "field":I
    goto :goto_0

    #@59
    .line 635
    .end local v0    # "field":I
    :cond_4
    const/16 v2, 0xa

    #@5b
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@5e
    move-result v2

    #@5f
    .line 636
    const/16 v3, 0xa

    #@61
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@64
    move-result v3

    #@65
    .line 635
    if-eq v2, v3, :cond_5

    #@67
    .line 637
    const/16 v0, 0xa

    #@69
    .restart local v0    # "field":I
    goto :goto_0

    #@6a
    .line 638
    .end local v0    # "field":I
    :cond_5
    const/16 v2, 0xc

    #@6c
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@6f
    move-result v2

    #@70
    .line 639
    const/16 v3, 0xc

    #@72
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@75
    move-result v3

    #@76
    .line 638
    if-eq v2, v3, :cond_6

    #@78
    .line 640
    const/16 v0, 0xc

    #@7a
    .restart local v0    # "field":I
    goto :goto_0

    #@7b
    .line 642
    .end local v0    # "field":I
    :cond_6
    const/4 v2, 0x0

    #@7c
    return-object v2
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1737
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 886
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@6
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getTimeZone()Landroid/icu/util/TimeZone;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/util/TimeZone;

    #@10
    return-object v0

    #@11
    .line 889
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "parse_pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "parsing is not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setDateIntervalInfo(Landroid/icu/text/DateIntervalInfo;)V
    .locals 2
    .param p1, "newItvPattern"    # Landroid/icu/text/DateIntervalInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 867
    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@7
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@9
    .line 868
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@c
    .line 869
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@e
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@11
    .line 870
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 871
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@18
    .line 863
    :cond_0
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 901
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/TimeZone;

    #@6
    .line 902
    .local v0, "zoneToSet":Landroid/icu/util/TimeZone;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 903
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@c
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@f
    .line 907
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 908
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@15
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@18
    .line 910
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 911
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@1e
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@21
    .line 898
    :cond_2
    return-void
.end method
