.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final GMT:Ljava/lang/String; = "GMT"

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final TAG_QUOTE_CHARS:I = 0x65

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient compiledPattern:[C

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Ljava/text/DateFormatSymbols;

.field private transient hasFollowingMinusSign:Z

.field private locale:Ljava/util/Locale;

.field private transient minusSign:C

.field private transient originalNumberFormat:Ljava/text/NumberFormat;

.field private transient originalNumberPattern:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private serialVersionOnStream:I

.field transient useDateFormatSymbols:Z

.field private transient zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/16 v3, 0x18

    #@4
    const/4 v4, 0x3

    #@5
    const-class v0, Ljava/text/SimpleDateFormat;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    sput-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    #@10
    .line 506
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 505
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@17
    .line 512
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@1c
    .line 511
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    #@1e
    .line 1024
    new-array v0, v3, [I

    #@20
    fill-array-data v0, :array_0

    #@23
    .line 1023
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@25
    .line 1042
    new-array v0, v3, [I

    #@27
    fill-array-data v0, :array_1

    #@2a
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@2c
    .line 1060
    new-array v0, v3, [Ljava/text/DateFormat$Field;

    #@2e
    .line 1061
    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    #@30
    aput-object v3, v0, v1

    #@32
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@34
    aput-object v1, v0, v2

    #@36
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@38
    const/4 v2, 0x2

    #@39
    aput-object v1, v0, v2

    #@3b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    #@3d
    aput-object v1, v0, v4

    #@3f
    .line 1062
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    #@41
    const/4 v2, 0x4

    #@42
    aput-object v1, v0, v2

    #@44
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    #@46
    const/4 v2, 0x5

    #@47
    aput-object v1, v0, v2

    #@49
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    #@4b
    const/4 v2, 0x6

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 1063
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    #@50
    const/4 v2, 0x7

    #@51
    aput-object v1, v0, v2

    #@53
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@5b
    const/16 v2, 0x9

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 1064
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    #@61
    const/16 v2, 0xa

    #@63
    aput-object v1, v0, v2

    #@65
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    #@67
    const/16 v2, 0xb

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 1065
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    #@6d
    const/16 v2, 0xc

    #@6f
    aput-object v1, v0, v2

    #@71
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    #@73
    const/16 v2, 0xd

    #@75
    aput-object v1, v0, v2

    #@77
    .line 1066
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    #@79
    const/16 v2, 0xe

    #@7b
    aput-object v1, v0, v2

    #@7d
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    #@7f
    const/16 v2, 0xf

    #@81
    aput-object v1, v0, v2

    #@83
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    #@85
    const/16 v2, 0x10

    #@87
    aput-object v1, v0, v2

    #@89
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@8b
    const/16 v2, 0x11

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 1067
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@91
    const/16 v2, 0x12

    #@93
    aput-object v1, v0, v2

    #@95
    .line 1068
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@97
    const/16 v2, 0x13

    #@99
    aput-object v1, v0, v2

    #@9b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@9d
    const/16 v2, 0x14

    #@9f
    aput-object v1, v0, v2

    #@a1
    .line 1069
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@a3
    const/16 v2, 0x15

    #@a5
    aput-object v1, v0, v2

    #@a7
    .line 1071
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@a9
    const/16 v2, 0x16

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 1072
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@af
    const/16 v2, 0x17

    #@b1
    aput-object v1, v0, v2

    #@b3
    .line 1060
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    #@b5
    .line 407
    return-void

    #@b6
    :cond_0
    move v0, v2

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1024
    nop

    #@ba
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0xf
        0x11
        0x3e8
        0xf
        0x2
        0x7
    .end array-data

    #@ee
    .line 1042
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x1
        0x9
        0x11
        0x2
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 542
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@3
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    #@a
    .line 541
    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .locals 10
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/4 v8, 0x3

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 610
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@9
    .line 432
    iput v6, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@b
    .line 451
    const/16 v3, 0x2d

    #@d
    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@f
    .line 457
    iput-boolean v5, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@11
    .line 611
    if-nez p3, :cond_0

    #@13
    .line 612
    new-instance v3, Ljava/lang/NullPointerException;

    #@15
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@18
    throw v3

    #@19
    .line 615
    :cond_0
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@1b
    .line 617
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@1e
    .line 620
    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@20
    invoke-interface {v3, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, [Ljava/lang/String;

    #@26
    .line 621
    .local v1, "dateTimePatterns":[Ljava/lang/String;
    if-nez v1, :cond_1

    #@28
    .line 622
    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@2b
    move-result-object v2

    #@2c
    .line 623
    .local v2, "localeData":Llibcore/icu/LocaleData;
    const/16 v3, 0x9

    #@2e
    new-array v1, v3, [Ljava/lang/String;

    #@30
    .line 624
    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    const/4 v4, 0x7

    #@35
    aput-object v3, v1, v4

    #@37
    .line 625
    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    const/4 v4, 0x6

    #@3c
    aput-object v3, v1, v4

    #@3e
    .line 626
    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    const/4 v4, 0x5

    #@43
    aput-object v3, v1, v4

    #@45
    .line 627
    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    const/4 v4, 0x4

    #@4a
    aput-object v3, v1, v4

    #@4c
    .line 628
    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    aput-object v3, v1, v8

    #@52
    .line 629
    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    aput-object v3, v1, v7

    #@58
    .line 630
    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    aput-object v3, v1, v6

    #@5e
    .line 631
    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    aput-object v3, v1, v5

    #@64
    .line 632
    const-string/jumbo v3, "{0} {1}"

    #@67
    aput-object v3, v1, v9

    #@69
    .line 634
    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@6b
    invoke-interface {v3, p3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 636
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    :cond_1
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@71
    move-result-object v3

    #@72
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@74
    .line 637
    if-ltz p1, :cond_2

    #@76
    if-ltz p2, :cond_2

    #@78
    .line 638
    new-array v0, v7, [Ljava/lang/Object;

    #@7a
    add-int/lit8 v3, p2, 0x4

    #@7c
    aget-object v3, v1, v3

    #@7e
    aput-object v3, v0, v5

    #@80
    aget-object v3, v1, p1

    #@82
    aput-object v3, v0, v6

    #@84
    .line 639
    .local v0, "dateTimeArgs":[Ljava/lang/Object;
    aget-object v3, v1, v9

    #@86
    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@8c
    .line 651
    .end local v0    # "dateTimeArgs":[Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@8f
    .line 610
    return-void

    #@90
    .line 641
    :cond_2
    if-ltz p1, :cond_3

    #@92
    .line 642
    aget-object v3, v1, p1

    #@94
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@96
    goto :goto_0

    #@97
    .line 644
    :cond_3
    if-ltz p2, :cond_4

    #@99
    .line 645
    add-int/lit8 v3, p2, 0x4

    #@9b
    aget-object v3, v1, v3

    #@9d
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@9f
    goto :goto_0

    #@a0
    .line 648
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a2
    const-string/jumbo v4, "No date or time style specified"

    #@a5
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 558
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    .line 556
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 595
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@4
    .line 432
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@6
    .line 451
    const/16 v0, 0x2d

    #@8
    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@a
    .line 457
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@d
    .line 597
    if-eqz p1, :cond_0

    #@f
    if-nez p2, :cond_1

    #@11
    .line 598
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@16
    throw v0

    #@17
    .line 601
    :cond_1
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@19
    .line 602
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@1f
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@21
    .line 603
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@23
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@29
    .line 604
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@2b
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@2e
    .line 605
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@30
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@33
    .line 606
    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@35
    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@3
    .line 432
    const/4 v0, 0x1

    #@4
    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@6
    .line 451
    const/16 v0, 0x2d

    #@8
    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@a
    .line 457
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@d
    .line 575
    if-eqz p1, :cond_0

    #@f
    if-nez p2, :cond_1

    #@11
    .line 576
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@16
    throw v0

    #@17
    .line 579
    :cond_1
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@1a
    .line 580
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@1c
    .line 581
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@22
    .line 582
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@24
    .line 583
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@27
    .line 573
    return-void
.end method

.method private checkNegativeNumberExpression()V
    .locals 5

    #@0
    .prologue
    .line 2458
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    instance-of v3, v3, Ljava/text/DecimalFormat;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2459
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@8
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    #@a
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 2457
    :cond_0
    :goto_0
    return-void

    #@11
    .line 2460
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@13
    check-cast v3, Ljava/text/DecimalFormat;

    #@15
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 2461
    .local v1, "numberPattern":Ljava/lang/String;
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_3

    #@21
    .line 2462
    const/4 v3, 0x0

    #@22
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@24
    .line 2464
    const/16 v3, 0x3b

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v2

    #@2a
    .line 2467
    .local v2, "separatorIndex":I
    const/4 v3, -0x1

    #@2b
    if-le v2, v3, :cond_2

    #@2d
    .line 2468
    const/16 v3, 0x2d

    #@2f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v0

    #@33
    .line 2469
    .local v0, "minusIndex":I
    const/16 v3, 0x30

    #@35
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@38
    move-result v3

    #@39
    if-le v0, v3, :cond_2

    #@3b
    .line 2470
    const/16 v3, 0x23

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@40
    move-result v3

    #@41
    if-le v0, v3, :cond_2

    #@43
    .line 2471
    const/4 v3, 0x1

    #@44
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@46
    .line 2472
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@48
    check-cast v3, Ljava/text/DecimalFormat;

    #@4a
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    #@51
    move-result v3

    #@52
    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@54
    .line 2475
    .end local v0    # "minusIndex":I
    :cond_2
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    #@56
    .line 2477
    .end local v2    # "separatorIndex":I
    :cond_3
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@58
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    #@5a
    goto :goto_0
.end method

.method private compile(Ljava/lang/String;)[C
    .locals 18
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 749
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v11

    #@4
    .line 750
    .local v11, "length":I
    const/4 v7, 0x0

    #@5
    .line 751
    .local v7, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    mul-int/lit8 v15, v11, 0x2

    #@9
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c
    .line 752
    .local v3, "compiledPattern":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    #@d
    .line 753
    .local v14, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@e
    .line 754
    .local v4, "count":I
    const/4 v9, -0x1

    #@f
    .line 756
    .local v9, "lastTag":I
    const/4 v6, 0x0

    #@10
    .end local v14    # "tmpBuffer":Ljava/lang/StringBuilder;
    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_16

    #@12
    .line 757
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v1

    #@18
    .line 759
    .local v1, "c":C
    const/16 v15, 0x27

    #@1a
    if-ne v1, v15, :cond_8

    #@1c
    .line 762
    add-int/lit8 v15, v6, 0x1

    #@1e
    if-ge v15, v11, :cond_2

    #@20
    .line 763
    add-int/lit8 v15, v6, 0x1

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v1

    #@28
    .line 764
    const/16 v15, 0x27

    #@2a
    if-ne v1, v15, :cond_2

    #@2c
    .line 765
    add-int/lit8 v6, v6, 0x1

    #@2e
    .line 766
    if-eqz v4, :cond_0

    #@30
    .line 767
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@33
    .line 768
    const/4 v9, -0x1

    #@34
    .line 769
    const/4 v4, 0x0

    #@35
    .line 771
    :cond_0
    if-eqz v7, :cond_1

    #@37
    .line 772
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 756
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 774
    :cond_1
    or-int/lit16 v15, v1, 0x6400

    #@3f
    int-to-char v15, v15

    #@40
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 779
    :cond_2
    if-nez v7, :cond_5

    #@46
    .line 780
    if-eqz v4, :cond_3

    #@48
    .line 781
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@4b
    .line 782
    const/4 v9, -0x1

    #@4c
    .line 783
    const/4 v4, 0x0

    #@4d
    .line 785
    :cond_3
    if-nez v14, :cond_4

    #@4f
    .line 786
    new-instance v14, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    #@54
    .line 790
    :goto_2
    const/4 v7, 0x1

    #@55
    goto :goto_1

    #@56
    .line 788
    :cond_4
    const/4 v15, 0x0

    #@57
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5a
    goto :goto_2

    #@5b
    .line 792
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v10

    #@5f
    .line 793
    .local v10, "len":I
    const/4 v15, 0x1

    #@60
    if-ne v10, v15, :cond_7

    #@62
    .line 794
    const/4 v15, 0x0

    #@63
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    #@66
    move-result v2

    #@67
    .line 795
    .local v2, "ch":C
    const/16 v15, 0x80

    #@69
    if-ge v2, v15, :cond_6

    #@6b
    .line 796
    or-int/lit16 v15, v2, 0x6400

    #@6d
    int-to-char v15, v15

    #@6e
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 805
    .end local v2    # "ch":C
    :goto_3
    const/4 v7, 0x0

    #@72
    goto :goto_1

    #@73
    .line 798
    .restart local v2    # "ch":C
    :cond_6
    const/16 v15, 0x6501

    #@75
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 799
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_3

    #@7c
    .line 802
    .end local v2    # "ch":C
    :cond_7
    const/16 v15, 0x65

    #@7e
    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@81
    .line 803
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_3

    #@85
    .line 809
    .end local v10    # "len":I
    :cond_8
    if-eqz v7, :cond_9

    #@87
    .line 810
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_1

    #@8b
    .line 813
    :cond_9
    const/16 v15, 0x61

    #@8d
    if-lt v1, v15, :cond_a

    #@8f
    const/16 v15, 0x7a

    #@91
    if-le v1, v15, :cond_12

    #@93
    :cond_a
    const/16 v15, 0x41

    #@95
    if-lt v1, v15, :cond_b

    #@97
    const/16 v15, 0x5a

    #@99
    if-le v1, v15, :cond_12

    #@9b
    .line 814
    :cond_b
    if-eqz v4, :cond_c

    #@9d
    .line 815
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@a0
    .line 816
    const/4 v9, -0x1

    #@a1
    .line 817
    const/4 v4, 0x0

    #@a2
    .line 819
    :cond_c
    const/16 v15, 0x80

    #@a4
    if-ge v1, v15, :cond_d

    #@a6
    .line 821
    or-int/lit16 v15, v1, 0x6400

    #@a8
    int-to-char v15, v15

    #@a9
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1

    #@ad
    .line 826
    :cond_d
    add-int/lit8 v8, v6, 0x1

    #@af
    .local v8, "j":I
    :goto_4
    if-ge v8, v11, :cond_e

    #@b1
    .line 827
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@b6
    move-result v5

    #@b7
    .line 828
    .local v5, "d":C
    const/16 v15, 0x27

    #@b9
    if-eq v5, v15, :cond_e

    #@bb
    const/16 v15, 0x61

    #@bd
    if-lt v5, v15, :cond_f

    #@bf
    const/16 v15, 0x7a

    #@c1
    if-gt v5, v15, :cond_f

    #@c3
    .line 832
    .end local v5    # "d":C
    :cond_e
    sub-int v15, v8, v6

    #@c5
    or-int/lit16 v15, v15, 0x6500

    #@c7
    int-to-char v15, v15

    #@c8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cb
    .line 833
    :goto_5
    if-ge v6, v8, :cond_11

    #@cd
    .line 834
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@d2
    move-result v15

    #@d3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d6
    .line 833
    add-int/lit8 v6, v6, 0x1

    #@d8
    goto :goto_5

    #@d9
    .line 828
    .restart local v5    # "d":C
    :cond_f
    const/16 v15, 0x41

    #@db
    if-lt v5, v15, :cond_10

    #@dd
    const/16 v15, 0x5a

    #@df
    if-le v5, v15, :cond_e

    #@e1
    .line 826
    :cond_10
    add-int/lit8 v8, v8, 0x1

    #@e3
    goto :goto_4

    #@e4
    .line 836
    .end local v5    # "d":C
    :cond_11
    add-int/lit8 v6, v6, -0x1

    #@e6
    goto/16 :goto_1

    #@e8
    .line 842
    .end local v8    # "j":I
    :cond_12
    const-string/jumbo v15, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@eb
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    #@ee
    move-result v13

    #@ef
    .local v13, "tag":I
    const/4 v15, -0x1

    #@f0
    if-ne v13, v15, :cond_13

    #@f2
    .line 843
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@f4
    new-instance v16, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v17, "Illegal pattern character \'"

    #@fc
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v16

    #@100
    move-object/from16 v0, v16

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@105
    move-result-object v16

    #@106
    .line 844
    const-string/jumbo v17, "\'"

    #@109
    .line 843
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v16

    #@10d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v16

    #@111
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@114
    throw v15

    #@115
    .line 846
    :cond_13
    const/4 v15, -0x1

    #@116
    if-eq v9, v15, :cond_14

    #@118
    if-ne v9, v13, :cond_15

    #@11a
    .line 847
    :cond_14
    move v9, v13

    #@11b
    .line 848
    add-int/lit8 v4, v4, 0x1

    #@11d
    .line 849
    goto/16 :goto_1

    #@11f
    .line 851
    :cond_15
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@122
    .line 852
    move v9, v13

    #@123
    .line 853
    const/4 v4, 0x1

    #@124
    goto/16 :goto_1

    #@126
    .line 856
    .end local v1    # "c":C
    .end local v13    # "tag":I
    :cond_16
    if-eqz v7, :cond_17

    #@128
    .line 857
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@12a
    const-string/jumbo v16, "Unterminated quote"

    #@12d
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@130
    throw v15

    #@131
    .line 860
    :cond_17
    if-eqz v4, :cond_18

    #@133
    .line 861
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@136
    .line 865
    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@139
    move-result v10

    #@13a
    .line 866
    .restart local v10    # "len":I
    new-array v12, v10, [C

    #@13c
    .line 867
    .local v12, "r":[C
    const/4 v15, 0x0

    #@13d
    const/16 v16, 0x0

    #@13f
    move/from16 v0, v16

    #@141
    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@144
    .line 868
    return-object v12
.end method

.method private static final encode(IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 875
    const/16 v0, 0x15

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x4

    #@5
    if-lt p1, v0, :cond_0

    #@7
    .line 876
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "invalid ISO 8601 format: length="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 878
    :cond_0
    const/16 v0, 0xff

    #@23
    if-ge p1, v0, :cond_1

    #@25
    .line 879
    shl-int/lit8 v0, p0, 0x8

    #@27
    or-int/2addr v0, p1

    #@28
    int-to-char v0, v0

    #@29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 874
    :goto_0
    return-void

    #@2d
    .line 881
    :cond_1
    shl-int/lit8 v0, p0, 0x8

    #@2f
    or-int/lit16 v0, v0, 0xff

    #@31
    int-to-char v0, v0

    #@32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 882
    ushr-int/lit8 v0, p1, 0x10

    #@37
    int-to-char v0, v0

    #@38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 883
    const v0, 0xffff

    #@3e
    and-int/2addr v0, p1

    #@3f
    int-to-char v0, v0

    #@40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0
.end method

.method private format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@5
    .line 955
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    #@8
    move-result v5

    #@9
    .line 957
    .local v5, "useDateFormatSymbols":Z
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@c
    array-length v0, v0

    #@d
    if-ge v6, v0, :cond_0

    #@f
    .line 958
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@11
    aget-char v0, v0, v6

    #@13
    ushr-int/lit8 v1, v0, 0x8

    #@15
    .line 959
    .local v1, "tag":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@17
    add-int/lit8 v7, v6, 0x1

    #@19
    .end local v6    # "i":I
    .local v7, "i":I
    aget-char v0, v0, v6

    #@1b
    and-int/lit16 v2, v0, 0xff

    #@1d
    .line 960
    .local v2, "count":I
    const/16 v0, 0xff

    #@1f
    if-ne v2, v0, :cond_1

    #@21
    .line 961
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@23
    add-int/lit8 v6, v7, 0x1

    #@25
    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-char v0, v0, v7

    #@27
    shl-int/lit8 v2, v0, 0x10

    #@29
    .line 962
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@2b
    add-int/lit8 v7, v6, 0x1

    #@2d
    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-char v0, v0, v6

    #@2f
    or-int/2addr v2, v0

    #@30
    move v6, v7

    #@31
    .line 965
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    packed-switch v1, :pswitch_data_0

    #@34
    move-object v0, p0

    #@35
    move-object v3, p3

    #@36
    move-object v4, p2

    #@37
    .line 976
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    #@3a
    goto :goto_0

    #@3b
    .line 967
    :pswitch_0
    int-to-char v0, v2

    #@3c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3f
    goto :goto_0

    #@40
    .line 971
    :pswitch_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@42
    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@45
    .line 972
    add-int/2addr v6, v2

    #@46
    .line 973
    goto :goto_0

    #@47
    .line 980
    .end local v1    # "tag":I
    .end local v2    # "count":I
    :cond_0
    return-object p2

    #@48
    .end local v6    # "i":I
    .restart local v1    # "tag":I
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    :cond_1
    move v6, v7

    #@49
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@4a
    .line 965
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 1305
    const/4 v0, 0x0

    #@2
    .line 1306
    .local v0, "current":Ljava/lang/String;
    if-eqz p5, :cond_8

    #@4
    .line 1308
    const/4 v2, 0x4

    #@5
    if-ne p1, v2, :cond_3

    #@7
    .line 1309
    if-eqz p6, :cond_2

    #@9
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@b
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1318
    :goto_0
    if-eqz v1, :cond_0

    #@11
    .line 1319
    aget-object v0, v1, p2

    #@13
    .line 1327
    .end local v0    # "current":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@15
    .line 1328
    add-int/lit8 v2, p2, 0x1

    #@17
    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@1a
    .line 1331
    :cond_1
    return-object v0

    #@1b
    .line 1309
    .restart local v0    # "current":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1d
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    #@22
    .line 1310
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x5

    #@23
    if-ne p1, v2, :cond_5

    #@25
    .line 1311
    if-eqz p6, :cond_4

    #@27
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@29
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    #@2e
    .end local v1    # "months":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@30
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    #@35
    .line 1312
    .end local v1    # "months":[Ljava/lang/String;
    :cond_5
    if-ne p1, v3, :cond_7

    #@37
    .line 1313
    if-eqz p6, :cond_6

    #@39
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@3b
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    #@40
    .end local v1    # "months":[Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@42
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    #@47
    .line 1315
    .end local v1    # "months":[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@48
    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    #@49
    .line 1322
    .end local v1    # "months":[Ljava/lang/String;
    :cond_8
    if-ge p1, v3, :cond_0

    #@4b
    .line 1323
    const/4 v0, 0x0

    #@4c
    goto :goto_1
.end method

.method private formatWeekday(IIZZ)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    #@0
    .prologue
    .line 1285
    if-eqz p3, :cond_5

    #@2
    .line 1287
    const/4 v1, 0x4

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 1288
    if-eqz p4, :cond_0

    #@7
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@9
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1297
    .local v0, "weekdays":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, p2

    #@f
    return-object v1

    #@10
    .line 1288
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@12
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    #@17
    .line 1289
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    #@18
    if-ne p1, v1, :cond_3

    #@1a
    .line 1291
    if-eqz p4, :cond_2

    #@1c
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1e
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    #@23
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@25
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 1294
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    #@2c
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2e
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    #@33
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@35
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 1300
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    #@3b
    return-object v1
.end method

.method private final getCalendarName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2247
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 2
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@8
    .line 660
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    #@a
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/text/NumberFormat;

    #@10
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@12
    .line 661
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 662
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1c
    .line 663
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    #@22
    .line 666
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    #@24
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@26
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 668
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2b
    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/text/NumberFormat;

    #@31
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@33
    .line 670
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    #@36
    .line 655
    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_2

    #@4
    .line 675
    sget-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    #@6
    if-nez v0, :cond_1

    #@8
    if-eqz p1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 680
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1f
    .line 673
    :cond_2
    return-void
.end method

.method private initializeDefaultCentury()V
    .locals 4

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 892
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@b
    const/4 v1, 0x1

    #@c
    const/16 v2, -0x50

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@11
    .line 893
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@1a
    .line 890
    return-void
.end method

.method private isDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1787
    const/16 v1, 0x30

    #@3
    if-lt p1, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isGregorianCalendar()Z
    .locals 2

    #@0
    .prologue
    .line 2258
    const-string/jumbo v0, "java.util.GregorianCalendar"

    #@3
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getCalendarName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private matchDSTString(Ljava/lang/String;III[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneIndex"    # I
    .param p4, "standardIndex"    # I
    .param p5, "zoneStrings"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1641
    add-int/lit8 v6, p4, 0x2

    #@4
    .line 1642
    .local v6, "index":I
    aget-object v0, p5, p3

    #@6
    aget-object v3, v0, v6

    #@8
    .line 1644
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    move-object v0, p1

    #@d
    move v2, p2

    #@e
    .line 1643
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1645
    return v1

    #@15
    .line 1647
    :cond_0
    return v4
.end method

.method private matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 1606
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_3

    #@2
    .line 1607
    const/4 v6, 0x0

    #@3
    .line 1609
    .local v6, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v7

    #@b
    .end local v6    # "bestMatch":Ljava/lang/String;
    .local v7, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/lang/String;

    #@17
    .line 1610
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1a
    move-result v5

    #@1b
    .line 1611
    .local v5, "length":I
    if-eqz v6, :cond_1

    #@1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    if-le v5, v0, :cond_0

    #@23
    .line 1612
    :cond_1
    const/4 v1, 0x1

    #@24
    const/4 v4, 0x0

    #@25
    move-object v0, p1

    #@26
    move v2, p2

    #@27
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 1613
    move-object v6, v3

    #@2e
    .local v6, "bestMatch":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 1618
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "bestMatch":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    #@31
    .line 1619
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/Integer;

    #@37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v0

    #@3b
    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@3e
    .line 1620
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@41
    move-result v0

    #@42
    add-int/2addr v0, p2

    #@43
    return v0

    #@44
    .line 1623
    .end local v7    # "name$iterator":Ljava/util/Iterator;
    :cond_3
    neg-int v0, p2

    #@45
    return v0
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 1560
    const/16 v17, 0x0

    #@2
    .line 1561
    .local v17, "i":I
    move-object/from16 v0, p4

    #@4
    array-length v0, v0

    #@5
    move/from16 v16, v0

    #@7
    .line 1563
    .local v16, "count":I
    const/4 v2, 0x7

    #@8
    move/from16 v0, p3

    #@a
    if-ne v0, v2, :cond_0

    #@c
    const/16 v17, 0x1

    #@e
    .line 1569
    :cond_0
    const/4 v15, 0x0

    #@f
    .local v15, "bestMatchLength":I
    const/4 v14, -0x1

    #@10
    .line 1570
    .local v14, "bestMatch":I
    :goto_0
    move/from16 v0, v17

    #@12
    move/from16 v1, v16

    #@14
    if-ge v0, v1, :cond_3

    #@16
    .line 1572
    aget-object v2, p4, v17

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v7

    #@1c
    .line 1575
    .local v7, "length":I
    if-le v7, v15, :cond_1

    #@1e
    .line 1576
    aget-object v5, p4, v17

    #@20
    const/4 v3, 0x1

    #@21
    const/4 v6, 0x0

    #@22
    move-object/from16 v2, p1

    #@24
    move/from16 v4, p2

    #@26
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@29
    move-result v2

    #@2a
    .line 1575
    if-eqz v2, :cond_1

    #@2c
    .line 1578
    move/from16 v14, v17

    #@2e
    .line 1579
    move v15, v7

    #@2f
    .line 1584
    :cond_1
    aget-object v2, p4, v17

    #@31
    add-int/lit8 v3, v7, -0x1

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v2

    #@37
    const/16 v3, 0x2e

    #@39
    if-ne v2, v3, :cond_2

    #@3b
    .line 1585
    add-int/lit8 v2, v7, -0x1

    #@3d
    if-le v2, v15, :cond_2

    #@3f
    .line 1586
    aget-object v11, p4, v17

    #@41
    add-int/lit8 v13, v7, -0x1

    #@43
    const/4 v9, 0x1

    #@44
    const/4 v12, 0x0

    #@45
    move-object/from16 v8, p1

    #@47
    move/from16 v10, p2

    #@49
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@4c
    move-result v2

    #@4d
    .line 1584
    if-eqz v2, :cond_2

    #@4f
    .line 1587
    move/from16 v14, v17

    #@51
    .line 1588
    add-int/lit8 v15, v7, -0x1

    #@53
    .line 1570
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1591
    .end local v7    # "length":I
    :cond_3
    if-ltz v14, :cond_4

    #@58
    .line 1593
    move-object/from16 v0, p5

    #@5a
    move/from16 v1, p3

    #@5c
    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@5f
    .line 1594
    add-int v2, p2, v15

    #@61
    return v2

    #@62
    .line 1596
    :cond_4
    move/from16 v0, p2

    #@64
    neg-int v2, v0

    #@65
    return v2
.end method

.method private matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1627
    const/4 v6, 0x1

    #@1
    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    #@2
    if-gt v6, v0, :cond_1

    #@4
    .line 1630
    aget-object v3, p3, v6

    #@6
    .line 1632
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    .line 1631
    const/4 v1, 0x1

    #@b
    .line 1632
    const/4 v4, 0x0

    #@c
    move-object v0, p1

    #@d
    move v2, p2

    #@e
    .line 1631
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1633
    return v6

    #@15
    .line 1627
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1636
    .end local v3    # "zoneName":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 900
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    .line 901
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 902
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@10
    .line 899
    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1432
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    #@3
    .line 1434
    move-object/from16 v0, p2

    #@5
    iget v4, v0, Ljava/text/ParsePosition;->index:I

    #@7
    .line 1435
    .local v4, "start":I
    move/from16 v18, v4

    #@9
    .line 1436
    .local v18, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@c
    move-result v20

    #@d
    .line 1438
    .local v20, "textLength":I
    const/4 v2, 0x1

    #@e
    new-array v8, v2, [Z

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x0

    #@12
    aput-boolean v2, v8, v3

    #@14
    .line 1440
    .local v8, "ambiguousYear":[Z
    new-instance v11, Ljava/text/CalendarBuilder;

    #@16
    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    #@19
    .line 1442
    .local v11, "calb":Ljava/text/CalendarBuilder;
    const/4 v15, 0x0

    #@1a
    .local v15, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@1e
    array-length v2, v2

    #@1f
    if-ge v15, v2, :cond_a

    #@21
    .line 1443
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@25
    aget-char v2, v2, v15

    #@27
    ushr-int/lit8 v5, v2, 0x8

    #@29
    .line 1444
    .local v5, "tag":I
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@2d
    add-int/lit8 v16, v15, 0x1

    #@2f
    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v2, v2, v15

    #@31
    and-int/lit16 v6, v2, 0xff

    #@33
    .line 1445
    .local v6, "count":I
    const/16 v2, 0xff

    #@35
    if-ne v6, v2, :cond_c

    #@37
    .line 1446
    move-object/from16 v0, p0

    #@39
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@3b
    add-int/lit8 v15, v16, 0x1

    #@3d
    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v2, v2, v16

    #@3f
    shl-int/lit8 v6, v2, 0x10

    #@41
    .line 1447
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@45
    add-int/lit8 v16, v15, 0x1

    #@47
    .end local v15    # "i":I
    .restart local v16    # "i":I
    aget-char v2, v2, v15

    #@49
    or-int/2addr v6, v2

    #@4a
    move/from16 v15, v16

    #@4c
    .line 1450
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_1
    packed-switch v5, :pswitch_data_0

    #@4f
    .line 1477
    const/4 v7, 0x0

    #@50
    .line 1487
    .local v7, "obeyCount":Z
    const/4 v10, 0x0

    #@51
    .line 1489
    .local v10, "useFollowingMinusSignAsDelimiter":Z
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@55
    array-length v2, v2

    #@56
    if-ge v15, v2, :cond_3

    #@58
    .line 1490
    move-object/from16 v0, p0

    #@5a
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@5c
    aget-char v2, v2, v15

    #@5e
    ushr-int/lit8 v17, v2, 0x8

    #@60
    .line 1491
    .local v17, "nextTag":I
    const/16 v2, 0x64

    #@62
    move/from16 v0, v17

    #@64
    if-eq v0, v2, :cond_1

    #@66
    .line 1492
    const/16 v2, 0x65

    #@68
    move/from16 v0, v17

    #@6a
    if-eq v0, v2, :cond_1

    #@6c
    .line 1493
    const/4 v7, 0x1

    #@6d
    .line 1496
    :cond_1
    move-object/from16 v0, p0

    #@6f
    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@71
    if-eqz v2, :cond_3

    #@73
    .line 1497
    const/16 v2, 0x64

    #@75
    move/from16 v0, v17

    #@77
    if-eq v0, v2, :cond_2

    #@79
    .line 1498
    const/16 v2, 0x65

    #@7b
    move/from16 v0, v17

    #@7d
    if-ne v0, v2, :cond_3

    #@7f
    .line 1500
    :cond_2
    const/16 v2, 0x64

    #@81
    move/from16 v0, v17

    #@83
    if-ne v0, v2, :cond_9

    #@85
    .line 1501
    move-object/from16 v0, p0

    #@87
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@89
    aget-char v2, v2, v15

    #@8b
    and-int/lit16 v12, v2, 0xff

    #@8d
    .line 1506
    .local v12, "c":I
    :goto_2
    move-object/from16 v0, p0

    #@8f
    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@91
    if-ne v12, v2, :cond_3

    #@93
    .line 1507
    const/4 v10, 0x1

    #@94
    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_3
    move-object/from16 v2, p0

    #@96
    move-object/from16 v3, p1

    #@98
    move-object/from16 v9, p2

    #@9a
    .line 1511
    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    #@9d
    move-result v4

    #@9e
    .line 1514
    if-gez v4, :cond_0

    #@a0
    .line 1515
    move/from16 v0, v18

    #@a2
    move-object/from16 v1, p2

    #@a4
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@a6
    .line 1516
    const/4 v2, 0x0

    #@a7
    return-object v2

    #@a8
    .line 1452
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    :pswitch_0
    move/from16 v0, v20

    #@aa
    if-ge v4, v0, :cond_4

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@b1
    move-result v2

    #@b2
    int-to-char v3, v6

    #@b3
    if-eq v2, v3, :cond_5

    #@b5
    .line 1453
    :cond_4
    move/from16 v0, v18

    #@b7
    move-object/from16 v1, p2

    #@b9
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@bb
    .line 1454
    move-object/from16 v0, p2

    #@bd
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@bf
    .line 1455
    const/4 v2, 0x0

    #@c0
    return-object v2

    #@c1
    .line 1457
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@c3
    .line 1458
    goto/16 :goto_0

    #@c5
    :pswitch_1
    move v13, v6

    #@c6
    .end local v6    # "count":I
    .local v13, "count":I
    move/from16 v16, v15

    #@c8
    .line 1461
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_3
    add-int/lit8 v6, v13, -0x1

    #@ca
    .end local v13    # "count":I
    .restart local v6    # "count":I
    if-lez v13, :cond_8

    #@cc
    .line 1462
    move/from16 v0, v20

    #@ce
    if-ge v4, v0, :cond_6

    #@d0
    move-object/from16 v0, p1

    #@d2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@d5
    move-result v2

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@da
    add-int/lit8 v15, v16, 0x1

    #@dc
    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v3, v3, v16

    #@de
    if-eq v2, v3, :cond_7

    #@e0
    .line 1463
    :goto_4
    move/from16 v0, v18

    #@e2
    move-object/from16 v1, p2

    #@e4
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@e6
    .line 1464
    move-object/from16 v0, p2

    #@e8
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@ea
    .line 1465
    const/4 v2, 0x0

    #@eb
    return-object v2

    #@ec
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v15, v16

    #@ee
    .line 1462
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    #@ef
    .line 1467
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@f1
    move v13, v6

    #@f2
    .end local v6    # "count":I
    .restart local v13    # "count":I
    move/from16 v16, v15

    #@f4
    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    #@f5
    .end local v13    # "count":I
    .restart local v6    # "count":I
    :cond_8
    move/from16 v15, v16

    #@f7
    .line 1469
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0

    #@f9
    .line 1503
    .restart local v7    # "obeyCount":Z
    .restart local v10    # "useFollowingMinusSignAsDelimiter":Z
    .restart local v17    # "nextTag":I
    :cond_9
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@fd
    add-int/lit8 v3, v15, 0x1

    #@ff
    aget-char v12, v2, v3

    #@101
    .restart local v12    # "c":I
    goto :goto_2

    #@102
    .line 1525
    .end local v5    # "tag":I
    .end local v6    # "count":I
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_a
    move-object/from16 v0, p2

    #@104
    iput v4, v0, Ljava/text/ParsePosition;->index:I

    #@106
    .line 1529
    :try_start_0
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@10a
    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@111
    move-result-object v19

    #@112
    .line 1532
    .local v19, "parsedDate":Ljava/util/Date;
    const/4 v2, 0x0

    #@113
    aget-boolean v2, v8, v2

    #@115
    if-eqz v2, :cond_b

    #@117
    .line 1533
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@11b
    move-object/from16 v0, v19

    #@11d
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@120
    move-result v2

    #@121
    if-eqz v2, :cond_b

    #@123
    .line 1534
    const/16 v2, 0x64

    #@125
    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    #@128
    move-result-object v2

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@12d
    invoke-virtual {v2, v3}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@134
    move-result-object v19

    #@135
    .line 1546
    :cond_b
    return-object v19

    #@136
    .line 1540
    .end local v19    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v14

    #@137
    .line 1541
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    #@139
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@13b
    .line 1542
    move/from16 v0, v18

    #@13d
    move-object/from16 v1, p2

    #@13f
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@141
    .line 1543
    const/4 v2, 0x0

    #@142
    return-object v2

    #@143
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "i":I
    .restart local v5    # "tag":I
    .restart local v6    # "count":I
    .restart local v16    # "i":I
    :cond_c
    move/from16 v15, v16

    #@145
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    #@147
    .line 1450
    nop

    #@148
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 2173
    const/4 v1, 0x2

    #@1
    if-gt p2, v1, :cond_0

    #@3
    .line 2178
    add-int/lit8 v1, p3, -0x1

    #@5
    const/4 v2, 0x2

    #@6
    move-object/from16 v0, p9

    #@8
    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@b
    .line 2179
    iget v1, p6, Ljava/text/ParsePosition;->index:I

    #@d
    return v1

    #@e
    .line 2182
    :cond_0
    const/4 v7, -0x1

    #@f
    .line 2183
    .local v7, "index":I
    if-eqz p7, :cond_4

    #@11
    .line 2189
    if-eqz p8, :cond_1

    #@13
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@15
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 2188
    :goto_0
    const/4 v4, 0x2

    #@1a
    move-object v1, p0

    #@1b
    move-object v2, p1

    #@1c
    move v3, p4

    #@1d
    move-object/from16 v6, p9

    #@1f
    .line 2187
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@22
    move-result v7

    #@23
    if-lez v7, :cond_2

    #@25
    .line 2191
    return v7

    #@26
    .line 2189
    :cond_1
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@28
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    goto :goto_0

    #@2d
    .line 2196
    :cond_2
    if-eqz p8, :cond_3

    #@2f
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@31
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 2195
    :goto_1
    const/4 v4, 0x2

    #@36
    move-object v1, p0

    #@37
    move-object v2, p1

    #@38
    move v3, p4

    #@39
    move-object/from16 v6, p9

    #@3b
    .line 2194
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@3e
    move-result v7

    #@3f
    if-lez v7, :cond_5

    #@41
    .line 2198
    return v7

    #@42
    .line 2196
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@44
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    goto :goto_1

    #@49
    .line 2201
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4b
    .line 2203
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@4d
    .line 2202
    const/4 v3, 0x0

    #@4e
    .line 2201
    invoke-virtual {v1, p5, v3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    #@51
    move-result-object v5

    #@52
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, p0

    #@53
    move-object v2, p1

    #@54
    move v3, p4

    #@55
    move v4, p5

    #@56
    move-object/from16 v6, p9

    #@58
    .line 2204
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@5b
    move-result v7

    #@5c
    if-lez v7, :cond_5

    #@5e
    .line 2205
    return v7

    #@5f
    .line 2209
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    return v7
.end method

.method private parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 2214
    const/4 v6, -0x1

    #@1
    .line 2215
    .local v6, "index":I
    if-eqz p4, :cond_3

    #@3
    .line 2220
    if-eqz p5, :cond_0

    #@5
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 2219
    :goto_0
    const/4 v3, 0x7

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    move-object/from16 v5, p6

    #@11
    .line 2218
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@14
    move-result v6

    #@15
    if-lez v6, :cond_1

    #@17
    .line 2222
    return v6

    #@18
    .line 2220
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    goto :goto_0

    #@1f
    .line 2228
    :cond_1
    if-eqz p5, :cond_2

    #@21
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@23
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 2227
    :goto_1
    const/4 v3, 0x7

    #@28
    move-object v0, p0

    #@29
    move-object v1, p1

    #@2a
    move v2, p2

    #@2b
    move-object/from16 v5, p6

    #@2d
    .line 2226
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@30
    move-result v6

    #@31
    if-lez v6, :cond_5

    #@33
    .line 2230
    return v6

    #@34
    .line 2228
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@36
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    goto :goto_1

    #@3b
    .line 2233
    :cond_3
    const/4 v0, 0x2

    #@3c
    const/4 v1, 0x1

    #@3d
    filled-new-array {v0, v1}, [I

    #@40
    move-result-object v8

    #@41
    .line 2234
    .local v8, "styles":[I
    const/4 v0, 0x0

    #@42
    array-length v10, v8

    #@43
    move v9, v0

    #@44
    :goto_2
    if-ge v9, v10, :cond_5

    #@46
    aget v7, v8, v9

    #@48
    .line 2235
    .local v7, "style":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4a
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@4c
    invoke-virtual {v0, p3, v7, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    #@4f
    move-result-object v4

    #@50
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    #@51
    move-object v1, p1

    #@52
    move v2, p2

    #@53
    move v3, p3

    #@54
    move-object/from16 v5, p6

    #@56
    .line 2236
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@59
    move-result v6

    #@5a
    if-lez v6, :cond_4

    #@5c
    .line 2237
    return v6

    #@5d
    .line 2234
    :cond_4
    add-int/lit8 v0, v9, 0x1

    #@5f
    move v9, v0

    #@60
    goto :goto_2

    #@61
    .line 2242
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "style":I
    .end local v8    # "styles":[I
    :cond_5
    return v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 2424
    :try_start_0
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@6
    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@9
    move-result-object v4

    #@a
    iput-object v4, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 2429
    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@e
    if-ge v4, v5, :cond_1

    #@10
    .line 2431
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    #@13
    .line 2437
    :goto_0
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@15
    .line 2443
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@18
    move-result-object v2

    #@19
    .line 2444
    .local v2, "tz":Ljava/util/TimeZone;
    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 2445
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 2446
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@24
    move-result-object v3

    #@25
    .line 2447
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_0

    #@27
    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 2448
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@3a
    .line 2420
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "zi":Ljava/util/TimeZone;
    :cond_0
    return-void

    #@3b
    .line 2425
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    #@3c
    .line 2426
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    #@3e
    const-string/jumbo v5, "invalid pattern"

    #@41
    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 2435
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@47
    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@4a
    goto :goto_0
.end method

.method private subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .locals 32
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    #@0
    .prologue
    .line 1082
    const v7, 0x7fffffff

    #@3
    .line 1083
    .local v7, "maxIntCount":I
    const/16 v16, 0x0

    #@5
    .line 1084
    .local v16, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v12

    #@9
    .line 1086
    .local v12, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@b
    aget v19, v4, p1

    #@d
    .line 1088
    .local v19, "field":I
    const/16 v4, 0x11

    #@f
    move/from16 v0, v19

    #@11
    if-ne v0, v4, :cond_4

    #@13
    .line 1089
    move-object/from16 v0, p0

    #@15
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@17
    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 1090
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@21
    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    #@24
    move-result v6

    #@25
    .line 1103
    .local v6, "value":I
    :goto_0
    const/4 v4, 0x4

    #@26
    move/from16 v0, p2

    #@28
    if-lt v0, v4, :cond_6

    #@2a
    const/16 v23, 0x2

    #@2c
    .line 1104
    .local v23, "style":I
    :goto_1
    if-nez p5, :cond_0

    #@2e
    const/16 v4, 0x3e8

    #@30
    move/from16 v0, v19

    #@32
    if-eq v0, v4, :cond_0

    #@34
    .line 1105
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@3c
    move/from16 v0, v19

    #@3e
    move/from16 v1, v23

    #@40
    invoke-virtual {v4, v0, v1, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    #@43
    move-result-object v16

    #@44
    .line 1112
    .end local v16    # "current":Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@47
    .line 1267
    :pswitch_0
    if-nez v16, :cond_1

    #@49
    .line 1268
    move-object/from16 v0, p0

    #@4b
    move/from16 v1, p2

    #@4d
    move-object/from16 v2, p4

    #@4f
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@52
    .line 1273
    .end local p2    # "count":I
    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    #@54
    .line 1274
    move-object/from16 v0, p4

    #@56
    move-object/from16 v1, v16

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 1277
    :cond_2
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@5d
    aget v9, v4, p1

    #@5f
    .line 1278
    .local v9, "fieldID":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    #@61
    aget-object v10, v4, p1

    #@63
    .line 1280
    .local v10, "f":Ljava/text/DateFormat$Field;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    #@66
    move-result v13

    #@67
    move-object/from16 v8, p3

    #@69
    move-object v11, v10

    #@6a
    move-object/from16 v14, p4

    #@6c
    invoke-interface/range {v8 .. v14}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    #@6f
    .line 1080
    return-void

    #@70
    .line 1093
    .end local v6    # "value":I
    .end local v9    # "fieldID":I
    .end local v10    # "f":Ljava/text/DateFormat$Field;
    .end local v23    # "style":I
    .restart local v16    # "current":Ljava/lang/String;
    .restart local p2    # "count":I
    :cond_3
    const/16 p1, 0x1

    #@72
    .line 1094
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@74
    aget v19, v4, p1

    #@76
    .line 1095
    move-object/from16 v0, p0

    #@78
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@7a
    move/from16 v0, v19

    #@7c
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    #@7f
    move-result v6

    #@80
    .restart local v6    # "value":I
    goto :goto_0

    #@81
    .line 1097
    .end local v6    # "value":I
    :cond_4
    const/16 v4, 0x3e8

    #@83
    move/from16 v0, v19

    #@85
    if-ne v0, v4, :cond_5

    #@87
    .line 1098
    move-object/from16 v0, p0

    #@89
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@8b
    const/4 v5, 0x7

    #@8c
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@8f
    move-result v4

    #@90
    invoke-static {v4}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    #@93
    move-result v6

    #@94
    .restart local v6    # "value":I
    goto :goto_0

    #@95
    .line 1100
    .end local v6    # "value":I
    :cond_5
    move-object/from16 v0, p0

    #@97
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@99
    move/from16 v0, v19

    #@9b
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    #@9e
    move-result v6

    #@9f
    .restart local v6    # "value":I
    goto :goto_0

    #@a0
    .line 1103
    :cond_6
    const/16 v23, 0x1

    #@a2
    .restart local v23    # "style":I
    goto :goto_1

    #@a3
    .line 1114
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_1
    if-eqz p5, :cond_7

    #@a5
    .line 1115
    move-object/from16 v0, p0

    #@a7
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@a9
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    #@ac
    move-result-object v18

    #@ad
    .line 1116
    .local v18, "eras":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@af
    array-length v4, v0

    #@b0
    if-ge v6, v4, :cond_7

    #@b2
    .line 1117
    aget-object v16, v18, v6

    #@b4
    .line 1119
    .end local v18    # "eras":[Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_1

    #@b6
    .line 1120
    const-string/jumbo v16, ""

    #@b9
    .local v16, "current":Ljava/lang/String;
    goto :goto_2

    #@ba
    .line 1125
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@be
    instance-of v4, v4, Ljava/util/GregorianCalendar;

    #@c0
    if-eqz v4, :cond_9

    #@c2
    .line 1126
    const/4 v4, 0x2

    #@c3
    move/from16 v0, p2

    #@c5
    if-eq v0, v4, :cond_8

    #@c7
    .line 1127
    move-object/from16 v0, p0

    #@c9
    move/from16 v1, p2

    #@cb
    move-object/from16 v2, p4

    #@cd
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@d0
    goto :goto_2

    #@d1
    .line 1129
    :cond_8
    const/4 v4, 0x2

    #@d2
    const/4 v5, 0x2

    #@d3
    move-object/from16 v0, p0

    #@d5
    move-object/from16 v1, p4

    #@d7
    invoke-direct {v0, v6, v4, v5, v1}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@da
    goto/16 :goto_2

    #@dc
    .line 1131
    :cond_9
    if-nez v16, :cond_1

    #@de
    .line 1132
    const/4 v4, 0x2

    #@df
    move/from16 v0, v23

    #@e1
    if-ne v0, v4, :cond_a

    #@e3
    const/16 p2, 0x1

    #@e5
    .end local p2    # "count":I
    :cond_a
    move-object/from16 v0, p0

    #@e7
    move/from16 v1, p2

    #@e9
    move-object/from16 v2, p4

    #@eb
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@ee
    goto/16 :goto_2

    #@f0
    .line 1141
    .restart local p2    # "count":I
    :pswitch_3
    const/4 v10, 0x1

    #@f1
    move-object/from16 v4, p0

    #@f3
    move/from16 v5, p2

    #@f5
    move-object/from16 v8, p4

    #@f7
    move/from16 v9, p5

    #@f9
    .line 1140
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    #@fc
    move-result-object v16

    #@fd
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@ff
    .line 1148
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_4
    const/4 v10, 0x0

    #@100
    move-object/from16 v4, p0

    #@102
    move/from16 v5, p2

    #@104
    move-object/from16 v8, p4

    #@106
    move/from16 v9, p5

    #@108
    .line 1147
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    #@10b
    move-result-object v16

    #@10c
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@10e
    .line 1153
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_5
    if-nez v16, :cond_1

    #@110
    .line 1154
    if-nez v6, :cond_b

    #@112
    .line 1155
    move-object/from16 v0, p0

    #@114
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@116
    const/16 v5, 0xb

    #@118
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    #@11b
    move-result v4

    #@11c
    add-int/lit8 v4, v4, 0x1

    #@11e
    move-object/from16 v0, p0

    #@120
    move/from16 v1, p2

    #@122
    move-object/from16 v2, p4

    #@124
    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@127
    goto/16 :goto_2

    #@129
    .line 1158
    :cond_b
    move-object/from16 v0, p0

    #@12b
    move/from16 v1, p2

    #@12d
    move-object/from16 v2, p4

    #@12f
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@132
    goto/16 :goto_2

    #@134
    .line 1164
    :pswitch_6
    const/4 v4, 0x1

    #@135
    move-object/from16 v0, p0

    #@137
    move/from16 v1, p2

    #@139
    move/from16 v2, p5

    #@13b
    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    #@13e
    move-result-object v16

    #@13f
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@141
    .line 1170
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_7
    const/4 v4, 0x0

    #@142
    move-object/from16 v0, p0

    #@144
    move/from16 v1, p2

    #@146
    move/from16 v2, p5

    #@148
    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    #@14b
    move-result-object v16

    #@14c
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@14e
    .line 1175
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_8
    if-eqz p5, :cond_1

    #@150
    .line 1176
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@154
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@157
    move-result-object v15

    #@158
    .line 1177
    .local v15, "ampm":[Ljava/lang/String;
    aget-object v16, v15, v6

    #@15a
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@15c
    .line 1182
    .end local v15    # "ampm":[Ljava/lang/String;
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_9
    if-nez v16, :cond_1

    #@15e
    .line 1183
    if-nez v6, :cond_c

    #@160
    .line 1184
    move-object/from16 v0, p0

    #@162
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@164
    const/16 v5, 0xa

    #@166
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    #@169
    move-result v4

    #@16a
    add-int/lit8 v4, v4, 0x1

    #@16c
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, p2

    #@170
    move-object/from16 v2, p4

    #@172
    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@175
    goto/16 :goto_2

    #@177
    .line 1187
    :cond_c
    move-object/from16 v0, p0

    #@179
    move/from16 v1, p2

    #@17b
    move-object/from16 v2, p4

    #@17d
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@180
    goto/16 :goto_2

    #@182
    .line 1192
    :pswitch_a
    if-nez v16, :cond_1

    #@184
    .line 1193
    move-object/from16 v0, p0

    #@186
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@188
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@18b
    move-result-object v24

    #@18c
    .line 1194
    .local v24, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@190
    const/16 v5, 0x10

    #@192
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@195
    move-result v4

    #@196
    if-eqz v4, :cond_d

    #@198
    const/16 v17, 0x1

    #@19a
    .line 1195
    .local v17, "daylight":Z
    :goto_3
    const/4 v4, 0x4

    #@19b
    move/from16 v0, p2

    #@19d
    if-ge v0, v4, :cond_e

    #@19f
    const/16 v25, 0x0

    #@1a1
    .line 1196
    .local v25, "tzstyle":I
    :goto_4
    move-object/from16 v0, p0

    #@1a3
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a5
    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@1a7
    move-object/from16 v0, v24

    #@1a9
    move/from16 v1, v17

    #@1ab
    move/from16 v2, v25

    #@1ad
    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@1b0
    move-result-object v26

    #@1b1
    .line 1197
    .local v26, "zoneString":Ljava/lang/String;
    if-eqz v26, :cond_f

    #@1b3
    .line 1198
    move-object/from16 v0, p4

    #@1b5
    move-object/from16 v1, v26

    #@1b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ba
    goto/16 :goto_2

    #@1bc
    .line 1194
    .end local v17    # "daylight":Z
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    #@1be
    .restart local v17    # "daylight":Z
    goto :goto_3

    #@1bf
    .line 1195
    :cond_e
    const/16 v25, 0x1

    #@1c1
    .restart local v25    # "tzstyle":I
    goto :goto_4

    #@1c2
    .line 1200
    .restart local v26    # "zoneString":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@1c4
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1c6
    const/16 v5, 0xf

    #@1c8
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@1cb
    move-result v4

    #@1cc
    .line 1201
    move-object/from16 v0, p0

    #@1ce
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1d0
    const/16 v8, 0x10

    #@1d2
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@1d5
    move-result v5

    #@1d6
    .line 1200
    add-int v22, v4, v5

    #@1d8
    .line 1202
    .local v22, "offsetMillis":I
    const/4 v4, 0x1

    #@1d9
    const/4 v5, 0x1

    #@1da
    move/from16 v0, v22

    #@1dc
    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@1df
    move-result-object v4

    #@1e0
    move-object/from16 v0, p4

    #@1e2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e5
    goto/16 :goto_2

    #@1e7
    .line 1209
    .end local v17    # "daylight":Z
    .end local v22    # "offsetMillis":I
    .end local v24    # "tz":Ljava/util/TimeZone;
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    #@1e9
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1eb
    const/16 v5, 0xf

    #@1ed
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@1f0
    move-result v4

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1f5
    const/16 v8, 0x10

    #@1f7
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@1fa
    move-result v5

    #@1fb
    add-int v6, v4, v5

    #@1fd
    .line 1210
    const/4 v4, 0x4

    #@1fe
    move/from16 v0, p2

    #@200
    if-lt v0, v4, :cond_10

    #@202
    const/16 v21, 0x1

    #@204
    .line 1211
    .local v21, "includeSeparator":Z
    :goto_5
    const/4 v4, 0x4

    #@205
    move/from16 v0, p2

    #@207
    if-ne v0, v4, :cond_11

    #@209
    const/16 v20, 0x1

    #@20b
    .line 1212
    .local v20, "includeGmt":Z
    :goto_6
    move/from16 v0, v20

    #@20d
    move/from16 v1, v21

    #@20f
    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@212
    move-result-object v4

    #@213
    move-object/from16 v0, p4

    #@215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@218
    goto/16 :goto_2

    #@21a
    .line 1210
    .end local v20    # "includeGmt":Z
    .end local v21    # "includeSeparator":Z
    :cond_10
    const/16 v21, 0x0

    #@21c
    .restart local v21    # "includeSeparator":Z
    goto :goto_5

    #@21d
    .line 1211
    :cond_11
    const/16 v20, 0x0

    #@21f
    goto :goto_6

    #@220
    .line 1218
    .end local v21    # "includeSeparator":Z
    :pswitch_c
    move-object/from16 v0, p0

    #@222
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@224
    const/16 v5, 0xf

    #@226
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@229
    move-result v4

    #@22a
    .line 1219
    move-object/from16 v0, p0

    #@22c
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@22e
    const/16 v8, 0x10

    #@230
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@233
    move-result v5

    #@234
    .line 1218
    add-int v6, v4, v5

    #@236
    .line 1221
    if-nez v6, :cond_12

    #@238
    .line 1222
    const/16 v4, 0x5a

    #@23a
    move-object/from16 v0, p4

    #@23c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@23f
    goto/16 :goto_2

    #@241
    .line 1226
    :cond_12
    const v4, 0xea60

    #@244
    div-int/2addr v6, v4

    #@245
    .line 1227
    if-ltz v6, :cond_14

    #@247
    .line 1228
    const/16 v4, 0x2b

    #@249
    move-object/from16 v0, p4

    #@24b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24e
    .line 1234
    :goto_7
    div-int/lit8 v4, v6, 0x3c

    #@250
    const/4 v5, 0x2

    #@251
    move-object/from16 v0, p4

    #@253
    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@256
    .line 1235
    const/4 v4, 0x1

    #@257
    move/from16 v0, p2

    #@259
    if-eq v0, v4, :cond_1

    #@25b
    .line 1239
    const/4 v4, 0x3

    #@25c
    move/from16 v0, p2

    #@25e
    if-ne v0, v4, :cond_13

    #@260
    .line 1240
    const/16 v4, 0x3a

    #@262
    move-object/from16 v0, p4

    #@264
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@267
    .line 1242
    :cond_13
    rem-int/lit8 v4, v6, 0x3c

    #@269
    const/4 v5, 0x2

    #@26a
    move-object/from16 v0, p4

    #@26c
    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@26f
    goto/16 :goto_2

    #@271
    .line 1230
    :cond_14
    const/16 v4, 0x2d

    #@273
    move-object/from16 v0, p4

    #@275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@278
    .line 1231
    neg-int v6, v6

    #@279
    goto :goto_7

    #@27a
    .line 1250
    :pswitch_d
    if-nez v16, :cond_1

    #@27c
    .line 1251
    int-to-double v4, v6

    #@27d
    const-wide v28, 0x408f400000000000L    # 1000.0

    #@282
    div-double v4, v4, v28

    #@284
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    #@286
    move/from16 v0, p2

    #@288
    int-to-double v0, v0

    #@289
    move-wide/from16 v30, v0

    #@28b
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    #@28e
    move-result-wide v28

    #@28f
    mul-double v4, v4, v28

    #@291
    double-to-int v6, v4

    #@292
    .line 1252
    move-object/from16 v0, p0

    #@294
    move/from16 v1, p2

    #@296
    move/from16 v2, p2

    #@298
    move-object/from16 v3, p4

    #@29a
    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@29d
    goto/16 :goto_2

    #@29f
    .line 1112
    nop

    #@2a0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .locals 42
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 1811
    const/16 v38, 0x0

    #@2
    .line 1812
    .local v38, "number":Ljava/lang/Number;
    const/4 v12, 0x0

    #@3
    .line 1813
    .local v12, "value":I
    new-instance v15, Ljava/text/ParsePosition;

    #@5
    const/4 v4, 0x0

    #@6
    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    #@9
    .line 1814
    .local v15, "pos":Ljava/text/ParsePosition;
    move/from16 v0, p2

    #@b
    iput v0, v15, Ljava/text/ParsePosition;->index:I

    #@d
    .line 1815
    const/16 v4, 0x13

    #@f
    move/from16 v0, p3

    #@11
    if-ne v0, v4, :cond_0

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@17
    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1819
    :cond_0
    :goto_0
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@1f
    aget v7, v4, p3

    #@21
    .line 1824
    .local v7, "field":I
    :goto_1
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    if-lt v4, v5, :cond_2

    #@29
    .line 1825
    move/from16 v0, p2

    #@2b
    move-object/from16 v1, p7

    #@2d
    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    #@2f
    .line 1826
    const/4 v4, -0x1

    #@30
    return v4

    #@31
    .line 1817
    .end local v7    # "field":I
    :cond_1
    const/16 p3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1828
    .restart local v7    # "field":I
    :cond_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v29

    #@3c
    .line 1829
    .local v29, "c":C
    const/16 v4, 0x20

    #@3e
    move/from16 v0, v29

    #@40
    if-eq v0, v4, :cond_5

    #@42
    const/16 v4, 0x9

    #@44
    move/from16 v0, v29

    #@46
    if-eq v0, v4, :cond_5

    #@48
    .line 1839
    const/4 v4, 0x4

    #@49
    move/from16 v0, p3

    #@4b
    if-eq v0, v4, :cond_3

    #@4d
    .line 1840
    const/16 v4, 0xf

    #@4f
    move/from16 v0, p3

    #@51
    if-ne v0, v4, :cond_6

    #@53
    .line 1846
    :cond_3
    if-eqz p5, :cond_b

    #@55
    .line 1847
    add-int v4, p2, p4

    #@57
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@5a
    move-result v5

    #@5b
    if-le v4, v5, :cond_a

    #@5d
    .line 2165
    .end local v7    # "field":I
    .end local v38    # "number":Ljava/lang/Number;
    :cond_4
    :goto_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@5f
    move-object/from16 v0, p7

    #@61
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@63
    .line 2166
    const/4 v4, -0x1

    #@64
    return v4

    #@65
    .line 1830
    .restart local v7    # "field":I
    .restart local v38    # "number":Ljava/lang/Number;
    :cond_5
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@67
    add-int/lit8 v4, v4, 0x1

    #@69
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@6b
    goto :goto_1

    #@6c
    .line 1841
    :cond_6
    const/4 v4, 0x2

    #@6d
    move/from16 v0, p3

    #@6f
    if-ne v0, v4, :cond_7

    #@71
    const/4 v4, 0x2

    #@72
    move/from16 v0, p4

    #@74
    if-le v0, v4, :cond_3

    #@76
    .line 1842
    :cond_7
    const/4 v4, 0x1

    #@77
    move/from16 v0, p3

    #@79
    if-eq v0, v4, :cond_3

    #@7b
    .line 1843
    const/16 v4, 0x13

    #@7d
    move/from16 v0, p3

    #@7f
    if-eq v0, v4, :cond_3

    #@81
    .line 1872
    .end local v38    # "number":Ljava/lang/Number;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    #@84
    move-result v16

    #@85
    .line 1875
    .local v16, "useDateFormatSymbols":Z
    packed-switch p3, :pswitch_data_0

    #@88
    .line 2123
    :pswitch_0
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    #@8b
    move-result v39

    #@8c
    .line 2124
    .local v39, "parseStart":I
    if-eqz p5, :cond_28

    #@8e
    .line 2125
    add-int v4, p2, p4

    #@90
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@93
    move-result v5

    #@94
    if-gt v4, v5, :cond_4

    #@96
    .line 2128
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@9a
    add-int v5, p2, p4

    #@9c
    const/4 v6, 0x0

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@a6
    move-result-object v38

    #@a7
    .line 2132
    .local v38, "number":Ljava/lang/Number;
    :goto_4
    if-eqz v38, :cond_4

    #@a9
    .line 2133
    const/16 v4, 0x8

    #@ab
    move/from16 v0, p3

    #@ad
    if-ne v0, v4, :cond_29

    #@af
    .line 2140
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    #@b2
    move-result-wide v32

    #@b3
    .line 2141
    .local v32, "doubleValue":D
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    #@b6
    move-result v4

    #@b7
    sub-int v41, v4, v39

    #@b9
    .line 2142
    .local v41, "width":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    #@bb
    move/from16 v0, v41

    #@bd
    int-to-double v10, v0

    #@be
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@c1
    move-result-wide v30

    #@c2
    .line 2143
    .local v30, "divisor":D
    div-double v4, v32, v30

    #@c4
    const-wide v10, 0x408f400000000000L    # 1000.0

    #@c9
    mul-double/2addr v4, v10

    #@ca
    double-to-int v12, v4

    #@cb
    .line 2148
    .end local v30    # "divisor":D
    .end local v32    # "doubleValue":D
    .end local v41    # "width":I
    :goto_5
    if-eqz p8, :cond_9

    #@cd
    if-gez v12, :cond_9

    #@cf
    .line 2149
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@d1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@d4
    move-result v5

    #@d5
    if-ge v4, v5, :cond_2a

    #@d7
    .line 2150
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@d9
    move-object/from16 v0, p1

    #@db
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@de
    move-result v4

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@e3
    if-eq v4, v5, :cond_2a

    #@e5
    .line 2153
    :goto_6
    neg-int v12, v12

    #@e6
    .line 2154
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@e8
    add-int/lit8 v4, v4, -0x1

    #@ea
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@ec
    .line 2157
    :cond_9
    move-object/from16 v0, p9

    #@ee
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@f1
    .line 2158
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@f3
    return v4

    #@f4
    .line 1850
    .end local v16    # "useDateFormatSymbols":Z
    .end local v39    # "parseStart":I
    .local v38, "number":Ljava/lang/Number;
    :cond_a
    move-object/from16 v0, p0

    #@f6
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@f8
    add-int v5, p2, p4

    #@fa
    const/4 v6, 0x0

    #@fb
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@100
    move-result-object v5

    #@101
    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@104
    move-result-object v38

    #@105
    .line 1854
    .local v38, "number":Ljava/lang/Number;
    :goto_7
    if-nez v38, :cond_c

    #@107
    .line 1855
    const/4 v4, 0x1

    #@108
    move/from16 v0, p3

    #@10a
    if-ne v0, v4, :cond_4

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@110
    instance-of v4, v4, Ljava/util/GregorianCalendar;

    #@112
    if-eqz v4, :cond_8

    #@114
    goto/16 :goto_2

    #@116
    .line 1852
    .local v38, "number":Ljava/lang/Number;
    :cond_b
    move-object/from16 v0, p0

    #@118
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@11a
    move-object/from16 v0, p1

    #@11c
    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@11f
    move-result-object v38

    #@120
    .local v38, "number":Ljava/lang/Number;
    goto :goto_7

    #@121
    .line 1859
    :cond_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    #@124
    move-result v12

    #@125
    .line 1861
    if-eqz p8, :cond_8

    #@127
    if-gez v12, :cond_8

    #@129
    .line 1862
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@12b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@12e
    move-result v5

    #@12f
    if-ge v4, v5, :cond_d

    #@131
    .line 1863
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@133
    move-object/from16 v0, p1

    #@135
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@138
    move-result v4

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@13d
    if-eq v4, v5, :cond_d

    #@13f
    .line 1866
    :goto_8
    neg-int v12, v12

    #@140
    .line 1867
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@142
    add-int/lit8 v4, v4, -0x1

    #@144
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@146
    goto/16 :goto_3

    #@148
    .line 1864
    :cond_d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@14a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@14d
    move-result v5

    #@14e
    if-ne v4, v5, :cond_8

    #@150
    .line 1865
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@152
    add-int/lit8 v4, v4, -0x1

    #@154
    move-object/from16 v0, p1

    #@156
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@159
    move-result v4

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@15e
    if-ne v4, v5, :cond_8

    #@160
    goto :goto_8

    #@161
    .line 1877
    .end local v38    # "number":Ljava/lang/Number;
    .restart local v16    # "useDateFormatSymbols":Z
    :pswitch_1
    if-eqz v16, :cond_e

    #@163
    .line 1878
    move-object/from16 v0, p0

    #@165
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@167
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    #@16a
    move-result-object v8

    #@16b
    const/4 v7, 0x0

    #@16c
    move-object/from16 v4, p0

    #@16e
    move-object/from16 v5, p1

    #@170
    move/from16 v6, p2

    #@172
    move-object/from16 v9, p9

    #@174
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@177
    .end local v7    # "field":I
    move-result v37

    #@178
    .local v37, "index":I
    if-lez v37, :cond_4

    #@17a
    .line 1879
    return v37

    #@17b
    .line 1882
    .end local v37    # "index":I
    .restart local v7    # "field":I
    :cond_e
    move-object/from16 v0, p0

    #@17d
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@17f
    .line 1884
    move-object/from16 v0, p0

    #@181
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@183
    .line 1883
    const/4 v6, 0x0

    #@184
    .line 1882
    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    #@187
    move-result-object v8

    #@188
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    #@18a
    move-object/from16 v5, p1

    #@18c
    move/from16 v6, p2

    #@18e
    move-object/from16 v9, p9

    #@190
    .line 1885
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@193
    move-result v37

    #@194
    .restart local v37    # "index":I
    if-lez v37, :cond_4

    #@196
    .line 1886
    return v37

    #@197
    .line 1893
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    #@199
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@19b
    instance-of v4, v4, Ljava/util/GregorianCalendar;

    #@19d
    if-nez v4, :cond_11

    #@19f
    .line 1896
    const/4 v4, 0x4

    #@1a0
    move/from16 v0, p4

    #@1a2
    if-lt v0, v4, :cond_f

    #@1a4
    const/16 v40, 0x2

    #@1a6
    .line 1897
    .local v40, "style":I
    :goto_9
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@1ae
    move/from16 v0, v40

    #@1b0
    invoke-virtual {v4, v7, v0, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    #@1b3
    move-result-object v8

    #@1b4
    .line 1898
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_10

    #@1b6
    move-object/from16 v4, p0

    #@1b8
    move-object/from16 v5, p1

    #@1ba
    move/from16 v6, p2

    #@1bc
    move-object/from16 v9, p9

    #@1be
    .line 1899
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@1c1
    move-result v37

    #@1c2
    .restart local v37    # "index":I
    if-lez v37, :cond_10

    #@1c4
    .line 1900
    return v37

    #@1c5
    .line 1896
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    .end local v40    # "style":I
    :cond_f
    const/16 v40, 0x1

    #@1c7
    .restart local v40    # "style":I
    goto :goto_9

    #@1c8
    .line 1903
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, p9

    #@1ca
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@1cd
    .line 1904
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@1cf
    return v4

    #@1d0
    .line 1913
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v40    # "style":I
    :cond_11
    const/4 v4, 0x2

    #@1d1
    move/from16 v0, p4

    #@1d3
    if-gt v0, v4, :cond_12

    #@1d5
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@1d7
    sub-int v4, v4, p2

    #@1d9
    const/4 v5, 0x2

    #@1da
    if-ne v4, v5, :cond_12

    #@1dc
    .line 1914
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@1df
    move-result v4

    #@1e0
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    #@1e3
    move-result v4

    #@1e4
    .line 1913
    if-eqz v4, :cond_12

    #@1e6
    .line 1915
    add-int/lit8 v4, p2, 0x1

    #@1e8
    move-object/from16 v0, p1

    #@1ea
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@1ed
    move-result v4

    #@1ee
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    #@1f1
    move-result v4

    #@1f2
    .line 1913
    if-eqz v4, :cond_12

    #@1f4
    .line 1924
    move-object/from16 v0, p0

    #@1f6
    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@1f8
    rem-int/lit8 v28, v4, 0x64

    #@1fa
    .line 1925
    .local v28, "ambiguousTwoDigitYear":I
    move/from16 v0, v28

    #@1fc
    if-ne v12, v0, :cond_13

    #@1fe
    const/4 v4, 0x1

    #@1ff
    :goto_a
    const/4 v5, 0x0

    #@200
    aput-boolean v4, p6, v5

    #@202
    .line 1926
    move-object/from16 v0, p0

    #@204
    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@206
    div-int/lit8 v4, v4, 0x64

    #@208
    mul-int/lit8 v5, v4, 0x64

    #@20a
    .line 1927
    move/from16 v0, v28

    #@20c
    if-ge v12, v0, :cond_14

    #@20e
    const/16 v4, 0x64

    #@210
    .line 1926
    :goto_b
    add-int/2addr v4, v5

    #@211
    add-int/2addr v12, v4

    #@212
    .line 1929
    .end local v28    # "ambiguousTwoDigitYear":I
    :cond_12
    move-object/from16 v0, p9

    #@214
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@217
    .line 1930
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@219
    return v4

    #@21a
    .line 1925
    .restart local v28    # "ambiguousTwoDigitYear":I
    :cond_13
    const/4 v4, 0x0

    #@21b
    goto :goto_a

    #@21c
    .line 1927
    :cond_14
    const/4 v4, 0x0

    #@21d
    goto :goto_b

    #@21e
    .line 1935
    .end local v28    # "ambiguousTwoDigitYear":I
    :pswitch_3
    const/16 v17, 0x1

    #@220
    move-object/from16 v9, p0

    #@222
    move-object/from16 v10, p1

    #@224
    move/from16 v11, p4

    #@226
    move/from16 v13, p2

    #@228
    move v14, v7

    #@229
    move-object/from16 v18, p9

    #@22b
    .line 1934
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    #@22e
    move-result v36

    #@22f
    .line 1936
    .local v36, "idx":I
    if-lez v36, :cond_4

    #@231
    .line 1937
    return v36

    #@232
    .line 1945
    .end local v36    # "idx":I
    :pswitch_4
    const/16 v17, 0x0

    #@234
    move-object/from16 v9, p0

    #@236
    move-object/from16 v10, p1

    #@238
    move/from16 v11, p4

    #@23a
    move/from16 v13, p2

    #@23c
    move v14, v7

    #@23d
    move-object/from16 v18, p9

    #@23f
    .line 1944
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    #@242
    move-result v36

    #@243
    .line 1946
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@245
    .line 1947
    return v36

    #@246
    .line 1954
    .end local v36    # "idx":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    #@249
    move-result v4

    #@24a
    if-nez v4, :cond_15

    #@24c
    .line 1956
    const/4 v4, 0x1

    #@24d
    if-lt v12, v4, :cond_4

    #@24f
    const/16 v4, 0x18

    #@251
    if-gt v12, v4, :cond_4

    #@253
    .line 1961
    :cond_15
    move-object/from16 v0, p0

    #@255
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@257
    const/16 v5, 0xb

    #@259
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    #@25c
    move-result v4

    #@25d
    add-int/lit8 v4, v4, 0x1

    #@25f
    if-ne v12, v4, :cond_16

    #@261
    .line 1962
    const/4 v12, 0x0

    #@262
    .line 1963
    :cond_16
    const/16 v4, 0xb

    #@264
    move-object/from16 v0, p9

    #@266
    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@269
    .line 1964
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@26b
    return v4

    #@26c
    .line 1969
    :pswitch_6
    const/16 v22, 0x0

    #@26e
    move-object/from16 v17, p0

    #@270
    move-object/from16 v18, p1

    #@272
    move/from16 v19, p2

    #@274
    move/from16 v20, v7

    #@276
    move/from16 v21, v16

    #@278
    move-object/from16 v23, p9

    #@27a
    .line 1968
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    #@27d
    move-result v36

    #@27e
    .line 1970
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@280
    .line 1971
    return v36

    #@281
    .line 1980
    .end local v36    # "idx":I
    :pswitch_7
    const/16 v22, 0x0

    #@283
    move-object/from16 v17, p0

    #@285
    move-object/from16 v18, p1

    #@287
    move/from16 v19, p2

    #@289
    move/from16 v20, v7

    #@28b
    move/from16 v21, v16

    #@28d
    move-object/from16 v23, p9

    #@28f
    .line 1979
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    #@292
    move-result v36

    #@293
    .line 1981
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@295
    .line 1982
    return v36

    #@296
    .line 1990
    .end local v36    # "idx":I
    :pswitch_8
    if-eqz v16, :cond_17

    #@298
    .line 1992
    move-object/from16 v0, p0

    #@29a
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@29c
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@29f
    move-result-object v21

    #@2a0
    .line 1991
    const/16 v20, 0x9

    #@2a2
    move-object/from16 v17, p0

    #@2a4
    move-object/from16 v18, p1

    #@2a6
    move/from16 v19, p2

    #@2a8
    move-object/from16 v22, p9

    #@2aa
    invoke-direct/range {v17 .. v22}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@2ad
    move-result v37

    #@2ae
    .restart local v37    # "index":I
    if-lez v37, :cond_4

    #@2b0
    .line 1993
    return v37

    #@2b1
    .line 1996
    .end local v37    # "index":I
    :cond_17
    move-object/from16 v0, p0

    #@2b3
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@2b9
    const/4 v6, 0x0

    #@2ba
    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    #@2bd
    move-result-object v8

    #@2be
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    #@2c0
    move-object/from16 v5, p1

    #@2c2
    move/from16 v6, p2

    #@2c4
    move-object/from16 v9, p9

    #@2c6
    .line 1997
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@2c9
    move-result v37

    #@2ca
    .restart local v37    # "index":I
    if-lez v37, :cond_4

    #@2cc
    .line 1998
    return v37

    #@2cd
    .line 2004
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    #@2d0
    move-result v4

    #@2d1
    if-nez v4, :cond_18

    #@2d3
    .line 2006
    const/4 v4, 0x1

    #@2d4
    if-lt v12, v4, :cond_4

    #@2d6
    const/16 v4, 0xc

    #@2d8
    if-gt v12, v4, :cond_4

    #@2da
    .line 2011
    :cond_18
    move-object/from16 v0, p0

    #@2dc
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2de
    const/16 v5, 0xa

    #@2e0
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    #@2e3
    move-result v4

    #@2e4
    add-int/lit8 v4, v4, 0x1

    #@2e6
    if-ne v12, v4, :cond_19

    #@2e8
    .line 2012
    const/4 v12, 0x0

    #@2e9
    .line 2013
    :cond_19
    const/16 v4, 0xa

    #@2eb
    move-object/from16 v0, p9

    #@2ed
    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@2f0
    .line 2014
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@2f2
    return v4

    #@2f3
    .line 2019
    :pswitch_a
    const/16 v20, 0x0

    #@2f5
    .line 2021
    .local v20, "sign":I
    :try_start_0
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@2f7
    move-object/from16 v0, p1

    #@2f9
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2fc
    move-result v29

    #@2fd
    .line 2022
    const/16 v4, 0x2b

    #@2ff
    move/from16 v0, v29

    #@301
    if-ne v0, v4, :cond_1b

    #@303
    .line 2023
    const/16 v20, 0x1

    #@305
    move/from16 v24, v20

    #@307
    .line 2027
    .end local v20    # "sign":I
    .local v24, "sign":I
    :goto_c
    if-nez v24, :cond_21

    #@309
    .line 2029
    const/16 v4, 0x47

    #@30b
    move/from16 v0, v29

    #@30d
    if-eq v0, v4, :cond_1a

    #@30f
    const/16 v4, 0x67

    #@311
    move/from16 v0, v29

    #@313
    if-ne v0, v4, :cond_1f

    #@315
    .line 2030
    :cond_1a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@318
    move-result v4

    #@319
    sub-int v4, v4, p2

    #@31b
    const-string/jumbo v5, "GMT"

    #@31e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@321
    move-result v5

    #@322
    if-lt v4, v5, :cond_1f

    #@324
    .line 2031
    const-string/jumbo v20, "GMT"

    #@327
    const-string/jumbo v4, "GMT"

    #@32a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@32d
    move-result v22

    #@32e
    const/16 v18, 0x1

    #@330
    const/16 v21, 0x0

    #@332
    move-object/from16 v17, p1

    #@334
    move/from16 v19, p2

    #@336
    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@339
    move-result v4

    #@33a
    .line 2029
    if-eqz v4, :cond_1f

    #@33c
    .line 2032
    const-string/jumbo v4, "GMT"

    #@33f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@342
    move-result v4

    #@343
    add-int v4, v4, p2

    #@345
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@347
    .line 2034
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@34a
    move-result v4

    #@34b
    iget v5, v15, Ljava/text/ParsePosition;->index:I

    #@34d
    sub-int/2addr v4, v5

    #@34e
    if-lez v4, :cond_2b

    #@350
    .line 2035
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@352
    move-object/from16 v0, p1

    #@354
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@357
    move-result v29

    #@358
    .line 2036
    const/16 v4, 0x2b

    #@35a
    move/from16 v0, v29

    #@35c
    if-ne v0, v4, :cond_1c

    #@35e
    .line 2037
    const/16 v20, 0x1

    #@360
    .line 2043
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    :goto_d
    if-nez v20, :cond_1d

    #@362
    .line 2044
    const/16 v4, 0xf

    #@364
    const/4 v5, 0x0

    #@365
    :try_start_2
    move-object/from16 v0, p9

    #@367
    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@36a
    move-result-object v4

    #@36b
    .line 2045
    const/16 v5, 0x10

    #@36d
    const/4 v6, 0x0

    #@36e
    .line 2044
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@371
    .line 2046
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@373
    return v4

    #@374
    .line 2024
    :cond_1b
    const/16 v4, 0x2d

    #@376
    move/from16 v0, v29

    #@378
    if-ne v0, v4, :cond_2c

    #@37a
    .line 2025
    const/16 v20, -0x1

    #@37c
    move/from16 v24, v20

    #@37e
    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto :goto_c

    #@37f
    .line 2038
    :cond_1c
    const/16 v4, 0x2d

    #@381
    move/from16 v0, v29

    #@383
    if-ne v0, v4, :cond_2b

    #@385
    .line 2039
    const/16 v20, -0x1

    #@387
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto :goto_d

    #@388
    .line 2050
    :cond_1d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@38a
    add-int/lit8 v19, v4, 0x1

    #@38c
    move/from16 v0, v19

    #@38e
    iput v0, v15, Ljava/text/ParsePosition;->index:I

    #@390
    const/16 v21, 0x0

    #@392
    .line 2051
    const/16 v22, 0x0

    #@394
    move-object/from16 v17, p0

    #@396
    move-object/from16 v18, p1

    #@398
    move-object/from16 v23, p9

    #@39a
    .line 2050
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    #@39d
    move-result v35

    #@39e
    .line 2052
    .local v35, "i":I
    if-lez v35, :cond_1e

    #@3a0
    .line 2053
    return v35

    #@3a1
    .line 2055
    :cond_1e
    move/from16 v0, v35

    #@3a3
    neg-int v4, v0

    #@3a4
    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@3a6
    goto/16 :goto_2

    #@3a8
    .line 2074
    .end local v35    # "i":I
    :catch_0
    move-exception v34

    #@3a9
    .local v34, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    #@3ab
    .line 2059
    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_1f
    :try_start_3
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@3ad
    move-object/from16 v0, p0

    #@3af
    move-object/from16 v1, p1

    #@3b1
    move-object/from16 v2, p9

    #@3b3
    invoke-direct {v0, v1, v4, v2}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    #@3b6
    move-result v35

    #@3b7
    .line 2060
    .restart local v35    # "i":I
    if-lez v35, :cond_20

    #@3b9
    .line 2061
    return v35

    #@3ba
    .line 2063
    :cond_20
    move/from16 v0, v35

    #@3bc
    neg-int v4, v0

    #@3bd
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@3bf
    move/from16 v20, v24

    #@3c1
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    #@3c3
    .line 2067
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v24    # "sign":I
    :cond_21
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@3c5
    add-int/lit8 v23, v4, 0x1

    #@3c7
    move/from16 v0, v23

    #@3c9
    iput v0, v15, Ljava/text/ParsePosition;->index:I

    #@3cb
    const/16 v25, 0x0

    #@3cd
    .line 2068
    const/16 v26, 0x0

    #@3cf
    move-object/from16 v21, p0

    #@3d1
    move-object/from16 v22, p1

    #@3d3
    move-object/from16 v27, p9

    #@3d5
    .line 2067
    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    #@3d8
    move-result v35

    #@3d9
    .line 2069
    .restart local v35    # "i":I
    if-lez v35, :cond_22

    #@3db
    .line 2070
    return v35

    #@3dc
    .line 2072
    :cond_22
    move/from16 v0, v35

    #@3de
    neg-int v4, v0

    #@3df
    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@3e1
    move/from16 v20, v24

    #@3e3
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    #@3e5
    .line 2081
    .end local v20    # "sign":I
    .end local v35    # "i":I
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3e8
    move-result v4

    #@3e9
    iget v5, v15, Ljava/text/ParsePosition;->index:I

    #@3eb
    sub-int/2addr v4, v5

    #@3ec
    if-lez v4, :cond_4

    #@3ee
    .line 2085
    const/16 v20, 0x0

    #@3f0
    .line 2086
    .restart local v20    # "sign":I
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@3f2
    move-object/from16 v0, p1

    #@3f4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@3f7
    move-result v29

    #@3f8
    .line 2087
    const/16 v4, 0x5a

    #@3fa
    move/from16 v0, v29

    #@3fc
    if-ne v0, v4, :cond_23

    #@3fe
    .line 2088
    const/16 v4, 0xf

    #@400
    const/4 v5, 0x0

    #@401
    move-object/from16 v0, p9

    #@403
    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@406
    move-result-object v4

    #@407
    const/16 v5, 0x10

    #@409
    const/4 v6, 0x0

    #@40a
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@40d
    .line 2089
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@40f
    add-int/lit8 v4, v4, 0x1

    #@411
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@413
    return v4

    #@414
    .line 2093
    :cond_23
    const/16 v4, 0x2b

    #@416
    move/from16 v0, v29

    #@418
    if-ne v0, v4, :cond_24

    #@41a
    .line 2094
    const/16 v20, 0x1

    #@41c
    .line 2101
    :goto_e
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@41e
    add-int/lit8 v19, v4, 0x1

    #@420
    move/from16 v0, v19

    #@422
    iput v0, v15, Ljava/text/ParsePosition;->index:I

    #@424
    const/4 v4, 0x3

    #@425
    move/from16 v0, p4

    #@427
    if-ne v0, v4, :cond_26

    #@429
    const/16 v22, 0x1

    #@42b
    :goto_f
    move-object/from16 v17, p0

    #@42d
    move-object/from16 v18, p1

    #@42f
    move/from16 v21, p4

    #@431
    move-object/from16 v23, p9

    #@433
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    #@436
    move-result v35

    #@437
    .line 2102
    .restart local v35    # "i":I
    if-lez v35, :cond_27

    #@439
    .line 2103
    return v35

    #@43a
    .line 2095
    .end local v35    # "i":I
    :cond_24
    const/16 v4, 0x2d

    #@43c
    move/from16 v0, v29

    #@43e
    if-ne v0, v4, :cond_25

    #@440
    .line 2096
    const/16 v20, -0x1

    #@442
    goto :goto_e

    #@443
    .line 2098
    :cond_25
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@445
    add-int/lit8 v4, v4, 0x1

    #@447
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@449
    goto/16 :goto_2

    #@44b
    .line 2101
    :cond_26
    const/16 v22, 0x0

    #@44d
    goto :goto_f

    #@44e
    .line 2105
    .restart local v35    # "i":I
    :cond_27
    move/from16 v0, v35

    #@450
    neg-int v4, v0

    #@451
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@453
    goto/16 :goto_2

    #@455
    .line 2130
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v39    # "parseStart":I
    :cond_28
    move-object/from16 v0, p0

    #@457
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@459
    move-object/from16 v0, p1

    #@45b
    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@45e
    move-result-object v38

    #@45f
    .restart local v38    # "number":Ljava/lang/Number;
    goto/16 :goto_4

    #@461
    .line 2145
    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    #@464
    move-result v12

    #@465
    goto/16 :goto_5

    #@467
    .line 2151
    :cond_2a
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@469
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@46c
    move-result v5

    #@46d
    if-ne v4, v5, :cond_9

    #@46f
    .line 2152
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@471
    add-int/lit8 v4, v4, -0x1

    #@473
    move-object/from16 v0, p1

    #@475
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@478
    move-result v4

    #@479
    move-object/from16 v0, p0

    #@47b
    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@47d
    if-ne v4, v5, :cond_9

    #@47f
    goto/16 :goto_6

    #@481
    .line 2074
    .end local v38    # "number":Ljava/lang/Number;
    .end local v39    # "parseStart":I
    .restart local v24    # "sign":I
    :catch_1
    move-exception v34

    #@482
    .restart local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    move/from16 v20, v24

    #@484
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    #@486
    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_2b
    move/from16 v20, v24

    #@488
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_d

    #@48a
    :cond_2c
    move/from16 v24, v20

    #@48c
    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto/16 :goto_c

    #@48e
    .line 1875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colonRequired"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 1735
    move v3, p2

    #@1
    .line 1739
    .local v3, "index":I
    add-int/lit8 v3, p2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 1742
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_1

    #@d
    .line 1783
    .end local v0    # "c":C
    :cond_0
    :goto_0
    rsub-int/lit8 v6, v3, 0x1

    #@f
    return v6

    #@10
    .line 1745
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v0, -0x30

    #@12
    .line 1746
    .local v2, "hours":I
    add-int/lit8 v4, v3, 0x1

    #@14
    .end local v3    # "index":I
    .local v4, "index":I
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 1747
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_2

    #@1e
    .line 1748
    mul-int/lit8 v6, v2, 0xa

    #@20
    add-int/lit8 v7, v0, -0x30

    #@22
    add-int v2, v6, v7

    #@24
    .line 1752
    :goto_1
    const/16 v6, 0x17

    #@26
    if-le v2, v6, :cond_3

    #@28
    move v3, v4

    #@29
    .line 1753
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@2a
    .line 1750
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_2
    add-int/lit8 v3, v4, -0x1

    #@2c
    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v4, v3

    #@2d
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    #@2e
    .line 1755
    :cond_3
    const/4 v5, 0x0

    #@2f
    .line 1756
    .local v5, "minutes":I
    const/4 v6, 0x1

    #@30
    if-eq p4, v6, :cond_6

    #@32
    .line 1758
    add-int/lit8 v3, v4, 0x1

    #@34
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@37
    move-result v0

    #@38
    .line 1759
    const/16 v6, 0x3a

    #@3a
    if-ne v0, v6, :cond_4

    #@3c
    .line 1760
    add-int/lit8 v4, v3, 0x1

    #@3e
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 1764
    :goto_2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@45
    move-result v6

    #@46
    if-nez v6, :cond_5

    #@48
    move v3, v4

    #@49
    .line 1765
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@4a
    .line 1761
    :cond_4
    if-nez p5, :cond_0

    #@4c
    move v4, v3

    #@4d
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    #@4e
    .line 1767
    :cond_5
    add-int/lit8 v5, v0, -0x30

    #@50
    .line 1768
    add-int/lit8 v3, v4, 0x1

    #@52
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v0

    #@56
    .line 1769
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_0

    #@5c
    .line 1772
    mul-int/lit8 v6, v5, 0xa

    #@5e
    add-int/lit8 v7, v0, -0x30

    #@60
    add-int v5, v6, v7

    #@62
    .line 1773
    const/16 v6, 0x3b

    #@64
    if-gt v5, v6, :cond_0

    #@66
    .line 1777
    :goto_3
    mul-int/lit8 v6, v2, 0x3c

    #@68
    add-int/2addr v5, v6

    #@69
    .line 1778
    const v6, 0xea60

    #@6c
    mul-int/2addr v6, v5

    #@6d
    mul-int/2addr v6, p3

    #@6e
    const/16 v7, 0xf

    #@70
    invoke-virtual {p6, v7, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@73
    move-result-object v6

    #@74
    .line 1779
    const/16 v7, 0x10

    #@76
    const/4 v8, 0x0

    #@77
    .line 1778
    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@7a
    .line 1780
    return v3

    #@7b
    .line 1781
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v5    # "minutes":I
    :catch_0
    move-exception v1

    #@7c
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    #@7d
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v4    # "index":I
    :catch_1
    move-exception v1

    #@7e
    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    #@7f
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@80
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v4    # "index":I
    .restart local v5    # "minutes":I
    :cond_6
    move v3, v4

    #@81
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3
.end method

.method private subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    #@0
    .prologue
    .line 1655
    const/4 v6, 0x0

    #@1
    .line 1656
    .local v6, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    .line 1661
    .local v0, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    #@e
    move-result v7

    #@f
    .line 1662
    .local v7, "zoneIndex":I
    const/4 v5, 0x0

    #@10
    .line 1663
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@12
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    .line 1664
    .local v9, "zoneStrings":[[Ljava/lang/String;
    const/4 v8, 0x0

    #@17
    .line 1665
    .local v8, "zoneNames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@18
    .line 1666
    .local v4, "nameIndex":I
    const/4 v10, -0x1

    #@19
    if-eq v7, v10, :cond_1

    #@1b
    .line 1667
    aget-object v8, v9, v7

    #@1d
    .line 1668
    .local v8, "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    if-lez v4, :cond_1

    #@23
    .line 1669
    const/4 v10, 0x2

    #@24
    if-gt v4, v10, :cond_0

    #@26
    .line 1671
    aget-object v10, v8, v4

    #@28
    add-int/lit8 v11, v4, 0x2

    #@2a
    aget-object v11, v8, v11

    #@2c
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v6

    #@30
    .line 1673
    .end local v6    # "useSameName":Z
    :cond_0
    const/4 v10, 0x0

    #@31
    aget-object v10, v8, v10

    #@33
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@36
    move-result-object v5

    #@37
    .line 1676
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_3

    #@39
    .line 1677
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@3b
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3e
    move-result-object v11

    #@3f
    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    #@46
    move-result v7

    #@47
    .line 1678
    const/4 v10, -0x1

    #@48
    if-eq v7, v10, :cond_3

    #@4a
    .line 1679
    aget-object v8, v9, v7

    #@4c
    .line 1680
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@4f
    move-result v4

    #@50
    if-lez v4, :cond_3

    #@52
    .line 1681
    const/4 v10, 0x2

    #@53
    if-gt v4, v10, :cond_2

    #@55
    .line 1682
    aget-object v10, v8, v4

    #@57
    add-int/lit8 v11, v4, 0x2

    #@59
    aget-object v11, v8, v11

    #@5b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v6

    #@5f
    .line 1684
    :cond_2
    const/4 v10, 0x0

    #@60
    aget-object v10, v8, v10

    #@62
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@65
    move-result-object v5

    #@66
    .line 1689
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_5

    #@68
    .line 1690
    array-length v3, v9

    #@69
    .line 1691
    .local v3, "len":I
    const/4 v2, 0x0

    #@6a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@6c
    .line 1692
    aget-object v8, v9, v2

    #@6e
    .line 1693
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@71
    move-result v4

    #@72
    if-lez v4, :cond_9

    #@74
    .line 1694
    const/4 v10, 0x2

    #@75
    if-gt v4, v10, :cond_4

    #@77
    .line 1695
    aget-object v10, v8, v4

    #@79
    add-int/lit8 v11, v4, 0x2

    #@7b
    aget-object v11, v8, v11

    #@7d
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@80
    move-result v6

    #@81
    .line 1697
    :cond_4
    const/4 v10, 0x0

    #@82
    aget-object v10, v8, v10

    #@84
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@87
    move-result-object v5

    #@88
    .line 1702
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_c

    #@8a
    .line 1703
    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v10

    #@8e
    if-nez v10, :cond_6

    #@90
    .line 1704
    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@93
    .line 1712
    :cond_6
    const/4 v10, 0x3

    #@94
    if-lt v4, v10, :cond_a

    #@96
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    #@99
    move-result v1

    #@9a
    .line 1713
    .local v1, "dstAmount":I
    :goto_1
    if-nez v6, :cond_7

    #@9c
    const/4 v10, 0x3

    #@9d
    if-lt v4, v10, :cond_b

    #@9f
    if-nez v1, :cond_b

    #@a1
    :cond_7
    const/4 v10, 0x1

    #@a2
    :goto_2
    if-nez v10, :cond_8

    #@a4
    .line 1714
    const/16 v10, 0xf

    #@a6
    invoke-virtual {p3, v10}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    #@a9
    move-result-object v10

    #@aa
    const/16 v11, 0x10

    #@ac
    invoke-virtual {v10, v11, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@af
    .line 1716
    :cond_8
    aget-object v10, v8, v4

    #@b1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@b4
    move-result v10

    #@b5
    add-int/2addr v10, p2

    #@b6
    return v10

    #@b7
    .line 1691
    .end local v1    # "dstAmount":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@b9
    goto :goto_0

    #@ba
    .line 1712
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    #@bb
    .restart local v1    # "dstAmount":I
    goto :goto_1

    #@bc
    .line 1713
    :cond_b
    const/4 v10, 0x0

    #@bd
    goto :goto_2

    #@be
    .line 1718
    .end local v1    # "dstAmount":I
    :cond_c
    const/4 v10, 0x0

    #@bf
    return v10
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    .line 2268
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 2269
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@8
    .line 2270
    .local v3, "inQuote":Z
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    if-ge v2, v5, :cond_5

    #@f
    .line 2271
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 2272
    .local v0, "c":C
    if-eqz v3, :cond_1

    #@15
    .line 2273
    if-ne v0, v6, :cond_0

    #@17
    .line 2274
    const/4 v3, 0x0

    #@18
    .line 2295
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2270
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2277
    :cond_1
    if-ne v0, v6, :cond_2

    #@20
    .line 2278
    const/4 v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 2279
    :cond_2
    const/16 v5, 0x61

    #@24
    if-lt v0, v5, :cond_3

    #@26
    const/16 v5, 0x7a

    #@28
    if-gt v0, v5, :cond_3

    #@2a
    .line 2280
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v1

    #@2e
    .line 2281
    .local v1, "ci":I
    if-ltz v1, :cond_4

    #@30
    .line 2285
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@33
    move-result v5

    #@34
    if-ge v1, v5, :cond_0

    #@36
    .line 2286
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    goto :goto_1

    #@3b
    .line 2279
    .end local v1    # "ci":I
    :cond_3
    const/16 v5, 0x41

    #@3d
    if-lt v0, v5, :cond_0

    #@3f
    const/16 v5, 0x5a

    #@41
    if-gt v0, v5, :cond_0

    #@43
    goto :goto_2

    #@44
    .line 2289
    .restart local v1    # "ci":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@46
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v7, "Illegal pattern  character \'"

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    .line 2291
    const-string/jumbo v7, "\'"

    #@59
    .line 2289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v5

    #@65
    .line 2297
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_5
    if-eqz v3, :cond_6

    #@67
    .line 2298
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@69
    const-string/jumbo v6, "Unfinished quote in pattern"

    #@6c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v5

    #@70
    .line 2299
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    return-object v5
.end method

.method private useDateFormatSymbols()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2251
    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2252
    return v0

    #@6
    .line 2254
    :cond_0
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->isGregorianCalendar()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@e
    if-nez v1, :cond_2

    #@10
    :cond_1
    :goto_0
    return v0

    #@11
    :cond_2
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private final zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1344
    :try_start_0
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1345
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@7
    check-cast v1, Ljava/text/DecimalFormat;

    #@9
    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@10
    move-result v1

    #@11
    iput-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@13
    .line 1347
    :cond_0
    if-ltz p1, :cond_3

    #@15
    .line 1348
    const/16 v1, 0x64

    #@17
    if-ge p1, v1, :cond_4

    #@19
    const/4 v1, 0x1

    #@1a
    if-lt p2, v1, :cond_4

    #@1c
    if-gt p2, v2, :cond_4

    #@1e
    .line 1349
    const/16 v1, 0xa

    #@20
    if-ge p1, v1, :cond_2

    #@22
    .line 1350
    if-ne p2, v2, :cond_1

    #@24
    .line 1351
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@26
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@29
    .line 1353
    :cond_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@2b
    add-int/2addr v1, p1

    #@2c
    int-to-char v1, v1

    #@2d
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 1358
    :goto_0
    return-void

    #@31
    .line 1355
    :cond_2
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@33
    div-int/lit8 v2, p1, 0xa

    #@35
    add-int/2addr v1, v2

    #@36
    int-to-char v1, v1

    #@37
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3a
    .line 1356
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@3c
    rem-int/lit8 v2, p1, 0xa

    #@3e
    add-int/2addr v1, v2

    #@3f
    int-to-char v1, v1

    #@40
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    goto :goto_0

    #@44
    .line 1375
    :catch_0
    move-exception v0

    #@45
    .line 1378
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@47
    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@4a
    .line 1379
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@4c
    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@4f
    .line 1380
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@51
    int-to-long v2, p1

    #@52
    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@54
    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@57
    .line 1337
    return-void

    #@58
    .line 1359
    :cond_4
    const/16 v1, 0x3e8

    #@5a
    if-lt p1, v1, :cond_3

    #@5c
    const/16 v1, 0x2710

    #@5e
    if-ge p1, v1, :cond_3

    #@60
    .line 1360
    const/4 v1, 0x4

    #@61
    if-ne p2, v1, :cond_5

    #@63
    .line 1361
    :try_start_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@65
    div-int/lit16 v2, p1, 0x3e8

    #@67
    add-int/2addr v1, v2

    #@68
    int-to-char v1, v1

    #@69
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6c
    .line 1362
    rem-int/lit16 p1, p1, 0x3e8

    #@6e
    .line 1363
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@70
    div-int/lit8 v2, p1, 0x64

    #@72
    add-int/2addr v1, v2

    #@73
    int-to-char v1, v1

    #@74
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@77
    .line 1364
    rem-int/lit8 p1, p1, 0x64

    #@79
    .line 1365
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@7b
    div-int/lit8 v2, p1, 0xa

    #@7d
    add-int/2addr v1, v2

    #@7e
    int-to-char v1, v1

    #@7f
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@82
    .line 1366
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@84
    rem-int/lit8 v2, p1, 0xa

    #@86
    add-int/2addr v1, v2

    #@87
    int-to-char v1, v1

    #@88
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8b
    .line 1367
    return-void

    #@8c
    .line 1369
    :cond_5
    if-ne p2, v2, :cond_3

    #@8e
    if-ne p3, v2, :cond_3

    #@90
    .line 1370
    rem-int/lit8 v1, p1, 0x64

    #@92
    const/4 v2, 0x2

    #@93
    const/4 v3, 0x2

    #@94
    invoke-direct {p0, v1, v2, v3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@97
    .line 1371
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2345
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 2346
    const-string/jumbo v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@9
    .line 2344
    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 2347
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@13
    .line 2348
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@15
    .line 2343
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2331
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@6
    .line 2332
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@8
    .line 2329
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 2382
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@6
    .line 2383
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@8
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/text/DateFormatSymbols;

    #@e
    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@10
    .line 2384
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2407
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    return v1

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 2408
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@b
    .line 2409
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@d
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 2410
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@17
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@19
    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 2409
    :cond_1
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 945
    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    #@3
    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    #@5
    .line 946
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1002
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    #@7
    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    #@a
    .line 1005
    .local v0, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1006
    check-cast p1, Ljava/util/Date;

    #@10
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    #@13
    .line 1019
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 1008
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 1009
    new-instance v2, Ljava/util/Date;

    #@22
    check-cast p1, Ljava/lang/Number;

    #@24
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@27
    move-result-wide v4

    #@28
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@2b
    invoke-direct {p0, v2, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_0

    #@2f
    .line 1011
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    #@31
    .line 1012
    new-instance v2, Ljava/lang/NullPointerException;

    #@33
    .line 1013
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    #@36
    .line 1012
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 1016
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    .line 1017
    const-string/jumbo v3, "Cannot format given Object as a Date"

    #@3f
    .line 1016
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 928
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 2359
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 2394
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1422
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 1424
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 1426
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@b
    .line 1424
    return-object v1

    #@c
    .line 1425
    :catchall_0
    move-exception v1

    #@d
    .line 1426
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@10
    .line 1425
    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 915
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@c
    .line 914
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    .line 2371
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@6
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@8
    .line 2372
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@b
    .line 2369
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2317
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    .line 2318
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@5
    .line 2319
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 2317
    invoke-direct {p0, v0, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2308
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
