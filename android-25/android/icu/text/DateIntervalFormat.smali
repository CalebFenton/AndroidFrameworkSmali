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

.field private fDatePattern:Ljava/lang/String;

.field private fDateTimeFormat:Ljava/lang/String;

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

.field private fTimePattern:Ljava/lang/String;

.field private fToCalendar:Landroid/icu/util/Calendar;

.field private isDateIntervalInfoDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 291
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 290
    sput-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@7
    .line 253
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 340
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 315
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 326
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 331
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@a
    .line 332
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@c
    .line 333
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@e
    .line 340
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
    .line 361
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 315
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 326
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 331
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@a
    .line 332
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@c
    .line 333
    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@e
    .line 364
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@10
    .line 366
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@13
    .line 367
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@15
    .line 368
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@17
    .line 369
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@1a
    .line 370
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
    .line 371
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
    .line 372
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@39
    .line 362
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
    .line 375
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 315
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@6
    .line 326
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@8
    .line 331
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@a
    .line 332
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@c
    .line 333
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@e
    .line 378
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@10
    .line 379
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@12
    .line 380
    new-instance v0, Landroid/icu/text/DateIntervalInfo;

    #@14
    invoke-direct {v0, p2}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@17
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@1d
    .line 381
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@20
    .line 382
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@22
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/icu/util/Calendar;

    #@2c
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@2e
    .line 383
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@30
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/icu/util/Calendar;

    #@3a
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@3c
    .line 384
    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@3e
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@41
    .line 376
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
    .line 1677
    if-nez p2, :cond_0

    #@2
    .line 1678
    const/4 v14, 0x0

    #@3
    return-object v14

    #@4
    .line 1680
    :cond_0
    const/16 v14, 0x3a

    #@6
    new-array v10, v14, [I

    #@8
    .line 1681
    .local v10, "inputSkeletonFieldWidth":[I
    const/16 v14, 0x3a

    #@a
    new-array v3, v14, [I

    #@c
    .line 1697
    .local v3, "bestMatchSkeletonFieldWidth":[I
    move-object/from16 v0, p0

    #@e
    invoke-static {v0, v10}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@11
    .line 1698
    move-object/from16 v0, p1

    #@13
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@16
    .line 1699
    const/4 v14, 0x2

    #@17
    move/from16 v0, p3

    #@19
    if-ne v0, v14, :cond_1

    #@1b
    .line 1700
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
    .line 1703
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    move-object/from16 v0, p2

    #@29
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 1705
    .local v1, "adjustedPtn":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    #@2d
    .line 1706
    .local v8, "inQuote":Z
    const/4 v12, 0x0

    #@2e
    .line 1707
    .local v12, "prevCh":C
    const/4 v5, 0x0

    #@2f
    .line 1712
    .local v5, "count":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@32
    move-result v2

    #@33
    .line 1713
    .local v2, "adjustedPtnLength":I
    const/4 v7, 0x0

    #@34
    .end local v12    # "prevCh":C
    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_b

    #@36
    .line 1714
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    #@39
    move-result v4

    #@3a
    .line 1715
    .local v4, "ch":C
    if-eq v4, v12, :cond_5

    #@3c
    if-lez v5, :cond_5

    #@3e
    .line 1717
    move v13, v12

    #@3f
    .line 1718
    .local v13, "skeletonChar":C
    const/16 v14, 0x4c

    #@41
    if-ne v12, v14, :cond_2

    #@43
    .line 1720
    const/16 v13, 0x4d

    #@45
    .line 1722
    .end local v13    # "skeletonChar":C
    :cond_2
    add-int/lit8 v14, v13, -0x41

    #@47
    aget v6, v3, v14

    #@49
    .line 1723
    .local v6, "fieldCount":I
    add-int/lit8 v14, v13, -0x41

    #@4b
    aget v9, v10, v14

    #@4d
    .line 1724
    .local v9, "inputFieldCount":I
    if-ne v6, v5, :cond_4

    #@4f
    if-le v9, v6, :cond_4

    #@51
    .line 1725
    sub-int v5, v9, v6

    #@53
    .line 1726
    const/4 v11, 0x0

    #@54
    .local v11, "j":I
    :goto_1
    if-ge v11, v5, :cond_3

    #@56
    .line 1727
    invoke-virtual {v1, v7, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@59
    .line 1726
    add-int/lit8 v11, v11, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1729
    :cond_3
    add-int/2addr v7, v5

    #@5d
    .line 1730
    add-int/2addr v2, v5

    #@5e
    .line 1732
    .end local v11    # "j":I
    :cond_4
    const/4 v5, 0x0

    #@5f
    .line 1734
    .end local v6    # "fieldCount":I
    .end local v9    # "inputFieldCount":I
    :cond_5
    const/16 v14, 0x27

    #@61
    if-ne v4, v14, :cond_9

    #@63
    .line 1737
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
    .line 1738
    add-int/lit8 v7, v7, 0x1

    #@77
    .line 1713
    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 1740
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
    .line 1743
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
    .line 1746
    :goto_3
    move v12, v4

    #@8b
    .line 1747
    .local v12, "prevCh":C
    add-int/lit8 v5, v5, 0x1

    #@8d
    goto :goto_2

    #@8e
    .line 1744
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
    .line 1750
    .end local v4    # "ch":C
    :cond_b
    if-lez v5, :cond_d

    #@99
    .line 1753
    move v13, v12

    #@9a
    .line 1754
    .restart local v13    # "skeletonChar":C
    const/16 v14, 0x4c

    #@9c
    if-ne v12, v14, :cond_c

    #@9e
    .line 1756
    const/16 v13, 0x4d

    #@a0
    .line 1758
    .end local v13    # "skeletonChar":C
    :cond_c
    add-int/lit8 v14, v13, -0x41

    #@a2
    aget v6, v3, v14

    #@a4
    .line 1759
    .restart local v6    # "fieldCount":I
    add-int/lit8 v14, v13, -0x41

    #@a6
    aget v9, v10, v14

    #@a8
    .line 1760
    .restart local v9    # "inputFieldCount":I
    if-ne v6, v5, :cond_d

    #@aa
    if-le v9, v6, :cond_d

    #@ac
    .line 1761
    sub-int v5, v9, v6

    #@ae
    .line 1762
    const/4 v11, 0x0

    #@af
    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v5, :cond_d

    #@b1
    .line 1763
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    .line 1762
    add-int/lit8 v11, v11, 0x1

    #@b6
    goto :goto_4

    #@b7
    .line 1767
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

.method private adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V
    .locals 3
    .param p1, "combiningPattern"    # Ljava/lang/String;
    .param p2, "pat0"    # Ljava/lang/String;
    .param p3, "pos0"    # Ljava/text/FieldPosition;
    .param p4, "pat1"    # Ljava/lang/String;
    .param p5, "pos1"    # Ljava/text/FieldPosition;
    .param p6, "posResult"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 779
    const-string/jumbo v2, "{0}"

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 780
    .local v0, "index0":I
    const-string/jumbo v2, "{1}"

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 781
    .local v1, "index1":I
    if-ltz v0, :cond_0

    #@10
    if-gez v1, :cond_1

    #@12
    .line 782
    :cond_0
    return-void

    #@13
    .line 785
    :cond_1
    if-ge v0, v1, :cond_4

    #@15
    .line 786
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@18
    move-result v2

    #@19
    if-lez v2, :cond_3

    #@1b
    .line 787
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v2, v0

    #@20
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@23
    .line 788
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@26
    move-result v2

    #@27
    add-int/2addr v2, v0

    #@28
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@2b
    .line 778
    :cond_2
    :goto_0
    return-void

    #@2c
    .line 789
    :cond_3
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    #@2f
    move-result v2

    #@30
    if-lez v2, :cond_2

    #@32
    .line 791
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@35
    move-result v2

    #@36
    add-int/lit8 v2, v2, -0x3

    #@38
    add-int/2addr v1, v2

    #@39
    .line 792
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@3c
    move-result v2

    #@3d
    add-int/2addr v2, v1

    #@3e
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@41
    .line 793
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    #@44
    move-result v2

    #@45
    add-int/2addr v2, v1

    #@46
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@49
    goto :goto_0

    #@4a
    .line 796
    :cond_4
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    #@4d
    move-result v2

    #@4e
    if-lez v2, :cond_5

    #@50
    .line 797
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@53
    move-result v2

    #@54
    add-int/2addr v2, v1

    #@55
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@58
    .line 798
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    #@5b
    move-result v2

    #@5c
    add-int/2addr v2, v1

    #@5d
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@60
    goto :goto_0

    #@61
    .line 799
    :cond_5
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@64
    move-result v2

    #@65
    if-lez v2, :cond_2

    #@67
    .line 801
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@6a
    move-result v2

    #@6b
    add-int/lit8 v2, v2, -0x3

    #@6d
    add-int/2addr v0, v2

    #@6e
    .line 802
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@71
    move-result v2

    #@72
    add-int/2addr v2, v0

    #@73
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@76
    .line 803
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@79
    move-result v2

    #@7a
    add-int/2addr v2, v0

    #@7b
    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@7e
    goto :goto_0
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
    .line 1789
    .local p4, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
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
    .line 1790
    .local v2, "timeItvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-eqz v2, :cond_0

    #@c
    .line 1791
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
    .line 1792
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 1791
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1794
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
    .line 1793
    invoke-static {p1, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 1796
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@35
    move-result v3

    #@36
    .line 1795
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@39
    move-result-object v2

    #@3a
    .line 1798
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@3c
    aget-object v3, v3, p3

    #@3e
    .line 1797
    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 1785
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "timeIntervalPattern":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "fromToOnSameDay"    # Z
    .param p4, "appendTo"    # Ljava/lang/StringBuffer;
    .param p5, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 829
    const/16 v19, 0x0

    #@2
    .line 830
    .local v19, "fullPattern":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@8
    if-eqz v3, :cond_4

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@e
    if-eqz v3, :cond_3

    #@10
    const/4 v3, 0x1

    #@11
    :goto_0
    move/from16 v18, v3

    #@13
    .line 832
    .local v18, "formatDatePlusTimeRange":Z
    :goto_1
    if-eqz v18, :cond_0

    #@15
    .line 833
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@19
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@1c
    move-result-object v19

    #@1d
    .line 834
    .local v19, "fullPattern":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v5, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@25
    invoke-virtual {v3, v5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@28
    .line 836
    .end local v19    # "fullPattern":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/text/FieldPosition;

    #@2a
    invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getField()I

    #@2d
    move-result v3

    #@2e
    invoke-direct {v8, v3}, Ljava/text/FieldPosition;-><init>(I)V

    #@31
    .line 837
    .local v8, "otherPos":Ljava/text/FieldPosition;
    new-instance v17, Ljava/lang/StringBuffer;

    #@33
    const/16 v3, 0x40

    #@35
    move-object/from16 v0, v17

    #@37
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@3a
    .line 838
    .local v17, "earlierDate":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@3e
    move-object/from16 v0, p1

    #@40
    move-object/from16 v1, v17

    #@42
    move-object/from16 v2, p5

    #@44
    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v17

    #@48
    .line 839
    new-instance v20, Ljava/lang/StringBuffer;

    #@4a
    const/16 v3, 0x40

    #@4c
    move-object/from16 v0, v20

    #@4e
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@51
    .line 840
    .local v20, "laterDate":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@53
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@55
    move-object/from16 v0, p2

    #@57
    move-object/from16 v1, v20

    #@59
    invoke-virtual {v3, v0, v1, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v20

    #@5d
    .line 841
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@61
    invoke-virtual {v3}, Landroid/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 842
    .local v4, "fallbackPattern":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    move-object/from16 v3, p0

    #@6f
    move-object/from16 v6, p5

    #@71
    move-object/from16 v9, p5

    #@73
    invoke-direct/range {v3 .. v9}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    #@76
    .line 844
    const/4 v3, 0x2

    #@77
    new-array v3, v3, [Ljava/lang/Object;

    #@79
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    const/4 v6, 0x0

    #@7e
    aput-object v5, v3, v6

    #@80
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    const/4 v6, 0x1

    #@85
    aput-object v5, v3, v6

    #@87
    .line 843
    invoke-static {v4, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8a
    move-result-object v11

    #@8b
    .line 845
    .local v11, "fallbackRange":Ljava/lang/String;
    if-eqz v18, :cond_1

    #@8d
    .line 847
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v5, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@95
    invoke-virtual {v3, v5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@98
    .line 848
    new-instance v16, Ljava/lang/StringBuffer;

    #@9a
    const/16 v3, 0x40

    #@9c
    move-object/from16 v0, v16

    #@9e
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a1
    .line 849
    .local v16, "datePortion":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    #@a2
    invoke-virtual {v8, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@a5
    .line 850
    const/4 v3, 0x0

    #@a6
    invoke-virtual {v8, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@a9
    .line 851
    move-object/from16 v0, p0

    #@ab
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@ad
    move-object/from16 v0, p1

    #@af
    move-object/from16 v1, v16

    #@b1
    invoke-virtual {v3, v0, v1, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@b4
    move-result-object v16

    #@b5
    .line 852
    move-object/from16 v0, p0

    #@b7
    iget-object v10, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@b9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@bc
    move-result-object v13

    #@bd
    move-object/from16 v9, p0

    #@bf
    move-object/from16 v12, p5

    #@c1
    move-object v14, v8

    #@c2
    move-object/from16 v15, p5

    #@c4
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    #@c7
    .line 853
    move-object/from16 v0, p0

    #@c9
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@cb
    .line 854
    const/4 v5, 0x2

    #@cc
    new-array v5, v5, [Ljava/lang/Object;

    #@ce
    const/4 v6, 0x0

    #@cf
    aput-object v11, v5, v6

    #@d1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    const/4 v7, 0x1

    #@d6
    aput-object v6, v5, v7

    #@d8
    .line 853
    invoke-static {v3, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@db
    move-result-object v11

    #@dc
    .line 856
    .end local v16    # "datePortion":Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v0, p4

    #@de
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e1
    .line 857
    if-eqz v18, :cond_2

    #@e3
    .line 859
    move-object/from16 v0, p0

    #@e5
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@e7
    move-object/from16 v0, v19

    #@e9
    invoke-virtual {v3, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@ec
    .line 861
    :cond_2
    return-object p4

    #@ed
    .line 830
    .end local v4    # "fallbackPattern":Ljava/lang/String;
    .end local v8    # "otherPos":Ljava/text/FieldPosition;
    .end local v11    # "fallbackRange":Ljava/lang/String;
    .end local v17    # "earlierDate":Ljava/lang/StringBuffer;
    .end local v18    # "formatDatePlusTimeRange":Z
    .end local v20    # "laterDate":Ljava/lang/StringBuffer;
    .local v19, "fullPattern":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@ee
    goto/16 :goto_0

    #@f0
    :cond_4
    const/16 v18, 0x0

    #@f2
    goto/16 :goto_1
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "fromToOnSameDay"    # Z
    .param p4, "appendTo"    # Ljava/lang/StringBuffer;
    .param p5, "pos"    # Ljava/text/FieldPosition;
    .param p6, "fullPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 888
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 889
    .local v0, "originalPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v1, p6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@b
    .line 890
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    .line 891
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@10
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@13
    .line 892
    return-object p4
.end method

.method private static fieldExistsInSkeleton(ILjava/lang/String;)Z
    .locals 3
    .param p0, "field"    # I
    .param p1, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1813
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2
    aget-object v0, v1, p0

    #@4
    .line 1814
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
    .line 1253
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1258
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@6
    .line 1259
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    .line 1258
    invoke-direct {v1, v3, v0, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@10
    .line 1261
    .local v1, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@12
    aget-object v2, v2, p1

    #@14
    .line 1260
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1252
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
    .line 1568
    .local p5, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v9, 0x0

    #@1
    .line 1569
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
    .line 1571
    .local v6, "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-nez v6, :cond_6

    #@d
    .line 1573
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
    .line 1575
    new-instance v8, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@19
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@1b
    invoke-virtual {v12}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@1e
    move-result-object v12

    #@1f
    .line 1577
    iget-object v13, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@21
    invoke-virtual {v13}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@24
    move-result v13

    #@25
    .line 1576
    const/4 v14, 0x0

    #@26
    .line 1575
    invoke-direct {v8, v12, v14, v13}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@29
    .line 1578
    .local v8, "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2b
    aget-object v12, v12, p1

    #@2d
    move-object/from16 v0, p5

    #@2f
    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 1580
    const/4 v12, 0x0

    #@33
    return-object v12

    #@34
    .line 1587
    .end local v8    # "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_0
    const/16 v12, 0x9

    #@36
    move/from16 v0, p1

    #@38
    if-ne v0, v12, :cond_2

    #@3a
    .line 1588
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@3c
    .line 1589
    const/16 v13, 0xa

    #@3e
    .line 1588
    move-object/from16 v0, p3

    #@40
    invoke-virtual {v12, v0, v13}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@43
    move-result-object v6

    #@44
    .line 1590
    if-eqz v6, :cond_1

    #@46
    .line 1592
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@48
    aget-object v12, v12, p1

    #@4a
    move-object/from16 v0, p5

    #@4c
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 1596
    :cond_1
    const/4 v12, 0x0

    #@50
    return-object v12

    #@51
    .line 1605
    :cond_2
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@53
    .line 1604
    aget-object v3, v12, p1

    #@55
    .line 1606
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
    .line 1607
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
    .line 1610
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
    .line 1611
    if-nez v6, :cond_3

    #@87
    if-nez p4, :cond_3

    #@89
    .line 1614
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v12, v0}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    #@90
    move-result-object v11

    #@91
    .line 1615
    .local v11, "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v10, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    #@93
    .line 1616
    .local v10, "tmpBestSkeleton":Ljava/lang/String;
    iget v0, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    #@95
    move/from16 p4, v0

    #@97
    .line 1617
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
    .line 1618
    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@a4
    move/from16 v0, p1

    #@a6
    invoke-virtual {v12, v10, v0}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@a9
    move-result-object v6

    #@aa
    .line 1619
    move-object/from16 p3, v10

    #@ac
    .line 1622
    .end local v10    # "tmpBestSkeleton":Ljava/lang/String;
    .end local v11    # "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_3
    if-eqz v6, :cond_6

    #@ae
    .line 1623
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
    .line 1626
    .end local v3    # "fieldLetter":Ljava/lang/String;
    .end local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .end local v9    # "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .local v7, "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :goto_0
    if-eqz v7, :cond_5

    #@ba
    .line 1627
    if-eqz p4, :cond_4

    #@bc
    .line 1629
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    .line 1628
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
    .line 1631
    .local v4, "part1":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@cd
    move-result-object v12

    #@ce
    .line 1630
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
    .line 1632
    .local v5, "part2":Ljava/lang/String;
    new-instance v6, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@da
    .line 1633
    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@dd
    move-result v12

    #@de
    .line 1632
    invoke-direct {v6, v4, v5, v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@e1
    .line 1639
    .end local v4    # "part1":Ljava/lang/String;
    .end local v5    # "part2":Ljava/lang/String;
    .end local v7    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .restart local v6    # "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :goto_1
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@e3
    aget-object v12, v12, p1

    #@e5
    .line 1638
    move-object/from16 v0, p5

    #@e7
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 1641
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

.method private genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z
    .locals 9
    .param p1, "dateSkeleton"    # Ljava/lang/String;
    .param p2, "timeSkeleton"    # Ljava/lang/String;
    .param p4, "dtpng"    # Landroid/icu/text/DateTimePatternGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v8, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1481
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 1482
    move-object v2, p2

    #@9
    .line 1496
    .local v2, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@b
    invoke-virtual {v0, v2}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    #@e
    move-result-object v6

    #@f
    .line 1497
    .local v6, "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v3, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    #@11
    .line 1498
    .local v3, "bestSkeleton":Ljava/lang/String;
    iget v4, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    #@13
    .line 1502
    .local v4, "differenceInfo":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 1503
    invoke-virtual {p4, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@1f
    .line 1505
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 1506
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@2b
    .line 1516
    :cond_1
    const/4 v0, -0x1

    #@2c
    if-ne v4, v0, :cond_3

    #@2e
    .line 1518
    return v1

    #@2f
    .line 1484
    .end local v2    # "skeleton":Ljava/lang/String;
    .end local v3    # "bestSkeleton":Ljava/lang/String;
    .end local v4    # "differenceInfo":I
    .end local v6    # "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_2
    move-object v2, p1

    #@30
    .restart local v2    # "skeleton":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 1521
    .restart local v3    # "bestSkeleton":Ljava/lang/String;
    .restart local v4    # "differenceInfo":I
    .restart local v6    # "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_5

    #@37
    .line 1523
    const/4 v1, 0x5

    #@38
    move-object v0, p0

    #@39
    move-object v5, p3

    #@3a
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@3d
    .line 1525
    const/4 v1, 0x2

    #@3e
    move-object v0, p0

    #@3f
    move-object v5, p3

    #@40
    .line 1524
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@43
    move-result-object v7

    #@44
    .line 1528
    .local v7, "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    if-eqz v7, :cond_4

    #@46
    .line 1529
    iget-object v3, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    #@48
    .line 1530
    iget-object v2, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    #@4a
    :cond_4
    move-object v0, p0

    #@4b
    move v1, v8

    #@4c
    move-object v5, p3

    #@4d
    .line 1532
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@50
    .line 1538
    .end local v7    # "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    :goto_1
    return v8

    #@51
    .line 1534
    :cond_5
    const/16 v1, 0xc

    #@53
    move-object v0, p0

    #@54
    move-object v5, p3

    #@55
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@58
    .line 1535
    const/16 v1, 0xa

    #@5a
    move-object v0, p0

    #@5b
    move-object v5, p3

    #@5c
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@5f
    .line 1536
    const/16 v1, 0x9

    #@61
    move-object v0, p0

    #@62
    move-object v5, p3

    #@63
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    #@66
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
    .line 1314
    const/4 v1, 0x0

    #@1
    .line 1315
    .local v1, "ECount":I
    const/4 v5, 0x0

    #@2
    .line 1316
    .local v5, "dCount":I
    const/4 v3, 0x0

    #@3
    .line 1317
    .local v3, "MCount":I
    const/4 v10, 0x0

    #@4
    .line 1318
    .local v10, "yCount":I
    const/4 v6, 0x0

    #@5
    .line 1319
    .local v6, "hCount":I
    const/4 v2, 0x0

    #@6
    .line 1320
    .local v2, "HCount":I
    const/4 v8, 0x0

    #@7
    .line 1321
    .local v8, "mCount":I
    const/4 v9, 0x0

    #@8
    .line 1322
    .local v9, "vCount":I
    const/4 v11, 0x0

    #@9
    .line 1324
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
    .line 1325
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v4

    #@14
    .line 1326
    .local v4, "ch":C
    packed-switch v4, :pswitch_data_0

    #@17
    .line 1324
    :goto_1
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1328
    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 1329
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 1330
    goto :goto_1

    #@20
    .line 1332
    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 1333
    add-int/lit8 v5, v5, 0x1

    #@25
    .line 1334
    goto :goto_1

    #@26
    .line 1336
    :pswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 1337
    add-int/lit8 v3, v3, 0x1

    #@2b
    .line 1338
    goto :goto_1

    #@2c
    .line 1340
    :pswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 1341
    add-int/lit8 v10, v10, 0x1

    #@31
    .line 1342
    goto :goto_1

    #@32
    .line 1359
    :pswitch_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 1360
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    goto :goto_1

    #@39
    .line 1364
    :pswitch_6
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_1

    #@3f
    .line 1367
    :pswitch_7
    move-object/from16 v0, p3

    #@41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 1368
    add-int/lit8 v6, v6, 0x1

    #@46
    .line 1369
    goto :goto_1

    #@47
    .line 1371
    :pswitch_8
    move-object/from16 v0, p3

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 1372
    add-int/lit8 v2, v2, 0x1

    #@4e
    .line 1373
    goto :goto_1

    #@4f
    .line 1375
    :pswitch_9
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 1376
    add-int/lit8 v8, v8, 0x1

    #@56
    .line 1377
    goto :goto_1

    #@57
    .line 1379
    :pswitch_a
    add-int/lit8 v11, v11, 0x1

    #@59
    .line 1380
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 1383
    :pswitch_b
    add-int/lit8 v9, v9, 0x1

    #@61
    .line 1384
    move-object/from16 v0, p3

    #@63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    goto :goto_1

    #@67
    .line 1394
    :pswitch_c
    move-object/from16 v0, p3

    #@69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 1395
    move-object/from16 v0, p4

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    goto :goto_1

    #@72
    .line 1401
    .end local v4    # "ch":C
    :cond_0
    if-eqz v10, :cond_1

    #@74
    .line 1402
    const/4 v7, 0x0

    #@75
    :goto_2
    if-ge v7, v10, :cond_1

    #@77
    .line 1403
    const/16 v12, 0x79

    #@79
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    .line 1402
    add-int/lit8 v7, v7, 0x1

    #@7e
    goto :goto_2

    #@7f
    .line 1406
    :cond_1
    if-eqz v3, :cond_2

    #@81
    .line 1407
    const/4 v12, 0x3

    #@82
    if-ge v3, v12, :cond_9

    #@84
    .line 1408
    const/16 v12, 0x4d

    #@86
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    .line 1415
    :cond_2
    if-eqz v1, :cond_3

    #@8b
    .line 1416
    const/4 v12, 0x3

    #@8c
    if-gt v1, v12, :cond_a

    #@8e
    .line 1417
    const/16 v12, 0x45

    #@90
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@93
    .line 1424
    :cond_3
    if-eqz v5, :cond_4

    #@95
    .line 1425
    const/16 v12, 0x64

    #@97
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    .line 1429
    :cond_4
    if-eqz v2, :cond_b

    #@9c
    .line 1430
    const/16 v12, 0x48

    #@9e
    move-object/from16 v0, p4

    #@a0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    .line 1435
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    #@a5
    .line 1436
    const/16 v12, 0x6d

    #@a7
    move-object/from16 v0, p4

    #@a9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    .line 1438
    :cond_6
    if-eqz v11, :cond_7

    #@ae
    .line 1439
    const/16 v12, 0x7a

    #@b0
    move-object/from16 v0, p4

    #@b2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    .line 1441
    :cond_7
    if-eqz v9, :cond_8

    #@b7
    .line 1442
    const/16 v12, 0x76

    #@b9
    move-object/from16 v0, p4

    #@bb
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    .line 1309
    :cond_8
    return-void

    #@bf
    .line 1410
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
    .line 1411
    const/16 v12, 0x4d

    #@c7
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 1410
    add-int/lit8 v7, v7, 0x1

    #@cc
    goto :goto_4

    #@cd
    .line 1419
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
    .line 1420
    const/16 v12, 0x45

    #@d5
    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d8
    .line 1419
    add-int/lit8 v7, v7, 0x1

    #@da
    goto :goto_5

    #@db
    .line 1432
    :cond_b
    if-eqz v6, :cond_5

    #@dd
    .line 1433
    const/16 v12, 0x68

    #@df
    move-object/from16 v0, p4

    #@e1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e4
    goto :goto_3

    #@e5
    .line 1326
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
    .line 403
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
    .line 478
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
    .line 456
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v0

    #@4
    .line 457
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
    .line 546
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    .end local p2    # "dtitvinf":Landroid/icu/text/DateIntervalInfo;
    check-cast p2, Landroid/icu/text/DateIntervalInfo;

    #@6
    .line 547
    .restart local p2    # "dtitvinf":Landroid/icu/text/DateIntervalInfo;
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@9
    move-result-object v0

    #@a
    .line 548
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
    .line 421
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
    .line 500
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
    .line 1073
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v7

    #@4
    .line 1074
    .local v7, "dtpng":Landroid/icu/text/DateTimePatternGenerator;
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@8
    move-object/from16 v20, v0

    #@a
    if-nez v20, :cond_0

    #@c
    .line 1077
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
    .line 1079
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@1c
    move-object/from16 v17, v0

    #@1e
    .line 1081
    .local v17, "skeleton":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    #@20
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@23
    .line 1086
    .local v9, "intervalPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
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
    .line 1087
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
    .line 1088
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
    .line 1089
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
    .line 1102
    .local v12, "normalizedTime":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    #@53
    move-object/from16 v1, v18

    #@55
    invoke-static {v0, v4, v10, v1, v12}, Landroid/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    #@58
    .line 1105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    .line 1106
    .local v6, "dateSkeleton":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v19

    #@60
    .line 1107
    .local v19, "timeSkeleton":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v11

    #@64
    .line 1108
    .local v11, "normalizedDateSkeleton":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v13

    #@68
    .line 1111
    .local v13, "normalizedTimeSkeleton":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    #@6b
    move-result v20

    #@6c
    if-eqz v20, :cond_1

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@71
    move-result v20

    #@72
    if-eqz v20, :cond_1

    #@74
    .line 1116
    new-instance v3, Landroid/icu/impl/CalendarData;

    #@76
    const/16 v20, 0x0

    #@78
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, v20

    #@7c
    invoke-direct {v3, v0, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@7f
    .line 1117
    .local v3, "calData":Landroid/icu/impl/CalendarData;
    invoke-virtual {v3}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    #@82
    move-result-object v15

    #@83
    .line 1118
    .local v15, "patterns":[Ljava/lang/String;
    const/16 v20, 0x8

    #@85
    aget-object v20, v15, v20

    #@87
    move-object/from16 v0, v20

    #@89
    move-object/from16 v1, p0

    #@8b
    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@8d
    .line 1121
    .end local v3    # "calData":Landroid/icu/impl/CalendarData;
    .end local v15    # "patterns":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v0, v11, v13, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z

    #@92
    move-result v8

    #@93
    .line 1126
    .local v8, "found":Z
    if-nez v8, :cond_3

    #@95
    .line 1130
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    #@98
    move-result v20

    #@99
    if-eqz v20, :cond_2

    #@9b
    .line 1134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@9e
    move-result v20

    #@9f
    if-nez v20, :cond_2

    #@a1
    .line 1136
    new-instance v20, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v21, "yMd"

    #@a9
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v20

    #@ad
    move-object/from16 v0, v20

    #@af
    move-object/from16 v1, v19

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v20

    #@b5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v19

    #@b9
    .line 1137
    move-object/from16 v0, v19

    #@bb
    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v14

    #@bf
    .line 1142
    .local v14, "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@c1
    .line 1143
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@c5
    move-object/from16 v20, v0

    #@c7
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@ca
    move-result v20

    #@cb
    .line 1142
    const/16 v21, 0x0

    #@cd
    move-object/from16 v0, v16

    #@cf
    move-object/from16 v1, v21

    #@d1
    move/from16 v2, v20

    #@d3
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@d6
    .line 1144
    .local v16, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@d8
    .line 1145
    const/16 v21, 0x5

    #@da
    .line 1144
    aget-object v20, v20, v21

    #@dc
    move-object/from16 v0, v20

    #@de
    move-object/from16 v1, v16

    #@e0
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 1147
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@e5
    .line 1148
    const/16 v21, 0x2

    #@e7
    .line 1147
    aget-object v20, v20, v21

    #@e9
    move-object/from16 v0, v20

    #@eb
    move-object/from16 v1, v16

    #@ed
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 1150
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@f2
    .line 1151
    const/16 v21, 0x1

    #@f4
    .line 1150
    aget-object v20, v20, v21

    #@f6
    move-object/from16 v0, v20

    #@f8
    move-object/from16 v1, v16

    #@fa
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 1162
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_2
    return-object v9

    #@fe
    .line 1165
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    #@101
    move-result v20

    #@102
    if-nez v20, :cond_4

    #@104
    .line 1238
    :goto_0
    return-object v9

    #@105
    .line 1167
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@108
    move-result v20

    #@109
    if-nez v20, :cond_5

    #@10b
    .line 1180
    new-instance v20, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v21, "yMd"

    #@113
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v20

    #@117
    move-object/from16 v0, v20

    #@119
    move-object/from16 v1, v19

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v20

    #@11f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v19

    #@123
    .line 1181
    move-object/from16 v0, v19

    #@125
    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@128
    move-result-object v14

    #@129
    .line 1186
    .restart local v14    # "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@12b
    .line 1187
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@12f
    move-object/from16 v20, v0

    #@131
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    #@134
    move-result v20

    #@135
    const/16 v21, 0x0

    #@137
    .line 1186
    move-object/from16 v0, v16

    #@139
    move-object/from16 v1, v21

    #@13b
    move/from16 v2, v20

    #@13d
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@140
    .line 1188
    .restart local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@142
    .line 1189
    const/16 v21, 0x5

    #@144
    .line 1188
    aget-object v20, v20, v21

    #@146
    move-object/from16 v0, v20

    #@148
    move-object/from16 v1, v16

    #@14a
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    .line 1190
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@14f
    .line 1191
    const/16 v21, 0x2

    #@151
    .line 1190
    aget-object v20, v20, v21

    #@153
    move-object/from16 v0, v20

    #@155
    move-object/from16 v1, v16

    #@157
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15a
    .line 1192
    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@15c
    .line 1193
    const/16 v21, 0x1

    #@15e
    .line 1192
    aget-object v20, v20, v21

    #@160
    move-object/from16 v0, v20

    #@162
    move-object/from16 v1, v16

    #@164
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@167
    goto :goto_0

    #@168
    .line 1206
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_5
    const/16 v20, 0x5

    #@16a
    move/from16 v0, v20

    #@16c
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@16f
    move-result v20

    #@170
    if-nez v20, :cond_6

    #@172
    .line 1208
    new-instance v20, Ljava/lang/StringBuilder;

    #@174
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@179
    .line 1209
    const/16 v22, 0x5

    #@17b
    .line 1208
    aget-object v21, v21, v22

    #@17d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v20

    #@181
    move-object/from16 v0, v20

    #@183
    move-object/from16 v1, v17

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v20

    #@189
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v17

    #@18d
    .line 1210
    const/16 v20, 0x5

    #@18f
    move-object/from16 v0, p0

    #@191
    move/from16 v1, v20

    #@193
    move-object/from16 v2, v17

    #@195
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@198
    .line 1212
    :cond_6
    const/16 v20, 0x2

    #@19a
    move/from16 v0, v20

    #@19c
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@19f
    move-result v20

    #@1a0
    if-nez v20, :cond_7

    #@1a2
    .line 1214
    new-instance v20, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1a9
    .line 1215
    const/16 v22, 0x2

    #@1ab
    .line 1214
    aget-object v21, v21, v22

    #@1ad
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v20

    #@1b1
    move-object/from16 v0, v20

    #@1b3
    move-object/from16 v1, v17

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v20

    #@1b9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v17

    #@1bd
    .line 1216
    const/16 v20, 0x2

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move/from16 v1, v20

    #@1c3
    move-object/from16 v2, v17

    #@1c5
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@1c8
    .line 1218
    :cond_7
    const/16 v20, 0x1

    #@1ca
    move/from16 v0, v20

    #@1cc
    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    #@1cf
    move-result v20

    #@1d0
    if-nez v20, :cond_8

    #@1d2
    .line 1220
    new-instance v20, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1d9
    .line 1221
    const/16 v22, 0x1

    #@1db
    .line 1220
    aget-object v21, v21, v22

    #@1dd
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v20

    #@1e1
    move-object/from16 v0, v20

    #@1e3
    move-object/from16 v1, v17

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v20

    #@1e9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v17

    #@1ed
    .line 1222
    const/16 v20, 0x1

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move/from16 v1, v20

    #@1f3
    move-object/from16 v2, v17

    #@1f5
    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    #@1f8
    .line 1229
    :cond_8
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@1fc
    move-object/from16 v20, v0

    #@1fe
    if-nez v20, :cond_9

    #@200
    .line 1230
    const-string/jumbo v20, "{1} {0}"

    #@203
    move-object/from16 v0, v20

    #@205
    move-object/from16 v1, p0

    #@207
    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@209
    .line 1232
    :cond_9
    invoke-virtual {v7, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@20c
    move-result-object v5

    #@20d
    .line 1233
    .local v5, "datePattern":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@211
    move-object/from16 v20, v0

    #@213
    const/16 v21, 0x9

    #@215
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v20

    #@219
    move/from16 v2, v21

    #@21b
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@21e
    .line 1234
    move-object/from16 v0, p0

    #@220
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@222
    move-object/from16 v20, v0

    #@224
    const/16 v21, 0xa

    #@226
    move-object/from16 v0, p0

    #@228
    move-object/from16 v1, v20

    #@22a
    move/from16 v2, v21

    #@22c
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@22f
    .line 1235
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@233
    move-object/from16 v20, v0

    #@235
    const/16 v21, 0xc

    #@237
    move-object/from16 v0, p0

    #@239
    move-object/from16 v1, v20

    #@23b
    move/from16 v2, v21

    #@23d
    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    #@240
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
    .line 1012
    .local p1, "cache":Landroid/icu/impl/ICUCache;, "Landroid/icu/impl/ICUCache<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1013
    .local v0, "fullPattern":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    #@b
    move-result-object v3

    #@c
    .line 1014
    .local v3, "locale":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    #@d
    .line 1015
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x0

    #@e
    .line 1016
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz p1, :cond_0

    #@10
    .line 1017
    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 1018
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
    .line 1022
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    .end local v4    # "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    check-cast v4, Ljava/util/Map;

    #@43
    .line 1024
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    #@45
    .line 1025
    invoke-direct {p0, v0, v3}, Landroid/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;

    #@48
    move-result-object v1

    #@49
    .line 1026
    .local v1, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4c
    move-result-object v4

    #@4d
    .line 1027
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz p1, :cond_1

    #@4f
    .line 1028
    invoke-interface {p1, v2, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@52
    .line 1031
    .end local v1    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v4    # "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_1
    iput-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@54
    .line 1011
    return-void

    #@55
    .line 1020
    .local v2, "key":Ljava/lang/String;
    .local v4, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
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
    .line 1823
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1824
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@9
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@c
    .line 1822
    return-void

    #@d
    .line 1824
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
    .line 558
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    #@6
    .line 559
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
    .line 560
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
    .line 561
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
    .line 562
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
    .line 563
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@30
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    #@32
    .line 564
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@34
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    #@36
    .line 565
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@38
    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    #@3a
    .line 566
    return-object v0
.end method

.method public final format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 687
    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 688
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "can not format on two different calendars"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 692
    :cond_0
    const/4 v10, -0x1

    #@10
    .line 694
    .local v10, "field":I
    const/4 v3, 0x0

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@16
    move-result v3

    #@17
    const/4 v4, 0x0

    #@18
    move-object/from16 v0, p2

    #@1a
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@1d
    move-result v4

    #@1e
    if-eq v3, v4, :cond_2

    #@20
    .line 695
    const/4 v10, 0x0

    #@21
    .line 723
    :goto_0
    const/16 v3, 0x9

    #@23
    if-eq v10, v3, :cond_1

    #@25
    const/16 v3, 0xa

    #@27
    if-ne v10, v3, :cond_a

    #@29
    :cond_1
    const/4 v6, 0x1

    #@2a
    .line 726
    .local v6, "fromToOnSameDay":Z
    :goto_1
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@2e
    .line 727
    sget-object v4, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@30
    aget-object v4, v4, v10

    #@32
    .line 726
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v12

    #@36
    check-cast v12, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@38
    .line 729
    .local v12, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-nez v12, :cond_c

    #@3a
    .line 730
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@3e
    invoke-virtual {v3, v10}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_b

    #@44
    .line 735
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@48
    move-object/from16 v0, p1

    #@4a
    move-object/from16 v1, p3

    #@4c
    move-object/from16 v2, p4

    #@4e
    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@51
    move-result-object v3

    #@52
    return-object v3

    #@53
    .line 696
    .end local v6    # "fromToOnSameDay":Z
    .end local v12    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_2
    const/4 v3, 0x1

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@59
    move-result v3

    #@5a
    .line 697
    const/4 v4, 0x1

    #@5b
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@60
    move-result v4

    #@61
    .line 696
    if-eq v3, v4, :cond_3

    #@63
    .line 698
    const/4 v10, 0x1

    #@64
    goto :goto_0

    #@65
    .line 699
    :cond_3
    const/4 v3, 0x2

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@6b
    move-result v3

    #@6c
    .line 700
    const/4 v4, 0x2

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@72
    move-result v4

    #@73
    .line 699
    if-eq v3, v4, :cond_4

    #@75
    .line 701
    const/4 v10, 0x2

    #@76
    goto :goto_0

    #@77
    .line 702
    :cond_4
    const/4 v3, 0x5

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@7d
    move-result v3

    #@7e
    .line 703
    const/4 v4, 0x5

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@84
    move-result v4

    #@85
    .line 702
    if-eq v3, v4, :cond_5

    #@87
    .line 704
    const/4 v10, 0x5

    #@88
    goto :goto_0

    #@89
    .line 705
    :cond_5
    const/16 v3, 0x9

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@90
    move-result v3

    #@91
    .line 706
    const/16 v4, 0x9

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@98
    move-result v4

    #@99
    .line 705
    if-eq v3, v4, :cond_6

    #@9b
    .line 707
    const/16 v10, 0x9

    #@9d
    goto :goto_0

    #@9e
    .line 708
    :cond_6
    const/16 v3, 0xa

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@a5
    move-result v3

    #@a6
    .line 709
    const/16 v4, 0xa

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@ad
    move-result v4

    #@ae
    .line 708
    if-eq v3, v4, :cond_7

    #@b0
    .line 710
    const/16 v10, 0xa

    #@b2
    goto/16 :goto_0

    #@b4
    .line 711
    :cond_7
    const/16 v3, 0xc

    #@b6
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@bb
    move-result v3

    #@bc
    .line 712
    const/16 v4, 0xc

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@c3
    move-result v4

    #@c4
    .line 711
    if-eq v3, v4, :cond_8

    #@c6
    .line 713
    const/16 v10, 0xc

    #@c8
    goto/16 :goto_0

    #@ca
    .line 714
    :cond_8
    const/16 v3, 0xd

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@d1
    move-result v3

    #@d2
    .line 715
    const/16 v4, 0xd

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@d9
    move-result v4

    #@da
    .line 714
    if-eq v3, v4, :cond_9

    #@dc
    .line 716
    const/16 v10, 0xd

    #@de
    goto/16 :goto_0

    #@e0
    .line 721
    :cond_9
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@e4
    move-object/from16 v0, p1

    #@e6
    move-object/from16 v1, p3

    #@e8
    move-object/from16 v2, p4

    #@ea
    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ed
    move-result-object v3

    #@ee
    return-object v3

    #@ef
    .line 723
    :cond_a
    const/16 v3, 0xc

    #@f1
    if-eq v10, v3, :cond_1

    #@f3
    const/16 v3, 0xd

    #@f5
    if-eq v10, v3, :cond_1

    #@f7
    const/4 v6, 0x0

    #@f8
    .restart local v6    # "fromToOnSameDay":Z
    goto/16 :goto_1

    #@fa
    .restart local v12    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_b
    move-object/from16 v3, p0

    #@fc
    move-object/from16 v4, p1

    #@fe
    move-object/from16 v5, p2

    #@100
    move-object/from16 v7, p3

    #@102
    move-object/from16 v8, p4

    #@104
    .line 738
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@107
    move-result-object v3

    #@108
    return-object v3

    #@109
    .line 744
    :cond_c
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@10c
    move-result-object v3

    #@10d
    if-nez v3, :cond_d

    #@10f
    .line 747
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@112
    move-result-object v9

    #@113
    move-object/from16 v3, p0

    #@115
    move-object/from16 v4, p1

    #@117
    move-object/from16 v5, p2

    #@119
    move-object/from16 v7, p3

    #@11b
    move-object/from16 v8, p4

    #@11d
    .line 746
    invoke-direct/range {v3 .. v9}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@120
    move-result-object v3

    #@121
    return-object v3

    #@122
    .line 751
    :cond_d
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_f

    #@128
    .line 752
    move-object/from16 v11, p2

    #@12a
    .line 753
    .local v11, "firstCal":Landroid/icu/util/Calendar;
    move-object/from16 v15, p1

    #@12c
    .line 760
    .local v15, "secondCal":Landroid/icu/util/Calendar;
    :goto_2
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@130
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@133
    move-result-object v13

    #@134
    .line 761
    .local v13, "originalPattern":Ljava/lang/String;
    move-object/from16 v0, p0

    #@136
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@138
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@13b
    move-result-object v4

    #@13c
    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@13f
    .line 762
    move-object/from16 v0, p0

    #@141
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@143
    move-object/from16 v0, p3

    #@145
    move-object/from16 v1, p4

    #@147
    invoke-virtual {v3, v11, v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@14a
    .line 763
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@14d
    move-result-object v3

    #@14e
    if-eqz v3, :cond_e

    #@150
    .line 764
    move-object/from16 v0, p0

    #@152
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@154
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@157
    move-result-object v4

    #@158
    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@15b
    .line 765
    new-instance v14, Ljava/text/FieldPosition;

    #@15d
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@160
    move-result v3

    #@161
    invoke-direct {v14, v3}, Ljava/text/FieldPosition;-><init>(I)V

    #@164
    .line 766
    .local v14, "otherPos":Ljava/text/FieldPosition;
    move-object/from16 v0, p0

    #@166
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@168
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v3, v15, v0, v14}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@16d
    .line 767
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getEndIndex()I

    #@170
    move-result v3

    #@171
    if-nez v3, :cond_e

    #@173
    invoke-virtual {v14}, Ljava/text/FieldPosition;->getEndIndex()I

    #@176
    move-result v3

    #@177
    if-lez v3, :cond_e

    #@179
    .line 768
    move-object/from16 p4, v14

    #@17b
    .line 771
    .end local v14    # "otherPos":Ljava/text/FieldPosition;
    :cond_e
    move-object/from16 v0, p0

    #@17d
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@17f
    invoke-virtual {v3, v13}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@182
    .line 772
    return-object p3

    #@183
    .line 755
    .end local v11    # "firstCal":Landroid/icu/util/Calendar;
    .end local v13    # "originalPattern":Ljava/lang/String;
    .end local v15    # "secondCal":Landroid/icu/util/Calendar;
    :cond_f
    move-object/from16 v11, p1

    #@185
    .line 756
    .restart local v11    # "firstCal":Landroid/icu/util/Calendar;
    move-object/from16 v15, p2

    #@187
    .restart local v15    # "secondCal":Landroid/icu/util/Calendar;
    goto :goto_2
.end method

.method public final format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "dtInterval"    # Landroid/icu/util/DateInterval;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getFromDate()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 618
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@b
    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getToDate()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 619
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
    .line 592
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 593
    check-cast p1, Landroid/icu/util/DateInterval;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 596
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
    .line 1000
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
    .line 935
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
    .local p3, "part2":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/String;>;"
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
    .line 633
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
    .line 634
    const/4 v0, 0x0

    #@11
    .line 659
    .local v0, "field":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@13
    .line 660
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@15
    aget-object v3, v3, v0

    #@17
    .line 659
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@1d
    .line 661
    .local v1, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@23
    .line 662
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 635
    .end local v0    # "field":I
    .end local v1    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@2b
    move-result v2

    #@2c
    .line 636
    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@2f
    move-result v3

    #@30
    .line 635
    if-eq v2, v3, :cond_1

    #@32
    .line 637
    const/4 v0, 0x1

    #@33
    .restart local v0    # "field":I
    goto :goto_0

    #@34
    .line 638
    .end local v0    # "field":I
    :cond_1
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@37
    move-result v2

    #@38
    .line 639
    invoke-virtual {p2, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@3b
    move-result v3

    #@3c
    .line 638
    if-eq v2, v3, :cond_2

    #@3e
    .line 640
    const/4 v0, 0x2

    #@3f
    .restart local v0    # "field":I
    goto :goto_0

    #@40
    .line 641
    .end local v0    # "field":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@43
    move-result v2

    #@44
    .line 642
    invoke-virtual {p2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@47
    move-result v3

    #@48
    .line 641
    if-eq v2, v3, :cond_3

    #@4a
    .line 643
    const/4 v0, 0x5

    #@4b
    .restart local v0    # "field":I
    goto :goto_0

    #@4c
    .line 644
    .end local v0    # "field":I
    :cond_3
    invoke-virtual {p1, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@4f
    move-result v2

    #@50
    .line 645
    invoke-virtual {p2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@53
    move-result v3

    #@54
    .line 644
    if-eq v2, v3, :cond_4

    #@56
    .line 646
    const/16 v0, 0x9

    #@58
    .restart local v0    # "field":I
    goto :goto_0

    #@59
    .line 647
    .end local v0    # "field":I
    :cond_4
    const/16 v2, 0xa

    #@5b
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@5e
    move-result v2

    #@5f
    .line 648
    const/16 v3, 0xa

    #@61
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@64
    move-result v3

    #@65
    .line 647
    if-eq v2, v3, :cond_5

    #@67
    .line 649
    const/16 v0, 0xa

    #@69
    .restart local v0    # "field":I
    goto :goto_0

    #@6a
    .line 650
    .end local v0    # "field":I
    :cond_5
    const/16 v2, 0xc

    #@6c
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@6f
    move-result v2

    #@70
    .line 651
    const/16 v3, 0xc

    #@72
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@75
    move-result v3

    #@76
    .line 650
    if-eq v2, v3, :cond_6

    #@78
    .line 652
    const/16 v0, 0xc

    #@7a
    .restart local v0    # "field":I
    goto :goto_0

    #@7b
    .line 653
    .end local v0    # "field":I
    :cond_6
    const/16 v2, 0xd

    #@7d
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@80
    move-result v2

    #@81
    .line 654
    const/16 v3, 0xd

    #@83
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@86
    move-result v3

    #@87
    .line 653
    if-eq v2, v3, :cond_7

    #@89
    .line 655
    const/16 v0, 0xd

    #@8b
    .restart local v0    # "field":I
    goto :goto_0

    #@8c
    .line 657
    .end local v0    # "field":I
    :cond_7
    const/4 v2, 0x0

    #@8d
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
    .line 1836
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 961
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 965
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
    .line 968
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
    .line 924
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
    .line 947
    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@7
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@9
    .line 948
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    #@c
    .line 949
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    #@e
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@11
    .line 950
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 951
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    #@18
    .line 943
    :cond_0
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/TimeZone;

    #@6
    .line 980
    .local v0, "zoneToSet":Landroid/icu/util/TimeZone;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 981
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    #@c
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@f
    .line 985
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 986
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    #@15
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@18
    .line 988
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 989
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    #@1e
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@21
    .line 976
    :cond_2
    return-void
.end method
