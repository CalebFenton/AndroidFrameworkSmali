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
    const/4 v4, 0x3

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v3, 0x18

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
    .line 508
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 507
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    #@17
    .line 1007
    new-array v0, v3, [I

    #@19
    fill-array-data v0, :array_0

    #@1c
    .line 1006
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@1e
    .line 1025
    new-array v0, v3, [I

    #@20
    fill-array-data v0, :array_1

    #@23
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@25
    .line 1043
    new-array v0, v3, [Ljava/text/DateFormat$Field;

    #@27
    .line 1044
    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    #@29
    aput-object v3, v0, v1

    #@2b
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@2d
    aput-object v1, v0, v2

    #@2f
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@31
    const/4 v2, 0x2

    #@32
    aput-object v1, v0, v2

    #@34
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    #@36
    aput-object v1, v0, v4

    #@38
    .line 1045
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    #@3a
    const/4 v2, 0x4

    #@3b
    aput-object v1, v0, v2

    #@3d
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    #@3f
    const/4 v2, 0x5

    #@40
    aput-object v1, v0, v2

    #@42
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    #@44
    const/4 v2, 0x6

    #@45
    aput-object v1, v0, v2

    #@47
    .line 1046
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    #@4e
    const/16 v2, 0x8

    #@50
    aput-object v1, v0, v2

    #@52
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@54
    const/16 v2, 0x9

    #@56
    aput-object v1, v0, v2

    #@58
    .line 1047
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    #@5a
    const/16 v2, 0xa

    #@5c
    aput-object v1, v0, v2

    #@5e
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    #@60
    const/16 v2, 0xb

    #@62
    aput-object v1, v0, v2

    #@64
    .line 1048
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    #@66
    const/16 v2, 0xc

    #@68
    aput-object v1, v0, v2

    #@6a
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    #@6c
    const/16 v2, 0xd

    #@6e
    aput-object v1, v0, v2

    #@70
    .line 1049
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    #@72
    const/16 v2, 0xe

    #@74
    aput-object v1, v0, v2

    #@76
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    #@78
    const/16 v2, 0xf

    #@7a
    aput-object v1, v0, v2

    #@7c
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    #@7e
    const/16 v2, 0x10

    #@80
    aput-object v1, v0, v2

    #@82
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@84
    const/16 v2, 0x11

    #@86
    aput-object v1, v0, v2

    #@88
    .line 1050
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@8a
    const/16 v2, 0x12

    #@8c
    aput-object v1, v0, v2

    #@8e
    .line 1051
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@90
    const/16 v2, 0x13

    #@92
    aput-object v1, v0, v2

    #@94
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@96
    const/16 v2, 0x14

    #@98
    aput-object v1, v0, v2

    #@9a
    .line 1052
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@9c
    const/16 v2, 0x15

    #@9e
    aput-object v1, v0, v2

    #@a0
    .line 1054
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@a2
    const/16 v2, 0x16

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 1055
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@a8
    const/16 v2, 0x17

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 1043
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    #@ae
    .line 409
    return-void

    #@af
    :cond_0
    move v0, v2

    #@b0
    goto/16 :goto_0

    #@b2
    .line 1007
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

    #@e6
    .line 1025
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
    .line 538
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@3
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    #@a
    .line 537
    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .locals 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 606
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@5
    .line 434
    iput v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@7
    .line 453
    const/16 v2, 0x2d

    #@9
    iput-char v2, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@b
    .line 459
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@d
    .line 607
    if-nez p3, :cond_0

    #@f
    .line 608
    new-instance v2, Ljava/lang/NullPointerException;

    #@11
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@14
    throw v2

    #@15
    .line 611
    :cond_0
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@17
    .line 613
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@1a
    .line 615
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@20
    .line 616
    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@23
    move-result-object v1

    #@24
    .line 617
    .local v1, "localeData":Llibcore/icu/LocaleData;
    if-ltz p1, :cond_1

    #@26
    if-ltz p2, :cond_1

    #@28
    .line 618
    const/4 v2, 0x2

    #@29
    new-array v0, v2, [Ljava/lang/Object;

    #@2b
    .line 619
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v0, v3

    #@31
    .line 620
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    aput-object v2, v0, v4

    #@37
    .line 622
    .local v0, "dateTimeArgs":[Ljava/lang/Object;
    const-string/jumbo v2, "{0} {1}"

    #@3a
    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@40
    .line 634
    .end local v0    # "dateTimeArgs":[Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@43
    .line 606
    return-void

    #@44
    .line 624
    :cond_1
    if-ltz p1, :cond_2

    #@46
    .line 625
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@4c
    goto :goto_0

    #@4d
    .line 627
    :cond_2
    if-ltz p2, :cond_3

    #@4f
    .line 628
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@55
    goto :goto_0

    #@56
    .line 631
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v3, "No date or time style specified"

    #@5b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 554
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    .line 552
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
    .line 591
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@4
    .line 434
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@6
    .line 453
    const/16 v0, 0x2d

    #@8
    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@a
    .line 459
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@d
    .line 593
    if-eqz p1, :cond_0

    #@f
    if-nez p2, :cond_1

    #@11
    .line 594
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@16
    throw v0

    #@17
    .line 597
    :cond_1
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@19
    .line 598
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@1f
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@21
    .line 599
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@23
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@29
    .line 600
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@2b
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@2e
    .line 601
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@30
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@33
    .line 602
    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@35
    .line 591
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 569
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@3
    .line 434
    const/4 v0, 0x1

    #@4
    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@6
    .line 453
    const/16 v0, 0x2d

    #@8
    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@a
    .line 459
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@d
    .line 571
    if-eqz p1, :cond_0

    #@f
    if-nez p2, :cond_1

    #@11
    .line 572
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@16
    throw v0

    #@17
    .line 575
    :cond_1
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    #@1a
    .line 576
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@1c
    .line 577
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@22
    .line 578
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@24
    .line 579
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    #@27
    .line 569
    return-void
.end method

.method private checkNegativeNumberExpression()V
    .locals 5

    #@0
    .prologue
    .line 2447
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    instance-of v3, v3, Ljava/text/DecimalFormat;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2448
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
    .line 2446
    :cond_0
    :goto_0
    return-void

    #@11
    .line 2449
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@13
    check-cast v3, Ljava/text/DecimalFormat;

    #@15
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 2450
    .local v1, "numberPattern":Ljava/lang/String;
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_3

    #@21
    .line 2451
    const/4 v3, 0x0

    #@22
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@24
    .line 2453
    const/16 v3, 0x3b

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v2

    #@2a
    .line 2456
    .local v2, "separatorIndex":I
    const/4 v3, -0x1

    #@2b
    if-le v2, v3, :cond_2

    #@2d
    .line 2457
    const/16 v3, 0x2d

    #@2f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v0

    #@33
    .line 2458
    .local v0, "minusIndex":I
    const/16 v3, 0x30

    #@35
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@38
    move-result v3

    #@39
    if-le v0, v3, :cond_2

    #@3b
    .line 2459
    const/16 v3, 0x23

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@40
    move-result v3

    #@41
    if-le v0, v3, :cond_2

    #@43
    .line 2460
    const/4 v3, 0x1

    #@44
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@46
    .line 2461
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
    .line 2464
    .end local v0    # "minusIndex":I
    :cond_2
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    #@56
    .line 2466
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
    .line 732
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v11

    #@4
    .line 733
    .local v11, "length":I
    const/4 v7, 0x0

    #@5
    .line 734
    .local v7, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    mul-int/lit8 v15, v11, 0x2

    #@9
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c
    .line 735
    .local v3, "compiledPattern":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    #@d
    .line 736
    .local v14, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@e
    .line 737
    .local v4, "count":I
    const/4 v9, -0x1

    #@f
    .line 739
    .local v9, "lastTag":I
    const/4 v6, 0x0

    #@10
    .end local v14    # "tmpBuffer":Ljava/lang/StringBuilder;
    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_16

    #@12
    .line 740
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v1

    #@18
    .line 742
    .local v1, "c":C
    const/16 v15, 0x27

    #@1a
    if-ne v1, v15, :cond_8

    #@1c
    .line 745
    add-int/lit8 v15, v6, 0x1

    #@1e
    if-ge v15, v11, :cond_2

    #@20
    .line 746
    add-int/lit8 v15, v6, 0x1

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v1

    #@28
    .line 747
    const/16 v15, 0x27

    #@2a
    if-ne v1, v15, :cond_2

    #@2c
    .line 748
    add-int/lit8 v6, v6, 0x1

    #@2e
    .line 749
    if-eqz v4, :cond_0

    #@30
    .line 750
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@33
    .line 751
    const/4 v9, -0x1

    #@34
    .line 752
    const/4 v4, 0x0

    #@35
    .line 754
    :cond_0
    if-eqz v7, :cond_1

    #@37
    .line 755
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 739
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 757
    :cond_1
    or-int/lit16 v15, v1, 0x6400

    #@3f
    int-to-char v15, v15

    #@40
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 762
    :cond_2
    if-nez v7, :cond_5

    #@46
    .line 763
    if-eqz v4, :cond_3

    #@48
    .line 764
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@4b
    .line 765
    const/4 v9, -0x1

    #@4c
    .line 766
    const/4 v4, 0x0

    #@4d
    .line 768
    :cond_3
    if-nez v14, :cond_4

    #@4f
    .line 769
    new-instance v14, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    #@54
    .line 773
    :goto_2
    const/4 v7, 0x1

    #@55
    goto :goto_1

    #@56
    .line 771
    :cond_4
    const/4 v15, 0x0

    #@57
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5a
    goto :goto_2

    #@5b
    .line 775
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v10

    #@5f
    .line 776
    .local v10, "len":I
    const/4 v15, 0x1

    #@60
    if-ne v10, v15, :cond_7

    #@62
    .line 777
    const/4 v15, 0x0

    #@63
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    #@66
    move-result v2

    #@67
    .line 778
    .local v2, "ch":C
    const/16 v15, 0x80

    #@69
    if-ge v2, v15, :cond_6

    #@6b
    .line 779
    or-int/lit16 v15, v2, 0x6400

    #@6d
    int-to-char v15, v15

    #@6e
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 788
    .end local v2    # "ch":C
    :goto_3
    const/4 v7, 0x0

    #@72
    goto :goto_1

    #@73
    .line 781
    .restart local v2    # "ch":C
    :cond_6
    const/16 v15, 0x6501

    #@75
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 782
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_3

    #@7c
    .line 785
    .end local v2    # "ch":C
    :cond_7
    const/16 v15, 0x65

    #@7e
    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@81
    .line 786
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_3

    #@85
    .line 792
    .end local v10    # "len":I
    :cond_8
    if-eqz v7, :cond_9

    #@87
    .line 793
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_1

    #@8b
    .line 796
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
    .line 797
    :cond_b
    if-eqz v4, :cond_c

    #@9d
    .line 798
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@a0
    .line 799
    const/4 v9, -0x1

    #@a1
    .line 800
    const/4 v4, 0x0

    #@a2
    .line 802
    :cond_c
    const/16 v15, 0x80

    #@a4
    if-ge v1, v15, :cond_d

    #@a6
    .line 804
    or-int/lit16 v15, v1, 0x6400

    #@a8
    int-to-char v15, v15

    #@a9
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1

    #@ad
    .line 809
    :cond_d
    add-int/lit8 v8, v6, 0x1

    #@af
    .local v8, "j":I
    :goto_4
    if-ge v8, v11, :cond_e

    #@b1
    .line 810
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@b6
    move-result v5

    #@b7
    .line 811
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
    .line 815
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
    .line 816
    :goto_5
    if-ge v6, v8, :cond_11

    #@cd
    .line 817
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@d2
    move-result v15

    #@d3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d6
    .line 816
    add-int/lit8 v6, v6, 0x1

    #@d8
    goto :goto_5

    #@d9
    .line 811
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
    .line 809
    :cond_10
    add-int/lit8 v8, v8, 0x1

    #@e3
    goto :goto_4

    #@e4
    .line 819
    .end local v5    # "d":C
    :cond_11
    add-int/lit8 v6, v6, -0x1

    #@e6
    goto/16 :goto_1

    #@e8
    .line 825
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
    .line 826
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
    .line 827
    const-string/jumbo v17, "\'"

    #@109
    .line 826
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
    .line 829
    :cond_13
    const/4 v15, -0x1

    #@116
    if-eq v9, v15, :cond_14

    #@118
    if-ne v9, v13, :cond_15

    #@11a
    .line 830
    :cond_14
    move v9, v13

    #@11b
    .line 831
    add-int/lit8 v4, v4, 0x1

    #@11d
    .line 832
    goto/16 :goto_1

    #@11f
    .line 834
    :cond_15
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@122
    .line 835
    move v9, v13

    #@123
    .line 836
    const/4 v4, 0x1

    #@124
    goto/16 :goto_1

    #@126
    .line 839
    .end local v1    # "c":C
    .end local v13    # "tag":I
    :cond_16
    if-eqz v7, :cond_17

    #@128
    .line 840
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@12a
    const-string/jumbo v16, "Unterminated quote"

    #@12d
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@130
    throw v15

    #@131
    .line 843
    :cond_17
    if-eqz v4, :cond_18

    #@133
    .line 844
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    #@136
    .line 848
    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@139
    move-result v10

    #@13a
    .line 849
    .restart local v10    # "len":I
    new-array v12, v10, [C

    #@13c
    .line 850
    .local v12, "r":[C
    const/4 v15, 0x0

    #@13d
    const/16 v16, 0x0

    #@13f
    move/from16 v0, v16

    #@141
    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@144
    .line 851
    return-object v12
.end method

.method private static final encode(IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 858
    const/16 v0, 0x15

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x4

    #@5
    if-lt p1, v0, :cond_0

    #@7
    .line 859
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
    .line 861
    :cond_0
    const/16 v0, 0xff

    #@23
    if-ge p1, v0, :cond_1

    #@25
    .line 862
    shl-int/lit8 v0, p0, 0x8

    #@27
    or-int/2addr v0, p1

    #@28
    int-to-char v0, v0

    #@29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 857
    :goto_0
    return-void

    #@2d
    .line 864
    :cond_1
    shl-int/lit8 v0, p0, 0x8

    #@2f
    or-int/lit16 v0, v0, 0xff

    #@31
    int-to-char v0, v0

    #@32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 865
    ushr-int/lit8 v0, p1, 0x10

    #@37
    int-to-char v0, v0

    #@38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 866
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
    .line 936
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@5
    .line 938
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    #@8
    move-result v5

    #@9
    .line 940
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
    .line 941
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@11
    aget-char v0, v0, v6

    #@13
    ushr-int/lit8 v1, v0, 0x8

    #@15
    .line 942
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
    .line 943
    .local v2, "count":I
    const/16 v0, 0xff

    #@1f
    if-ne v2, v0, :cond_1

    #@21
    .line 944
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
    .line 945
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
    .line 948
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
    .line 959
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    #@3a
    goto :goto_0

    #@3b
    .line 950
    :pswitch_0
    int-to-char v0, v2

    #@3c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3f
    goto :goto_0

    #@40
    .line 954
    :pswitch_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@42
    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@45
    .line 955
    add-int/2addr v6, v2

    #@46
    .line 956
    goto :goto_0

    #@47
    .line 963
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
    .line 948
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
    .line 1294
    const/4 v0, 0x0

    #@2
    .line 1295
    .local v0, "current":Ljava/lang/String;
    if-eqz p5, :cond_8

    #@4
    .line 1297
    const/4 v2, 0x4

    #@5
    if-ne p1, v2, :cond_3

    #@7
    .line 1298
    if-eqz p6, :cond_2

    #@9
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@b
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1307
    :goto_0
    if-eqz v1, :cond_0

    #@11
    .line 1308
    aget-object v0, v1, p2

    #@13
    .line 1316
    .end local v0    # "current":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@15
    .line 1317
    add-int/lit8 v2, p2, 0x1

    #@17
    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@1a
    .line 1320
    :cond_1
    return-object v0

    #@1b
    .line 1298
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
    .line 1299
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x5

    #@23
    if-ne p1, v2, :cond_5

    #@25
    .line 1300
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
    .line 1301
    .end local v1    # "months":[Ljava/lang/String;
    :cond_5
    if-ne p1, v3, :cond_7

    #@37
    .line 1302
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
    .line 1304
    .end local v1    # "months":[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@48
    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    #@49
    .line 1311
    .end local v1    # "months":[Ljava/lang/String;
    :cond_8
    if-ge p1, v3, :cond_0

    #@4b
    .line 1312
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
    .line 1274
    if-eqz p3, :cond_5

    #@2
    .line 1276
    const/4 v1, 0x4

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 1277
    if-eqz p4, :cond_0

    #@7
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@9
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1286
    .local v0, "weekdays":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, p2

    #@f
    return-object v1

    #@10
    .line 1277
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
    .line 1278
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    #@18
    if-ne p1, v1, :cond_3

    #@1a
    .line 1280
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
    .line 1283
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
    .line 1289
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
    .line 2236
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
    .line 640
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@8
    .line 643
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
    .line 644
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 645
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1c
    .line 646
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    #@22
    .line 649
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    #@24
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@26
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 651
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
    .line 653
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    #@36
    .line 638
    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_2

    #@4
    .line 658
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
    .line 663
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
    .line 656
    :cond_2
    return-void
.end method

.method private initializeDefaultCentury()V
    .locals 4

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 875
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@b
    const/4 v1, 0x1

    #@c
    const/16 v2, -0x50

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@11
    .line 876
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@1a
    .line 873
    return-void
.end method

.method private isDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1776
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
    .line 2247
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
    .line 1630
    add-int/lit8 v6, p4, 0x2

    #@4
    .line 1631
    .local v6, "index":I
    aget-object v0, p5, p3

    #@6
    aget-object v3, v0, v6

    #@8
    .line 1633
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    move-object v0, p1

    #@d
    move v2, p2

    #@e
    .line 1632
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1634
    return v1

    #@15
    .line 1636
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
    .line 1595
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_3

    #@2
    .line 1596
    const/4 v6, 0x0

    #@3
    .line 1598
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
    .line 1599
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1a
    move-result v5

    #@1b
    .line 1600
    .local v5, "length":I
    if-eqz v6, :cond_1

    #@1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    if-le v5, v0, :cond_0

    #@23
    .line 1601
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
    .line 1602
    move-object v6, v3

    #@2e
    .local v6, "bestMatch":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 1607
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "bestMatch":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    #@31
    .line 1608
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
    .line 1609
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@41
    move-result v0

    #@42
    add-int/2addr v0, p2

    #@43
    return v0

    #@44
    .line 1612
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
    .line 1549
    const/16 v17, 0x0

    #@2
    .line 1550
    .local v17, "i":I
    move-object/from16 v0, p4

    #@4
    array-length v0, v0

    #@5
    move/from16 v16, v0

    #@7
    .line 1552
    .local v16, "count":I
    const/4 v2, 0x7

    #@8
    move/from16 v0, p3

    #@a
    if-ne v0, v2, :cond_0

    #@c
    const/16 v17, 0x1

    #@e
    .line 1558
    :cond_0
    const/4 v15, 0x0

    #@f
    .local v15, "bestMatchLength":I
    const/4 v14, -0x1

    #@10
    .line 1559
    .local v14, "bestMatch":I
    :goto_0
    move/from16 v0, v17

    #@12
    move/from16 v1, v16

    #@14
    if-ge v0, v1, :cond_3

    #@16
    .line 1561
    aget-object v2, p4, v17

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v7

    #@1c
    .line 1564
    .local v7, "length":I
    if-le v7, v15, :cond_1

    #@1e
    .line 1565
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
    .line 1564
    if-eqz v2, :cond_1

    #@2c
    .line 1567
    move/from16 v14, v17

    #@2e
    .line 1568
    move v15, v7

    #@2f
    .line 1573
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
    .line 1574
    add-int/lit8 v2, v7, -0x1

    #@3d
    if-le v2, v15, :cond_2

    #@3f
    .line 1575
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
    .line 1573
    if-eqz v2, :cond_2

    #@4f
    .line 1576
    move/from16 v14, v17

    #@51
    .line 1577
    add-int/lit8 v15, v7, -0x1

    #@53
    .line 1559
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1580
    .end local v7    # "length":I
    :cond_3
    if-ltz v14, :cond_4

    #@58
    .line 1582
    move-object/from16 v0, p5

    #@5a
    move/from16 v1, p3

    #@5c
    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@5f
    .line 1583
    add-int v2, p2, v15

    #@61
    return v2

    #@62
    .line 1585
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
    .line 1616
    const/4 v6, 0x1

    #@1
    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    #@2
    if-gt v6, v0, :cond_1

    #@4
    .line 1619
    aget-object v3, p3, v6

    #@6
    .line 1621
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    .line 1620
    const/4 v1, 0x1

    #@b
    .line 1621
    const/4 v4, 0x0

    #@c
    move-object v0, p1

    #@d
    move v2, p2

    #@e
    .line 1620
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1622
    return v6

    #@15
    .line 1616
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1625
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
    .line 883
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    .line 884
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 885
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
    .line 882
    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    #@3
    .line 1423
    move-object/from16 v0, p2

    #@5
    iget v4, v0, Ljava/text/ParsePosition;->index:I

    #@7
    .line 1424
    .local v4, "start":I
    move/from16 v18, v4

    #@9
    .line 1425
    .local v18, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@c
    move-result v20

    #@d
    .line 1427
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
    .line 1429
    .local v8, "ambiguousYear":[Z
    new-instance v11, Ljava/text/CalendarBuilder;

    #@16
    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    #@19
    .line 1431
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
    .line 1432
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@25
    aget-char v2, v2, v15

    #@27
    ushr-int/lit8 v5, v2, 0x8

    #@29
    .line 1433
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
    .line 1434
    .local v6, "count":I
    const/16 v2, 0xff

    #@35
    if-ne v6, v2, :cond_c

    #@37
    .line 1435
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
    .line 1436
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
    .line 1439
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_1
    packed-switch v5, :pswitch_data_0

    #@4f
    .line 1466
    const/4 v7, 0x0

    #@50
    .line 1476
    .local v7, "obeyCount":Z
    const/4 v10, 0x0

    #@51
    .line 1478
    .local v10, "useFollowingMinusSignAsDelimiter":Z
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@55
    array-length v2, v2

    #@56
    if-ge v15, v2, :cond_3

    #@58
    .line 1479
    move-object/from16 v0, p0

    #@5a
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@5c
    aget-char v2, v2, v15

    #@5e
    ushr-int/lit8 v17, v2, 0x8

    #@60
    .line 1480
    .local v17, "nextTag":I
    const/16 v2, 0x64

    #@62
    move/from16 v0, v17

    #@64
    if-eq v0, v2, :cond_1

    #@66
    .line 1481
    const/16 v2, 0x65

    #@68
    move/from16 v0, v17

    #@6a
    if-eq v0, v2, :cond_1

    #@6c
    .line 1482
    const/4 v7, 0x1

    #@6d
    .line 1485
    :cond_1
    move-object/from16 v0, p0

    #@6f
    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    #@71
    if-eqz v2, :cond_3

    #@73
    .line 1486
    const/16 v2, 0x64

    #@75
    move/from16 v0, v17

    #@77
    if-eq v0, v2, :cond_2

    #@79
    .line 1487
    const/16 v2, 0x65

    #@7b
    move/from16 v0, v17

    #@7d
    if-ne v0, v2, :cond_3

    #@7f
    .line 1489
    :cond_2
    const/16 v2, 0x64

    #@81
    move/from16 v0, v17

    #@83
    if-ne v0, v2, :cond_9

    #@85
    .line 1490
    move-object/from16 v0, p0

    #@87
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@89
    aget-char v2, v2, v15

    #@8b
    and-int/lit16 v12, v2, 0xff

    #@8d
    .line 1495
    .local v12, "c":I
    :goto_2
    move-object/from16 v0, p0

    #@8f
    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    #@91
    if-ne v12, v2, :cond_3

    #@93
    .line 1496
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
    .line 1500
    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    #@9d
    move-result v4

    #@9e
    .line 1503
    if-gez v4, :cond_0

    #@a0
    .line 1504
    move/from16 v0, v18

    #@a2
    move-object/from16 v1, p2

    #@a4
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@a6
    .line 1505
    const/4 v2, 0x0

    #@a7
    return-object v2

    #@a8
    .line 1441
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
    .line 1442
    :cond_4
    move/from16 v0, v18

    #@b7
    move-object/from16 v1, p2

    #@b9
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@bb
    .line 1443
    move-object/from16 v0, p2

    #@bd
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@bf
    .line 1444
    const/4 v2, 0x0

    #@c0
    return-object v2

    #@c1
    .line 1446
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@c3
    .line 1447
    goto/16 :goto_0

    #@c5
    :pswitch_1
    move v13, v6

    #@c6
    .end local v6    # "count":I
    .local v13, "count":I
    move/from16 v16, v15

    #@c8
    .line 1450
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_3
    add-int/lit8 v6, v13, -0x1

    #@ca
    .end local v13    # "count":I
    .restart local v6    # "count":I
    if-lez v13, :cond_8

    #@cc
    .line 1451
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
    .line 1452
    :goto_4
    move/from16 v0, v18

    #@e2
    move-object/from16 v1, p2

    #@e4
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@e6
    .line 1453
    move-object/from16 v0, p2

    #@e8
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@ea
    .line 1454
    const/4 v2, 0x0

    #@eb
    return-object v2

    #@ec
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v15, v16

    #@ee
    .line 1451
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    #@ef
    .line 1456
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
    .line 1458
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0

    #@f9
    .line 1492
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
    .line 1514
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
    .line 1518
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
    .line 1521
    .local v19, "parsedDate":Ljava/util/Date;
    const/4 v2, 0x0

    #@113
    aget-boolean v2, v8, v2

    #@115
    if-eqz v2, :cond_b

    #@117
    .line 1522
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
    .line 1523
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
    .line 1535
    :cond_b
    return-object v19

    #@136
    .line 1529
    .end local v19    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v14

    #@137
    .line 1530
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    #@139
    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@13b
    .line 1531
    move/from16 v0, v18

    #@13d
    move-object/from16 v1, p2

    #@13f
    iput v0, v1, Ljava/text/ParsePosition;->index:I

    #@141
    .line 1532
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
    .line 1439
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
    .line 2162
    const/4 v1, 0x2

    #@1
    if-gt p2, v1, :cond_0

    #@3
    .line 2167
    add-int/lit8 v1, p3, -0x1

    #@5
    const/4 v2, 0x2

    #@6
    move-object/from16 v0, p9

    #@8
    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@b
    .line 2168
    iget v1, p6, Ljava/text/ParsePosition;->index:I

    #@d
    return v1

    #@e
    .line 2171
    :cond_0
    const/4 v7, -0x1

    #@f
    .line 2172
    .local v7, "index":I
    if-eqz p7, :cond_4

    #@11
    .line 2178
    if-eqz p8, :cond_1

    #@13
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@15
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 2177
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
    .line 2176
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@22
    move-result v7

    #@23
    if-lez v7, :cond_2

    #@25
    .line 2180
    return v7

    #@26
    .line 2178
    :cond_1
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@28
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    goto :goto_0

    #@2d
    .line 2185
    :cond_2
    if-eqz p8, :cond_3

    #@2f
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@31
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 2184
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
    .line 2183
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@3e
    move-result v7

    #@3f
    if-lez v7, :cond_5

    #@41
    .line 2187
    return v7

    #@42
    .line 2185
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@44
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    goto :goto_1

    #@49
    .line 2190
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4b
    .line 2192
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@4d
    .line 2191
    const/4 v3, 0x0

    #@4e
    .line 2190
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
    .line 2193
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@5b
    move-result v7

    #@5c
    if-lez v7, :cond_5

    #@5e
    .line 2194
    return v7

    #@5f
    .line 2198
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
    .line 2203
    const/4 v6, -0x1

    #@1
    .line 2204
    .local v6, "index":I
    if-eqz p4, :cond_3

    #@3
    .line 2209
    if-eqz p5, :cond_0

    #@5
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 2208
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
    .line 2207
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@14
    move-result v6

    #@15
    if-lez v6, :cond_1

    #@17
    .line 2211
    return v6

    #@18
    .line 2209
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    goto :goto_0

    #@1f
    .line 2217
    :cond_1
    if-eqz p5, :cond_2

    #@21
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@23
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 2216
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
    .line 2215
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    #@30
    move-result v6

    #@31
    if-lez v6, :cond_5

    #@33
    .line 2219
    return v6

    #@34
    .line 2217
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@36
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    goto :goto_1

    #@3b
    .line 2222
    :cond_3
    const/4 v0, 0x2

    #@3c
    const/4 v1, 0x1

    #@3d
    filled-new-array {v0, v1}, [I

    #@40
    move-result-object v8

    #@41
    .line 2223
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
    .line 2224
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
    .line 2225
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@59
    move-result v6

    #@5a
    if-lez v6, :cond_4

    #@5c
    .line 2226
    return v6

    #@5d
    .line 2223
    :cond_4
    add-int/lit8 v0, v9, 0x1

    #@5f
    move v9, v0

    #@60
    goto :goto_2

    #@61
    .line 2231
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
    .line 2410
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 2413
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
    .line 2418
    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@e
    if-ge v4, v5, :cond_1

    #@10
    .line 2420
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    #@13
    .line 2426
    :goto_0
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    #@15
    .line 2432
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@18
    move-result-object v2

    #@19
    .line 2433
    .local v2, "tz":Ljava/util/TimeZone;
    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 2434
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 2435
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@24
    move-result-object v3

    #@25
    .line 2436
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
    .line 2437
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@3a
    .line 2409
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "zi":Ljava/util/TimeZone;
    :cond_0
    return-void

    #@3b
    .line 2414
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    #@3c
    .line 2415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    #@3e
    const-string/jumbo v5, "invalid pattern"

    #@41
    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 2424
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
    .line 1065
    const v7, 0x7fffffff

    #@3
    .line 1066
    .local v7, "maxIntCount":I
    const/16 v16, 0x0

    #@5
    .line 1067
    .local v16, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v12

    #@9
    .line 1069
    .local v12, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@b
    aget v19, v4, p1

    #@d
    .line 1071
    .local v19, "field":I
    const/16 v4, 0x11

    #@f
    move/from16 v0, v19

    #@11
    if-ne v0, v4, :cond_4

    #@13
    .line 1072
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
    .line 1073
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@21
    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    #@24
    move-result v6

    #@25
    .line 1086
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
    .line 1087
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
    .line 1088
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
    .line 1095
    .end local v16    # "current":Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@47
    .line 1256
    :pswitch_0
    if-nez v16, :cond_1

    #@49
    .line 1257
    move-object/from16 v0, p0

    #@4b
    move/from16 v1, p2

    #@4d
    move-object/from16 v2, p4

    #@4f
    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@52
    .line 1262
    .end local p2    # "count":I
    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    #@54
    .line 1263
    move-object/from16 v0, p4

    #@56
    move-object/from16 v1, v16

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 1266
    :cond_2
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@5d
    aget v9, v4, p1

    #@5f
    .line 1267
    .local v9, "fieldID":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    #@61
    aget-object v10, v4, p1

    #@63
    .line 1269
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
    .line 1063
    return-void

    #@70
    .line 1076
    .end local v6    # "value":I
    .end local v9    # "fieldID":I
    .end local v10    # "f":Ljava/text/DateFormat$Field;
    .end local v23    # "style":I
    .restart local v16    # "current":Ljava/lang/String;
    .restart local p2    # "count":I
    :cond_3
    const/16 p1, 0x1

    #@72
    .line 1077
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@74
    aget v19, v4, p1

    #@76
    .line 1078
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
    .line 1080
    .end local v6    # "value":I
    :cond_4
    const/16 v4, 0x3e8

    #@83
    move/from16 v0, v19

    #@85
    if-ne v0, v4, :cond_5

    #@87
    .line 1081
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
    .line 1083
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
    .line 1086
    :cond_6
    const/16 v23, 0x1

    #@a2
    .restart local v23    # "style":I
    goto :goto_1

    #@a3
    .line 1097
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_1
    if-eqz p5, :cond_7

    #@a5
    .line 1098
    move-object/from16 v0, p0

    #@a7
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@a9
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    #@ac
    move-result-object v18

    #@ad
    .line 1099
    .local v18, "eras":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@af
    array-length v4, v0

    #@b0
    if-ge v6, v4, :cond_7

    #@b2
    .line 1100
    aget-object v16, v18, v6

    #@b4
    .line 1102
    .end local v18    # "eras":[Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_1

    #@b6
    .line 1103
    const-string/jumbo v16, ""

    #@b9
    .local v16, "current":Ljava/lang/String;
    goto :goto_2

    #@ba
    .line 1108
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
    .line 1109
    const/4 v4, 0x2

    #@c3
    move/from16 v0, p2

    #@c5
    if-eq v0, v4, :cond_8

    #@c7
    .line 1110
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
    .line 1112
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
    .line 1114
    :cond_9
    if-nez v16, :cond_1

    #@de
    .line 1115
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
    .line 1124
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
    .line 1123
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    #@fc
    move-result-object v16

    #@fd
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@ff
    .line 1131
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
    .line 1130
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    #@10b
    move-result-object v16

    #@10c
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@10e
    .line 1136
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_5
    if-nez v16, :cond_1

    #@110
    .line 1137
    if-nez v6, :cond_b

    #@112
    .line 1138
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
    .line 1141
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
    .line 1147
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
    .line 1153
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
    .line 1158
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_8
    if-eqz p5, :cond_1

    #@150
    .line 1159
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@154
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@157
    move-result-object v15

    #@158
    .line 1160
    .local v15, "ampm":[Ljava/lang/String;
    aget-object v16, v15, v6

    #@15a
    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    #@15c
    .line 1165
    .end local v15    # "ampm":[Ljava/lang/String;
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_9
    if-nez v16, :cond_1

    #@15e
    .line 1166
    if-nez v6, :cond_c

    #@160
    .line 1167
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
    .line 1170
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
    .line 1175
    :pswitch_a
    if-nez v16, :cond_1

    #@184
    .line 1176
    move-object/from16 v0, p0

    #@186
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@188
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@18b
    move-result-object v24

    #@18c
    .line 1177
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
    .line 1178
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
    .line 1180
    .local v25, "tzstyle":I
    :goto_4
    move-object/from16 v0, p0

    #@1a3
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a5
    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    #@1a7
    if-eqz v4, :cond_f

    #@1a9
    .line 1182
    move-object/from16 v0, p0

    #@1ab
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1ad
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@1b0
    move-result-object v4

    #@1b1
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1b4
    move-result-object v5

    #@1b5
    .line 1181
    move/from16 v0, v17

    #@1b7
    move/from16 v1, v25

    #@1b9
    invoke-static {v4, v5, v0, v1}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    #@1bc
    move-result-object v26

    #@1bd
    .line 1186
    .local v26, "zoneString":Ljava/lang/String;
    :goto_5
    if-eqz v26, :cond_10

    #@1bf
    .line 1187
    move-object/from16 v0, p4

    #@1c1
    move-object/from16 v1, v26

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c6
    goto/16 :goto_2

    #@1c8
    .line 1177
    .end local v17    # "daylight":Z
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    #@1ca
    .restart local v17    # "daylight":Z
    goto :goto_3

    #@1cb
    .line 1178
    :cond_e
    const/16 v25, 0x1

    #@1cd
    .restart local v25    # "tzstyle":I
    goto :goto_4

    #@1ce
    .line 1184
    :cond_f
    move-object/from16 v0, p0

    #@1d0
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1d2
    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@1d4
    move-object/from16 v0, v24

    #@1d6
    move/from16 v1, v17

    #@1d8
    move/from16 v2, v25

    #@1da
    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@1dd
    move-result-object v26

    #@1de
    .restart local v26    # "zoneString":Ljava/lang/String;
    goto :goto_5

    #@1df
    .line 1189
    :cond_10
    move-object/from16 v0, p0

    #@1e1
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1e3
    const/16 v5, 0xf

    #@1e5
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@1e8
    move-result v4

    #@1e9
    .line 1190
    move-object/from16 v0, p0

    #@1eb
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1ed
    const/16 v8, 0x10

    #@1ef
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@1f2
    move-result v5

    #@1f3
    .line 1189
    add-int v22, v4, v5

    #@1f5
    .line 1191
    .local v22, "offsetMillis":I
    const/4 v4, 0x1

    #@1f6
    const/4 v5, 0x1

    #@1f7
    move/from16 v0, v22

    #@1f9
    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@1fc
    move-result-object v4

    #@1fd
    move-object/from16 v0, p4

    #@1ff
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@202
    goto/16 :goto_2

    #@204
    .line 1198
    .end local v17    # "daylight":Z
    .end local v22    # "offsetMillis":I
    .end local v24    # "tz":Ljava/util/TimeZone;
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    #@206
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@208
    const/16 v5, 0xf

    #@20a
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@20d
    move-result v4

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@212
    const/16 v8, 0x10

    #@214
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@217
    move-result v5

    #@218
    add-int v6, v4, v5

    #@21a
    .line 1199
    const/4 v4, 0x4

    #@21b
    move/from16 v0, p2

    #@21d
    if-lt v0, v4, :cond_11

    #@21f
    const/16 v21, 0x1

    #@221
    .line 1200
    .local v21, "includeSeparator":Z
    :goto_6
    const/4 v4, 0x4

    #@222
    move/from16 v0, p2

    #@224
    if-ne v0, v4, :cond_12

    #@226
    const/16 v20, 0x1

    #@228
    .line 1201
    .local v20, "includeGmt":Z
    :goto_7
    move/from16 v0, v20

    #@22a
    move/from16 v1, v21

    #@22c
    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@22f
    move-result-object v4

    #@230
    move-object/from16 v0, p4

    #@232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@235
    goto/16 :goto_2

    #@237
    .line 1199
    .end local v20    # "includeGmt":Z
    .end local v21    # "includeSeparator":Z
    :cond_11
    const/16 v21, 0x0

    #@239
    .restart local v21    # "includeSeparator":Z
    goto :goto_6

    #@23a
    .line 1200
    :cond_12
    const/16 v20, 0x0

    #@23c
    goto :goto_7

    #@23d
    .line 1207
    .end local v21    # "includeSeparator":Z
    :pswitch_c
    move-object/from16 v0, p0

    #@23f
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@241
    const/16 v5, 0xf

    #@243
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@246
    move-result v4

    #@247
    .line 1208
    move-object/from16 v0, p0

    #@249
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@24b
    const/16 v8, 0x10

    #@24d
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    #@250
    move-result v5

    #@251
    .line 1207
    add-int v6, v4, v5

    #@253
    .line 1210
    if-nez v6, :cond_13

    #@255
    .line 1211
    const/16 v4, 0x5a

    #@257
    move-object/from16 v0, p4

    #@259
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25c
    goto/16 :goto_2

    #@25e
    .line 1215
    :cond_13
    const v4, 0xea60

    #@261
    div-int/2addr v6, v4

    #@262
    .line 1216
    if-ltz v6, :cond_15

    #@264
    .line 1217
    const/16 v4, 0x2b

    #@266
    move-object/from16 v0, p4

    #@268
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@26b
    .line 1223
    :goto_8
    div-int/lit8 v4, v6, 0x3c

    #@26d
    const/4 v5, 0x2

    #@26e
    move-object/from16 v0, p4

    #@270
    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@273
    .line 1224
    const/4 v4, 0x1

    #@274
    move/from16 v0, p2

    #@276
    if-eq v0, v4, :cond_1

    #@278
    .line 1228
    const/4 v4, 0x3

    #@279
    move/from16 v0, p2

    #@27b
    if-ne v0, v4, :cond_14

    #@27d
    .line 1229
    const/16 v4, 0x3a

    #@27f
    move-object/from16 v0, p4

    #@281
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@284
    .line 1231
    :cond_14
    rem-int/lit8 v4, v6, 0x3c

    #@286
    const/4 v5, 0x2

    #@287
    move-object/from16 v0, p4

    #@289
    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@28c
    goto/16 :goto_2

    #@28e
    .line 1219
    :cond_15
    const/16 v4, 0x2d

    #@290
    move-object/from16 v0, p4

    #@292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@295
    .line 1220
    neg-int v6, v6

    #@296
    goto :goto_8

    #@297
    .line 1239
    :pswitch_d
    if-nez v16, :cond_1

    #@299
    .line 1240
    int-to-double v4, v6

    #@29a
    const-wide v28, 0x408f400000000000L    # 1000.0

    #@29f
    div-double v4, v4, v28

    #@2a1
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    #@2a3
    move/from16 v0, p2

    #@2a5
    int-to-double v0, v0

    #@2a6
    move-wide/from16 v30, v0

    #@2a8
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    #@2ab
    move-result-wide v28

    #@2ac
    mul-double v4, v4, v28

    #@2ae
    double-to-int v6, v4

    #@2af
    .line 1241
    move-object/from16 v0, p0

    #@2b1
    move/from16 v1, p2

    #@2b3
    move/from16 v2, p2

    #@2b5
    move-object/from16 v3, p4

    #@2b7
    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    #@2ba
    goto/16 :goto_2

    #@2bc
    .line 1095
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
    .line 1800
    const/16 v38, 0x0

    #@2
    .line 1801
    .local v38, "number":Ljava/lang/Number;
    const/4 v12, 0x0

    #@3
    .line 1802
    .local v12, "value":I
    new-instance v15, Ljava/text/ParsePosition;

    #@5
    const/4 v4, 0x0

    #@6
    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    #@9
    .line 1803
    .local v15, "pos":Ljava/text/ParsePosition;
    move/from16 v0, p2

    #@b
    iput v0, v15, Ljava/text/ParsePosition;->index:I

    #@d
    .line 1804
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
    .line 1808
    :cond_0
    :goto_0
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@1f
    aget v7, v4, p3

    #@21
    .line 1813
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
    .line 1814
    move/from16 v0, p2

    #@2b
    move-object/from16 v1, p7

    #@2d
    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    #@2f
    .line 1815
    const/4 v4, -0x1

    #@30
    return v4

    #@31
    .line 1806
    .end local v7    # "field":I
    :cond_1
    const/16 p3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1817
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
    .line 1818
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
    .line 1828
    const/4 v4, 0x4

    #@49
    move/from16 v0, p3

    #@4b
    if-eq v0, v4, :cond_3

    #@4d
    .line 1829
    const/16 v4, 0xf

    #@4f
    move/from16 v0, p3

    #@51
    if-ne v0, v4, :cond_6

    #@53
    .line 1835
    :cond_3
    if-eqz p5, :cond_b

    #@55
    .line 1836
    add-int v4, p2, p4

    #@57
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@5a
    move-result v5

    #@5b
    if-le v4, v5, :cond_a

    #@5d
    .line 2154
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
    .line 2155
    const/4 v4, -0x1

    #@64
    return v4

    #@65
    .line 1819
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
    .line 1830
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
    .line 1831
    :cond_7
    const/4 v4, 0x1

    #@77
    move/from16 v0, p3

    #@79
    if-eq v0, v4, :cond_3

    #@7b
    .line 1832
    const/16 v4, 0x13

    #@7d
    move/from16 v0, p3

    #@7f
    if-eq v0, v4, :cond_3

    #@81
    .line 1861
    .end local v38    # "number":Ljava/lang/Number;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    #@84
    move-result v16

    #@85
    .line 1864
    .local v16, "useDateFormatSymbols":Z
    packed-switch p3, :pswitch_data_0

    #@88
    .line 2112
    :pswitch_0
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    #@8b
    move-result v39

    #@8c
    .line 2113
    .local v39, "parseStart":I
    if-eqz p5, :cond_28

    #@8e
    .line 2114
    add-int v4, p2, p4

    #@90
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@93
    move-result v5

    #@94
    if-gt v4, v5, :cond_4

    #@96
    .line 2117
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
    .line 2121
    .local v38, "number":Ljava/lang/Number;
    :goto_4
    if-eqz v38, :cond_4

    #@a9
    .line 2122
    const/16 v4, 0x8

    #@ab
    move/from16 v0, p3

    #@ad
    if-ne v0, v4, :cond_29

    #@af
    .line 2129
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    #@b2
    move-result-wide v32

    #@b3
    .line 2130
    .local v32, "doubleValue":D
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    #@b6
    move-result v4

    #@b7
    sub-int v41, v4, v39

    #@b9
    .line 2131
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
    .line 2132
    .local v30, "divisor":D
    div-double v4, v32, v30

    #@c4
    const-wide v10, 0x408f400000000000L    # 1000.0

    #@c9
    mul-double/2addr v4, v10

    #@ca
    double-to-int v12, v4

    #@cb
    .line 2137
    .end local v30    # "divisor":D
    .end local v32    # "doubleValue":D
    .end local v41    # "width":I
    :goto_5
    if-eqz p8, :cond_9

    #@cd
    if-gez v12, :cond_9

    #@cf
    .line 2138
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@d1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@d4
    move-result v5

    #@d5
    if-ge v4, v5, :cond_2a

    #@d7
    .line 2139
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
    .line 2142
    :goto_6
    neg-int v12, v12

    #@e6
    .line 2143
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@e8
    add-int/lit8 v4, v4, -0x1

    #@ea
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@ec
    .line 2146
    :cond_9
    move-object/from16 v0, p9

    #@ee
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@f1
    .line 2147
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@f3
    return v4

    #@f4
    .line 1839
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
    .line 1843
    .local v38, "number":Ljava/lang/Number;
    :goto_7
    if-nez v38, :cond_c

    #@107
    .line 1844
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
    .line 1841
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
    .line 1848
    :cond_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    #@124
    move-result v12

    #@125
    .line 1850
    if-eqz p8, :cond_8

    #@127
    if-gez v12, :cond_8

    #@129
    .line 1851
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@12b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@12e
    move-result v5

    #@12f
    if-ge v4, v5, :cond_d

    #@131
    .line 1852
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
    .line 1855
    :goto_8
    neg-int v12, v12

    #@140
    .line 1856
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@142
    add-int/lit8 v4, v4, -0x1

    #@144
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@146
    goto/16 :goto_3

    #@148
    .line 1853
    :cond_d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@14a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@14d
    move-result v5

    #@14e
    if-ne v4, v5, :cond_8

    #@150
    .line 1854
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
    .line 1866
    .end local v38    # "number":Ljava/lang/Number;
    .restart local v16    # "useDateFormatSymbols":Z
    :pswitch_1
    if-eqz v16, :cond_e

    #@163
    .line 1867
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
    .line 1868
    return v37

    #@17b
    .line 1871
    .end local v37    # "index":I
    .restart local v7    # "field":I
    :cond_e
    move-object/from16 v0, p0

    #@17d
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@17f
    .line 1873
    move-object/from16 v0, p0

    #@181
    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    #@183
    .line 1872
    const/4 v6, 0x0

    #@184
    .line 1871
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
    .line 1874
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@193
    move-result v37

    #@194
    .restart local v37    # "index":I
    if-lez v37, :cond_4

    #@196
    .line 1875
    return v37

    #@197
    .line 1882
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
    .line 1885
    const/4 v4, 0x4

    #@1a0
    move/from16 v0, p4

    #@1a2
    if-lt v0, v4, :cond_f

    #@1a4
    const/16 v40, 0x2

    #@1a6
    .line 1886
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
    .line 1887
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
    .line 1888
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@1c1
    move-result v37

    #@1c2
    .restart local v37    # "index":I
    if-lez v37, :cond_10

    #@1c4
    .line 1889
    return v37

    #@1c5
    .line 1885
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    .end local v40    # "style":I
    :cond_f
    const/16 v40, 0x1

    #@1c7
    .restart local v40    # "style":I
    goto :goto_9

    #@1c8
    .line 1892
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, p9

    #@1ca
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@1cd
    .line 1893
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@1cf
    return v4

    #@1d0
    .line 1902
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
    .line 1903
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@1df
    move-result v4

    #@1e0
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    #@1e3
    move-result v4

    #@1e4
    .line 1902
    if-eqz v4, :cond_12

    #@1e6
    .line 1904
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
    .line 1902
    if-eqz v4, :cond_12

    #@1f4
    .line 1913
    move-object/from16 v0, p0

    #@1f6
    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@1f8
    rem-int/lit8 v28, v4, 0x64

    #@1fa
    .line 1914
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
    .line 1915
    move-object/from16 v0, p0

    #@204
    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@206
    div-int/lit8 v4, v4, 0x64

    #@208
    mul-int/lit8 v5, v4, 0x64

    #@20a
    .line 1916
    move/from16 v0, v28

    #@20c
    if-ge v12, v0, :cond_14

    #@20e
    const/16 v4, 0x64

    #@210
    .line 1915
    :goto_b
    add-int/2addr v4, v5

    #@211
    add-int/2addr v12, v4

    #@212
    .line 1918
    .end local v28    # "ambiguousTwoDigitYear":I
    :cond_12
    move-object/from16 v0, p9

    #@214
    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@217
    .line 1919
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@219
    return v4

    #@21a
    .line 1914
    .restart local v28    # "ambiguousTwoDigitYear":I
    :cond_13
    const/4 v4, 0x0

    #@21b
    goto :goto_a

    #@21c
    .line 1916
    :cond_14
    const/4 v4, 0x0

    #@21d
    goto :goto_b

    #@21e
    .line 1924
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
    .line 1923
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    #@22e
    move-result v36

    #@22f
    .line 1925
    .local v36, "idx":I
    if-lez v36, :cond_4

    #@231
    .line 1926
    return v36

    #@232
    .line 1934
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
    .line 1933
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    #@242
    move-result v36

    #@243
    .line 1935
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@245
    .line 1936
    return v36

    #@246
    .line 1943
    .end local v36    # "idx":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    #@249
    move-result v4

    #@24a
    if-nez v4, :cond_15

    #@24c
    .line 1945
    const/4 v4, 0x1

    #@24d
    if-lt v12, v4, :cond_4

    #@24f
    const/16 v4, 0x18

    #@251
    if-gt v12, v4, :cond_4

    #@253
    .line 1950
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
    .line 1951
    const/4 v12, 0x0

    #@262
    .line 1952
    :cond_16
    const/16 v4, 0xb

    #@264
    move-object/from16 v0, p9

    #@266
    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@269
    .line 1953
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@26b
    return v4

    #@26c
    .line 1958
    :pswitch_6
    const/16 v22, 0x1

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
    .line 1957
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    #@27d
    move-result v36

    #@27e
    .line 1959
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@280
    .line 1960
    return v36

    #@281
    .line 1969
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
    .line 1968
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    #@292
    move-result v36

    #@293
    .line 1970
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    #@295
    .line 1971
    return v36

    #@296
    .line 1979
    .end local v36    # "idx":I
    :pswitch_8
    if-eqz v16, :cond_17

    #@298
    .line 1981
    move-object/from16 v0, p0

    #@29a
    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@29c
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@29f
    move-result-object v21

    #@2a0
    .line 1980
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
    .line 1982
    return v37

    #@2b1
    .line 1985
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
    .line 1986
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    #@2c9
    move-result v37

    #@2ca
    .restart local v37    # "index":I
    if-lez v37, :cond_4

    #@2cc
    .line 1987
    return v37

    #@2cd
    .line 1993
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    #@2d0
    move-result v4

    #@2d1
    if-nez v4, :cond_18

    #@2d3
    .line 1995
    const/4 v4, 0x1

    #@2d4
    if-lt v12, v4, :cond_4

    #@2d6
    const/16 v4, 0xc

    #@2d8
    if-gt v12, v4, :cond_4

    #@2da
    .line 2000
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
    .line 2001
    const/4 v12, 0x0

    #@2e9
    .line 2002
    :cond_19
    const/16 v4, 0xa

    #@2eb
    move-object/from16 v0, p9

    #@2ed
    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@2f0
    .line 2003
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@2f2
    return v4

    #@2f3
    .line 2008
    :pswitch_a
    const/16 v20, 0x0

    #@2f5
    .line 2010
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
    .line 2011
    const/16 v4, 0x2b

    #@2ff
    move/from16 v0, v29

    #@301
    if-ne v0, v4, :cond_1b

    #@303
    .line 2012
    const/16 v20, 0x1

    #@305
    move/from16 v24, v20

    #@307
    .line 2016
    .end local v20    # "sign":I
    .local v24, "sign":I
    :goto_c
    if-nez v24, :cond_21

    #@309
    .line 2018
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
    .line 2019
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
    .line 2020
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
    .line 2018
    if-eqz v4, :cond_1f

    #@33c
    .line 2021
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
    .line 2023
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
    .line 2024
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
    .line 2025
    const/16 v4, 0x2b

    #@35a
    move/from16 v0, v29

    #@35c
    if-ne v0, v4, :cond_1c

    #@35e
    .line 2026
    const/16 v20, 0x1

    #@360
    .line 2032
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    :goto_d
    if-nez v20, :cond_1d

    #@362
    .line 2033
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
    .line 2034
    const/16 v5, 0x10

    #@36d
    const/4 v6, 0x0

    #@36e
    .line 2033
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@371
    .line 2035
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@373
    return v4

    #@374
    .line 2013
    :cond_1b
    const/16 v4, 0x2d

    #@376
    move/from16 v0, v29

    #@378
    if-ne v0, v4, :cond_2c

    #@37a
    .line 2014
    const/16 v20, -0x1

    #@37c
    move/from16 v24, v20

    #@37e
    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto :goto_c

    #@37f
    .line 2027
    :cond_1c
    const/16 v4, 0x2d

    #@381
    move/from16 v0, v29

    #@383
    if-ne v0, v4, :cond_2b

    #@385
    .line 2028
    const/16 v20, -0x1

    #@387
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto :goto_d

    #@388
    .line 2039
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
    .line 2040
    const/16 v22, 0x0

    #@394
    move-object/from16 v17, p0

    #@396
    move-object/from16 v18, p1

    #@398
    move-object/from16 v23, p9

    #@39a
    .line 2039
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    #@39d
    move-result v35

    #@39e
    .line 2041
    .local v35, "i":I
    if-lez v35, :cond_1e

    #@3a0
    .line 2042
    return v35

    #@3a1
    .line 2044
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
    .line 2063
    .end local v35    # "i":I
    :catch_0
    move-exception v34

    #@3a9
    .local v34, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    #@3ab
    .line 2048
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
    .line 2049
    .restart local v35    # "i":I
    if-lez v35, :cond_20

    #@3b9
    .line 2050
    return v35

    #@3ba
    .line 2052
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
    .line 2056
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
    .line 2057
    const/16 v26, 0x0

    #@3cf
    move-object/from16 v21, p0

    #@3d1
    move-object/from16 v22, p1

    #@3d3
    move-object/from16 v27, p9

    #@3d5
    .line 2056
    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    #@3d8
    move-result v35

    #@3d9
    .line 2058
    .restart local v35    # "i":I
    if-lez v35, :cond_22

    #@3db
    .line 2059
    return v35

    #@3dc
    .line 2061
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
    .line 2070
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
    .line 2074
    const/16 v20, 0x0

    #@3f0
    .line 2075
    .restart local v20    # "sign":I
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@3f2
    move-object/from16 v0, p1

    #@3f4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@3f7
    move-result v29

    #@3f8
    .line 2076
    const/16 v4, 0x5a

    #@3fa
    move/from16 v0, v29

    #@3fc
    if-ne v0, v4, :cond_23

    #@3fe
    .line 2077
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
    .line 2078
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@40f
    add-int/lit8 v4, v4, 0x1

    #@411
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@413
    return v4

    #@414
    .line 2082
    :cond_23
    const/16 v4, 0x2b

    #@416
    move/from16 v0, v29

    #@418
    if-ne v0, v4, :cond_24

    #@41a
    .line 2083
    const/16 v20, 0x1

    #@41c
    .line 2090
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
    .line 2091
    .restart local v35    # "i":I
    if-lez v35, :cond_27

    #@439
    .line 2092
    return v35

    #@43a
    .line 2084
    .end local v35    # "i":I
    :cond_24
    const/16 v4, 0x2d

    #@43c
    move/from16 v0, v29

    #@43e
    if-ne v0, v4, :cond_25

    #@440
    .line 2085
    const/16 v20, -0x1

    #@442
    goto :goto_e

    #@443
    .line 2087
    :cond_25
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@445
    add-int/lit8 v4, v4, 0x1

    #@447
    iput v4, v15, Ljava/text/ParsePosition;->index:I

    #@449
    goto/16 :goto_2

    #@44b
    .line 2090
    :cond_26
    const/16 v22, 0x0

    #@44d
    goto :goto_f

    #@44e
    .line 2094
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
    .line 2119
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
    .line 2134
    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    #@464
    move-result v12

    #@465
    goto/16 :goto_5

    #@467
    .line 2140
    :cond_2a
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    #@469
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@46c
    move-result v5

    #@46d
    if-ne v4, v5, :cond_9

    #@46f
    .line 2141
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
    .line 2063
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
    .line 1864
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
    .line 1724
    move v3, p2

    #@1
    .line 1728
    .local v3, "index":I
    add-int/lit8 v3, p2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 1731
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_1

    #@d
    .line 1772
    .end local v0    # "c":C
    :cond_0
    :goto_0
    rsub-int/lit8 v6, v3, 0x1

    #@f
    return v6

    #@10
    .line 1734
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v0, -0x30

    #@12
    .line 1735
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
    .line 1736
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_2

    #@1e
    .line 1737
    mul-int/lit8 v6, v2, 0xa

    #@20
    add-int/lit8 v7, v0, -0x30

    #@22
    add-int v2, v6, v7

    #@24
    .line 1741
    :goto_1
    const/16 v6, 0x17

    #@26
    if-le v2, v6, :cond_3

    #@28
    move v3, v4

    #@29
    .line 1742
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@2a
    .line 1739
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
    .line 1744
    :cond_3
    const/4 v5, 0x0

    #@2f
    .line 1745
    .local v5, "minutes":I
    const/4 v6, 0x1

    #@30
    if-eq p4, v6, :cond_6

    #@32
    .line 1747
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
    .line 1748
    const/16 v6, 0x3a

    #@3a
    if-ne v0, v6, :cond_4

    #@3c
    .line 1749
    add-int/lit8 v4, v3, 0x1

    #@3e
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 1753
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
    .line 1754
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@4a
    .line 1750
    :cond_4
    if-nez p5, :cond_0

    #@4c
    move v4, v3

    #@4d
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    #@4e
    .line 1756
    :cond_5
    add-int/lit8 v5, v0, -0x30

    #@50
    .line 1757
    add-int/lit8 v3, v4, 0x1

    #@52
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v0

    #@56
    .line 1758
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_0

    #@5c
    .line 1761
    mul-int/lit8 v6, v5, 0xa

    #@5e
    add-int/lit8 v7, v0, -0x30

    #@60
    add-int v5, v6, v7

    #@62
    .line 1762
    const/16 v6, 0x3b

    #@64
    if-gt v5, v6, :cond_0

    #@66
    .line 1766
    :goto_3
    mul-int/lit8 v6, v2, 0x3c

    #@68
    add-int/2addr v5, v6

    #@69
    .line 1767
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
    .line 1768
    const/16 v7, 0x10

    #@76
    const/4 v8, 0x0

    #@77
    .line 1767
    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@7a
    .line 1769
    return v3

    #@7b
    .line 1770
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
    .line 1644
    const/4 v6, 0x0

    #@1
    .line 1645
    .local v6, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    .line 1650
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
    .line 1651
    .local v7, "zoneIndex":I
    const/4 v5, 0x0

    #@10
    .line 1652
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@12
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    .line 1653
    .local v9, "zoneStrings":[[Ljava/lang/String;
    const/4 v8, 0x0

    #@17
    .line 1654
    .local v8, "zoneNames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@18
    .line 1655
    .local v4, "nameIndex":I
    const/4 v10, -0x1

    #@19
    if-eq v7, v10, :cond_1

    #@1b
    .line 1656
    aget-object v8, v9, v7

    #@1d
    .line 1657
    .local v8, "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    if-lez v4, :cond_1

    #@23
    .line 1658
    const/4 v10, 0x2

    #@24
    if-gt v4, v10, :cond_0

    #@26
    .line 1660
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
    .line 1662
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
    .line 1665
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_3

    #@39
    .line 1666
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
    .line 1667
    const/4 v10, -0x1

    #@48
    if-eq v7, v10, :cond_3

    #@4a
    .line 1668
    aget-object v8, v9, v7

    #@4c
    .line 1669
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@4f
    move-result v4

    #@50
    if-lez v4, :cond_3

    #@52
    .line 1670
    const/4 v10, 0x2

    #@53
    if-gt v4, v10, :cond_2

    #@55
    .line 1671
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
    .line 1673
    :cond_2
    const/4 v10, 0x0

    #@60
    aget-object v10, v8, v10

    #@62
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@65
    move-result-object v5

    #@66
    .line 1678
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_5

    #@68
    .line 1679
    array-length v3, v9

    #@69
    .line 1680
    .local v3, "len":I
    const/4 v2, 0x0

    #@6a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@6c
    .line 1681
    aget-object v8, v9, v2

    #@6e
    .line 1682
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    #@71
    move-result v4

    #@72
    if-lez v4, :cond_9

    #@74
    .line 1683
    const/4 v10, 0x2

    #@75
    if-gt v4, v10, :cond_4

    #@77
    .line 1684
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
    .line 1686
    :cond_4
    const/4 v10, 0x0

    #@82
    aget-object v10, v8, v10

    #@84
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@87
    move-result-object v5

    #@88
    .line 1691
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_c

    #@8a
    .line 1692
    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v10

    #@8e
    if-nez v10, :cond_6

    #@90
    .line 1693
    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@93
    .line 1701
    :cond_6
    const/4 v10, 0x3

    #@94
    if-lt v4, v10, :cond_a

    #@96
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    #@99
    move-result v1

    #@9a
    .line 1702
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
    .line 1703
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
    .line 1705
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
    .line 1680
    .end local v1    # "dstAmount":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@b9
    goto :goto_0

    #@ba
    .line 1701
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    #@bb
    .restart local v1    # "dstAmount":I
    goto :goto_1

    #@bc
    .line 1702
    :cond_b
    const/4 v10, 0x0

    #@bd
    goto :goto_2

    #@be
    .line 1707
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
    .line 2257
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 2258
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@8
    .line 2259
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
    .line 2260
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 2261
    .local v0, "c":C
    if-eqz v3, :cond_1

    #@15
    .line 2262
    if-ne v0, v6, :cond_0

    #@17
    .line 2263
    const/4 v3, 0x0

    #@18
    .line 2284
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2259
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2266
    :cond_1
    if-ne v0, v6, :cond_2

    #@20
    .line 2267
    const/4 v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 2268
    :cond_2
    const/16 v5, 0x61

    #@24
    if-lt v0, v5, :cond_3

    #@26
    const/16 v5, 0x7a

    #@28
    if-gt v0, v5, :cond_3

    #@2a
    .line 2269
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v1

    #@2e
    .line 2270
    .local v1, "ci":I
    if-ltz v1, :cond_4

    #@30
    .line 2274
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@33
    move-result v5

    #@34
    if-ge v1, v5, :cond_0

    #@36
    .line 2275
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    goto :goto_1

    #@3b
    .line 2268
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
    .line 2278
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
    .line 2280
    const-string/jumbo v7, "\'"

    #@59
    .line 2278
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
    .line 2286
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_5
    if-eqz v3, :cond_6

    #@67
    .line 2287
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@69
    const-string/jumbo v6, "Unfinished quote in pattern"

    #@6c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v5

    #@70
    .line 2288
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
    .line 2240
    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2241
    return v0

    #@6
    .line 2243
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
    .line 1333
    :try_start_0
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1334
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
    .line 1336
    :cond_0
    if-ltz p1, :cond_3

    #@15
    .line 1337
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
    .line 1338
    const/16 v1, 0xa

    #@20
    if-ge p1, v1, :cond_2

    #@22
    .line 1339
    if-ne p2, v2, :cond_1

    #@24
    .line 1340
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@26
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@29
    .line 1342
    :cond_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    #@2b
    add-int/2addr v1, p1

    #@2c
    int-to-char v1, v1

    #@2d
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 1347
    :goto_0
    return-void

    #@31
    .line 1344
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
    .line 1345
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
    .line 1364
    :catch_0
    move-exception v0

    #@45
    .line 1367
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@47
    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@4a
    .line 1368
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@4c
    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@4f
    .line 1369
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@51
    int-to-long v2, p1

    #@52
    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@54
    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@57
    .line 1326
    return-void

    #@58
    .line 1348
    :cond_4
    const/16 v1, 0x3e8

    #@5a
    if-lt p1, v1, :cond_3

    #@5c
    const/16 v1, 0x2710

    #@5e
    if-ge p1, v1, :cond_3

    #@60
    .line 1349
    const/4 v1, 0x4

    #@61
    if-ne p2, v1, :cond_5

    #@63
    .line 1350
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
    .line 1351
    rem-int/lit16 p1, p1, 0x3e8

    #@6e
    .line 1352
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
    .line 1353
    rem-int/lit8 p1, p1, 0x64

    #@79
    .line 1354
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
    .line 1355
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
    .line 1356
    return-void

    #@8c
    .line 1358
    :cond_5
    if-ne p2, v2, :cond_3

    #@8e
    if-ne p3, v2, :cond_3

    #@90
    .line 1359
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
    .line 1360
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2334
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 2335
    const-string/jumbo v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@9
    .line 2333
    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 2336
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@13
    .line 2337
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@15
    .line 2332
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2320
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    #@6
    .line 2321
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@8
    .line 2318
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 2371
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@6
    .line 2372
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
    .line 2373
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2396
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
    .line 2397
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@b
    .line 2398
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
    .line 2399
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@17
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@19
    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 2398
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
    .line 928
    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    #@3
    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    #@5
    .line 929
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
    .line 984
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 985
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    #@7
    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    #@a
    .line 988
    .local v0, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 989
    check-cast p1, Ljava/util/Date;

    #@10
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    #@13
    .line 1002
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
    .line 991
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 992
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
    .line 994
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    #@31
    .line 995
    new-instance v2, Ljava/lang/NullPointerException;

    #@33
    .line 996
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    #@36
    .line 995
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 999
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    .line 1000
    const-string/jumbo v3, "Cannot format given Object as a Date"

    #@3f
    .line 999
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 911
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
    .line 2348
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
    .line 2383
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
    .line 1411
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 1413
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 1415
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@b
    .line 1413
    return-object v1

    #@c
    .line 1414
    :catchall_0
    move-exception v1

    #@d
    .line 1415
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@10
    .line 1414
    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 898
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
    .line 897
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    .line 2360
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@6
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@8
    .line 2361
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    #@b
    .line 2358
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2306
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    .line 2307
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@5
    .line 2308
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 2306
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
    .line 2297
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
