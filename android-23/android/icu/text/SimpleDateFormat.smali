.class public Landroid/icu/text/SimpleDateFormat;
.super Landroid/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SimpleDateFormat$ContextValue;,
        Landroid/icu/text/SimpleDateFormat$PatternItem;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_DisplayContextSwitchesValues:[I = null

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

.field private static final DECIMAL_BUF_SIZE:I = 0xa

.field static DelayedHebrewMonthCheck:Z = false

.field private static final FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"

.field private static final HEBREW_CAL_CUR_MILLENIUM_END_YEAR:I = 0x1770

.field private static final HEBREW_CAL_CUR_MILLENIUM_START_YEAR:I = 0x1388

.field private static final ISOSpecialEra:I = -0x7d00

.field private static final NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "MYyudehHmsSDFwWkK"

.field private static PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"

.field private static cachedDefaultLocale:Landroid/icu/util/ULocale; = null

.field private static cachedDefaultPattern:Ljava/lang/String; = null

.field static final currentSerialVersion:I = 0x2

.field private static final millisPerHour:I = 0x36ee80

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Landroid/icu/text/DateFormatSymbols;

.field private transient locale:Landroid/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Landroid/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method private static synthetic -getandroid_icu_text_DisplayContextSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->-android_icu_text_DisplayContextSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->-android_icu_text_DisplayContextSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@46
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@4f
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@59
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->-android_icu_text_DisplayContextSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method static synthetic -wrap0(CI)Z
    .locals 1
    .param p0, "formatChar"    # C
    .param p1, "count"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x18

    #@3
    const/4 v3, 0x0

    #@4
    const/16 v2, 0x80

    #@6
    const/16 v1, 0x24

    #@8
    .line 727
    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    #@a
    .line 738
    new-array v0, v4, [I

    #@c
    fill-array-data v0, :array_0

    #@f
    .line 737
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    #@11
    .line 757
    new-array v0, v2, [I

    #@13
    fill-array-data v0, :array_1

    #@16
    .line 756
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    #@18
    .line 783
    new-array v0, v2, [Z

    #@1a
    fill-array-data v0, :array_2

    #@1d
    .line 782
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    #@1f
    .line 1163
    sput-object v5, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    #@21
    .line 1164
    sput-object v5, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    #@23
    .line 1357
    new-array v0, v2, [I

    #@25
    fill-array-data v0, :array_3

    #@28
    .line 1356
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    #@2a
    .line 1381
    new-array v0, v1, [I

    #@2c
    fill-array-data v0, :array_4

    #@2f
    .line 1380
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@31
    .line 1403
    new-array v0, v1, [I

    #@33
    fill-array-data v0, :array_5

    #@36
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@38
    .line 1425
    new-array v0, v1, [Landroid/icu/text/DateFormat$Field;

    #@3a
    .line 1426
    sget-object v1, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    #@3c
    aput-object v1, v0, v3

    #@3e
    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    #@40
    const/4 v2, 0x1

    #@41
    aput-object v1, v0, v2

    #@43
    sget-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    #@45
    const/4 v2, 0x2

    #@46
    aput-object v1, v0, v2

    #@48
    .line 1427
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    #@4a
    const/4 v2, 0x3

    #@4b
    aput-object v1, v0, v2

    #@4d
    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    #@4f
    const/4 v2, 0x4

    #@50
    aput-object v1, v0, v2

    #@52
    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    #@54
    const/4 v2, 0x5

    #@55
    aput-object v1, v0, v2

    #@57
    .line 1428
    sget-object v1, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    #@59
    const/4 v2, 0x6

    #@5a
    aput-object v1, v0, v2

    #@5c
    sget-object v1, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@5e
    const/4 v2, 0x7

    #@5f
    aput-object v1, v0, v2

    #@61
    sget-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    #@63
    const/16 v2, 0x8

    #@65
    aput-object v1, v0, v2

    #@67
    .line 1429
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    #@69
    const/16 v2, 0x9

    #@6b
    aput-object v1, v0, v2

    #@6d
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    #@6f
    const/16 v2, 0xa

    #@71
    aput-object v1, v0, v2

    #@73
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    #@75
    const/16 v2, 0xb

    #@77
    aput-object v1, v0, v2

    #@79
    .line 1430
    sget-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    #@7b
    const/16 v2, 0xc

    #@7d
    aput-object v1, v0, v2

    #@7f
    sget-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    #@81
    const/16 v2, 0xd

    #@83
    aput-object v1, v0, v2

    #@85
    sget-object v1, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    #@87
    const/16 v2, 0xe

    #@89
    aput-object v1, v0, v2

    #@8b
    .line 1431
    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    #@8d
    const/16 v2, 0xf

    #@8f
    aput-object v1, v0, v2

    #@91
    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    #@93
    const/16 v2, 0x10

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@99
    const/16 v2, 0x11

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 1432
    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    #@9f
    const/16 v2, 0x12

    #@a1
    aput-object v1, v0, v2

    #@a3
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    #@a5
    const/16 v2, 0x13

    #@a7
    aput-object v1, v0, v2

    #@a9
    sget-object v1, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    #@ab
    const/16 v2, 0x14

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 1433
    sget-object v1, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    #@b1
    const/16 v2, 0x15

    #@b3
    aput-object v1, v0, v2

    #@b5
    sget-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    #@b7
    const/16 v2, 0x16

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@bd
    const/16 v2, 0x17

    #@bf
    aput-object v1, v0, v2

    #@c1
    .line 1434
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@c3
    aput-object v1, v0, v4

    #@c5
    .line 1435
    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    #@c7
    const/16 v2, 0x19

    #@c9
    aput-object v1, v0, v2

    #@cb
    .line 1436
    sget-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    #@cd
    const/16 v2, 0x1a

    #@cf
    aput-object v1, v0, v2

    #@d1
    .line 1437
    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    #@d3
    const/16 v2, 0x1b

    #@d5
    aput-object v1, v0, v2

    #@d7
    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    #@d9
    const/16 v2, 0x1c

    #@db
    aput-object v1, v0, v2

    #@dd
    .line 1438
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@df
    const/16 v2, 0x1d

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 1439
    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    #@e5
    const/16 v2, 0x1e

    #@e7
    aput-object v1, v0, v2

    #@e9
    .line 1440
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@eb
    const/16 v2, 0x1f

    #@ed
    aput-object v1, v0, v2

    #@ef
    .line 1441
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@f1
    const/16 v2, 0x20

    #@f3
    aput-object v1, v0, v2

    #@f5
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@f7
    const/16 v2, 0x21

    #@f9
    aput-object v1, v0, v2

    #@fb
    .line 1442
    sget-object v1, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    #@fd
    const/16 v2, 0x22

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 1443
    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    #@103
    const/16 v2, 0x23

    #@105
    aput-object v1, v0, v2

    #@107
    .line 1425
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    #@109
    .line 1942
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@10b
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@10e
    .line 1941
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@110
    .line 2607
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@112
    const-string/jumbo v1, "[GyYuUQqMLlwWd]"

    #@115
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@118
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@11b
    move-result-object v0

    #@11c
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    #@11e
    .line 715
    return-void

    #@11f
    .line 738
    nop

    #@120
    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    #@154
    .line 757
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@258
    .line 783
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@29c
    .line 1357
    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@3a0
    .line 1381
    :array_4
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
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
    .end array-data

    #@3ec
    .line 1403
    :array_5
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
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 962
    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const/4 v6, 0x1

    #@6
    move-object v0, p0

    #@7
    move-object v3, v2

    #@8
    move-object v4, v2

    #@9
    move-object v5, v2

    #@a
    move-object v7, v2

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@e
    .line 961
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 974
    const/4 v6, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, v2

    #@6
    move-object v5, v2

    #@7
    move-object v7, v2

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@b
    .line 972
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1025
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    #@7
    const/4 v6, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v4, v3

    #@b
    move-object v5, v3

    #@c
    move-object v7, v3

    #@d
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@10
    .line 1023
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "calendar"    # Landroid/icu/util/Calendar;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p5, "locale"    # Landroid/icu/util/ULocale;
    .param p6, "useFastFormat"    # Z
    .param p7, "override"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1052
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    #@3
    .line 845
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    #@6
    .line 923
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@9
    .line 1054
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@b
    .line 1055
    iput-object p2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@d
    .line 1056
    iput-object p3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@f
    .line 1057
    iput-object p4, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@11
    .line 1058
    iput-object p5, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@13
    .line 1059
    iput-boolean p6, p0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    #@15
    .line 1060
    iput-object p7, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@17
    .line 1061
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initialize()V

    #@1a
    .line 1053
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "calendar"    # Landroid/icu/util/Calendar;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "useFastFormat"    # Z
    .param p6, "override"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1046
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    #@6
    invoke-virtual {p3}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Landroid/icu/util/Calendar;

    #@c
    const/4 v4, 0x0

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v5, p4

    #@10
    move v6, p5

    #@11
    move-object v7, p6

    #@12
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@15
    .line 1045
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "loc"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1035
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    #@7
    const/4 v6, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v4, v3

    #@b
    move-object v5, p3

    #@c
    move-object v7, v3

    #@d
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@10
    .line 1033
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 996
    const/4 v6, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, v2

    #@6
    move-object v5, p2

    #@7
    move-object v7, v2

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@b
    .line 994
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1014
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, v2

    #@6
    move-object v5, p3

    #@7
    move-object v7, p2

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@b
    .line 1012
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 985
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@4
    move-result-object v5

    #@5
    const/4 v6, 0x1

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v3, v2

    #@9
    move-object v4, v2

    #@a
    move-object v7, v2

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@e
    .line 983
    return-void
.end method

.method private allowNumericFallback(I)Z
    .locals 1
    .param p1, "patternCharIndex"    # I

    #@0
    .prologue
    .line 3384
    const/16 v0, 0x1a

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 3385
    const/16 v0, 0x13

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 3390
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 3386
    :cond_1
    const/16 v0, 0x19

    #@c
    if-eq p1, v0, :cond_0

    #@e
    .line 3387
    const/16 v0, 0x1e

    #@10
    if-eq p1, v0, :cond_0

    #@12
    .line 3388
    const/16 v0, 0x1b

    #@14
    if-eq p1, v0, :cond_0

    #@16
    .line 3389
    const/16 v0, 0x1c

    #@18
    if-eq p1, v0, :cond_0

    #@1a
    .line 3392
    const/4 v0, 0x0

    #@1b
    return v0
.end method

.method private diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "items"    # [Ljava/lang/Object;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3976
    aget-object v6, p3, p4

    #@3
    instance-of v6, v6, Ljava/lang/String;

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 3977
    return v7

    #@8
    .line 3979
    :cond_0
    aget-object v2, p3, p4

    #@a
    check-cast v2, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@c
    .line 3980
    .local v2, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-char v0, v2, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@e
    .line 3981
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    #@11
    move-result v3

    #@12
    .line 3982
    .local v3, "patternCharIndex":I
    const/4 v6, -0x1

    #@13
    if-ne v3, v6, :cond_1

    #@15
    .line 3983
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v7, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v8, "Illegal pattern character \'"

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    .line 3984
    const-string/jumbo v8, "\' in \""

    #@2a
    .line 3983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    .line 3985
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@30
    .line 3983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    .line 3985
    const/16 v8, 0x22

    #@36
    .line 3983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6

    #@42
    .line 3988
    :cond_1
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@44
    aget v1, v6, v3

    #@46
    .line 3989
    .local v1, "field":I
    if-ltz v1, :cond_2

    #@48
    .line 3990
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@4b
    move-result v4

    #@4c
    .line 3991
    .local v4, "value":I
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@4f
    move-result v5

    #@50
    .line 3992
    .local v5, "value_2":I
    if-eq v4, v5, :cond_2

    #@52
    .line 3993
    const/4 v6, 0x1

    #@53
    return v6

    #@54
    .line 3996
    .end local v4    # "value":I
    .end local v5    # "value_2":I
    :cond_2
    return v7
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2110
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@3
    array-length v3, v3

    #@4
    if-ge v3, p4, :cond_1

    #@6
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@8
    array-length v1, v3

    #@9
    .line 2111
    .local v1, "limit":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    #@b
    .line 2113
    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@d
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    #@f
    rem-int/lit8 v5, p2, 0xa

    #@11
    aget-char v4, v4, v5

    #@13
    aput-char v4, v3, v0

    #@15
    .line 2114
    div-int/lit8 p2, p2, 0xa

    #@17
    .line 2115
    if-eqz v0, :cond_0

    #@19
    if-nez p2, :cond_2

    #@1b
    .line 2120
    :cond_0
    sub-int v3, v1, v0

    #@1d
    sub-int v2, p3, v3

    #@1f
    .line 2121
    .local v2, "padding":I
    :goto_2
    if-lez v2, :cond_3

    #@21
    if-lez v0, :cond_3

    #@23
    .line 2122
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    #@29
    aget-char v4, v4, v6

    #@2b
    aput-char v4, v3, v0

    #@2d
    .line 2123
    add-int/lit8 v2, v2, -0x1

    #@2f
    goto :goto_2

    #@30
    .line 2110
    .end local v0    # "index":I
    .end local v1    # "limit":I
    .end local v2    # "padding":I
    :cond_1
    move v1, p4

    #@31
    .restart local v1    # "limit":I
    goto :goto_0

    #@32
    .line 2118
    .restart local v0    # "index":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_1

    #@35
    .line 2125
    .restart local v2    # "padding":I
    :cond_3
    :goto_3
    if-lez v2, :cond_4

    #@37
    .line 2128
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    #@39
    aget-char v3, v3, v6

    #@3b
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3e
    .line 2129
    add-int/lit8 v2, v2, -0x1

    #@40
    goto :goto_3

    #@41
    .line 2131
    :cond_4
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@43
    sub-int v4, v1, v0

    #@45
    invoke-virtual {p1, v3, v0, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@48
    .line 2109
    return-void
.end method

.method private format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 16
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 1312
    .local p5, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v1, 0x0

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6
    .line 1313
    const/4 v1, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c
    .line 1319
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    #@f
    move-result-object v14

    #@10
    .line 1320
    .local v14, "items":[Ljava/lang/Object;
    const/4 v6, 0x0

    #@11
    .local v6, "i":I
    :goto_0
    array-length v1, v14

    #@12
    if-ge v6, v1, :cond_4

    #@14
    .line 1321
    aget-object v1, v14, v6

    #@16
    instance-of v1, v1, Ljava/lang/String;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1322
    aget-object v1, v14, v6

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    move-object/from16 v0, p3

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 1320
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1324
    :cond_1
    aget-object v13, v14, v6

    #@28
    check-cast v13, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@2a
    .line 1325
    .local v13, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    const/4 v15, 0x0

    #@2b
    .line 1326
    .local v15, "start":I
    if-eqz p5, :cond_2

    #@2d
    .line 1328
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@30
    move-result v15

    #@31
    .line 1330
    :cond_2
    move-object/from16 v0, p0

    #@33
    iget-boolean v1, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 1331
    iget-char v3, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@39
    iget v4, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@3b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@3e
    move-result v5

    #@3f
    move-object/from16 v1, p0

    #@41
    move-object/from16 v2, p3

    #@43
    move-object/from16 v7, p2

    #@45
    move-object/from16 v8, p4

    #@47
    move-object/from16 v9, p1

    #@49
    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    #@4c
    .line 1337
    :goto_2
    if-eqz p5, :cond_0

    #@4e
    .line 1339
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@51
    move-result v11

    #@52
    .line 1340
    .local v11, "end":I
    sub-int v1, v11, v15

    #@54
    if-lez v1, :cond_0

    #@56
    .line 1342
    iget-char v1, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@58
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    #@5d
    move-result-object v10

    #@5e
    .line 1343
    .local v10, "attr":Landroid/icu/text/DateFormat$Field;
    new-instance v12, Ljava/text/FieldPosition;

    #@60
    invoke-direct {v12, v10}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@63
    .line 1344
    .local v12, "fp":Ljava/text/FieldPosition;
    invoke-virtual {v12, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@66
    .line 1345
    invoke-virtual {v12, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@69
    .line 1346
    move-object/from16 v0, p5

    #@6b
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_1

    #@6f
    .line 1334
    .end local v10    # "attr":Landroid/icu/text/DateFormat$Field;
    .end local v11    # "end":I
    .end local v12    # "fp":Ljava/text/FieldPosition;
    :cond_3
    iget-char v3, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@71
    iget v4, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@73
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@76
    move-result v5

    #@77
    move-object/from16 v2, p0

    #@79
    move-object/from16 v7, p2

    #@7b
    move-object/from16 v8, p4

    #@7d
    move-object/from16 v9, p1

    #@7f
    invoke-virtual/range {v2 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@88
    goto :goto_2

    #@89
    .line 1351
    .end local v13    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v15    # "start":I
    :cond_4
    return-object p3
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1220
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    #@9
    .line 1222
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@b
    return-object v0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1229
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    #@9
    .line 1231
    :cond_0
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@b
    return v0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const-class v7, Landroid/icu/text/SimpleDateFormat;

    #@2
    monitor-enter v7

    #@3
    .line 1172
    :try_start_0
    sget-object v6, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@5
    invoke-static {v6}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@8
    move-result-object v3

    #@9
    .line 1173
    .local v3, "defaultLocale":Landroid/icu/util/ULocale;
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    #@b
    invoke-virtual {v3, v6}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_1

    #@11
    .line 1174
    sput-object v3, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    #@13
    .line 1175
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    #@15
    invoke-static {v6}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    .line 1177
    .local v0, "cal":Landroid/icu/util/Calendar;
    :try_start_1
    new-instance v1, Landroid/icu/impl/CalendarData;

    #@1b
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    #@1d
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    invoke-direct {v1, v6, v8}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@24
    .line 1178
    .local v1, "calData":Landroid/icu/impl/CalendarData;
    invoke-virtual {v1}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 1179
    .local v2, "dateTimePatterns":[Ljava/lang/String;
    const/16 v5, 0x8

    #@2a
    .line 1180
    .local v5, "glueIndex":I
    array-length v6, v2

    #@2b
    const/16 v8, 0xd

    #@2d
    if-lt v6, v8, :cond_0

    #@2f
    .line 1182
    const/16 v5, 0xc

    #@31
    .line 1184
    :cond_0
    aget-object v6, v2, v5

    #@33
    .line 1185
    const/4 v8, 0x2

    #@34
    new-array v8, v8, [Ljava/lang/Object;

    #@36
    const/4 v9, 0x3

    #@37
    aget-object v9, v2, v9

    #@39
    const/4 v10, 0x0

    #@3a
    aput-object v9, v8, v10

    #@3c
    const/4 v9, 0x7

    #@3d
    aget-object v9, v2, v9

    #@3f
    const/4 v10, 0x1

    #@40
    aput-object v9, v8, v10

    #@42
    .line 1184
    invoke-static {v6, v8}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    sput-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 1190
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .end local v1    # "calData":Landroid/icu/impl/CalendarData;
    .end local v2    # "dateTimePatterns":[Ljava/lang/String;
    .end local v5    # "glueIndex":I
    :cond_1
    :goto_0
    :try_start_2
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    monitor-exit v7

    #@4b
    return-object v6

    #@4c
    .line 1186
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :catch_0
    move-exception v4

    #@4d
    .line 1187
    .local v4, "e":Ljava/util/MissingResourceException;
    :try_start_3
    const-string/jumbo v6, "yy/MM/dd HH:mm"

    #@50
    sput-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_0

    #@53
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .end local v4    # "e":Ljava/util/MissingResourceException;
    :catchall_0
    move-exception v6

    #@54
    monitor-exit v7

    #@55
    throw v6
.end method

.method private static getIndexFromChar(C)I
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1376
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    #@2
    array-length v0, v0

    #@3
    if-ge p0, v0, :cond_0

    #@5
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    #@7
    and-int/lit16 v1, p0, 0xff

    #@9
    aget v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, -0x1

    #@d
    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;
    .locals 9
    .param p0, "formatConfig"    # Landroid/icu/util/Calendar$FormatConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1074
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    #@4
    move-result-object v8

    #@5
    .line 1075
    .local v8, "ostr":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_0

    #@d
    const/4 v6, 0x1

    #@e
    .line 1077
    .local v6, "useFast":Z
    :goto_0
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    #@10
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1078
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    #@17
    move-result-object v2

    #@18
    .line 1079
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getCalendar()Landroid/icu/util/Calendar;

    #@1b
    move-result-object v3

    #@1c
    .line 1081
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getLocale()Landroid/icu/util/ULocale;

    #@1f
    move-result-object v5

    #@20
    .line 1083
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 1077
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@27
    return-object v0

    #@28
    .line 1075
    .end local v6    # "useFast":Z
    :cond_0
    const/4 v6, 0x0

    #@29
    .restart local v6    # "useFast":Z
    goto :goto_0
.end method

.method private static getLevelFromChar(C)I
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 779
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    #@2
    array-length v0, v0

    #@3
    if-ge p0, v0, :cond_0

    #@5
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    #@7
    and-int/lit16 v1, p0, 0xff

    #@9
    aget v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, -0x1

    #@d
    goto :goto_0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x27

    #@2
    const/4 v10, 0x0

    #@3
    .line 1950
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 1951
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@9
    return-object v8

    #@a
    .line 1954
    :cond_0
    sget-object v8, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@c
    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@e
    invoke-interface {v8, v9}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v8

    #@12
    check-cast v8, [Ljava/lang/Object;

    #@14
    iput-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@16
    .line 1955
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@18
    if-eqz v8, :cond_1

    #@1a
    .line 1956
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@1c
    return-object v8

    #@1d
    .line 1959
    :cond_1
    const/4 v3, 0x0

    #@1e
    .line 1960
    .local v3, "isPrevQuote":Z
    const/4 v2, 0x0

    #@1f
    .line 1961
    .local v2, "inQuote":Z
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    .line 1962
    .local v7, "text":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    #@25
    .line 1963
    .local v5, "itemType":C
    const/4 v4, 0x1

    #@26
    .line 1965
    .local v4, "itemLength":I
    new-instance v6, Ljava/util/ArrayList;

    #@28
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 1967
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@2c
    .end local v5    # "itemType":C
    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@31
    move-result v8

    #@32
    if-ge v1, v8, :cond_c

    #@34
    .line 1968
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@36
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    .line 1969
    .local v0, "ch":C
    if-ne v0, v11, :cond_5

    #@3c
    .line 1970
    if-eqz v3, :cond_3

    #@3e
    .line 1971
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 1972
    const/4 v3, 0x0

    #@42
    .line 1980
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    #@44
    const/4 v2, 0x0

    #@45
    .line 1967
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 1974
    :cond_3
    const/4 v3, 0x1

    #@49
    .line 1975
    if-eqz v5, :cond_2

    #@4b
    .line 1976
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@4d
    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    #@50
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 1977
    const/4 v5, 0x0

    #@54
    .restart local v5    # "itemType":C
    goto :goto_1

    #@55
    .line 1980
    .end local v5    # "itemType":C
    :cond_4
    const/4 v2, 0x1

    #@56
    goto :goto_2

    #@57
    .line 1982
    :cond_5
    const/4 v3, 0x0

    #@58
    .line 1983
    if-eqz v2, :cond_6

    #@5a
    .line 1984
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_2

    #@5e
    .line 1986
    :cond_6
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_a

    #@64
    .line 1988
    if-ne v0, v5, :cond_7

    #@66
    .line 1989
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_2

    #@69
    .line 1991
    :cond_7
    if-nez v5, :cond_9

    #@6b
    .line 1992
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@6e
    move-result v8

    #@6f
    if-lez v8, :cond_8

    #@71
    .line 1993
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    .line 1994
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7b
    .line 1999
    :cond_8
    :goto_3
    move v5, v0

    #@7c
    .line 2000
    .local v5, "itemType":C
    const/4 v4, 0x1

    #@7d
    goto :goto_2

    #@7e
    .line 1997
    .end local v5    # "itemType":C
    :cond_9
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@80
    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    #@83
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@86
    goto :goto_3

    #@87
    .line 2004
    :cond_a
    if-eqz v5, :cond_b

    #@89
    .line 2005
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@8b
    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    #@8e
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@91
    .line 2006
    const/4 v5, 0x0

    #@92
    .line 2008
    :cond_b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@95
    goto :goto_2

    #@96
    .line 2014
    .end local v0    # "ch":C
    :cond_c
    if-nez v5, :cond_e

    #@98
    .line 2015
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@9b
    move-result v8

    #@9c
    if-lez v8, :cond_d

    #@9e
    .line 2016
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v8

    #@a2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a5
    .line 2017
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a8
    .line 2023
    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@ab
    move-result v8

    #@ac
    new-array v8, v8, [Ljava/lang/Object;

    #@ae
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b1
    move-result-object v8

    #@b2
    iput-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@b4
    .line 2025
    sget-object v8, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@b6
    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@b8
    iget-object v10, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@ba
    invoke-interface {v8, v9, v10}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@bd
    .line 2027
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@bf
    return-object v8

    #@c0
    .line 2020
    :cond_e
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@c2
    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    #@c5
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c8
    goto :goto_4
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2077
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@3
    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 2078
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@9
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    #@15
    .line 2079
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@17
    .line 2087
    :goto_0
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2088
    const/16 v0, 0xa

    #@1d
    new-array v0, v0, [C

    #@1f
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@21
    .line 2076
    :cond_0
    return-void

    #@22
    .line 2080
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@24
    instance-of v0, v0, Landroid/icu/impl/DateNumberFormat;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 2081
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2a
    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    #@2c
    invoke-virtual {v0}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    #@32
    .line 2082
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@34
    goto :goto_0

    #@35
    .line 2084
    :cond_2
    const/4 v0, 0x0

    #@36
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@38
    goto :goto_0
.end method

.method private initNumberFormatters(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 4097
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@7
    .line 4098
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@e
    .line 4099
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@10
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SimpleDateFormat;->processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@13
    .line 4095
    return-void
.end method

.method private initialize()V
    .locals 6

    #@0
    .prologue
    .line 1090
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1091
    sget-object v3, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v3}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@c
    .line 1093
    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@e
    if-nez v3, :cond_1

    #@10
    .line 1094
    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    #@12
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@14
    invoke-direct {v3, v4}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@17
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@19
    .line 1096
    :cond_1
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 1097
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@1f
    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@22
    move-result-object v3

    #@23
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@25
    .line 1099
    :cond_2
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@27
    if-nez v3, :cond_3

    #@29
    .line 1100
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@2b
    invoke-static {v3}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@2e
    move-result-object v1

    #@2f
    .line 1101
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 1102
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@37
    invoke-static {v3}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@3a
    move-result-object v3

    #@3b
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@3d
    .line 1112
    .end local v1    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@43
    .line 1114
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@45
    sget-object v4, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@47
    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@4d
    sget-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@4f
    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {p0, v3, v4}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@56
    .line 1115
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    #@59
    .line 1117
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@5b
    if-eqz v3, :cond_4

    #@5d
    .line 1118
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@5f
    invoke-direct {p0, v3}, Landroid/icu/text/SimpleDateFormat;->initNumberFormatters(Landroid/icu/util/ULocale;)V

    #@62
    .line 1089
    :cond_4
    return-void

    #@63
    .line 1104
    .restart local v1    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    .line 1105
    .local v0, "digitString":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 1107
    .local v2, "nsName":Ljava/lang/String;
    new-instance v3, Landroid/icu/impl/DateNumberFormat;

    #@6d
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@6f
    invoke-direct {v3, v4, v0, v2}, Landroid/icu/impl/DateNumberFormat;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    #@72
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@74
    goto :goto_0
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 3
    .param p1, "baseTime"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1206
    iput-wide p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@3
    .line 1209
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@5
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/util/Calendar;

    #@b
    .line 1210
    .local v0, "tmpCal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@e
    .line 1211
    const/16 v1, -0x50

    #@10
    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    #@13
    .line 1212
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@19
    .line 1213
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@1f
    .line 1205
    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 3
    .param p1, "bForceUpdate"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1129
    if-nez p1, :cond_0

    #@3
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@5
    if-nez v2, :cond_3

    #@7
    .line 1130
    :cond_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@9
    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@f
    .line 1132
    const/4 v1, 0x0

    #@10
    .line 1133
    .local v1, "digits":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@12
    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    #@14
    if-eqz v2, :cond_4

    #@16
    .line 1134
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@18
    check-cast v2, Landroid/icu/text/DecimalFormat;

    #@1a
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@1d
    move-result-object v0

    #@1e
    .line 1135
    .local v0, "decsym":Landroid/icu/text/DecimalFormatSymbols;
    new-instance v1, Ljava/lang/String;

    #@20
    .end local v1    # "digits":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    #@27
    .line 1140
    .end local v0    # "decsym":Landroid/icu/text/DecimalFormatSymbols;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    #@29
    .line 1141
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@2b
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_3

    #@35
    .line 1142
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@37
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 1143
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@3f
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    #@42
    move-result-object v2

    #@43
    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@45
    .line 1145
    :cond_2
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@47
    invoke-virtual {v2, v1}, Landroid/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :cond_3
    monitor-exit p0

    #@4b
    .line 1128
    return-void

    #@4c
    .line 1136
    .restart local v1    # "digits":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@4e
    instance-of v2, v2, Landroid/icu/impl/DateNumberFormat;

    #@50
    if-eqz v2, :cond_1

    #@52
    .line 1137
    new-instance v1, Ljava/lang/String;

    #@54
    .end local v1    # "digits":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@56
    check-cast v2, Landroid/icu/impl/DateNumberFormat;

    #@58
    invoke-virtual {v2}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .local v1, "digits":Ljava/lang/String;
    goto :goto_0

    #@60
    .end local v1    # "digits":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@61
    monitor-exit p0

    #@62
    throw v2
.end method

.method static isFieldUnitIgnored(Ljava/lang/String;I)Z
    .locals 11
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "field"    # I

    #@0
    .prologue
    const/16 v10, 0x27

    #@2
    const/4 v9, 0x0

    #@3
    .line 3755
    sget-object v7, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    #@5
    aget v2, v7, p1

    #@7
    .line 3758
    .local v2, "fieldLevel":I
    const/4 v4, 0x0

    #@8
    .line 3759
    .local v4, "inQuote":Z
    const/4 v6, 0x0

    #@9
    .line 3760
    .local v6, "prevCh":C
    const/4 v1, 0x0

    #@a
    .line 3762
    .local v1, "count":I
    const/4 v3, 0x0

    #@b
    .end local v6    # "prevCh":C
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v7

    #@f
    if-ge v3, v7, :cond_6

    #@11
    .line 3763
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 3764
    .local v0, "ch":C
    if-eq v0, v6, :cond_1

    #@17
    if-lez v1, :cond_1

    #@19
    .line 3765
    invoke-static {v6}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    #@1c
    move-result v5

    #@1d
    .line 3766
    .local v5, "level":I
    if-gt v2, v5, :cond_0

    #@1f
    .line 3767
    return v9

    #@20
    .line 3769
    :cond_0
    const/4 v1, 0x0

    #@21
    .line 3771
    .end local v5    # "level":I
    :cond_1
    if-ne v0, v10, :cond_5

    #@23
    .line 3772
    add-int/lit8 v7, v3, 0x1

    #@25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v8

    #@29
    if-ge v7, v8, :cond_3

    #@2b
    add-int/lit8 v7, v3, 0x1

    #@2d
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v7

    #@31
    if-ne v7, v10, :cond_3

    #@33
    .line 3773
    add-int/lit8 v3, v3, 0x1

    #@35
    .line 3762
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3775
    :cond_3
    if-eqz v4, :cond_4

    #@3a
    const/4 v4, 0x0

    #@3b
    goto :goto_1

    #@3c
    :cond_4
    const/4 v4, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 3777
    :cond_5
    if-nez v4, :cond_2

    #@40
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_2

    #@46
    .line 3778
    move v6, v0

    #@47
    .line 3779
    .local v6, "prevCh":C
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 3782
    .end local v0    # "ch":C
    .end local v6    # "prevCh":C
    :cond_6
    if-lez v1, :cond_7

    #@4c
    .line 3784
    invoke-static {v6}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    #@4f
    move-result v5

    #@50
    .line 3785
    .restart local v5    # "level":I
    if-gt v2, v5, :cond_7

    #@52
    .line 3786
    return v9

    #@53
    .line 3789
    .end local v5    # "level":I
    :cond_7
    const/4 v7, 0x1

    #@54
    return v7
.end method

.method private static final isNumeric(CI)Z
    .locals 4
    .param p0, "formatChar"    # C
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2156
    const-string/jumbo v3, "MYyudehHmsSDFwWkK"

    #@5
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    .line 2157
    .local v0, "i":I
    if-gtz v0, :cond_0

    #@b
    if-nez v0, :cond_1

    #@d
    const/4 v3, 0x3

    #@e
    if-ge p1, v3, :cond_1

    #@10
    :cond_0
    :goto_0
    return v1

    #@11
    :cond_1
    move v1, v2

    #@12
    goto :goto_0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 822
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    #@2
    array-length v0, v0

    #@3
    if-ge p0, v0, :cond_0

    #@5
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    #@7
    and-int/lit16 v1, p0, 0xff

    #@9
    aget-boolean v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private lowerLevel([Ljava/lang/Object;II)Z
    .locals 6
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "i"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4016
    aget-object v3, p1, p2

    #@3
    instance-of v3, v3, Ljava/lang/String;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 4017
    return v4

    #@8
    .line 4019
    :cond_0
    aget-object v1, p1, p2

    #@a
    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@c
    .line 4020
    .local v1, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-char v0, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@e
    .line 4021
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    #@11
    move-result v2

    #@12
    .line 4022
    .local v2, "patternCharIndex":I
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 4023
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Illegal pattern character \'"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 4024
    const-string/jumbo v5, "\' in \""

    #@2a
    .line 4023
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 4025
    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@30
    .line 4023
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 4025
    const/16 v5, 0x22

    #@36
    .line 4023
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 4028
    :cond_1
    if-lt v2, p3, :cond_2

    #@44
    .line 4029
    const/4 v3, 0x1

    #@45
    return v3

    #@46
    .line 4031
    :cond_2
    return v4
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "items"    # [Ljava/lang/Object;
    .param p4, "itemIndex"    # I
    .param p5, "complete"    # [Z

    #@0
    .prologue
    .line 2536
    move/from16 v9, p2

    #@2
    .line 2537
    .local v9, "originalPos":I
    aget-object v10, p3, p4

    #@4
    check-cast v10, Ljava/lang/String;

    #@6
    .line 2538
    .local v10, "patternLiteral":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@9
    move-result v12

    #@a
    .line 2539
    .local v12, "plen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@d
    move-result v13

    #@e
    .line 2540
    .local v13, "tlen":I
    const/4 v6, 0x0

    #@f
    .line 2541
    .local v6, "idx":I
    :goto_0
    if-ge v6, v12, :cond_6

    #@11
    move/from16 v0, p2

    #@13
    if-ge v0, v13, :cond_6

    #@15
    .line 2542
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v11

    #@19
    .line 2543
    .local v11, "pch":C
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v5

    #@1d
    .line 2544
    .local v5, "ich":C
    invoke-static {v11}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@20
    move-result v14

    #@21
    if-eqz v14, :cond_1

    #@23
    .line 2545
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@26
    move-result v14

    #@27
    .line 2544
    if-eqz v14, :cond_1

    #@29
    .line 2548
    :goto_1
    add-int/lit8 v14, v6, 0x1

    #@2b
    if-ge v14, v12, :cond_0

    #@2d
    .line 2549
    add-int/lit8 v14, v6, 0x1

    #@2f
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v14

    #@33
    invoke-static {v14}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@36
    move-result v14

    #@37
    .line 2548
    if-eqz v14, :cond_0

    #@39
    .line 2550
    add-int/lit8 v6, v6, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 2552
    :cond_0
    :goto_2
    add-int/lit8 v14, p2, 0x1

    #@3e
    if-ge v14, v13, :cond_5

    #@40
    .line 2553
    add-int/lit8 v14, p2, 0x1

    #@42
    move-object/from16 v0, p1

    #@44
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v14

    #@48
    invoke-static {v14}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@4b
    move-result v14

    #@4c
    .line 2552
    if-eqz v14, :cond_5

    #@4e
    .line 2554
    add-int/lit8 p2, p2, 0x1

    #@50
    goto :goto_2

    #@51
    .line 2556
    :cond_1
    if-eq v11, v5, :cond_5

    #@53
    .line 2557
    const/16 v14, 0x2e

    #@55
    if-ne v5, v14, :cond_2

    #@57
    move/from16 v0, p2

    #@59
    if-ne v0, v9, :cond_2

    #@5b
    if-lez p4, :cond_2

    #@5d
    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@5f
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@64
    move-result v14

    #@65
    if-eqz v14, :cond_2

    #@67
    .line 2558
    add-int/lit8 v14, p4, -0x1

    #@69
    aget-object v3, p3, v14

    #@6b
    .line 2559
    .local v3, "before":Ljava/lang/Object;
    instance-of v14, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@6d
    if-eqz v14, :cond_6

    #@6f
    .line 2560
    check-cast v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@71
    .end local v3    # "before":Ljava/lang/Object;
    iget-boolean v7, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    #@73
    .line 2561
    .local v7, "isNumeric":Z
    if-nez v7, :cond_6

    #@75
    .line 2562
    add-int/lit8 p2, p2, 0x1

    #@77
    .line 2563
    goto :goto_0

    #@78
    .line 2566
    .end local v7    # "isNumeric":Z
    :cond_2
    const/16 v14, 0x20

    #@7a
    if-eq v11, v14, :cond_3

    #@7c
    const/16 v14, 0x2e

    #@7e
    if-ne v11, v14, :cond_4

    #@80
    :cond_3
    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@82
    move-object/from16 v0, p0

    #@84
    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@87
    move-result v14

    #@88
    if-eqz v14, :cond_4

    #@8a
    .line 2567
    add-int/lit8 v6, v6, 0x1

    #@8c
    .line 2568
    goto :goto_0

    #@8d
    .line 2569
    :cond_4
    move/from16 v0, p2

    #@8f
    if-eq v0, v9, :cond_6

    #@91
    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@98
    move-result v14

    #@99
    if-eqz v14, :cond_6

    #@9b
    .line 2570
    add-int/lit8 v6, v6, 0x1

    #@9d
    .line 2571
    goto/16 :goto_0

    #@9f
    .line 2575
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@a1
    .line 2576
    add-int/lit8 p2, p2, 0x1

    #@a3
    goto/16 :goto_0

    #@a5
    .line 2578
    .end local v5    # "ich":C
    .end local v11    # "pch":C
    :cond_6
    if-ne v6, v12, :cond_8

    #@a7
    const/4 v14, 0x1

    #@a8
    :goto_3
    const/4 v15, 0x0

    #@a9
    aput-boolean v14, p5, v15

    #@ab
    .line 2579
    const/4 v14, 0x0

    #@ac
    aget-boolean v14, p5, v14

    #@ae
    if-nez v14, :cond_7

    #@b0
    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@b2
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@b7
    move-result v14

    #@b8
    if-eqz v14, :cond_7

    #@ba
    if-lez p4, :cond_7

    #@bc
    move-object/from16 v0, p3

    #@be
    array-length v14, v0

    #@bf
    add-int/lit8 v14, v14, -0x1

    #@c1
    move/from16 v0, p4

    #@c3
    if-ge v0, v14, :cond_7

    #@c5
    .line 2583
    if-ge v9, v13, :cond_7

    #@c7
    .line 2584
    add-int/lit8 v14, p4, -0x1

    #@c9
    aget-object v3, p3, v14

    #@cb
    .line 2585
    .restart local v3    # "before":Ljava/lang/Object;
    add-int/lit8 v14, p4, 0x1

    #@cd
    aget-object v1, p3, v14

    #@cf
    .line 2586
    .local v1, "after":Ljava/lang/Object;
    instance-of v14, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@d1
    if-eqz v14, :cond_7

    #@d3
    instance-of v14, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@d5
    if-eqz v14, :cond_7

    #@d7
    .line 2587
    check-cast v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@d9
    .end local v3    # "before":Ljava/lang/Object;
    iget-char v4, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@db
    .line 2588
    .local v4, "beforeType":C
    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@dd
    .end local v1    # "after":Ljava/lang/Object;
    iget-char v2, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@df
    .line 2589
    .local v2, "afterType":C
    sget-object v14, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    #@e1
    invoke-virtual {v14, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@e4
    move-result v14

    #@e5
    sget-object v15, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    #@e7
    invoke-virtual {v15, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@ea
    move-result v15

    #@eb
    if-eq v14, v15, :cond_7

    #@ed
    .line 2590
    move v8, v9

    #@ee
    .line 2592
    .local v8, "newPos":I
    :goto_4
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@f3
    move-result v5

    #@f4
    .line 2593
    .restart local v5    # "ich":C
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@f7
    move-result v14

    #@f8
    if-nez v14, :cond_9

    #@fa
    .line 2598
    if-le v8, v9, :cond_a

    #@fc
    const/4 v14, 0x1

    #@fd
    :goto_5
    const/4 v15, 0x0

    #@fe
    aput-boolean v14, p5, v15

    #@100
    .line 2599
    move/from16 p2, v8

    #@102
    .line 2604
    .end local v2    # "afterType":C
    .end local v4    # "beforeType":C
    .end local v5    # "ich":C
    .end local v8    # "newPos":I
    :cond_7
    return p2

    #@103
    .line 2578
    :cond_8
    const/4 v14, 0x0

    #@104
    goto :goto_3

    #@105
    .line 2596
    .restart local v2    # "afterType":C
    .restart local v4    # "beforeType":C
    .restart local v5    # "ich":C
    .restart local v8    # "newPos":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@107
    goto :goto_4

    #@108
    .line 2598
    :cond_a
    const/4 v14, 0x0

    #@109
    goto :goto_5
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "monthPattern"    # Ljava/lang/String;
    .param p6, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2655
    const/4 v4, 0x0

    #@1
    .line 2656
    .local v4, "i":I
    move-object/from16 v0, p4

    #@3
    array-length v3, v0

    #@4
    .line 2658
    .local v3, "count":I
    const/4 v9, 0x7

    #@5
    if-ne p3, v9, :cond_0

    #@7
    const/4 v4, 0x1

    #@8
    .line 2664
    :cond_0
    const/4 v2, 0x0

    #@9
    .local v2, "bestMatchLength":I
    const/4 v1, -0x1

    #@a
    .line 2665
    .local v1, "bestMatch":I
    const/4 v5, 0x0

    #@b
    .line 2666
    .local v5, "isLeapMonth":I
    const/4 v8, 0x0

    #@c
    .line 2668
    .local v8, "matchLength":I
    :goto_0
    if-ge v4, v3, :cond_3

    #@e
    .line 2670
    aget-object v9, p4, v4

    #@10
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@13
    move-result v7

    #@14
    .line 2673
    .local v7, "length":I
    if-le v7, v2, :cond_1

    #@16
    .line 2674
    aget-object v9, p4, v4

    #@18
    invoke-direct {p0, p1, p2, v9, v7}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    #@1b
    move-result v8

    #@1c
    if-ltz v8, :cond_1

    #@1e
    .line 2676
    move v1, v4

    #@1f
    .line 2677
    move v2, v8

    #@20
    .line 2678
    const/4 v5, 0x0

    #@21
    .line 2680
    :cond_1
    if-eqz p5, :cond_2

    #@23
    .line 2681
    const/4 v9, 0x1

    #@24
    new-array v9, v9, [Ljava/lang/Object;

    #@26
    aget-object v10, p4, v4

    #@28
    const/4 v11, 0x0

    #@29
    aput-object v10, v9, v11

    #@2b
    move-object/from16 v0, p5

    #@2d
    invoke-static {v0, v9}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 2682
    .local v6, "leapMonthName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@34
    move-result v7

    #@35
    .line 2683
    if-le v7, v2, :cond_2

    #@37
    .line 2684
    invoke-direct {p0, p1, p2, v6, v7}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    #@3a
    move-result v8

    #@3b
    if-ltz v8, :cond_2

    #@3d
    .line 2686
    move v1, v4

    #@3e
    .line 2687
    move v2, v8

    #@3f
    .line 2688
    const/4 v5, 0x1

    #@40
    .line 2668
    .end local v6    # "leapMonthName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_0

    #@43
    .line 2692
    .end local v7    # "length":I
    :cond_3
    if-ltz v1, :cond_6

    #@45
    .line 2694
    if-ltz p3, :cond_5

    #@47
    .line 2695
    const/4 v9, 0x1

    #@48
    if-ne p3, v9, :cond_4

    #@4a
    .line 2696
    add-int/lit8 v1, v1, 0x1

    #@4c
    .line 2698
    :cond_4
    move-object/from16 v0, p6

    #@4e
    invoke-virtual {v0, p3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@51
    .line 2699
    if-eqz p5, :cond_5

    #@53
    .line 2700
    const/16 v9, 0x16

    #@55
    move-object/from16 v0, p6

    #@57
    invoke-virtual {v0, v9, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@5a
    .line 2703
    :cond_5
    add-int v9, p2, v2

    #@5c
    return v9

    #@5d
    .line 2705
    :cond_6
    not-int v9, p2

    #@5e
    return v9
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1197
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    .line 1198
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@4
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 1199
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    #@10
    .line 1196
    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxDigits"    # I
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .param p4, "allowNegative"    # Z
    .param p5, "fmt"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3415
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@4
    move-result v3

    #@5
    .line 3416
    .local v3, "oldPos":I
    if-eqz p4, :cond_1

    #@7
    .line 3417
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@a
    move-result-object v2

    #@b
    .line 3436
    .end local p5    # "fmt":Landroid/icu/text/NumberFormat;
    .local v2, "number":Ljava/lang/Number;
    :cond_0
    :goto_0
    if-lez p2, :cond_5

    #@d
    .line 3439
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v5

    #@11
    sub-int v1, v5, v3

    #@13
    .line 3440
    .local v1, "nDigits":I
    if-le v1, p2, :cond_5

    #@15
    .line 3441
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    #@18
    move-result-wide v6

    #@19
    .line 3442
    .local v6, "val":D
    sub-int/2addr v1, p2

    #@1a
    .line 3443
    :goto_1
    if-lez v1, :cond_4

    #@1c
    .line 3444
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@1e
    div-double/2addr v6, v8

    #@1f
    .line 3445
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_1

    #@22
    .line 3420
    .end local v1    # "nDigits":I
    .end local v2    # "number":Ljava/lang/Number;
    .end local v6    # "val":D
    .restart local p5    # "fmt":Landroid/icu/text/NumberFormat;
    :cond_1
    instance-of v5, p5, Landroid/icu/text/DecimalFormat;

    #@24
    if-eqz v5, :cond_2

    #@26
    move-object v5, p5

    #@27
    .line 3421
    check-cast v5, Landroid/icu/text/DecimalFormat;

    #@29
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .local v4, "oldPrefix":Ljava/lang/String;
    move-object v5, p5

    #@2e
    .line 3422
    check-cast v5, Landroid/icu/text/DecimalFormat;

    #@30
    const-string/jumbo v8, "\uab00"

    #@33
    invoke-virtual {v5, v8}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@36
    .line 3423
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@39
    move-result-object v2

    #@3a
    .line 3424
    .restart local v2    # "number":Ljava/lang/Number;
    check-cast p5, Landroid/icu/text/DecimalFormat;

    #@3c
    .end local p5    # "fmt":Landroid/icu/text/NumberFormat;
    invoke-virtual {p5, v4}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 3426
    .end local v2    # "number":Ljava/lang/Number;
    .end local v4    # "oldPrefix":Ljava/lang/String;
    .restart local p5    # "fmt":Landroid/icu/text/NumberFormat;
    :cond_2
    instance-of v0, p5, Landroid/icu/impl/DateNumberFormat;

    #@42
    .line 3427
    .local v0, "dateNumberFormat":Z
    if-eqz v0, :cond_3

    #@44
    move-object v5, p5

    #@45
    .line 3428
    check-cast v5, Landroid/icu/impl/DateNumberFormat;

    #@47
    const/4 v8, 0x1

    #@48
    invoke-virtual {v5, v8}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    #@4b
    .line 3430
    :cond_3
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@4e
    move-result-object v2

    #@4f
    .line 3431
    .restart local v2    # "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    #@51
    .line 3432
    check-cast p5, Landroid/icu/impl/DateNumberFormat;

    #@53
    .end local p5    # "fmt":Landroid/icu/text/NumberFormat;
    invoke-virtual {p5, v9}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    #@56
    goto :goto_0

    #@57
    .line 3447
    .end local v0    # "dateNumberFormat":Z
    .restart local v1    # "nDigits":I
    .restart local v6    # "val":D
    :cond_4
    add-int v5, v3, p2

    #@59
    invoke-virtual {p3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5c
    .line 3448
    double-to-int v5, v6

    #@5d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v2

    #@61
    .line 3451
    .end local v1    # "nDigits":I
    .end local v6    # "val":D
    :cond_5
    return-object v2
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "allowNegative"    # Z
    .param p4, "fmt"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 3403
    const/4 v2, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 13
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4105
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v11

    #@6
    if-nez v11, :cond_1

    #@8
    .line 4106
    :cond_0
    return-void

    #@9
    .line 4108
    :cond_1
    const/4 v10, 0x0

    #@a
    .line 4112
    .local v10, "start":I
    const/4 v5, 0x1

    #@b
    .line 4115
    .local v5, "moreToProcess":Z
    :goto_0
    if-eqz v5, :cond_7

    #@d
    .line 4116
    const-string/jumbo v11, ";"

    #@10
    invoke-virtual {p2, v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@13
    move-result v1

    #@14
    .line 4117
    .local v1, "delimiterPosition":I
    const/4 v11, -0x1

    #@15
    if-ne v1, v11, :cond_3

    #@17
    .line 4118
    const/4 v5, 0x0

    #@18
    .line 4119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    .line 4124
    .local v2, "end":I
    :goto_1
    invoke-virtual {p2, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 4125
    .local v0, "currentString":Ljava/lang/String;
    const-string/jumbo v11, "="

    #@23
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@26
    move-result v3

    #@27
    .line 4126
    .local v3, "equalSignPosition":I
    const/4 v11, -0x1

    #@28
    if-ne v3, v11, :cond_4

    #@2a
    .line 4127
    move-object v7, v0

    #@2b
    .line 4128
    .local v7, "nsName":Ljava/lang/String;
    const/4 v4, 0x1

    #@2c
    .line 4136
    .local v4, "fullOverride":Z
    :goto_2
    new-instance v9, Landroid/icu/util/ULocale;

    #@2e
    new-instance v11, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    const-string/jumbo v12, "@numbers="

    #@3e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v11

    #@42
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    invoke-direct {v9, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@4d
    .line 4137
    .local v9, "ovrLoc":Landroid/icu/util/ULocale;
    const/4 v11, 0x0

    #@4e
    invoke-static {v9, v11}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@51
    move-result-object v6

    #@52
    .line 4138
    .local v6, "nf":Landroid/icu/text/NumberFormat;
    const/4 v11, 0x0

    #@53
    invoke-virtual {v6, v11}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    #@56
    .line 4140
    if-eqz v4, :cond_5

    #@58
    .line 4141
    invoke-virtual {p0, v6}, Landroid/icu/text/SimpleDateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    #@5b
    .line 4148
    :goto_3
    if-nez v4, :cond_2

    #@5d
    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@5f
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@62
    move-result v11

    #@63
    if-eqz v11, :cond_6

    #@65
    .line 4152
    :cond_2
    :goto_4
    add-int/lit8 v10, v1, 0x1

    #@67
    goto :goto_0

    #@68
    .line 4121
    .end local v0    # "currentString":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "equalSignPosition":I
    .end local v4    # "fullOverride":Z
    .end local v6    # "nf":Landroid/icu/text/NumberFormat;
    .end local v7    # "nsName":Ljava/lang/String;
    .end local v9    # "ovrLoc":Landroid/icu/util/ULocale;
    :cond_3
    move v2, v1

    #@69
    .restart local v2    # "end":I
    goto :goto_1

    #@6a
    .line 4130
    .restart local v0    # "currentString":Ljava/lang/String;
    .restart local v3    # "equalSignPosition":I
    :cond_4
    add-int/lit8 v11, v3, 0x1

    #@6c
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    .line 4131
    .restart local v7    # "nsName":Ljava/lang/String;
    const/4 v11, 0x0

    #@71
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    #@74
    move-result v11

    #@75
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@78
    move-result-object v8

    #@79
    .line 4132
    .local v8, "ovrField":Ljava/lang/Character;
    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@7b
    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 4133
    const/4 v4, 0x0

    #@7f
    .restart local v4    # "fullOverride":Z
    goto :goto_2

    #@80
    .line 4145
    .end local v8    # "ovrField":Ljava/lang/Character;
    .restart local v6    # "nf":Landroid/icu/text/NumberFormat;
    .restart local v9    # "ovrLoc":Landroid/icu/util/ULocale;
    :cond_5
    const/4 v11, 0x0

    #@81
    iput-boolean v11, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@83
    goto :goto_3

    #@84
    .line 4149
    :cond_6
    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@86
    invoke-virtual {v11, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    goto :goto_4

    #@8a
    .line 4103
    .end local v0    # "currentString":Ljava/lang/String;
    .end local v1    # "delimiterPosition":I
    .end local v2    # "end":I
    .end local v3    # "equalSignPosition":I
    .end local v4    # "fullOverride":Z
    .end local v6    # "nf":Landroid/icu/text/NumberFormat;
    .end local v7    # "nsName":Ljava/lang/String;
    .end local v9    # "ovrLoc":Landroid/icu/util/ULocale;
    :cond_7
    return-void
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
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3644
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@5
    .line 3645
    iget v3, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    #@7
    if-le v3, v4, :cond_2

    #@9
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@c
    move-result v0

    #@d
    .line 3648
    .local v0, "capitalizationSettingValue":I
    :goto_0
    iget v3, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    #@f
    if-ge v3, v4, :cond_3

    #@11
    .line 3650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14
    move-result-wide v4

    #@15
    iput-wide v4, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@17
    .line 3657
    :goto_1
    const/4 v3, 0x2

    #@18
    iput v3, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    #@1a
    .line 3658
    sget-object v3, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@1c
    invoke-virtual {p0, v3}, Landroid/icu/text/SimpleDateFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@22
    .line 3659
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@24
    if-nez v3, :cond_0

    #@26
    .line 3663
    sget-object v3, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@28
    invoke-static {v3}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@2e
    .line 3666
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    #@31
    .line 3668
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@33
    invoke-virtual {p0, v3}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@36
    .line 3669
    if-ltz v0, :cond_1

    #@38
    .line 3670
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    #@3b
    move-result-object v3

    #@3c
    array-length v4, v3

    #@3d
    :goto_2
    if-ge v2, v4, :cond_1

    #@3f
    aget-object v1, v3, v2

    #@41
    .line 3671
    .local v1, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->value()I

    #@44
    move-result v5

    #@45
    if-ne v5, v0, :cond_4

    #@47
    .line 3672
    invoke-virtual {p0, v1}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@4a
    .line 3643
    .end local v1    # "context":Landroid/icu/text/DisplayContext;
    :cond_1
    return-void

    #@4b
    .line 3645
    .end local v0    # "capitalizationSettingValue":I
    :cond_2
    const/4 v0, -0x1

    #@4c
    .restart local v0    # "capitalizationSettingValue":I
    goto :goto_0

    #@4d
    .line 3655
    :cond_3
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@4f
    invoke-direct {p0, v3}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@52
    goto :goto_1

    #@53
    .line 3670
    .restart local v1    # "context":Landroid/icu/text/DisplayContext;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_2
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "length"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    .line 2709
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@9
    move-result v6

    #@a
    .line 2710
    .local v6, "matches":Z
    if-eqz v6, :cond_0

    #@c
    .line 2711
    return p4

    #@d
    .line 2713
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_1

    #@13
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    const/16 v2, 0x2e

    #@1f
    if-ne v0, v2, :cond_1

    #@21
    .line 2714
    add-int/lit8 v5, p4, -0x1

    #@23
    move-object v0, p1

    #@24
    move v2, p2

    #@25
    move-object v3, p3

    #@26
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 2715
    add-int/lit8 v0, p4, -0x1

    #@2e
    return v0

    #@2f
    .line 2718
    :cond_1
    const/4 v0, -0x1

    #@30
    return v0
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1911
    if-eqz p0, :cond_0

    #@2
    if-ltz p1, :cond_0

    #@4
    array-length v0, p0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 1912
    aget-object v0, p0, p1

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 1910
    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "monthPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1917
    if-eqz p0, :cond_0

    #@3
    if-ltz p1, :cond_0

    #@5
    array-length v0, p0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 1918
    if-nez p3, :cond_1

    #@a
    .line 1919
    aget-object v0, p0, p1

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 1916
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1921
    :cond_1
    const/4 v0, 0x1

    #@11
    new-array v0, v0, [Ljava/lang/Object;

    #@13
    aget-object v1, p0, p1

    #@15
    aput-object v1, v0, v2

    #@17
    invoke-static {p3, v0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    goto :goto_0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I
    .locals 33
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "ch"    # C
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "allowNegative"    # Z
    .param p7, "ambiguousYear"    # [Z
    .param p8, "cal"    # Landroid/icu/util/Calendar;
    .param p9, "numericLeapMonthFormatter"    # Landroid/icu/text/MessageFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2827
    .local p10, "tzTimeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    const/16 v26, 0x0

    #@2
    .line 2828
    .local v26, "number":Ljava/lang/Number;
    const/4 v8, 0x0

    #@3
    .line 2829
    .local v8, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const/16 v32, 0x0

    #@5
    .line 2831
    .local v32, "value":I
    new-instance v6, Ljava/text/ParsePosition;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v6, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@b
    .line 2833
    .local v6, "pos":Ljava/text/ParsePosition;
    invoke-static/range {p3 .. p3}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    #@e
    move-result v28

    #@f
    .line 2834
    .local v28, "patternCharIndex":I
    const/4 v3, -0x1

    #@10
    move/from16 v0, v28

    #@12
    if-ne v0, v3, :cond_0

    #@14
    .line 2835
    move/from16 v0, p2

    #@16
    not-int v3, v0

    #@17
    return v3

    #@18
    .line 2838
    :cond_0
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, p3

    #@1c
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    #@1f
    move-result-object v8

    #@20
    .line 2840
    .local v8, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    sget-object v3, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@22
    aget v21, v3, v28

    #@24
    .line 2842
    .local v21, "field":I
    if-eqz p9, :cond_1

    #@26
    .line 2843
    const/4 v3, 0x0

    #@27
    move-object/from16 v0, p9

    #@29
    invoke-virtual {v0, v3, v8}, Landroid/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    #@2c
    .line 2845
    :cond_1
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "chinese"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_2

    #@39
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, "dangi"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v24

    #@44
    .line 2850
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@47
    move-result v3

    #@48
    move/from16 v0, p2

    #@4a
    if-lt v0, v3, :cond_3

    #@4c
    .line 2851
    move/from16 v0, p2

    #@4e
    not-int v3, v0

    #@4f
    return v3

    #@50
    .line 2845
    :cond_2
    const/16 v24, 0x1

    #@52
    .local v24, "isChineseCalendar":Z
    goto :goto_0

    #@53
    .line 2853
    .end local v24    # "isChineseCalendar":Z
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@56
    move-result v19

    #@57
    .line 2854
    .local v19, "c":I
    invoke-static/range {v19 .. v19}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_4

    #@5d
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_4

    #@63
    .line 2857
    invoke-static/range {v19 .. v19}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@66
    move-result v3

    #@67
    add-int p2, p2, v3

    #@69
    goto :goto_0

    #@6a
    .line 2859
    :cond_4
    move/from16 v0, p2

    #@6c
    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6f
    .line 2865
    const/4 v3, 0x4

    #@70
    move/from16 v0, v28

    #@72
    if-eq v0, v3, :cond_5

    #@74
    .line 2866
    const/16 v3, 0xf

    #@76
    move/from16 v0, v28

    #@78
    if-ne v0, v3, :cond_8

    #@7a
    .line 2881
    :cond_5
    const/16 v27, 0x0

    #@7c
    .line 2882
    .local v27, "parsedNumericLeapMonth":Z
    if-eqz p9, :cond_7

    #@7e
    const/4 v3, 0x2

    #@7f
    move/from16 v0, v28

    #@81
    if-eq v0, v3, :cond_6

    #@83
    const/16 v3, 0x1a

    #@85
    move/from16 v0, v28

    #@87
    if-ne v0, v3, :cond_7

    #@89
    .line 2884
    :cond_6
    move-object/from16 v0, p9

    #@8b
    move-object/from16 v1, p1

    #@8d
    invoke-virtual {v0, v1, v6}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@90
    move-result-object v18

    #@91
    .line 2885
    .local v18, "args":[Ljava/lang/Object;
    if-eqz v18, :cond_c

    #@93
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@96
    move-result v3

    #@97
    move/from16 v0, p2

    #@99
    if-le v3, v0, :cond_c

    #@9b
    const/4 v3, 0x0

    #@9c
    aget-object v3, v18, v3

    #@9e
    instance-of v3, v3, Ljava/lang/Number;

    #@a0
    if-eqz v3, :cond_c

    #@a2
    .line 2886
    const/16 v27, 0x1

    #@a4
    .line 2887
    const/4 v3, 0x0

    #@a5
    aget-object v26, v18, v3

    #@a7
    .end local v26    # "number":Ljava/lang/Number;
    check-cast v26, Ljava/lang/Number;

    #@a9
    .line 2888
    .local v26, "number":Ljava/lang/Number;
    const/16 v3, 0x16

    #@ab
    const/4 v4, 0x1

    #@ac
    move-object/from16 v0, p8

    #@ae
    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@b1
    .line 2895
    .end local v18    # "args":[Ljava/lang/Object;
    .end local v26    # "number":Ljava/lang/Number;
    :cond_7
    :goto_1
    if-nez v27, :cond_e

    #@b3
    .line 2896
    if-eqz p5, :cond_f

    #@b5
    .line 2897
    add-int v3, p2, p4

    #@b7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@ba
    move-result v4

    #@bb
    if-le v3, v4, :cond_d

    #@bd
    .line 2898
    move/from16 v0, p2

    #@bf
    not-int v3, v0

    #@c0
    return v3

    #@c1
    .line 2867
    .end local v27    # "parsedNumericLeapMonth":Z
    .local v26, "number":Ljava/lang/Number;
    :cond_8
    const/4 v3, 0x2

    #@c2
    move/from16 v0, v28

    #@c4
    if-ne v0, v3, :cond_9

    #@c6
    const/4 v3, 0x2

    #@c7
    move/from16 v0, p4

    #@c9
    if-le v0, v3, :cond_5

    #@cb
    .line 2868
    :cond_9
    const/16 v3, 0x1a

    #@cd
    move/from16 v0, v28

    #@cf
    if-eq v0, v3, :cond_5

    #@d1
    .line 2869
    const/16 v3, 0x13

    #@d3
    move/from16 v0, v28

    #@d5
    if-eq v0, v3, :cond_5

    #@d7
    .line 2870
    const/16 v3, 0x19

    #@d9
    move/from16 v0, v28

    #@db
    if-eq v0, v3, :cond_5

    #@dd
    .line 2871
    const/4 v3, 0x1

    #@de
    move/from16 v0, v28

    #@e0
    if-eq v0, v3, :cond_5

    #@e2
    const/16 v3, 0x12

    #@e4
    move/from16 v0, v28

    #@e6
    if-eq v0, v3, :cond_5

    #@e8
    .line 2872
    const/16 v3, 0x1e

    #@ea
    move/from16 v0, v28

    #@ec
    if-eq v0, v3, :cond_5

    #@ee
    .line 2873
    if-nez v28, :cond_a

    #@f0
    .line 2865
    if-nez v24, :cond_5

    #@f2
    .line 2874
    :cond_a
    const/16 v3, 0x1b

    #@f4
    move/from16 v0, v28

    #@f6
    if-eq v0, v3, :cond_5

    #@f8
    .line 2875
    const/16 v3, 0x1c

    #@fa
    move/from16 v0, v28

    #@fc
    if-eq v0, v3, :cond_5

    #@fe
    .line 2876
    const/16 v3, 0x8

    #@100
    move/from16 v0, v28

    #@102
    if-eq v0, v3, :cond_5

    #@104
    .line 2915
    .end local v26    # "number":Ljava/lang/Number;
    :cond_b
    :goto_2
    packed-switch v28, :pswitch_data_0

    #@107
    .line 3361
    :pswitch_0
    if-eqz p5, :cond_67

    #@109
    .line 3362
    add-int v3, p2, p4

    #@10b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@10e
    move-result v4

    #@10f
    if-le v3, v4, :cond_66

    #@111
    move/from16 v0, p2

    #@113
    neg-int v3, v0

    #@114
    return v3

    #@115
    .line 2890
    .restart local v18    # "args":[Ljava/lang/Object;
    .restart local v26    # "number":Ljava/lang/Number;
    .restart local v27    # "parsedNumericLeapMonth":Z
    :cond_c
    move/from16 v0, p2

    #@117
    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@11a
    .line 2891
    const/16 v3, 0x16

    #@11c
    const/4 v4, 0x0

    #@11d
    move-object/from16 v0, p8

    #@11f
    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@122
    goto :goto_1

    #@123
    .end local v18    # "args":[Ljava/lang/Object;
    .end local v26    # "number":Ljava/lang/Number;
    :cond_d
    move-object/from16 v3, p0

    #@125
    move-object/from16 v4, p1

    #@127
    move/from16 v5, p4

    #@129
    move/from16 v7, p6

    #@12b
    .line 2900
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    #@12e
    move-result-object v26

    #@12f
    .line 2904
    .local v26, "number":Ljava/lang/Number;
    :goto_3
    if-nez v26, :cond_e

    #@131
    move-object/from16 v0, p0

    #@133
    move/from16 v1, v28

    #@135
    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    #@138
    move-result v3

    #@139
    if-eqz v3, :cond_10

    #@13b
    .line 2910
    .end local v26    # "number":Ljava/lang/Number;
    :cond_e
    if-eqz v26, :cond_b

    #@13d
    .line 2911
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    #@140
    move-result v32

    #@141
    goto :goto_2

    #@142
    .line 2902
    :cond_f
    move-object/from16 v0, p0

    #@144
    move-object/from16 v1, p1

    #@146
    move/from16 v2, p6

    #@148
    invoke-direct {v0, v1, v6, v2, v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    #@14b
    move-result-object v26

    #@14c
    .restart local v26    # "number":Ljava/lang/Number;
    goto :goto_3

    #@14d
    .line 2906
    :cond_10
    move/from16 v0, p2

    #@14f
    not-int v3, v0

    #@150
    return v3

    #@151
    .line 2918
    .end local v26    # "number":Ljava/lang/Number;
    .end local v27    # "parsedNumericLeapMonth":Z
    :pswitch_1
    if-eqz v24, :cond_11

    #@153
    .line 2921
    const/4 v3, 0x0

    #@154
    move-object/from16 v0, p8

    #@156
    move/from16 v1, v32

    #@158
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@15b
    .line 2922
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@15e
    move-result v3

    #@15f
    return v3

    #@160
    .line 2924
    :cond_11
    const/16 v29, 0x0

    #@162
    .line 2925
    .local v29, "ps":I
    const/4 v3, 0x5

    #@163
    move/from16 v0, p4

    #@165
    if-ne v0, v3, :cond_13

    #@167
    .line 2926
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@16b
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@16d
    const/4 v12, 0x0

    #@16e
    const/4 v14, 0x0

    #@16f
    move-object/from16 v9, p0

    #@171
    move-object/from16 v10, p1

    #@173
    move/from16 v11, p2

    #@175
    move-object/from16 v15, p8

    #@177
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@17a
    move-result v29

    #@17b
    .line 2936
    :goto_4
    move/from16 v0, p2

    #@17d
    not-int v3, v0

    #@17e
    move/from16 v0, v29

    #@180
    if-ne v0, v3, :cond_12

    #@182
    .line 2937
    const/16 v29, -0x7d00

    #@184
    .line 2939
    :cond_12
    return v29

    #@185
    .line 2927
    :cond_13
    const/4 v3, 0x4

    #@186
    move/from16 v0, p4

    #@188
    if-ne v0, v3, :cond_14

    #@18a
    .line 2928
    move-object/from16 v0, p0

    #@18c
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@18e
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@190
    const/4 v12, 0x0

    #@191
    const/4 v14, 0x0

    #@192
    move-object/from16 v9, p0

    #@194
    move-object/from16 v10, p1

    #@196
    move/from16 v11, p2

    #@198
    move-object/from16 v15, p8

    #@19a
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@19d
    move-result v29

    #@19e
    goto :goto_4

    #@19f
    .line 2930
    :cond_14
    move-object/from16 v0, p0

    #@1a1
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@1a3
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@1a5
    const/4 v12, 0x0

    #@1a6
    const/4 v14, 0x0

    #@1a7
    move-object/from16 v9, p0

    #@1a9
    move-object/from16 v10, p1

    #@1ab
    move/from16 v11, p2

    #@1ad
    move-object/from16 v15, p8

    #@1af
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@1b2
    move-result v29

    #@1b3
    goto :goto_4

    #@1b4
    .line 2951
    .end local v29    # "ps":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1b6
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@1b8
    if-eqz v3, :cond_19

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@1be
    const-string/jumbo v4, "hebr"

    #@1c1
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1c4
    move-result v3

    #@1c5
    if-eqz v3, :cond_15

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@1cb
    const-string/jumbo v4, "y=hebr"

    #@1ce
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d1
    move-result v3

    #@1d2
    if-ltz v3, :cond_19

    #@1d4
    :cond_15
    const/16 v3, 0x3e8

    #@1d6
    move/from16 v0, v32

    #@1d8
    if-ge v0, v3, :cond_19

    #@1da
    .line 2952
    move/from16 v0, v32

    #@1dc
    add-int/lit16 v0, v0, 0x1388

    #@1de
    move/from16 v32, v0

    #@1e0
    .line 2970
    :cond_16
    :goto_5
    move-object/from16 v0, p8

    #@1e2
    move/from16 v1, v21

    #@1e4
    move/from16 v2, v32

    #@1e6
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@1e9
    .line 2973
    sget-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    #@1eb
    if-eqz v3, :cond_18

    #@1ed
    .line 2974
    invoke-static/range {v32 .. v32}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@1f0
    move-result v3

    #@1f1
    if-nez v3, :cond_17

    #@1f3
    .line 2975
    const/4 v3, 0x2

    #@1f4
    const/4 v4, 0x1

    #@1f5
    move-object/from16 v0, p8

    #@1f7
    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    #@1fa
    .line 2977
    :cond_17
    const/4 v3, 0x0

    #@1fb
    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    #@1fd
    .line 2979
    :cond_18
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@200
    move-result v3

    #@201
    return v3

    #@202
    .line 2953
    :cond_19
    const/4 v3, 0x2

    #@203
    move/from16 v0, p4

    #@205
    if-ne v0, v3, :cond_16

    #@207
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@20a
    move-result v3

    #@20b
    sub-int v3, v3, p2

    #@20d
    const/4 v4, 0x2

    #@20e
    if-ne v3, v4, :cond_16

    #@210
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->haveDefaultCentury()Z

    #@213
    move-result v3

    #@214
    if-eqz v3, :cond_16

    #@216
    .line 2954
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@219
    move-result v3

    #@21a
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    #@21d
    move-result v3

    #@21e
    .line 2953
    if-eqz v3, :cond_16

    #@220
    .line 2955
    add-int/lit8 v3, p2, 0x1

    #@222
    move-object/from16 v0, p1

    #@224
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@227
    move-result v3

    #@228
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    #@22b
    move-result v3

    #@22c
    .line 2953
    if-eqz v3, :cond_16

    #@22e
    .line 2965
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    #@231
    move-result v3

    #@232
    rem-int/lit8 v17, v3, 0x64

    #@234
    .line 2966
    .local v17, "ambiguousTwoDigitYear":I
    move/from16 v0, v32

    #@236
    move/from16 v1, v17

    #@238
    if-ne v0, v1, :cond_1a

    #@23a
    const/4 v3, 0x1

    #@23b
    :goto_6
    const/4 v4, 0x0

    #@23c
    aput-boolean v3, p7, v4

    #@23e
    .line 2967
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    #@241
    move-result v3

    #@242
    div-int/lit8 v3, v3, 0x64

    #@244
    mul-int/lit8 v4, v3, 0x64

    #@246
    .line 2968
    move/from16 v0, v32

    #@248
    move/from16 v1, v17

    #@24a
    if-ge v0, v1, :cond_1b

    #@24c
    const/16 v3, 0x64

    #@24e
    .line 2967
    :goto_7
    add-int/2addr v3, v4

    #@24f
    add-int v32, v32, v3

    #@251
    goto :goto_5

    #@252
    .line 2966
    :cond_1a
    const/4 v3, 0x0

    #@253
    goto :goto_6

    #@254
    .line 2968
    :cond_1b
    const/4 v3, 0x0

    #@255
    goto :goto_7

    #@256
    .line 2981
    .end local v17    # "ambiguousTwoDigitYear":I
    :pswitch_3
    move-object/from16 v0, p0

    #@258
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@25a
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@25c
    if-eqz v3, :cond_1c

    #@25e
    .line 2982
    move-object/from16 v0, p0

    #@260
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@262
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@264
    const/4 v12, 0x1

    #@265
    const/4 v14, 0x0

    #@266
    move-object/from16 v9, p0

    #@268
    move-object/from16 v10, p1

    #@26a
    move/from16 v11, p2

    #@26c
    move-object/from16 v15, p8

    #@26e
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@271
    move-result v25

    #@272
    .line 2983
    .local v25, "newStart":I
    if-lez v25, :cond_1c

    #@274
    .line 2984
    return v25

    #@275
    .line 2987
    .end local v25    # "newStart":I
    :cond_1c
    if-eqz v26, :cond_1f

    #@277
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@279
    move-object/from16 v0, p0

    #@27b
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@27e
    move-result v3

    #@27f
    if-nez v3, :cond_1d

    #@281
    move-object/from16 v0, p0

    #@283
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@285
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@287
    if-nez v3, :cond_1e

    #@289
    .line 2988
    :cond_1d
    const/4 v3, 0x1

    #@28a
    move-object/from16 v0, p8

    #@28c
    move/from16 v1, v32

    #@28e
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@291
    .line 2989
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@294
    move-result v3

    #@295
    return v3

    #@296
    .line 2987
    :cond_1e
    move-object/from16 v0, p0

    #@298
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@29a
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@29c
    array-length v3, v3

    #@29d
    move/from16 v0, v32

    #@29f
    if-gt v0, v3, :cond_1d

    #@2a1
    .line 2991
    :cond_1f
    move/from16 v0, p2

    #@2a3
    not-int v3, v0

    #@2a4
    return v3

    #@2a5
    .line 2994
    :pswitch_4
    const/4 v3, 0x2

    #@2a6
    move/from16 v0, p4

    #@2a8
    if-le v0, v3, :cond_20

    #@2aa
    if-eqz v26, :cond_23

    #@2ac
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@2b3
    move-result v3

    #@2b4
    if-eqz v3, :cond_23

    #@2b6
    .line 2999
    :cond_20
    add-int/lit8 v3, v32, -0x1

    #@2b8
    const/4 v4, 0x2

    #@2b9
    move-object/from16 v0, p8

    #@2bb
    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@2be
    .line 3004
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@2c1
    move-result-object v3

    #@2c2
    const-string/jumbo v4, "hebrew"

    #@2c5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c8
    move-result v3

    #@2c9
    if-eqz v3, :cond_21

    #@2cb
    const/4 v3, 0x6

    #@2cc
    move/from16 v0, v32

    #@2ce
    if-lt v0, v3, :cond_21

    #@2d0
    .line 3005
    const/4 v3, 0x1

    #@2d1
    move-object/from16 v0, p8

    #@2d3
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->isSet(I)Z

    #@2d6
    move-result v3

    #@2d7
    if-eqz v3, :cond_22

    #@2d9
    .line 3006
    const/4 v3, 0x1

    #@2da
    move-object/from16 v0, p8

    #@2dc
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@2df
    move-result v3

    #@2e0
    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@2e3
    move-result v3

    #@2e4
    if-nez v3, :cond_21

    #@2e6
    .line 3007
    const/4 v3, 0x2

    #@2e7
    move-object/from16 v0, p8

    #@2e9
    move/from16 v1, v32

    #@2eb
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@2ee
    .line 3013
    :cond_21
    :goto_8
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@2f1
    move-result v3

    #@2f2
    return v3

    #@2f3
    .line 3010
    :cond_22
    const/4 v3, 0x1

    #@2f4
    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    #@2f6
    goto :goto_8

    #@2f7
    .line 3017
    :cond_23
    move-object/from16 v0, p0

    #@2f9
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2fb
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@2fd
    if-eqz v3, :cond_25

    #@2ff
    move-object/from16 v0, p0

    #@301
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@303
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@305
    array-length v3, v3

    #@306
    const/4 v4, 0x7

    #@307
    if-lt v3, v4, :cond_25

    #@309
    const/16 v22, 0x1

    #@30b
    .line 3019
    .local v22, "haveMonthPat":Z
    :goto_9
    const/16 v25, 0x0

    #@30d
    .line 3020
    .restart local v25    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@30f
    move-object/from16 v0, p0

    #@311
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@314
    move-result v3

    #@315
    if-nez v3, :cond_24

    #@317
    const/4 v3, 0x4

    #@318
    move/from16 v0, p4

    #@31a
    if-ne v0, v3, :cond_29

    #@31c
    .line 3021
    :cond_24
    const/4 v3, 0x2

    #@31d
    move/from16 v0, v28

    #@31f
    if-ne v0, v3, :cond_27

    #@321
    .line 3022
    move-object/from16 v0, p0

    #@323
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@325
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@327
    .line 3023
    if-eqz v22, :cond_26

    #@329
    move-object/from16 v0, p0

    #@32b
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@32d
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@32f
    const/4 v4, 0x0

    #@330
    aget-object v14, v3, v4

    #@332
    .line 3022
    :goto_a
    const/4 v12, 0x2

    #@333
    move-object/from16 v9, p0

    #@335
    move-object/from16 v10, p1

    #@337
    move/from16 v11, p2

    #@339
    move-object/from16 v15, p8

    #@33b
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@33e
    move-result v25

    #@33f
    .line 3026
    :goto_b
    if-lez v25, :cond_29

    #@341
    .line 3027
    return v25

    #@342
    .line 3017
    .end local v22    # "haveMonthPat":Z
    .end local v25    # "newStart":I
    :cond_25
    const/16 v22, 0x0

    #@344
    .restart local v22    # "haveMonthPat":Z
    goto :goto_9

    #@345
    .line 3023
    .restart local v25    # "newStart":I
    :cond_26
    const/4 v14, 0x0

    #@346
    goto :goto_a

    #@347
    .line 3024
    :cond_27
    move-object/from16 v0, p0

    #@349
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@34b
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@34d
    .line 3025
    if-eqz v22, :cond_28

    #@34f
    move-object/from16 v0, p0

    #@351
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@353
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@355
    const/4 v4, 0x3

    #@356
    aget-object v14, v3, v4

    #@358
    .line 3024
    :goto_c
    const/4 v12, 0x2

    #@359
    move-object/from16 v9, p0

    #@35b
    move-object/from16 v10, p1

    #@35d
    move/from16 v11, p2

    #@35f
    move-object/from16 v15, p8

    #@361
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@364
    move-result v25

    #@365
    goto :goto_b

    #@366
    .line 3025
    :cond_28
    const/4 v14, 0x0

    #@367
    goto :goto_c

    #@368
    .line 3031
    :cond_29
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@36a
    move-object/from16 v0, p0

    #@36c
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@36f
    move-result v3

    #@370
    if-nez v3, :cond_2a

    #@372
    const/4 v3, 0x3

    #@373
    move/from16 v0, p4

    #@375
    if-ne v0, v3, :cond_2e

    #@377
    .line 3032
    :cond_2a
    const/4 v3, 0x2

    #@378
    move/from16 v0, v28

    #@37a
    if-ne v0, v3, :cond_2c

    #@37c
    .line 3033
    move-object/from16 v0, p0

    #@37e
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@380
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@382
    .line 3034
    if-eqz v22, :cond_2b

    #@384
    move-object/from16 v0, p0

    #@386
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@388
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@38a
    const/4 v4, 0x1

    #@38b
    aget-object v14, v3, v4

    #@38d
    .line 3033
    :goto_d
    const/4 v12, 0x2

    #@38e
    move-object/from16 v9, p0

    #@390
    move-object/from16 v10, p1

    #@392
    move/from16 v11, p2

    #@394
    move-object/from16 v15, p8

    #@396
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@399
    move-result v3

    #@39a
    .line 3032
    :goto_e
    return v3

    #@39b
    .line 3034
    :cond_2b
    const/4 v14, 0x0

    #@39c
    goto :goto_d

    #@39d
    .line 3035
    :cond_2c
    move-object/from16 v0, p0

    #@39f
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3a1
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@3a3
    .line 3036
    if-eqz v22, :cond_2d

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3a9
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@3ab
    const/4 v4, 0x4

    #@3ac
    aget-object v14, v3, v4

    #@3ae
    .line 3035
    :goto_f
    const/4 v12, 0x2

    #@3af
    move-object/from16 v9, p0

    #@3b1
    move-object/from16 v10, p1

    #@3b3
    move/from16 v11, p2

    #@3b5
    move-object/from16 v15, p8

    #@3b7
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@3ba
    move-result v3

    #@3bb
    goto :goto_e

    #@3bc
    .line 3036
    :cond_2d
    const/4 v14, 0x0

    #@3bd
    goto :goto_f

    #@3be
    .line 3038
    :cond_2e
    return v25

    #@3bf
    .line 3042
    .end local v22    # "haveMonthPat":Z
    .end local v25    # "newStart":I
    :pswitch_5
    const/16 v3, 0xb

    #@3c1
    move-object/from16 v0, p8

    #@3c3
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@3c6
    move-result v3

    #@3c7
    add-int/lit8 v3, v3, 0x1

    #@3c9
    move/from16 v0, v32

    #@3cb
    if-ne v0, v3, :cond_2f

    #@3cd
    .line 3043
    const/16 v32, 0x0

    #@3cf
    .line 3045
    :cond_2f
    const/16 v3, 0xb

    #@3d1
    move-object/from16 v0, p8

    #@3d3
    move/from16 v1, v32

    #@3d5
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@3d8
    .line 3046
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@3db
    move-result v3

    #@3dc
    return v3

    #@3dd
    .line 3049
    :pswitch_6
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@3e0
    move-result v3

    #@3e1
    sub-int v23, v3, p2

    #@3e3
    .line 3050
    .local v23, "i":I
    const/4 v3, 0x3

    #@3e4
    move/from16 v0, v23

    #@3e6
    if-ge v0, v3, :cond_30

    #@3e8
    .line 3051
    :goto_10
    const/4 v3, 0x3

    #@3e9
    move/from16 v0, v23

    #@3eb
    if-ge v0, v3, :cond_32

    #@3ed
    .line 3052
    mul-int/lit8 v32, v32, 0xa

    #@3ef
    .line 3053
    add-int/lit8 v23, v23, 0x1

    #@3f1
    goto :goto_10

    #@3f2
    .line 3056
    :cond_30
    const/16 v16, 0x1

    #@3f4
    .line 3057
    .local v16, "a":I
    :goto_11
    const/4 v3, 0x3

    #@3f5
    move/from16 v0, v23

    #@3f7
    if-le v0, v3, :cond_31

    #@3f9
    .line 3058
    mul-int/lit8 v16, v16, 0xa

    #@3fb
    .line 3059
    add-int/lit8 v23, v23, -0x1

    #@3fd
    goto :goto_11

    #@3fe
    .line 3061
    :cond_31
    div-int v32, v32, v16

    #@400
    .line 3063
    .end local v16    # "a":I
    :cond_32
    const/16 v3, 0xe

    #@402
    move-object/from16 v0, p8

    #@404
    move/from16 v1, v32

    #@406
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@409
    .line 3064
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@40c
    move-result v3

    #@40d
    return v3

    #@40e
    .line 3066
    .end local v23    # "i":I
    :pswitch_7
    const/4 v3, 0x2

    #@40f
    move/from16 v0, p4

    #@411
    if-le v0, v3, :cond_33

    #@413
    if-eqz v26, :cond_34

    #@415
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@417
    move-object/from16 v0, p0

    #@419
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@41c
    move-result v3

    #@41d
    if-eqz v3, :cond_34

    #@41f
    .line 3068
    :cond_33
    move-object/from16 v0, p8

    #@421
    move/from16 v1, v21

    #@423
    move/from16 v2, v32

    #@425
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@428
    .line 3069
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@42b
    move-result v3

    #@42c
    return v3

    #@42d
    .line 3075
    :cond_34
    :pswitch_8
    const/16 v25, 0x0

    #@42f
    .line 3076
    .restart local v25    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@431
    move-object/from16 v0, p0

    #@433
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@436
    move-result v3

    #@437
    if-nez v3, :cond_35

    #@439
    const/4 v3, 0x4

    #@43a
    move/from16 v0, p4

    #@43c
    if-ne v0, v3, :cond_36

    #@43e
    .line 3077
    :cond_35
    move-object/from16 v0, p0

    #@440
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@442
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@444
    const/4 v12, 0x7

    #@445
    const/4 v14, 0x0

    #@446
    move-object/from16 v9, p0

    #@448
    move-object/from16 v10, p1

    #@44a
    move/from16 v11, p2

    #@44c
    move-object/from16 v15, p8

    #@44e
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@451
    move-result v25

    #@452
    if-lez v25, :cond_36

    #@454
    .line 3078
    return v25

    #@455
    .line 3081
    :cond_36
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@457
    move-object/from16 v0, p0

    #@459
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@45c
    move-result v3

    #@45d
    if-nez v3, :cond_37

    #@45f
    const/4 v3, 0x3

    #@460
    move/from16 v0, p4

    #@462
    if-ne v0, v3, :cond_38

    #@464
    .line 3082
    :cond_37
    move-object/from16 v0, p0

    #@466
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@468
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@46a
    const/4 v12, 0x7

    #@46b
    const/4 v14, 0x0

    #@46c
    move-object/from16 v9, p0

    #@46e
    move-object/from16 v10, p1

    #@470
    move/from16 v11, p2

    #@472
    move-object/from16 v15, p8

    #@474
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@477
    move-result v25

    #@478
    if-lez v25, :cond_38

    #@47a
    .line 3083
    return v25

    #@47b
    .line 3086
    :cond_38
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@47d
    move-object/from16 v0, p0

    #@47f
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@482
    move-result v3

    #@483
    if-nez v3, :cond_39

    #@485
    const/4 v3, 0x6

    #@486
    move/from16 v0, p4

    #@488
    if-ne v0, v3, :cond_3a

    #@48a
    .line 3087
    :cond_39
    move-object/from16 v0, p0

    #@48c
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@48e
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@490
    if-eqz v3, :cond_3a

    #@492
    .line 3088
    move-object/from16 v0, p0

    #@494
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@496
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@498
    const/4 v12, 0x7

    #@499
    const/4 v14, 0x0

    #@49a
    move-object/from16 v9, p0

    #@49c
    move-object/from16 v10, p1

    #@49e
    move/from16 v11, p2

    #@4a0
    move-object/from16 v15, p8

    #@4a2
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@4a5
    move-result v25

    #@4a6
    if-lez v25, :cond_3a

    #@4a8
    .line 3089
    return v25

    #@4a9
    .line 3093
    :cond_3a
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@4ab
    move-object/from16 v0, p0

    #@4ad
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@4b0
    move-result v3

    #@4b1
    if-nez v3, :cond_3b

    #@4b3
    const/4 v3, 0x5

    #@4b4
    move/from16 v0, p4

    #@4b6
    if-ne v0, v3, :cond_3c

    #@4b8
    .line 3094
    :cond_3b
    move-object/from16 v0, p0

    #@4ba
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@4bc
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@4be
    if-eqz v3, :cond_3c

    #@4c0
    .line 3095
    move-object/from16 v0, p0

    #@4c2
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@4c4
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@4c6
    const/4 v12, 0x7

    #@4c7
    const/4 v14, 0x0

    #@4c8
    move-object/from16 v9, p0

    #@4ca
    move-object/from16 v10, p1

    #@4cc
    move/from16 v11, p2

    #@4ce
    move-object/from16 v15, p8

    #@4d0
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@4d3
    move-result v25

    #@4d4
    if-lez v25, :cond_3c

    #@4d6
    .line 3096
    return v25

    #@4d7
    .line 3100
    :cond_3c
    return v25

    #@4d8
    .line 3103
    .end local v25    # "newStart":I
    :pswitch_9
    const/4 v3, 0x1

    #@4d9
    move/from16 v0, p4

    #@4db
    if-eq v0, v3, :cond_3d

    #@4dd
    if-eqz v26, :cond_3e

    #@4df
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@4e1
    move-object/from16 v0, p0

    #@4e3
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@4e6
    move-result v3

    #@4e7
    if-eqz v3, :cond_3e

    #@4e9
    .line 3105
    :cond_3d
    move-object/from16 v0, p8

    #@4eb
    move/from16 v1, v21

    #@4ed
    move/from16 v2, v32

    #@4ef
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@4f2
    .line 3106
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@4f5
    move-result v3

    #@4f6
    return v3

    #@4f7
    .line 3109
    :cond_3e
    const/16 v25, 0x0

    #@4f9
    .line 3110
    .restart local v25    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@4fb
    move-object/from16 v0, p0

    #@4fd
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@500
    move-result v3

    #@501
    if-nez v3, :cond_3f

    #@503
    const/4 v3, 0x4

    #@504
    move/from16 v0, p4

    #@506
    if-ne v0, v3, :cond_40

    #@508
    .line 3111
    :cond_3f
    move-object/from16 v0, p0

    #@50a
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@50c
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@50e
    const/4 v12, 0x7

    #@50f
    const/4 v14, 0x0

    #@510
    move-object/from16 v9, p0

    #@512
    move-object/from16 v10, p1

    #@514
    move/from16 v11, p2

    #@516
    move-object/from16 v15, p8

    #@518
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@51b
    move-result v25

    #@51c
    if-lez v25, :cond_40

    #@51e
    .line 3112
    return v25

    #@51f
    .line 3115
    :cond_40
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@521
    move-object/from16 v0, p0

    #@523
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@526
    move-result v3

    #@527
    if-nez v3, :cond_41

    #@529
    const/4 v3, 0x3

    #@52a
    move/from16 v0, p4

    #@52c
    if-ne v0, v3, :cond_42

    #@52e
    .line 3116
    :cond_41
    move-object/from16 v0, p0

    #@530
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@532
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@534
    const/4 v12, 0x7

    #@535
    const/4 v14, 0x0

    #@536
    move-object/from16 v9, p0

    #@538
    move-object/from16 v10, p1

    #@53a
    move/from16 v11, p2

    #@53c
    move-object/from16 v15, p8

    #@53e
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@541
    move-result v25

    #@542
    if-lez v25, :cond_42

    #@544
    .line 3117
    return v25

    #@545
    .line 3120
    :cond_42
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@547
    move-object/from16 v0, p0

    #@549
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@54c
    move-result v3

    #@54d
    if-nez v3, :cond_43

    #@54f
    const/4 v3, 0x6

    #@550
    move/from16 v0, p4

    #@552
    if-ne v0, v3, :cond_44

    #@554
    .line 3121
    :cond_43
    move-object/from16 v0, p0

    #@556
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@558
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@55a
    if-eqz v3, :cond_44

    #@55c
    .line 3122
    move-object/from16 v0, p0

    #@55e
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@560
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@562
    const/4 v12, 0x7

    #@563
    const/4 v14, 0x0

    #@564
    move-object/from16 v9, p0

    #@566
    move-object/from16 v10, p1

    #@568
    move/from16 v11, p2

    #@56a
    move-object/from16 v15, p8

    #@56c
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@56f
    move-result v3

    #@570
    return v3

    #@571
    .line 3125
    :cond_44
    return v25

    #@572
    .line 3131
    .end local v25    # "newStart":I
    :pswitch_a
    const/16 v25, 0x0

    #@574
    .line 3133
    .restart local v25    # "newStart":I
    move-object/from16 v0, p0

    #@576
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@578
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@57a
    if-eqz v3, :cond_45

    #@57c
    const/4 v3, 0x5

    #@57d
    move/from16 v0, p4

    #@57f
    if-ge v0, v3, :cond_46

    #@581
    .line 3134
    :cond_45
    move-object/from16 v0, p0

    #@583
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@585
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@587
    const/16 v12, 0x9

    #@589
    const/4 v14, 0x0

    #@58a
    move-object/from16 v9, p0

    #@58c
    move-object/from16 v10, p1

    #@58e
    move/from16 v11, p2

    #@590
    move-object/from16 v15, p8

    #@592
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@595
    move-result v25

    #@596
    if-lez v25, :cond_47

    #@598
    .line 3135
    return v25

    #@599
    .line 3133
    :cond_46
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@59b
    move-object/from16 v0, p0

    #@59d
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@5a0
    move-result v3

    #@5a1
    if-nez v3, :cond_45

    #@5a3
    .line 3139
    :cond_47
    move-object/from16 v0, p0

    #@5a5
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@5a7
    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@5a9
    if-eqz v3, :cond_49

    #@5ab
    const/4 v3, 0x5

    #@5ac
    move/from16 v0, p4

    #@5ae
    if-ge v0, v3, :cond_48

    #@5b0
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@5b2
    move-object/from16 v0, p0

    #@5b4
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@5b7
    move-result v3

    #@5b8
    if-eqz v3, :cond_49

    #@5ba
    .line 3140
    :cond_48
    move-object/from16 v0, p0

    #@5bc
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@5be
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@5c0
    const/16 v12, 0x9

    #@5c2
    const/4 v14, 0x0

    #@5c3
    move-object/from16 v9, p0

    #@5c5
    move-object/from16 v10, p1

    #@5c7
    move/from16 v11, p2

    #@5c9
    move-object/from16 v15, p8

    #@5cb
    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@5ce
    move-result v25

    #@5cf
    if-lez v25, :cond_49

    #@5d1
    .line 3141
    return v25

    #@5d2
    .line 3145
    :cond_49
    move/from16 v0, p2

    #@5d4
    not-int v3, v0

    #@5d5
    return v3

    #@5d6
    .line 3149
    .end local v25    # "newStart":I
    :pswitch_b
    const/16 v3, 0xa

    #@5d8
    move-object/from16 v0, p8

    #@5da
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    #@5dd
    move-result v3

    #@5de
    add-int/lit8 v3, v3, 0x1

    #@5e0
    move/from16 v0, v32

    #@5e2
    if-ne v0, v3, :cond_4a

    #@5e4
    .line 3150
    const/16 v32, 0x0

    #@5e6
    .line 3152
    :cond_4a
    const/16 v3, 0xa

    #@5e8
    move-object/from16 v0, p8

    #@5ea
    move/from16 v1, v32

    #@5ec
    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@5ef
    .line 3153
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@5f2
    move-result v3

    #@5f3
    return v3

    #@5f4
    .line 3156
    :pswitch_c
    const/4 v3, 0x4

    #@5f5
    move/from16 v0, p4

    #@5f7
    if-ge v0, v3, :cond_4b

    #@5f9
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@5fb
    .line 3157
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_12
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5fe
    move-result-object v3

    #@5ff
    move-object/from16 v0, v30

    #@601
    move-object/from16 v1, p1

    #@603
    move-object/from16 v2, p10

    #@605
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@608
    move-result-object v31

    #@609
    .line 3158
    .local v31, "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_4c

    #@60b
    .line 3159
    move-object/from16 v0, p8

    #@60d
    move-object/from16 v1, v31

    #@60f
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@612
    .line 3160
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@615
    move-result v3

    #@616
    return v3

    #@617
    .line 3156
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_4b
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@619
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_12

    #@61a
    .line 3162
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_4c
    move/from16 v0, p2

    #@61c
    not-int v3, v0

    #@61d
    return v3

    #@61e
    .line 3166
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_d
    const/4 v3, 0x4

    #@61f
    move/from16 v0, p4

    #@621
    if-ge v0, v3, :cond_4d

    #@623
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@625
    .line 3167
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@628
    move-result-object v3

    #@629
    move-object/from16 v0, v30

    #@62b
    move-object/from16 v1, p1

    #@62d
    move-object/from16 v2, p10

    #@62f
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@632
    move-result-object v31

    #@633
    .line 3168
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_4f

    #@635
    .line 3169
    move-object/from16 v0, p8

    #@637
    move-object/from16 v1, v31

    #@639
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@63c
    .line 3170
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@63f
    move-result v3

    #@640
    return v3

    #@641
    .line 3166
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_4d
    const/4 v3, 0x5

    #@642
    move/from16 v0, p4

    #@644
    if-ne v0, v3, :cond_4e

    #@646
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@648
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_13

    #@649
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :cond_4e
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@64b
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_13

    #@64c
    .line 3172
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_4f
    move/from16 v0, p2

    #@64e
    not-int v3, v0

    #@64f
    return v3

    #@650
    .line 3177
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_e
    const/4 v3, 0x4

    #@651
    move/from16 v0, p4

    #@653
    if-ge v0, v3, :cond_50

    #@655
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@657
    .line 3178
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_14
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@65a
    move-result-object v3

    #@65b
    move-object/from16 v0, v30

    #@65d
    move-object/from16 v1, p1

    #@65f
    move-object/from16 v2, p10

    #@661
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@664
    move-result-object v31

    #@665
    .line 3179
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_51

    #@667
    .line 3180
    move-object/from16 v0, p8

    #@669
    move-object/from16 v1, v31

    #@66b
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@66e
    .line 3181
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@671
    move-result v3

    #@672
    return v3

    #@673
    .line 3177
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_50
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@675
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_14

    #@676
    .line 3183
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_51
    move/from16 v0, p2

    #@678
    not-int v3, v0

    #@679
    return v3

    #@67a
    .line 3187
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_f
    const/16 v30, 0x0

    #@67c
    .line 3188
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    packed-switch p4, :pswitch_data_1

    #@67f
    .line 3199
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@681
    .line 3202
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_15
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@684
    move-result-object v3

    #@685
    move-object/from16 v0, v30

    #@687
    move-object/from16 v1, p1

    #@689
    move-object/from16 v2, p10

    #@68b
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@68e
    move-result-object v31

    #@68f
    .line 3203
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_52

    #@691
    .line 3204
    move-object/from16 v0, p8

    #@693
    move-object/from16 v1, v31

    #@695
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@698
    .line 3205
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@69b
    move-result v3

    #@69c
    return v3

    #@69d
    .line 3190
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_10
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@69f
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_15

    #@6a0
    .line 3193
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_11
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@6a2
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_15

    #@6a3
    .line 3196
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_12
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@6a5
    .local v30, "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_15

    #@6a6
    .line 3207
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_52
    move/from16 v0, p2

    #@6a8
    not-int v3, v0

    #@6a9
    return v3

    #@6aa
    .line 3211
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_13
    const/4 v3, 0x4

    #@6ab
    move/from16 v0, p4

    #@6ad
    if-ge v0, v3, :cond_53

    #@6af
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@6b1
    .line 3212
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@6b4
    move-result-object v3

    #@6b5
    move-object/from16 v0, v30

    #@6b7
    move-object/from16 v1, p1

    #@6b9
    move-object/from16 v2, p10

    #@6bb
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@6be
    move-result-object v31

    #@6bf
    .line 3213
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_54

    #@6c1
    .line 3214
    move-object/from16 v0, p8

    #@6c3
    move-object/from16 v1, v31

    #@6c5
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@6c8
    .line 3215
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@6cb
    move-result v3

    #@6cc
    return v3

    #@6cd
    .line 3211
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_53
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@6cf
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_16

    #@6d0
    .line 3217
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_54
    move/from16 v0, p2

    #@6d2
    not-int v3, v0

    #@6d3
    return v3

    #@6d4
    .line 3222
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_14
    packed-switch p4, :pswitch_data_2

    #@6d7
    .line 3236
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@6d9
    .line 3239
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_17
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@6dc
    move-result-object v3

    #@6dd
    move-object/from16 v0, v30

    #@6df
    move-object/from16 v1, p1

    #@6e1
    move-object/from16 v2, p10

    #@6e3
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@6e6
    move-result-object v31

    #@6e7
    .line 3240
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_55

    #@6e9
    .line 3241
    move-object/from16 v0, p8

    #@6eb
    move-object/from16 v1, v31

    #@6ed
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@6f0
    .line 3242
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@6f3
    move-result v3

    #@6f4
    return v3

    #@6f5
    .line 3224
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_15
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@6f7
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_17

    #@6f8
    .line 3227
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_16
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@6fa
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_17

    #@6fb
    .line 3230
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_17
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@6fd
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_17

    #@6fe
    .line 3233
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_18
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@700
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_17

    #@701
    .line 3244
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_55
    move/from16 v0, p2

    #@703
    not-int v3, v0

    #@704
    return v3

    #@705
    .line 3249
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_19
    packed-switch p4, :pswitch_data_3

    #@708
    .line 3263
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@70a
    .line 3266
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_18
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@70d
    move-result-object v3

    #@70e
    move-object/from16 v0, v30

    #@710
    move-object/from16 v1, p1

    #@712
    move-object/from16 v2, p10

    #@714
    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@717
    move-result-object v31

    #@718
    .line 3267
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v31, :cond_56

    #@71a
    .line 3268
    move-object/from16 v0, p8

    #@71c
    move-object/from16 v1, v31

    #@71e
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@721
    .line 3269
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@724
    move-result v3

    #@725
    return v3

    #@726
    .line 3251
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_1a
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@728
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_18

    #@729
    .line 3254
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_1b
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@72b
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_18

    #@72c
    .line 3257
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_1c
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@72e
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_18

    #@72f
    .line 3260
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_1d
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@731
    .restart local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_18

    #@732
    .line 3271
    .restart local v31    # "tz":Landroid/icu/util/TimeZone;
    :cond_56
    move/from16 v0, p2

    #@734
    not-int v3, v0

    #@735
    return v3

    #@736
    .line 3274
    .end local v30    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local v31    # "tz":Landroid/icu/util/TimeZone;
    :pswitch_1e
    const/4 v3, 0x2

    #@737
    move/from16 v0, p4

    #@739
    if-le v0, v3, :cond_57

    #@73b
    if-eqz v26, :cond_58

    #@73d
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@73f
    move-object/from16 v0, p0

    #@741
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@744
    move-result v3

    #@745
    if-eqz v3, :cond_58

    #@747
    .line 3279
    :cond_57
    add-int/lit8 v3, v32, -0x1

    #@749
    mul-int/lit8 v3, v3, 0x3

    #@74b
    const/4 v4, 0x2

    #@74c
    move-object/from16 v0, p8

    #@74e
    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@751
    .line 3280
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@754
    move-result v3

    #@755
    return v3

    #@756
    .line 3285
    :cond_58
    const/16 v25, 0x0

    #@758
    .line 3286
    .restart local v25    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@75a
    move-object/from16 v0, p0

    #@75c
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@75f
    move-result v3

    #@760
    if-nez v3, :cond_59

    #@762
    const/4 v3, 0x4

    #@763
    move/from16 v0, p4

    #@765
    if-ne v0, v3, :cond_5a

    #@767
    .line 3287
    :cond_59
    move-object/from16 v0, p0

    #@769
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@76b
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@76d
    const/4 v12, 0x2

    #@76e
    move-object/from16 v9, p0

    #@770
    move-object/from16 v10, p1

    #@772
    move/from16 v11, p2

    #@774
    move-object/from16 v14, p8

    #@776
    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@779
    move-result v25

    #@77a
    if-lez v25, :cond_5a

    #@77c
    .line 3288
    return v25

    #@77d
    .line 3292
    :cond_5a
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@77f
    move-object/from16 v0, p0

    #@781
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@784
    move-result v3

    #@785
    if-nez v3, :cond_5b

    #@787
    const/4 v3, 0x3

    #@788
    move/from16 v0, p4

    #@78a
    if-ne v0, v3, :cond_5c

    #@78c
    .line 3294
    :cond_5b
    move-object/from16 v0, p0

    #@78e
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@790
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@792
    .line 3293
    const/4 v12, 0x2

    #@793
    move-object/from16 v9, p0

    #@795
    move-object/from16 v10, p1

    #@797
    move/from16 v11, p2

    #@799
    move-object/from16 v14, p8

    #@79b
    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@79e
    move-result v3

    #@79f
    return v3

    #@7a0
    .line 3296
    :cond_5c
    return v25

    #@7a1
    .line 3300
    .end local v25    # "newStart":I
    :pswitch_1f
    const/4 v3, 0x2

    #@7a2
    move/from16 v0, p4

    #@7a4
    if-le v0, v3, :cond_5d

    #@7a6
    if-eqz v26, :cond_5e

    #@7a8
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@7aa
    move-object/from16 v0, p0

    #@7ac
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@7af
    move-result v3

    #@7b0
    if-eqz v3, :cond_5e

    #@7b2
    .line 3305
    :cond_5d
    add-int/lit8 v3, v32, -0x1

    #@7b4
    mul-int/lit8 v3, v3, 0x3

    #@7b6
    const/4 v4, 0x2

    #@7b7
    move-object/from16 v0, p8

    #@7b9
    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@7bc
    .line 3306
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@7bf
    move-result v3

    #@7c0
    return v3

    #@7c1
    .line 3311
    :cond_5e
    const/16 v25, 0x0

    #@7c3
    .line 3312
    .restart local v25    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@7c5
    move-object/from16 v0, p0

    #@7c7
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@7ca
    move-result v3

    #@7cb
    if-nez v3, :cond_5f

    #@7cd
    const/4 v3, 0x4

    #@7ce
    move/from16 v0, p4

    #@7d0
    if-ne v0, v3, :cond_60

    #@7d2
    .line 3313
    :cond_5f
    move-object/from16 v0, p0

    #@7d4
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@7d6
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@7d8
    const/4 v12, 0x2

    #@7d9
    move-object/from16 v9, p0

    #@7db
    move-object/from16 v10, p1

    #@7dd
    move/from16 v11, p2

    #@7df
    move-object/from16 v14, p8

    #@7e1
    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@7e4
    move-result v25

    #@7e5
    if-lez v25, :cond_60

    #@7e7
    .line 3314
    return v25

    #@7e8
    .line 3318
    :cond_60
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@7ea
    move-object/from16 v0, p0

    #@7ec
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@7ef
    move-result v3

    #@7f0
    if-nez v3, :cond_61

    #@7f2
    const/4 v3, 0x3

    #@7f3
    move/from16 v0, p4

    #@7f5
    if-ne v0, v3, :cond_62

    #@7f7
    .line 3320
    :cond_61
    move-object/from16 v0, p0

    #@7f9
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@7fb
    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@7fd
    .line 3319
    const/4 v12, 0x2

    #@7fe
    move-object/from16 v9, p0

    #@800
    move-object/from16 v10, p1

    #@802
    move/from16 v11, p2

    #@804
    move-object/from16 v14, p8

    #@806
    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@809
    move-result v3

    #@80a
    return v3

    #@80b
    .line 3322
    :cond_62
    return v25

    #@80c
    .line 3328
    .end local v25    # "newStart":I
    :pswitch_20
    new-instance v20, Ljava/util/ArrayList;

    #@80e
    const/4 v3, 0x3

    #@80f
    move-object/from16 v0, v20

    #@811
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@814
    .line 3329
    .local v20, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@816
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@818
    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    #@81b
    move-result-object v3

    #@81c
    move-object/from16 v0, v20

    #@81e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@821
    .line 3332
    move-object/from16 v0, p0

    #@823
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@825
    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    #@828
    move-result-object v3

    #@829
    const-string/jumbo v4, ":"

    #@82c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82f
    move-result v3

    #@830
    if-nez v3, :cond_63

    #@832
    .line 3333
    const-string/jumbo v3, ":"

    #@835
    move-object/from16 v0, v20

    #@837
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83a
    .line 3337
    :cond_63
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@83c
    move-object/from16 v0, p0

    #@83e
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@841
    move-result v3

    #@842
    if-eqz v3, :cond_64

    #@844
    .line 3338
    move-object/from16 v0, p0

    #@846
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@848
    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    #@84b
    move-result-object v3

    #@84c
    const-string/jumbo v4, "."

    #@84f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@852
    move-result v3

    #@853
    if-eqz v3, :cond_65

    #@855
    .line 3342
    :cond_64
    :goto_19
    const/4 v3, 0x0

    #@856
    new-array v3, v3, [Ljava/lang/String;

    #@858
    move-object/from16 v0, v20

    #@85a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@85d
    move-result-object v13

    #@85e
    check-cast v13, [Ljava/lang/String;

    #@860
    const/4 v12, -0x1

    #@861
    move-object/from16 v9, p0

    #@863
    move-object/from16 v10, p1

    #@865
    move/from16 v11, p2

    #@867
    move-object/from16 v14, p8

    #@869
    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@86c
    move-result v3

    #@86d
    return v3

    #@86e
    .line 3339
    :cond_65
    const-string/jumbo v3, "."

    #@871
    move-object/from16 v0, v20

    #@873
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@876
    goto :goto_19

    #@877
    .end local v20    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_66
    move-object/from16 v3, p0

    #@879
    move-object/from16 v4, p1

    #@87b
    move/from16 v5, p4

    #@87d
    move/from16 v7, p6

    #@87f
    .line 3363
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    #@882
    move-result-object v26

    #@883
    .line 3367
    .restart local v26    # "number":Ljava/lang/Number;
    :goto_1a
    if-eqz v26, :cond_69

    #@885
    .line 3368
    const/16 v3, 0x22

    #@887
    move/from16 v0, v28

    #@889
    if-eq v0, v3, :cond_68

    #@88b
    .line 3369
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    #@88e
    move-result v3

    #@88f
    move-object/from16 v0, p8

    #@891
    move/from16 v1, v21

    #@893
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@896
    .line 3373
    :goto_1b
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@899
    move-result v3

    #@89a
    return v3

    #@89b
    .line 3365
    .end local v26    # "number":Ljava/lang/Number;
    :cond_67
    move-object/from16 v0, p0

    #@89d
    move-object/from16 v1, p1

    #@89f
    move/from16 v2, p6

    #@8a1
    invoke-direct {v0, v1, v6, v2, v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    #@8a4
    move-result-object v26

    #@8a5
    .restart local v26    # "number":Ljava/lang/Number;
    goto :goto_1a

    #@8a6
    .line 3371
    :cond_68
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    #@8a9
    move-result v3

    #@8aa
    move-object/from16 v0, p8

    #@8ac
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setRelatedYear(I)V

    #@8af
    goto :goto_1b

    #@8b0
    .line 3375
    :cond_69
    move/from16 v0, p2

    #@8b2
    not-int v3, v0

    #@8b3
    return v3

    #@8b4
    .line 2915
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
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_f
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_0
        :pswitch_20
    .end packed-switch

    #@900
    .line 3188
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    #@90a
    .line 3222
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    #@916
    .line 3249
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    .line 3460
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 3461
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@8
    .line 3462
    .local v3, "inQuote":Z
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    if-ge v2, v5, :cond_3

    #@f
    .line 3463
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 3464
    .local v0, "c":C
    if-eqz v3, :cond_1

    #@15
    .line 3465
    if-ne v0, v6, :cond_0

    #@17
    .line 3466
    const/4 v3, 0x0

    #@18
    .line 3479
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 3462
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 3468
    :cond_1
    if-ne v0, v6, :cond_2

    #@20
    .line 3469
    const/4 v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 3470
    :cond_2
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 3471
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v1

    #@2c
    .line 3472
    .local v1, "ci":I
    const/4 v5, -0x1

    #@2d
    if-eq v1, v5, :cond_0

    #@2f
    .line 3473
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v0

    #@33
    goto :goto_1

    #@34
    .line 3481
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_3
    if-eqz v3, :cond_4

    #@36
    .line 3482
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v6, "Unfinished quote in pattern"

    #@3b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v5

    #@3f
    .line 3484
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    return-object v5
.end method

.method private tzFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1157
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    #@8
    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@a
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3628
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3631
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    #@9
    .line 3633
    :cond_0
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    #@d
    .line 3634
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@10
    .line 3635
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@12
    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->value()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1d
    .line 3627
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pat"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3523
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@5
    .line 3524
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr:"

    #@8
    .line 3522
    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@e
    .line 3525
    invoke-virtual {p0, v2, v2}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@11
    .line 3521
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pat"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3511
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@3
    .line 3512
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@6
    .line 3514
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    #@8
    .line 3509
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 3590
    invoke-super {p0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    #@6
    .line 3591
    .local v0, "other":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    #@e
    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@10
    .line 3594
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 3595
    const/16 v1, 0xa

    #@16
    new-array v1, v1, [C

    #@18
    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    #@1a
    .line 3597
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3617
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

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
    .line 3618
    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    #@b
    .line 3619
    .local v0, "that":Landroid/icu/text/SimpleDateFormat;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@d
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 3620
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@17
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@19
    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 3619
    :cond_1
    return v1
.end method

.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1289
    const/4 v6, 0x0

    #@2
    .line 1290
    .local v6, "backupTZ":Landroid/icu/util/TimeZone;
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@4
    if-eq p1, v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@c
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1299
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    :cond_0
    :goto_0
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@18
    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@1b
    move-result-object v2

    #@1c
    move-object v0, p0

    #@1d
    move-object v1, p1

    #@1e
    move-object v3, p2

    #@1f
    move-object v4, p3

    #@20
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v7

    #@24
    .line 1300
    .local v7, "result":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_1

    #@26
    .line 1302
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@28
    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@2b
    .line 1304
    :cond_1
    return-object v7

    #@2c
    .line 1294
    .end local v7    # "result":Ljava/lang/StringBuffer;
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2e
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@31
    move-result-wide v2

    #@32
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@35
    .line 1295
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@37
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@3a
    move-result-object v6

    #@3b
    .line 1296
    .local v6, "backupTZ":Landroid/icu/util/TimeZone;
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@3d
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@44
    .line 1297
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@46
    goto :goto_0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3689
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    .line 3690
    .local v1, "cal":Landroid/icu/util/Calendar;
    instance-of v0, p1, Landroid/icu/util/Calendar;

    #@4
    if-eqz v0, :cond_0

    #@6
    move-object v1, p1

    #@7
    .line 3691
    check-cast v1, Landroid/icu/util/Calendar;

    #@9
    .line 3699
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@e
    .line 3700
    .local v3, "toAppendTo":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/text/FieldPosition;

    #@10
    const/4 v0, 0x0

    #@11
    invoke-direct {v4, v0}, Ljava/text/FieldPosition;-><init>(I)V

    #@14
    .line 3701
    .local v4, "pos":Ljava/text/FieldPosition;
    new-instance v5, Ljava/util/ArrayList;

    #@16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 3702
    .local v5, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@1b
    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@1e
    move-result-object v2

    #@1f
    move-object v0, p0

    #@20
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@23
    .line 3704
    new-instance v6, Ljava/text/AttributedString;

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-direct {v6, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@2c
    .line 3707
    .local v6, "as":Ljava/text/AttributedString;
    const/4 v9, 0x0

    #@2d
    .local v9, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@30
    move-result v0

    #@31
    if-ge v9, v0, :cond_3

    #@33
    .line 3708
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v8

    #@37
    check-cast v8, Ljava/text/FieldPosition;

    #@39
    .line 3709
    .local v8, "fp":Ljava/text/FieldPosition;
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@3c
    move-result-object v7

    #@3d
    .line 3710
    .local v7, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@40
    move-result v0

    #@41
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    #@44
    move-result v2

    #@45
    invoke-virtual {v6, v7, v7, v0, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@48
    .line 3707
    add-int/lit8 v9, v9, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 3692
    .end local v3    # "toAppendTo":Ljava/lang/StringBuffer;
    .end local v4    # "pos":Ljava/text/FieldPosition;
    .end local v5    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .end local v6    # "as":Ljava/text/AttributedString;
    .end local v7    # "attribute":Ljava/text/Format$Field;
    .end local v8    # "fp":Ljava/text/FieldPosition;
    .end local v9    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    #@4d
    if-eqz v0, :cond_1

    #@4f
    .line 3693
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@51
    check-cast p1, Ljava/util/Date;

    #@53
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@56
    goto :goto_0

    #@57
    .line 3694
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    #@59
    if-eqz v0, :cond_2

    #@5b
    .line 3695
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@5d
    check-cast p1, Ljava/lang/Number;

    #@5f
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@62
    move-result-wide v10

    #@63
    invoke-virtual {v0, v10, v11}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@66
    goto :goto_0

    #@67
    .line 3697
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@69
    const-string/jumbo v2, "Cannot format given Object as a Date"

    #@6c
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v0

    #@70
    .line 3713
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local v4    # "pos":Ljava/text/FieldPosition;
    .restart local v5    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .restart local v6    # "as":Ljava/text/AttributedString;
    .restart local v9    # "i":I
    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@73
    move-result-object v0

    #@74
    return-object v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 3536
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    #@8
    return-object v0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 3724
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getNumberFormat(C)Landroid/icu/text/NumberFormat;
    .locals 4
    .param p1, "field"    # C

    #@0
    .prologue
    .line 4085
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3
    move-result-object v2

    #@4
    .line 4086
    .local v2, "ovrField":Ljava/lang/Character;
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 4087
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 4088
    .local v1, "nsName":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@24
    .line 4089
    .local v0, "nf":Landroid/icu/text/NumberFormat;
    return-object v0

    #@25
    .line 4091
    .end local v0    # "nf":Landroid/icu/text/NumberFormat;
    .end local v1    # "nsName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@27
    return-object v3
.end method

.method protected getSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 3554
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2
    return-object v0
.end method

.method public getTimeZoneFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    #@0
    .prologue
    .line 3566
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3607
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final intervalFormatByAlgorithm(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3819
    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 3820
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "can not format on two different calendars"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 3823
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    #@12
    move-result-object v19

    #@13
    .line 3824
    .local v19, "items":[Ljava/lang/Object;
    const/4 v14, -0x1

    #@14
    .line 3825
    .local v14, "diffBegin":I
    const/4 v15, -0x1

    #@15
    .line 3830
    .local v15, "diffEnd":I
    const/4 v9, 0x0

    #@16
    .local v9, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, v19

    #@18
    array-length v4, v0

    #@19
    if-ge v9, v4, :cond_1

    #@1b
    .line 3831
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, p1

    #@1f
    move-object/from16 v2, p2

    #@21
    move-object/from16 v3, v19

    #@23
    invoke-direct {v0, v1, v2, v3, v9}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 3832
    move v14, v9

    #@2a
    .line 3837
    :cond_1
    const/4 v4, -0x1

    #@2b
    if-ne v14, v4, :cond_3

    #@2d
    .line 3839
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, p1

    #@31
    move-object/from16 v2, p3

    #@33
    move-object/from16 v3, p4

    #@35
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@38
    move-result-object v4

    #@39
    return-object v4

    #@3a
    .line 3830
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 3843
    :cond_3
    move-object/from16 v0, v19

    #@3f
    array-length v4, v0

    #@40
    add-int/lit8 v9, v4, -0x1

    #@42
    :goto_1
    if-lt v9, v14, :cond_4

    #@44
    .line 3844
    move-object/from16 v0, p0

    #@46
    move-object/from16 v1, p1

    #@48
    move-object/from16 v2, p2

    #@4a
    move-object/from16 v3, v19

    #@4c
    invoke-direct {v0, v1, v2, v3, v9}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_5

    #@52
    .line 3845
    move v15, v9

    #@53
    .line 3854
    :cond_4
    if-nez v14, :cond_6

    #@55
    move-object/from16 v0, v19

    #@57
    array-length v4, v0

    #@58
    add-int/lit8 v4, v4, -0x1

    #@5a
    if-ne v15, v4, :cond_6

    #@5c
    .line 3855
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p1

    #@60
    move-object/from16 v2, p3

    #@62
    move-object/from16 v3, p4

    #@64
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@67
    .line 3856
    const-string/jumbo v4, " \u2013 "

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    .line 3857
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, p2

    #@73
    move-object/from16 v2, p3

    #@75
    move-object/from16 v3, p4

    #@77
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@7a
    .line 3858
    return-object p3

    #@7b
    .line 3843
    :cond_5
    add-int/lit8 v9, v9, -0x1

    #@7d
    goto :goto_1

    #@7e
    .line 3849
    :catch_0
    move-exception v16

    #@7f
    .line 3850
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@81
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v4

    #@89
    .line 3863
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    const/16 v17, 0x3e8

    #@8b
    .line 3864
    .local v17, "highestLevel":I
    move v9, v14

    #@8c
    :goto_2
    if-gt v9, v15, :cond_a

    #@8e
    .line 3865
    aget-object v4, v19, v9

    #@90
    instance-of v4, v4, Ljava/lang/String;

    #@92
    if-eqz v4, :cond_8

    #@94
    .line 3864
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@96
    goto :goto_2

    #@97
    .line 3868
    :cond_8
    aget-object v18, v19, v9

    #@99
    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@9b
    .line 3869
    .local v18, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    move-object/from16 v0, v18

    #@9d
    iget-char v13, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@9f
    .line 3870
    .local v13, "ch":C
    invoke-static {v13}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    #@a2
    move-result v20

    #@a3
    .line 3871
    .local v20, "patternCharIndex":I
    const/4 v4, -0x1

    #@a4
    move/from16 v0, v20

    #@a6
    if-ne v0, v4, :cond_9

    #@a8
    .line 3872
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@aa
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v6, "Illegal pattern character \'"

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    .line 3873
    const-string/jumbo v6, "\' in \""

    #@bd
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    .line 3874
    move-object/from16 v0, p0

    #@c3
    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@c5
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    .line 3874
    const/16 v6, 0x22

    #@cb
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v4

    #@d7
    .line 3877
    :cond_9
    move/from16 v0, v20

    #@d9
    move/from16 v1, v17

    #@db
    if-ge v0, v1, :cond_7

    #@dd
    .line 3878
    move/from16 v17, v20

    #@df
    goto :goto_3

    #@e0
    .line 3886
    .end local v13    # "ch":C
    .end local v18    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v20    # "patternCharIndex":I
    :cond_a
    const/4 v9, 0x0

    #@e1
    :goto_4
    if-ge v9, v14, :cond_b

    #@e3
    .line 3887
    :try_start_1
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v19

    #@e7
    move/from16 v2, v17

    #@e9
    invoke-direct {v0, v1, v9, v2}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    #@ec
    move-result v4

    #@ed
    if-eqz v4, :cond_d

    #@ef
    .line 3888
    move v14, v9

    #@f0
    .line 3894
    :cond_b
    move-object/from16 v0, v19

    #@f2
    array-length v4, v0

    #@f3
    add-int/lit8 v9, v4, -0x1

    #@f5
    :goto_5
    if-le v9, v15, :cond_c

    #@f7
    .line 3895
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v19

    #@fb
    move/from16 v2, v17

    #@fd
    invoke-direct {v0, v1, v9, v2}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_e

    #@103
    .line 3896
    move v15, v9

    #@104
    .line 3906
    :cond_c
    if-nez v14, :cond_f

    #@106
    move-object/from16 v0, v19

    #@108
    array-length v4, v0

    #@109
    add-int/lit8 v4, v4, -0x1

    #@10b
    if-ne v15, v4, :cond_f

    #@10d
    .line 3907
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, p1

    #@111
    move-object/from16 v2, p3

    #@113
    move-object/from16 v3, p4

    #@115
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@118
    .line 3908
    const-string/jumbo v4, " \u2013 "

    #@11b
    move-object/from16 v0, p3

    #@11d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@120
    .line 3909
    move-object/from16 v0, p0

    #@122
    move-object/from16 v1, p2

    #@124
    move-object/from16 v2, p3

    #@126
    move-object/from16 v3, p4

    #@128
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@12b
    .line 3910
    return-object p3

    #@12c
    .line 3886
    :cond_d
    add-int/lit8 v9, v9, 0x1

    #@12e
    goto :goto_4

    #@12f
    .line 3894
    :cond_e
    add-int/lit8 v9, v9, -0x1

    #@131
    goto :goto_5

    #@132
    .line 3900
    :catch_1
    move-exception v16

    #@133
    .line 3901
    .restart local v16    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@135
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@138
    move-result-object v5

    #@139
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13c
    throw v4

    #@13d
    .line 3916
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    const/4 v4, 0x0

    #@13e
    move-object/from16 v0, p4

    #@140
    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@143
    .line 3917
    const/4 v4, 0x0

    #@144
    move-object/from16 v0, p4

    #@146
    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@149
    .line 3918
    sget-object v4, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@14b
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@150
    move-result-object v10

    #@151
    .line 3921
    .local v10, "capSetting":Landroid/icu/text/DisplayContext;
    const/4 v9, 0x0

    #@152
    :goto_6
    if-gt v9, v15, :cond_12

    #@154
    .line 3922
    aget-object v4, v19, v9

    #@156
    instance-of v4, v4, Ljava/lang/String;

    #@158
    if-eqz v4, :cond_10

    #@15a
    .line 3923
    aget-object v4, v19, v9

    #@15c
    check-cast v4, Ljava/lang/String;

    #@15e
    move-object/from16 v0, p3

    #@160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@163
    .line 3921
    :goto_7
    add-int/lit8 v9, v9, 0x1

    #@165
    goto :goto_6

    #@166
    .line 3925
    :cond_10
    aget-object v18, v19, v9

    #@168
    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@16a
    .line 3926
    .restart local v18    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    move-object/from16 v0, p0

    #@16c
    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    #@16e
    if-eqz v4, :cond_11

    #@170
    .line 3927
    move-object/from16 v0, v18

    #@172
    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@174
    move-object/from16 v0, v18

    #@176
    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@178
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@17b
    move-result v8

    #@17c
    move-object/from16 v4, p0

    #@17e
    move-object/from16 v5, p3

    #@180
    move-object/from16 v11, p4

    #@182
    move-object/from16 v12, p1

    #@184
    invoke-virtual/range {v4 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    #@187
    goto :goto_7

    #@188
    .line 3930
    :cond_11
    move-object/from16 v0, v18

    #@18a
    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@18c
    move-object/from16 v0, v18

    #@18e
    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@190
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@193
    move-result v8

    #@194
    move-object/from16 v5, p0

    #@196
    move-object/from16 v11, p4

    #@198
    move-object/from16 v12, p1

    #@19a
    invoke-virtual/range {v5 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    #@19d
    move-result-object v4

    #@19e
    move-object/from16 v0, p3

    #@1a0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a3
    goto :goto_7

    #@1a4
    .line 3936
    .end local v18    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    :cond_12
    const-string/jumbo v4, " \u2013 "

    #@1a7
    move-object/from16 v0, p3

    #@1a9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ac
    .line 3939
    move v9, v14

    #@1ad
    :goto_8
    move-object/from16 v0, v19

    #@1af
    array-length v4, v0

    #@1b0
    if-ge v9, v4, :cond_15

    #@1b2
    .line 3940
    aget-object v4, v19, v9

    #@1b4
    instance-of v4, v4, Ljava/lang/String;

    #@1b6
    if-eqz v4, :cond_13

    #@1b8
    .line 3941
    aget-object v4, v19, v9

    #@1ba
    check-cast v4, Ljava/lang/String;

    #@1bc
    move-object/from16 v0, p3

    #@1be
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c1
    .line 3939
    :goto_9
    add-int/lit8 v9, v9, 0x1

    #@1c3
    goto :goto_8

    #@1c4
    .line 3943
    :cond_13
    aget-object v18, v19, v9

    #@1c6
    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@1c8
    .line 3944
    .restart local v18    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    move-object/from16 v0, p0

    #@1ca
    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    #@1cc
    if-eqz v4, :cond_14

    #@1ce
    .line 3945
    move-object/from16 v0, v18

    #@1d0
    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@1d2
    move-object/from16 v0, v18

    #@1d4
    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@1d6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@1d9
    move-result v8

    #@1da
    move-object/from16 v4, p0

    #@1dc
    move-object/from16 v5, p3

    #@1de
    move-object/from16 v11, p4

    #@1e0
    move-object/from16 v12, p2

    #@1e2
    invoke-virtual/range {v4 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    #@1e5
    goto :goto_9

    #@1e6
    .line 3948
    :cond_14
    move-object/from16 v0, v18

    #@1e8
    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@1ea
    move-object/from16 v0, v18

    #@1ec
    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@1ee
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@1f1
    move-result v8

    #@1f2
    move-object/from16 v5, p0

    #@1f4
    move-object/from16 v11, p4

    #@1f6
    move-object/from16 v12, p2

    #@1f8
    invoke-virtual/range {v5 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    #@1fb
    move-result-object v4

    #@1fc
    move-object/from16 v0, p3

    #@1fe
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@201
    goto :goto_9

    #@202
    .line 3953
    .end local v18    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    :cond_15
    return-object p3
.end method

.method isFieldUnitIgnored(I)Z
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 3740
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 2740
    const/4 v3, 0x0

    #@1
    .line 2741
    .local v3, "i":I
    array-length v2, p4

    #@2
    .line 2747
    .local v2, "count":I
    const/4 v1, 0x0

    #@3
    .local v1, "bestMatchLength":I
    const/4 v0, -0x1

    #@4
    .line 2748
    .local v0, "bestMatch":I
    const/4 v5, 0x0

    #@5
    .line 2749
    .local v5, "matchLength":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@7
    .line 2750
    aget-object v6, p4, v3

    #@9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    .line 2753
    .local v4, "length":I
    if-le v4, v1, :cond_0

    #@f
    .line 2754
    aget-object v6, p4, v3

    #@11
    invoke-direct {p0, p1, p2, v6, v4}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    #@14
    move-result v5

    #@15
    if-ltz v5, :cond_0

    #@17
    .line 2756
    move v0, v3

    #@18
    .line 2757
    move v1, v5

    #@19
    .line 2749
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2761
    .end local v4    # "length":I
    :cond_1
    if-ltz v0, :cond_2

    #@1e
    .line 2762
    mul-int/lit8 v6, v0, 0x3

    #@20
    invoke-virtual {p5, p3, v6}, Landroid/icu/util/Calendar;->set(II)V

    #@23
    .line 2763
    add-int v6, p2, v1

    #@25
    return v6

    #@26
    .line 2766
    :cond_2
    neg-int v6, p2

    #@27
    return v6
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 2629
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v6, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 60
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cal"    # Landroid/icu/util/Calendar;
    .param p3, "parsePos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 2167
    const/16 v31, 0x0

    #@2
    .line 2168
    .local v31, "backupTZ":Landroid/icu/util/TimeZone;
    const/16 v53, 0x0

    #@4
    .line 2169
    .local v53, "resultCal":Landroid/icu/util/Calendar;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@8
    move-object/from16 v0, p2

    #@a
    if-eq v0, v4, :cond_0

    #@c
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@14
    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 2180
    .end local v31    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v53    # "resultCal":Landroid/icu/util/Calendar;
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    #@21
    move-result v6

    #@22
    .line 2181
    .local v6, "pos":I
    if-gez v6, :cond_2

    #@24
    .line 2182
    const/4 v4, 0x0

    #@25
    move-object/from16 v0, p3

    #@27
    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@2a
    .line 2183
    return-void

    #@2b
    .line 2173
    .end local v6    # "pos":I
    .restart local v31    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v53    # "resultCal":Landroid/icu/util/Calendar;
    :cond_1
    move-object/from16 v0, p0

    #@2d
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2f
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@32
    move-result-wide v16

    #@33
    move-wide/from16 v0, v16

    #@35
    invoke-virtual {v4, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@38
    .line 2174
    move-object/from16 v0, p0

    #@3a
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@3c
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@3f
    move-result-object v31

    #@40
    .line 2175
    .local v31, "backupTZ":Landroid/icu/util/TimeZone;
    move-object/from16 v0, p0

    #@42
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@44
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@4b
    .line 2176
    move-object/from16 v53, p2

    #@4d
    .line 2177
    .local v53, "resultCal":Landroid/icu/util/Calendar;
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@51
    move-object/from16 p2, v0

    #@53
    goto :goto_0

    #@54
    .line 2185
    .end local v31    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v53    # "resultCal":Landroid/icu/util/Calendar;
    .restart local v6    # "pos":I
    :cond_2
    move/from16 v55, v6

    #@56
    .line 2187
    .local v55, "start":I
    new-instance v14, Landroid/icu/util/Output;

    #@58
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@5a
    invoke-direct {v14, v4}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@5d
    .line 2188
    .local v14, "tzTimeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v4, 0x1

    #@5e
    new-array v11, v4, [Z

    #@60
    const/4 v4, 0x0

    #@61
    const/4 v5, 0x0

    #@62
    aput-boolean v4, v11, v5

    #@64
    .line 2191
    .local v11, "ambiguousYear":[Z
    const/16 v46, -0x1

    #@66
    .line 2193
    .local v46, "numericFieldStart":I
    const/16 v45, 0x0

    #@68
    .line 2195
    .local v45, "numericFieldLength":I
    const/16 v47, 0x0

    #@6a
    .line 2197
    .local v47, "numericStartPos":I
    const/4 v13, 0x0

    #@6b
    .line 2198
    .local v13, "numericLeapMonthFormatter":Landroid/icu/text/MessageFormat;
    move-object/from16 v0, p0

    #@6d
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@6f
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@71
    if-eqz v4, :cond_3

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@77
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@79
    array-length v4, v4

    #@7a
    const/4 v5, 0x7

    #@7b
    if-lt v4, v5, :cond_3

    #@7d
    .line 2199
    new-instance v13, Landroid/icu/text/MessageFormat;

    #@7f
    .end local v13    # "numericLeapMonthFormatter":Landroid/icu/text/MessageFormat;
    move-object/from16 v0, p0

    #@81
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@83
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@85
    const/4 v5, 0x6

    #@86
    aget-object v4, v4, v5

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@8c
    invoke-direct {v13, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@8f
    .line 2202
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    #@92
    move-result-object v43

    #@93
    .line 2203
    .local v43, "items":[Ljava/lang/Object;
    const/16 v41, 0x0

    #@95
    .line 2204
    .local v41, "i":I
    :goto_1
    move-object/from16 v0, v43

    #@97
    array-length v4, v0

    #@98
    move/from16 v0, v41

    #@9a
    if-ge v0, v4, :cond_11

    #@9c
    .line 2205
    aget-object v4, v43, v41

    #@9e
    instance-of v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@a0
    if-eqz v4, :cond_f

    #@a2
    .line 2207
    aget-object v40, v43, v41

    #@a4
    check-cast v40, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@a6
    .line 2208
    .local v40, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    move-object/from16 v0, v40

    #@a8
    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    #@aa
    if-eqz v4, :cond_4

    #@ac
    .line 2216
    const/4 v4, -0x1

    #@ad
    move/from16 v0, v46

    #@af
    if-ne v0, v4, :cond_4

    #@b1
    .line 2218
    add-int/lit8 v4, v41, 0x1

    #@b3
    move-object/from16 v0, v43

    #@b5
    array-length v5, v0

    #@b6
    if-ge v4, v5, :cond_4

    #@b8
    .line 2219
    add-int/lit8 v4, v41, 0x1

    #@ba
    aget-object v4, v43, v4

    #@bc
    instance-of v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@be
    .line 2218
    if-eqz v4, :cond_4

    #@c0
    .line 2220
    add-int/lit8 v4, v41, 0x1

    #@c2
    aget-object v4, v43, v4

    #@c4
    check-cast v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@c6
    iget-boolean v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    #@c8
    .line 2218
    if-eqz v4, :cond_4

    #@ca
    .line 2222
    move/from16 v46, v41

    #@cc
    .line 2223
    move-object/from16 v0, v40

    #@ce
    iget v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@d0
    move/from16 v45, v0

    #@d2
    .line 2224
    move/from16 v47, v6

    #@d4
    .line 2228
    :cond_4
    const/4 v4, -0x1

    #@d5
    move/from16 v0, v46

    #@d7
    if-eq v0, v4, :cond_8

    #@d9
    .line 2230
    move-object/from16 v0, v40

    #@db
    iget v8, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@dd
    .line 2231
    .local v8, "len":I
    move/from16 v0, v46

    #@df
    move/from16 v1, v41

    #@e1
    if-ne v0, v1, :cond_5

    #@e3
    .line 2232
    move/from16 v8, v45

    #@e5
    .line 2236
    :cond_5
    move-object/from16 v0, v40

    #@e7
    iget-char v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@e9
    .line 2237
    const/4 v9, 0x1

    #@ea
    const/4 v10, 0x0

    #@eb
    move-object/from16 v4, p0

    #@ed
    move-object/from16 v5, p1

    #@ef
    move-object/from16 v12, p2

    #@f1
    .line 2236
    invoke-direct/range {v4 .. v14}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    #@f4
    move-result v6

    #@f5
    .line 2239
    if-gez v6, :cond_c

    #@f7
    .line 2243
    add-int/lit8 v45, v45, -0x1

    #@f9
    .line 2244
    if-nez v45, :cond_7

    #@fb
    .line 2246
    move-object/from16 v0, p3

    #@fd
    move/from16 v1, v55

    #@ff
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@102
    .line 2247
    move-object/from16 v0, p3

    #@104
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@107
    .line 2248
    if-eqz v31, :cond_6

    #@109
    .line 2249
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@10d
    move-object/from16 v0, v31

    #@10f
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@112
    .line 2251
    :cond_6
    return-void

    #@113
    .line 2253
    :cond_7
    move/from16 v41, v46

    #@115
    .line 2254
    move/from16 v6, v47

    #@117
    .line 2255
    goto/16 :goto_1

    #@119
    .line 2258
    .end local v8    # "len":I
    :cond_8
    move-object/from16 v0, v40

    #@11b
    iget-char v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@11d
    const/16 v5, 0x6c

    #@11f
    if-eq v4, v5, :cond_c

    #@121
    .line 2260
    const/16 v46, -0x1

    #@123
    .line 2262
    move/from16 v54, v6

    #@125
    .line 2263
    .local v54, "s":I
    move-object/from16 v0, v40

    #@127
    iget-char v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@129
    move/from16 v18, v0

    #@12b
    move-object/from16 v0, v40

    #@12d
    iget v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@12f
    move/from16 v19, v0

    #@131
    .line 2264
    const/16 v20, 0x0

    #@133
    const/16 v21, 0x1

    #@135
    move-object/from16 v15, p0

    #@137
    move-object/from16 v16, p1

    #@139
    move/from16 v17, v6

    #@13b
    move-object/from16 v22, v11

    #@13d
    move-object/from16 v23, p2

    #@13f
    move-object/from16 v24, v13

    #@141
    move-object/from16 v25, v14

    #@143
    .line 2263
    invoke-direct/range {v15 .. v25}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    #@146
    move-result v6

    #@147
    .line 2266
    if-gez v6, :cond_c

    #@149
    .line 2267
    const/16 v4, -0x7d00

    #@14b
    if-ne v6, v4, :cond_d

    #@14d
    .line 2269
    move/from16 v6, v54

    #@14f
    .line 2271
    add-int/lit8 v4, v41, 0x1

    #@151
    move-object/from16 v0, v43

    #@153
    array-length v5, v0

    #@154
    if-ge v4, v5, :cond_c

    #@156
    .line 2273
    const/16 v49, 0x0

    #@158
    .line 2276
    .local v49, "patl":Ljava/lang/String;
    add-int/lit8 v4, v41, 0x1

    #@15a
    :try_start_0
    aget-object v49, v43, v4

    #@15c
    .end local v49    # "patl":Ljava/lang/String;
    check-cast v49, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@15e
    .line 2287
    .local v49, "patl":Ljava/lang/String;
    if-nez v49, :cond_9

    #@160
    .line 2288
    add-int/lit8 v4, v41, 0x1

    #@162
    aget-object v49, v43, v4

    #@164
    .end local v49    # "patl":Ljava/lang/String;
    check-cast v49, Ljava/lang/String;

    #@166
    .line 2289
    .restart local v49    # "patl":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    #@169
    move-result v51

    #@16a
    .line 2290
    .local v51, "plen":I
    const/16 v42, 0x0

    #@16c
    .line 2294
    .local v42, "idx":I
    :goto_2
    move/from16 v0, v42

    #@16e
    move/from16 v1, v51

    #@170
    if-ge v0, v1, :cond_b

    #@172
    .line 2296
    move-object/from16 v0, v49

    #@174
    move/from16 v1, v42

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@179
    move-result v50

    #@17a
    .line 2297
    .local v50, "pch":C
    invoke-static/range {v50 .. v50}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@17d
    move-result v4

    #@17e
    if-eqz v4, :cond_b

    #@180
    .line 2298
    add-int/lit8 v42, v42, 0x1

    #@182
    goto :goto_2

    #@183
    .line 2277
    .end local v42    # "idx":I
    .end local v49    # "patl":Ljava/lang/String;
    .end local v50    # "pch":C
    .end local v51    # "plen":I
    :catch_0
    move-exception v36

    #@184
    .line 2278
    .local v36, "cce":Ljava/lang/ClassCastException;
    move-object/from16 v0, p3

    #@186
    move/from16 v1, v55

    #@188
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@18b
    .line 2279
    move-object/from16 v0, p3

    #@18d
    move/from16 v1, v54

    #@18f
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@192
    .line 2280
    if-eqz v31, :cond_a

    #@194
    .line 2281
    move-object/from16 v0, p0

    #@196
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@198
    move-object/from16 v0, v31

    #@19a
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@19d
    .line 2283
    :cond_a
    return-void

    #@19e
    .line 2304
    .end local v36    # "cce":Ljava/lang/ClassCastException;
    .restart local v42    # "idx":I
    .restart local v49    # "patl":Ljava/lang/String;
    .restart local v51    # "plen":I
    :cond_b
    move/from16 v0, v42

    #@1a0
    move/from16 v1, v51

    #@1a2
    if-ne v0, v1, :cond_c

    #@1a4
    .line 2305
    add-int/lit8 v41, v41, 0x1

    #@1a6
    .line 2335
    .end local v40    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v42    # "idx":I
    .end local v49    # "patl":Ljava/lang/String;
    .end local v51    # "plen":I
    .end local v54    # "s":I
    :cond_c
    add-int/lit8 v41, v41, 0x1

    #@1a8
    goto/16 :goto_1

    #@1aa
    .line 2310
    .restart local v40    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .restart local v54    # "s":I
    :cond_d
    move-object/from16 v0, p3

    #@1ac
    move/from16 v1, v55

    #@1ae
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1b1
    .line 2311
    move-object/from16 v0, p3

    #@1b3
    move/from16 v1, v54

    #@1b5
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1b8
    .line 2312
    if-eqz v31, :cond_e

    #@1ba
    .line 2313
    move-object/from16 v0, p0

    #@1bc
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1be
    move-object/from16 v0, v31

    #@1c0
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@1c3
    .line 2315
    :cond_e
    return-void

    #@1c4
    .line 2322
    .end local v40    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v54    # "s":I
    :cond_f
    const/16 v46, -0x1

    #@1c6
    .line 2323
    const/4 v4, 0x1

    #@1c7
    new-array v0, v4, [Z

    #@1c9
    move-object/from16 v20, v0

    #@1cb
    .local v20, "complete":[Z
    move-object/from16 v15, p0

    #@1cd
    move-object/from16 v16, p1

    #@1cf
    move/from16 v17, v6

    #@1d1
    move-object/from16 v18, v43

    #@1d3
    move/from16 v19, v41

    #@1d5
    .line 2324
    invoke-direct/range {v15 .. v20}, Landroid/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    #@1d8
    move-result v6

    #@1d9
    .line 2325
    const/4 v4, 0x0

    #@1da
    aget-boolean v4, v20, v4

    #@1dc
    if-nez v4, :cond_c

    #@1de
    .line 2327
    move-object/from16 v0, p3

    #@1e0
    move/from16 v1, v55

    #@1e2
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1e5
    .line 2328
    move-object/from16 v0, p3

    #@1e7
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1ea
    .line 2329
    if-eqz v31, :cond_10

    #@1ec
    .line 2330
    move-object/from16 v0, p0

    #@1ee
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1f0
    move-object/from16 v0, v31

    #@1f2
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@1f5
    .line 2332
    :cond_10
    return-void

    #@1f6
    .line 2339
    .end local v20    # "complete":[Z
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@1f9
    move-result v4

    #@1fa
    if-ge v6, v4, :cond_12

    #@1fc
    .line 2340
    move-object/from16 v0, p1

    #@1fe
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@201
    move-result v39

    #@202
    .line 2341
    .local v39, "extra":C
    const/16 v4, 0x2e

    #@204
    move/from16 v0, v39

    #@206
    if-ne v0, v4, :cond_12

    #@208
    sget-object v4, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@20a
    move-object/from16 v0, p0

    #@20c
    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@20f
    move-result v4

    #@210
    if-eqz v4, :cond_12

    #@212
    move-object/from16 v0, v43

    #@214
    array-length v4, v0

    #@215
    if-eqz v4, :cond_12

    #@217
    .line 2343
    move-object/from16 v0, v43

    #@219
    array-length v4, v0

    #@21a
    add-int/lit8 v4, v4, -0x1

    #@21c
    aget-object v44, v43, v4

    #@21e
    .line 2344
    .local v44, "lastItem":Ljava/lang/Object;
    move-object/from16 v0, v44

    #@220
    instance-of v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@222
    if-eqz v4, :cond_12

    #@224
    check-cast v44, Landroid/icu/text/SimpleDateFormat$PatternItem;

    #@226
    .end local v44    # "lastItem":Ljava/lang/Object;
    move-object/from16 v0, v44

    #@228
    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    #@22a
    if-eqz v4, :cond_1b

    #@22c
    .line 2354
    .end local v39    # "extra":C
    :cond_12
    :goto_3
    move-object/from16 v0, p3

    #@22e
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@231
    .line 2379
    :try_start_1
    iget-object v0, v14, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@233
    move-object/from16 v59, v0

    #@235
    check-cast v59, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@237
    .line 2380
    .local v59, "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    const/4 v4, 0x0

    #@238
    aget-boolean v4, v11, v4

    #@23a
    if-nez v4, :cond_13

    #@23c
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@23e
    move-object/from16 v0, v59

    #@240
    if-eq v0, v4, :cond_18

    #@242
    .line 2386
    :cond_13
    const/4 v4, 0x0

    #@243
    aget-boolean v4, v11, v4

    #@245
    if-eqz v4, :cond_14

    #@247
    .line 2387
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@24a
    move-result-object v37

    #@24b
    check-cast v37, Landroid/icu/util/Calendar;

    #@24d
    .line 2388
    .local v37, "copy":Landroid/icu/util/Calendar;
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@250
    move-result-object v48

    #@251
    .line 2389
    .local v48, "parsedDate":Ljava/util/Date;
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    #@254
    move-result-object v4

    #@255
    move-object/from16 v0, v48

    #@257
    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@25a
    move-result v4

    #@25b
    if-eqz v4, :cond_14

    #@25d
    .line 2391
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    #@260
    move-result v4

    #@261
    add-int/lit8 v4, v4, 0x64

    #@263
    const/4 v5, 0x1

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-virtual {v0, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@269
    .line 2394
    .end local v37    # "copy":Landroid/icu/util/Calendar;
    .end local v48    # "parsedDate":Ljava/util/Date;
    :cond_14
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@26b
    move-object/from16 v0, v59

    #@26d
    if-eq v0, v4, :cond_18

    #@26f
    .line 2395
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@272
    move-result-object v37

    #@273
    check-cast v37, Landroid/icu/util/Calendar;

    #@275
    .line 2396
    .restart local v37    # "copy":Landroid/icu/util/Calendar;
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@278
    move-result-object v58

    #@279
    .line 2397
    .local v58, "tz":Landroid/icu/util/TimeZone;
    const/16 v21, 0x0

    #@27b
    .line 2398
    .local v21, "btz":Landroid/icu/util/BasicTimeZone;
    move-object/from16 v0, v58

    #@27d
    instance-of v4, v0, Landroid/icu/util/BasicTimeZone;

    #@27f
    if-eqz v4, :cond_15

    #@281
    .line 2399
    move-object/from16 v0, v58

    #@283
    check-cast v0, Landroid/icu/util/BasicTimeZone;

    #@285
    move-object/from16 v21, v0

    #@287
    .line 2403
    .end local v21    # "btz":Landroid/icu/util/BasicTimeZone;
    :cond_15
    const/16 v4, 0xf

    #@289
    const/4 v5, 0x0

    #@28a
    move-object/from16 v0, v37

    #@28c
    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@28f
    .line 2404
    const/16 v4, 0x10

    #@291
    const/4 v5, 0x0

    #@292
    move-object/from16 v0, v37

    #@294
    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@297
    .line 2405
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@29a
    move-result-wide v22

    #@29b
    .line 2409
    .local v22, "localMillis":J
    const/4 v4, 0x2

    #@29c
    new-array v0, v4, [I

    #@29e
    move-object/from16 v26, v0

    #@2a0
    .line 2410
    .local v26, "offsets":[I
    if-eqz v21, :cond_1e

    #@2a2
    .line 2411
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2a4
    move-object/from16 v0, v59

    #@2a6
    if-ne v0, v4, :cond_1c

    #@2a8
    .line 2413
    const/16 v24, 0x1

    #@2aa
    const/16 v25, 0x1

    #@2ac
    .line 2412
    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    #@2af
    .line 2436
    :cond_16
    :goto_4
    const/4 v4, 0x1

    #@2b0
    aget v52, v26, v4

    #@2b2
    .line 2437
    .local v52, "resolvedSavings":I
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2b4
    move-object/from16 v0, v59

    #@2b6
    if-ne v0, v4, :cond_20

    #@2b8
    .line 2438
    const/4 v4, 0x1

    #@2b9
    aget v4, v26, v4

    #@2bb
    if-eqz v4, :cond_17

    #@2bd
    .line 2440
    const/16 v52, 0x0

    #@2bf
    .line 2499
    :cond_17
    :goto_5
    const/4 v4, 0x0

    #@2c0
    aget v4, v26, v4

    #@2c2
    const/16 v5, 0xf

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    invoke-virtual {v0, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@2c9
    .line 2500
    const/16 v4, 0x10

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    move/from16 v1, v52

    #@2cf
    invoke-virtual {v0, v4, v1}, Landroid/icu/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@2d2
    .line 2516
    .end local v22    # "localMillis":J
    .end local v26    # "offsets":[I
    .end local v37    # "copy":Landroid/icu/util/Calendar;
    .end local v52    # "resolvedSavings":I
    .end local v58    # "tz":Landroid/icu/util/TimeZone;
    :cond_18
    if-eqz v53, :cond_19

    #@2d4
    .line 2517
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@2d7
    move-result-object v4

    #@2d8
    move-object/from16 v0, v53

    #@2da
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@2dd
    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@2e0
    move-result-wide v4

    #@2e1
    move-object/from16 v0, v53

    #@2e3
    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@2e6
    .line 2521
    :cond_19
    if-eqz v31, :cond_1a

    #@2e8
    .line 2522
    move-object/from16 v0, p0

    #@2ea
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2ec
    move-object/from16 v0, v31

    #@2ee
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@2f1
    .line 2165
    :cond_1a
    return-void

    #@2f2
    .line 2345
    .end local v59    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v39    # "extra":C
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    #@2f4
    goto/16 :goto_3

    #@2f6
    .line 2416
    .end local v39    # "extra":C
    .restart local v22    # "localMillis":J
    .restart local v26    # "offsets":[I
    .restart local v37    # "copy":Landroid/icu/util/Calendar;
    .restart local v58    # "tz":Landroid/icu/util/TimeZone;
    .restart local v59    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :cond_1c
    const/16 v24, 0x3

    #@2f8
    const/16 v25, 0x3

    #@2fa
    .line 2415
    :try_start_2
    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@2fd
    goto :goto_4

    #@2fe
    .line 2506
    .end local v22    # "localMillis":J
    .end local v26    # "offsets":[I
    .end local v37    # "copy":Landroid/icu/util/Calendar;
    .end local v58    # "tz":Landroid/icu/util/TimeZone;
    .end local v59    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :catch_1
    move-exception v38

    #@2ff
    .line 2507
    .local v38, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p3

    #@301
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@304
    .line 2508
    move-object/from16 v0, p3

    #@306
    move/from16 v1, v55

    #@308
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@30b
    .line 2509
    if-eqz v31, :cond_1d

    #@30d
    .line 2510
    move-object/from16 v0, p0

    #@30f
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@311
    move-object/from16 v0, v31

    #@313
    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@316
    .line 2512
    :cond_1d
    return-void

    #@317
    .line 2421
    .end local v38    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v22    # "localMillis":J
    .restart local v26    # "offsets":[I
    .restart local v37    # "copy":Landroid/icu/util/Calendar;
    .restart local v58    # "tz":Landroid/icu/util/TimeZone;
    .restart local v59    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :cond_1e
    const/4 v4, 0x1

    #@318
    :try_start_3
    move-object/from16 v0, v58

    #@31a
    move-wide/from16 v1, v22

    #@31c
    move-object/from16 v3, v26

    #@31e
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@321
    .line 2423
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@323
    move-object/from16 v0, v59

    #@325
    if-ne v0, v4, :cond_1f

    #@327
    const/4 v4, 0x1

    #@328
    aget v4, v26, v4

    #@32a
    if-eqz v4, :cond_1f

    #@32c
    .line 2430
    :goto_6
    const-wide/32 v4, 0x5265c00

    #@32f
    sub-long v4, v22, v4

    #@331
    const/4 v7, 0x1

    #@332
    move-object/from16 v0, v58

    #@334
    move-object/from16 v1, v26

    #@336
    invoke-virtual {v0, v4, v5, v7, v1}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@339
    goto/16 :goto_4

    #@33b
    .line 2424
    :cond_1f
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@33d
    move-object/from16 v0, v59

    #@33f
    if-ne v0, v4, :cond_16

    #@341
    const/4 v4, 0x1

    #@342
    aget v4, v26, v4

    #@344
    if-nez v4, :cond_16

    #@346
    goto :goto_6

    #@347
    .line 2443
    .restart local v52    # "resolvedSavings":I
    :cond_20
    const/4 v4, 0x1

    #@348
    aget v4, v26, v4

    #@34a
    if-nez v4, :cond_17

    #@34c
    .line 2444
    if-eqz v21, :cond_29

    #@34e
    .line 2445
    const/4 v4, 0x0

    #@34f
    aget v4, v26, v4

    #@351
    int-to-long v4, v4

    #@352
    add-long v56, v22, v4

    #@354
    .line 2448
    .local v56, "time":J
    move-wide/from16 v34, v56

    #@356
    .local v34, "beforeT":J
    move-wide/from16 v28, v56

    #@358
    .line 2449
    .local v28, "afterT":J
    const/16 v32, 0x0

    #@35a
    .local v32, "beforeSav":I
    const/16 v27, 0x0

    #@35c
    .line 2453
    .local v27, "afterSav":I
    :cond_21
    const/4 v4, 0x1

    #@35d
    move-object/from16 v0, v21

    #@35f
    move-wide/from16 v1, v34

    #@361
    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@364
    move-result-object v33

    #@365
    .line 2454
    .local v33, "beforeTrs":Landroid/icu/util/TimeZoneTransition;
    if-nez v33, :cond_23

    #@367
    .line 2466
    :cond_22
    :goto_7
    const/4 v4, 0x0

    #@368
    move-object/from16 v0, v21

    #@36a
    move-wide/from16 v1, v28

    #@36c
    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@36f
    move-result-object v30

    #@370
    .line 2467
    .local v30, "afterTrs":Landroid/icu/util/TimeZoneTransition;
    if-nez v30, :cond_24

    #@372
    .line 2477
    :goto_8
    if-eqz v33, :cond_26

    #@374
    if-eqz v30, :cond_26

    #@376
    .line 2478
    sub-long v4, v56, v34

    #@378
    sub-long v16, v28, v56

    #@37a
    cmp-long v4, v4, v16

    #@37c
    if-lez v4, :cond_25

    #@37e
    .line 2479
    move/from16 v52, v27

    #@380
    .line 2493
    .end local v27    # "afterSav":I
    .end local v28    # "afterT":J
    .end local v30    # "afterTrs":Landroid/icu/util/TimeZoneTransition;
    .end local v32    # "beforeSav":I
    .end local v33    # "beforeTrs":Landroid/icu/util/TimeZoneTransition;
    .end local v34    # "beforeT":J
    .end local v56    # "time":J
    :goto_9
    if-nez v52, :cond_17

    #@382
    .line 2495
    const v52, 0x36ee80

    #@385
    goto/16 :goto_5

    #@387
    .line 2457
    .restart local v27    # "afterSav":I
    .restart local v28    # "afterT":J
    .restart local v32    # "beforeSav":I
    .restart local v33    # "beforeTrs":Landroid/icu/util/TimeZoneTransition;
    .restart local v34    # "beforeT":J
    .restart local v56    # "time":J
    :cond_23
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@38a
    move-result-wide v4

    #@38b
    const-wide/16 v16, 0x1

    #@38d
    sub-long v34, v4, v16

    #@38f
    .line 2458
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@392
    move-result-object v4

    #@393
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@396
    move-result v32

    #@397
    .line 2459
    if-eqz v32, :cond_21

    #@399
    goto :goto_7

    #@39a
    .line 2470
    .restart local v30    # "afterTrs":Landroid/icu/util/TimeZoneTransition;
    :cond_24
    invoke-virtual/range {v30 .. v30}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@39d
    move-result-wide v28

    #@39e
    .line 2471
    invoke-virtual/range {v30 .. v30}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@3a1
    move-result-object v4

    #@3a2
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@3a5
    move-result v27

    #@3a6
    .line 2472
    if-eqz v27, :cond_22

    #@3a8
    goto :goto_8

    #@3a9
    .line 2481
    :cond_25
    move/from16 v52, v32

    #@3ab
    goto :goto_9

    #@3ac
    .line 2483
    :cond_26
    if-eqz v33, :cond_27

    #@3ae
    if-eqz v32, :cond_27

    #@3b0
    .line 2484
    move/from16 v52, v32

    #@3b2
    goto :goto_9

    #@3b3
    .line 2485
    :cond_27
    if-eqz v30, :cond_28

    #@3b5
    if-eqz v27, :cond_28

    #@3b7
    .line 2486
    move/from16 v52, v27

    #@3b9
    .line 2485
    goto :goto_9

    #@3ba
    .line 2488
    :cond_28
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    #@3bd
    move-result v52

    #@3be
    goto :goto_9

    #@3bf
    .line 2491
    .end local v27    # "afterSav":I
    .end local v28    # "afterT":J
    .end local v30    # "afterTrs":Landroid/icu/util/TimeZoneTransition;
    .end local v32    # "beforeSav":I
    .end local v33    # "beforeTrs":Landroid/icu/util/TimeZoneTransition;
    .end local v34    # "beforeT":J
    .end local v56    # "time":J
    :cond_29
    invoke-virtual/range {v58 .. v58}, Landroid/icu/util/TimeZone;->getDSTSavings()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@3c2
    move-result v52

    #@3c3
    goto :goto_9
.end method

.method protected patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1456
    invoke-static {p1}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    #@3
    move-result v0

    #@4
    .line 1457
    .local v0, "patternCharIndex":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 1458
    sget-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    #@9
    aget-object v1, v1, v0

    #@b
    return-object v1

    #@c
    .line 1460
    :cond_0
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1242
    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    #@3
    .line 1241
    return-void
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 1266
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@3
    .line 1267
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@5
    if-nez v0, :cond_1

    #@7
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@9
    if-eq p1, v0, :cond_0

    #@b
    .line 1268
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@d
    if-ne p1, v0, :cond_2

    #@f
    .line 1270
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@11
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@17
    .line 1265
    :cond_1
    return-void

    #@18
    .line 1269
    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@1a
    if-ne p1, v0, :cond_1

    #@1c
    goto :goto_0
.end method

.method public setDateFormatSymbols(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "newFormatSymbols"    # Landroid/icu/text/DateFormatSymbols;

    #@0
    .prologue
    .line 3546
    invoke-virtual {p1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    #@6
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@8
    .line 3544
    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2060
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    #@4
    .line 2061
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    #@7
    .line 2062
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    #@b
    .line 2064
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2065
    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@11
    .line 2067
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2068
    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@17
    .line 2058
    :cond_1
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 6
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "overrideNF"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4049
    invoke-virtual {p2, v5}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    #@4
    .line 4050
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "$"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 4053
    .local v2, "nsName":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@22
    if-nez v3, :cond_0

    #@24
    .line 4054
    new-instance v3, Ljava/util/HashMap;

    #@26
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@29
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@2b
    .line 4056
    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@2d
    if-nez v3, :cond_1

    #@2f
    .line 4057
    new-instance v3, Ljava/util/HashMap;

    #@31
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@34
    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@36
    .line 4061
    :cond_1
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3a
    move-result v3

    #@3b
    if-ge v1, v3, :cond_3

    #@3d
    .line 4062
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v0

    #@41
    .line 4063
    .local v0, "field":C
    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr:"

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@47
    move-result v3

    #@48
    const/4 v4, -0x1

    #@49
    if-ne v3, v4, :cond_2

    #@4b
    .line 4064
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4d
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "Illegal field character \'"

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    const-string/jumbo v5, "\' in setNumberFormat."

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v3

    #@6c
    .line 4066
    :cond_2
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    #@6e
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 4067
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    #@77
    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    .line 4061
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 4072
    .end local v0    # "field":C
    :cond_3
    iput-boolean v5, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@7f
    .line 4048
    return-void
.end method

.method public setTimeZoneFormat(Landroid/icu/text/TimeZoneFormat;)V
    .locals 1
    .param p1, "tzfmt"    # Landroid/icu/text/TimeZoneFormat;

    #@0
    .prologue
    .line 3576
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3578
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@8
    .line 3575
    :goto_0
    return-void

    #@9
    .line 3581
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    #@13
    goto :goto_0
.end method

.method protected subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 9
    .param p1, "ch"    # C
    .param p2, "count"    # I
    .param p3, "beginOffset"    # I
    .param p4, "fieldNum"    # I
    .param p5, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p6, "pos"    # Ljava/text/FieldPosition;
    .param p7, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1497
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p0

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move-object v6, p5

    #@b
    move-object v7, p6

    #@c
    move-object/from16 v8, p7

    #@e
    .line 1498
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    #@11
    .line 1499
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method protected subFormat(CIILjava/text/FieldPosition;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 8
    .param p1, "ch"    # C
    .param p2, "count"    # I
    .param p3, "beginOffset"    # I
    .param p4, "pos"    # Ljava/text/FieldPosition;
    .param p5, "fmtData"    # Landroid/icu/text/DateFormatSymbols;
    .param p6, "cal"    # Landroid/icu/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1481
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@2
    const/4 v4, 0x0

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move-object v6, p4

    #@8
    move-object v7, p6

    #@9
    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V
    .locals 34
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "ch"    # C
    .param p3, "count"    # I
    .param p4, "beginOffset"    # I
    .param p5, "fieldNum"    # I
    .param p6, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p7, "pos"    # Ljava/text/FieldPosition;
    .param p8, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1522
    const v26, 0x7fffffff

    #@3
    .line 1523
    .local v26, "maxIntCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v17

    #@7
    .line 1524
    .local v17, "bufstart":I
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v33

    #@b
    .line 1525
    .local v33, "tz":Landroid/icu/util/TimeZone;
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@e
    move-result-wide v20

    #@f
    .line 1526
    .local v20, "date":J
    const/16 v30, 0x0

    #@11
    .line 1528
    .local v30, "result":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    #@14
    move-result v29

    #@15
    .line 1529
    .local v29, "patternCharIndex":I
    const/4 v4, -0x1

    #@16
    move/from16 v0, v29

    #@18
    if-ne v0, v4, :cond_1

    #@1a
    .line 1530
    const/16 v4, 0x6c

    #@1c
    move/from16 v0, p2

    #@1e
    if-ne v0, v4, :cond_0

    #@20
    .line 1531
    return-void

    #@21
    .line 1533
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v8, "Illegal pattern character \'"

    #@2b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    move/from16 v0, p2

    #@31
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    .line 1534
    const-string/jumbo v8, "\' in \""

    #@38
    .line 1533
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    .line 1535
    move-object/from16 v0, p0

    #@3e
    iget-object v8, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@40
    .line 1533
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 1535
    const/16 v8, 0x22

    #@46
    .line 1533
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v4

    #@52
    .line 1539
    :cond_1
    sget-object v4, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    #@54
    aget v19, v4, v29

    #@56
    .line 1540
    .local v19, "field":I
    const/4 v7, 0x0

    #@57
    .line 1542
    .local v7, "value":I
    if-ltz v19, :cond_2

    #@59
    .line 1543
    const/16 v4, 0x22

    #@5b
    move/from16 v0, v29

    #@5d
    if-eq v0, v4, :cond_8

    #@5f
    move-object/from16 v0, p8

    #@61
    move/from16 v1, v19

    #@63
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@66
    move-result v7

    #@67
    .line 1546
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@69
    move/from16 v1, p2

    #@6b
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    #@6e
    move-result-object v5

    #@6f
    .line 1547
    .local v5, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@71
    .line 1549
    .local v18, "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    packed-switch v29, :pswitch_data_0

    #@74
    .line 1864
    :pswitch_0
    const v9, 0x7fffffff

    #@77
    move-object/from16 v4, p0

    #@79
    move-object/from16 v6, p1

    #@7b
    move/from16 v8, p3

    #@7d
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@80
    .line 1868
    .end local v30    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez p5, :cond_6

    #@82
    if-eqz p6, :cond_6

    #@84
    move-object/from16 v0, p1

    #@86
    move/from16 v1, v17

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->codePointAt(I)I

    #@8b
    move-result v4

    #@8c
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_6

    #@92
    .line 1869
    const/16 v31, 0x0

    #@94
    .line 1870
    .local v31, "titlecase":Z
    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->-getandroid_icu_text_DisplayContextSwitchesValues()[I

    #@97
    move-result-object v4

    #@98
    invoke-virtual/range {p6 .. p6}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@9b
    move-result v6

    #@9c
    aget v4, v4, v6

    #@9e
    packed-switch v4, :pswitch_data_1

    #@a1
    .line 1885
    .end local v31    # "titlecase":Z
    :cond_4
    :goto_2
    if-eqz v31, :cond_6

    #@a3
    .line 1886
    move-object/from16 v0, p0

    #@a5
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@a7
    if-nez v4, :cond_5

    #@a9
    .line 1888
    move-object/from16 v0, p0

    #@ab
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@ad
    invoke-static {v4}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@b0
    move-result-object v4

    #@b1
    move-object/from16 v0, p0

    #@b3
    iput-object v4, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@b5
    .line 1890
    :cond_5
    move-object/from16 v0, p1

    #@b7
    move/from16 v1, v17

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@bc
    move-result-object v22

    #@bd
    .line 1891
    .local v22, "firstField":Ljava/lang/String;
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@c5
    .line 1892
    const/16 v8, 0x300

    #@c7
    .line 1891
    move-object/from16 v0, v22

    #@c9
    invoke-static {v4, v0, v6, v8}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@cc
    move-result-object v23

    #@cd
    .line 1893
    .local v23, "firstFieldTitleCase":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@d0
    move-result v4

    #@d1
    move-object/from16 v0, p1

    #@d3
    move/from16 v1, v17

    #@d5
    move-object/from16 v2, v23

    #@d7
    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    .line 1898
    .end local v22    # "firstField":Ljava/lang/String;
    .end local v23    # "firstFieldTitleCase":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@dd
    move-result v4

    #@de
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    #@e1
    move-result v6

    #@e2
    if-ne v4, v6, :cond_7

    #@e4
    .line 1899
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    #@e7
    move-result v4

    #@e8
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    #@ea
    aget v6, v6, v29

    #@ec
    if-ne v4, v6, :cond_49

    #@ee
    .line 1900
    move-object/from16 v0, p7

    #@f0
    move/from16 v1, p4

    #@f2
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@f5
    .line 1901
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@f8
    move-result v4

    #@f9
    add-int v4, v4, p4

    #@fb
    sub-int v4, v4, v17

    #@fd
    move-object/from16 v0, p7

    #@ff
    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@102
    .line 1520
    :cond_7
    :goto_3
    return-void

    #@103
    .line 1543
    .end local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v18    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .restart local v30    # "result":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getRelatedYear()I

    #@106
    move-result v7

    #@107
    goto/16 :goto_0

    #@109
    .line 1551
    .restart local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v18    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    :pswitch_1
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@10c
    move-result-object v4

    #@10d
    const-string/jumbo v6, "chinese"

    #@110
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v4

    #@114
    if-nez v4, :cond_9

    #@116
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@119
    move-result-object v4

    #@11a
    const-string/jumbo v6, "dangi"

    #@11d
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v4

    #@121
    if-eqz v4, :cond_a

    #@123
    .line 1553
    :cond_9
    const/4 v8, 0x1

    #@124
    const/16 v9, 0x9

    #@126
    move-object/from16 v4, p0

    #@128
    move-object/from16 v6, p1

    #@12a
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@12d
    goto/16 :goto_1

    #@12f
    .line 1555
    :cond_a
    const/4 v4, 0x5

    #@130
    move/from16 v0, p3

    #@132
    if-ne v0, v4, :cond_b

    #@134
    .line 1556
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@138
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@13a
    move-object/from16 v0, p1

    #@13c
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@13f
    .line 1557
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@141
    goto/16 :goto_1

    #@143
    .line 1558
    :cond_b
    const/4 v4, 0x4

    #@144
    move/from16 v0, p3

    #@146
    if-ne v0, v4, :cond_c

    #@148
    .line 1559
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@14c
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@14e
    move-object/from16 v0, p1

    #@150
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@153
    .line 1560
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@155
    goto/16 :goto_1

    #@157
    .line 1562
    :cond_c
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@15b
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@15d
    move-object/from16 v0, p1

    #@15f
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@162
    .line 1563
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@164
    goto/16 :goto_1

    #@166
    .line 1568
    :pswitch_2
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@16a
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@16c
    if-eqz v4, :cond_d

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@172
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@174
    array-length v4, v4

    #@175
    if-gt v7, v4, :cond_d

    #@177
    .line 1569
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@17b
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@17d
    add-int/lit8 v6, v7, -0x1

    #@17f
    move-object/from16 v0, p1

    #@181
    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@184
    goto/16 :goto_1

    #@186
    .line 1575
    :cond_d
    :pswitch_3
    move-object/from16 v0, p0

    #@188
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@18a
    if-eqz v4, :cond_f

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@190
    const-string/jumbo v6, "hebr"

    #@193
    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@196
    move-result v4

    #@197
    if-eqz v4, :cond_e

    #@199
    move-object/from16 v0, p0

    #@19b
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    #@19d
    const-string/jumbo v6, "y=hebr"

    #@1a0
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1a3
    move-result v4

    #@1a4
    if-ltz v4, :cond_f

    #@1a6
    .line 1576
    :cond_e
    const/16 v4, 0x1388

    #@1a8
    if-le v7, v4, :cond_f

    #@1aa
    const/16 v4, 0x1770

    #@1ac
    if-ge v7, v4, :cond_f

    #@1ae
    .line 1577
    add-int/lit16 v7, v7, -0x1388

    #@1b0
    .line 1585
    :cond_f
    const/4 v4, 0x2

    #@1b1
    move/from16 v0, p3

    #@1b3
    if-ne v0, v4, :cond_10

    #@1b5
    .line 1586
    const/4 v8, 0x2

    #@1b6
    const/4 v9, 0x2

    #@1b7
    move-object/from16 v4, p0

    #@1b9
    move-object/from16 v6, p1

    #@1bb
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@1be
    goto/16 :goto_1

    #@1c0
    .line 1588
    :cond_10
    const v9, 0x7fffffff

    #@1c3
    move-object/from16 v4, p0

    #@1c5
    move-object/from16 v6, p1

    #@1c7
    move/from16 v8, p3

    #@1c9
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@1cc
    goto/16 :goto_1

    #@1ce
    .line 1593
    :pswitch_4
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@1d1
    move-result-object v4

    #@1d2
    const-string/jumbo v6, "hebrew"

    #@1d5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d8
    move-result v4

    #@1d9
    if-eqz v4, :cond_12

    #@1db
    .line 1594
    const/4 v4, 0x1

    #@1dc
    move-object/from16 v0, p8

    #@1de
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@1e1
    move-result v4

    #@1e2
    invoke-static {v4}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@1e5
    move-result v24

    #@1e6
    .line 1595
    .local v24, "isLeap":Z
    if-eqz v24, :cond_11

    #@1e8
    const/4 v4, 0x6

    #@1e9
    if-ne v7, v4, :cond_11

    #@1eb
    const/4 v4, 0x3

    #@1ec
    move/from16 v0, p3

    #@1ee
    if-lt v0, v4, :cond_11

    #@1f0
    .line 1596
    const/16 v7, 0xd

    #@1f2
    .line 1598
    :cond_11
    if-nez v24, :cond_12

    #@1f4
    const/4 v4, 0x6

    #@1f5
    if-lt v7, v4, :cond_12

    #@1f7
    const/4 v4, 0x3

    #@1f8
    move/from16 v0, p3

    #@1fa
    if-ge v0, v4, :cond_12

    #@1fc
    .line 1599
    add-int/lit8 v7, v7, -0x1

    #@1fe
    .line 1602
    .end local v24    # "isLeap":Z
    :cond_12
    move-object/from16 v0, p0

    #@200
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@202
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@204
    if-eqz v4, :cond_13

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@20a
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@20c
    array-length v4, v4

    #@20d
    const/4 v6, 0x7

    #@20e
    if-lt v4, v6, :cond_13

    #@210
    .line 1603
    const/16 v4, 0x16

    #@212
    move-object/from16 v0, p8

    #@214
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@217
    move-result v25

    #@218
    .line 1605
    .local v25, "isLeapMonth":I
    :goto_4
    const/4 v4, 0x5

    #@219
    move/from16 v0, p3

    #@21b
    if-ne v0, v4, :cond_17

    #@21d
    .line 1606
    const/4 v4, 0x2

    #@21e
    move/from16 v0, v29

    #@220
    if-ne v0, v4, :cond_15

    #@222
    .line 1607
    move-object/from16 v0, p0

    #@224
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@226
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@228
    if-eqz v25, :cond_14

    #@22a
    move-object/from16 v0, p0

    #@22c
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@22e
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@230
    const/4 v8, 0x2

    #@231
    aget-object v4, v4, v8

    #@233
    :goto_5
    move-object/from16 v0, p1

    #@235
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@238
    .line 1611
    :goto_6
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@23a
    goto/16 :goto_1

    #@23c
    .line 1603
    .end local v25    # "isLeapMonth":I
    :cond_13
    const/16 v25, 0x0

    #@23e
    .restart local v25    # "isLeapMonth":I
    goto :goto_4

    #@23f
    .line 1607
    :cond_14
    const/4 v4, 0x0

    #@240
    goto :goto_5

    #@241
    .line 1609
    :cond_15
    move-object/from16 v0, p0

    #@243
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@245
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@247
    if-eqz v25, :cond_16

    #@249
    move-object/from16 v0, p0

    #@24b
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@24d
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@24f
    const/4 v8, 0x5

    #@250
    aget-object v4, v4, v8

    #@252
    :goto_7
    move-object/from16 v0, p1

    #@254
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@257
    goto :goto_6

    #@258
    :cond_16
    const/4 v4, 0x0

    #@259
    goto :goto_7

    #@25a
    .line 1612
    :cond_17
    const/4 v4, 0x4

    #@25b
    move/from16 v0, p3

    #@25d
    if-ne v0, v4, :cond_1b

    #@25f
    .line 1613
    const/4 v4, 0x2

    #@260
    move/from16 v0, v29

    #@262
    if-ne v0, v4, :cond_19

    #@264
    .line 1614
    move-object/from16 v0, p0

    #@266
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@268
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@26a
    if-eqz v25, :cond_18

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@270
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@272
    const/4 v8, 0x0

    #@273
    aget-object v4, v4, v8

    #@275
    :goto_8
    move-object/from16 v0, p1

    #@277
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@27a
    .line 1615
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@27c
    goto/16 :goto_1

    #@27e
    .line 1614
    :cond_18
    const/4 v4, 0x0

    #@27f
    goto :goto_8

    #@280
    .line 1617
    :cond_19
    move-object/from16 v0, p0

    #@282
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@284
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@286
    if-eqz v25, :cond_1a

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@28c
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@28e
    const/4 v8, 0x3

    #@28f
    aget-object v4, v4, v8

    #@291
    :goto_9
    move-object/from16 v0, p1

    #@293
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@296
    .line 1618
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@298
    goto/16 :goto_1

    #@29a
    .line 1617
    :cond_1a
    const/4 v4, 0x0

    #@29b
    goto :goto_9

    #@29c
    .line 1620
    :cond_1b
    const/4 v4, 0x3

    #@29d
    move/from16 v0, p3

    #@29f
    if-ne v0, v4, :cond_1f

    #@2a1
    .line 1621
    const/4 v4, 0x2

    #@2a2
    move/from16 v0, v29

    #@2a4
    if-ne v0, v4, :cond_1d

    #@2a6
    .line 1622
    move-object/from16 v0, p0

    #@2a8
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2aa
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2ac
    if-eqz v25, :cond_1c

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2b2
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@2b4
    const/4 v8, 0x1

    #@2b5
    aget-object v4, v4, v8

    #@2b7
    :goto_a
    move-object/from16 v0, p1

    #@2b9
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@2bc
    .line 1623
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@2be
    goto/16 :goto_1

    #@2c0
    .line 1622
    :cond_1c
    const/4 v4, 0x0

    #@2c1
    goto :goto_a

    #@2c2
    .line 1625
    :cond_1d
    move-object/from16 v0, p0

    #@2c4
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2c6
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@2c8
    if-eqz v25, :cond_1e

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2ce
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@2d0
    const/4 v8, 0x4

    #@2d1
    aget-object v4, v4, v8

    #@2d3
    :goto_b
    move-object/from16 v0, p1

    #@2d5
    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@2d8
    .line 1626
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@2da
    goto/16 :goto_1

    #@2dc
    .line 1625
    :cond_1e
    const/4 v4, 0x0

    #@2dd
    goto :goto_b

    #@2de
    .line 1629
    :cond_1f
    new-instance v10, Ljava/lang/StringBuffer;

    #@2e0
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    #@2e3
    .line 1630
    .local v10, "monthNumber":Ljava/lang/StringBuffer;
    add-int/lit8 v11, v7, 0x1

    #@2e5
    const v13, 0x7fffffff

    #@2e8
    move-object/from16 v8, p0

    #@2ea
    move-object v9, v5

    #@2eb
    move/from16 v12, p3

    #@2ed
    invoke-virtual/range {v8 .. v13}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@2f0
    .line 1631
    const/4 v4, 0x1

    #@2f1
    new-array v0, v4, [Ljava/lang/String;

    #@2f3
    move-object/from16 v27, v0

    #@2f5
    .line 1632
    .local v27, "monthNumberStrings":[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f8
    move-result-object v4

    #@2f9
    const/4 v6, 0x0

    #@2fa
    aput-object v4, v27, v6

    #@2fc
    .line 1633
    if-eqz v25, :cond_20

    #@2fe
    move-object/from16 v0, p0

    #@300
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@302
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@304
    const/4 v6, 0x6

    #@305
    aget-object v4, v4, v6

    #@307
    :goto_c
    const/4 v6, 0x0

    #@308
    move-object/from16 v0, v27

    #@30a
    move-object/from16 v1, p1

    #@30c
    invoke-static {v0, v6, v1, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    #@30f
    goto/16 :goto_1

    #@311
    :cond_20
    const/4 v4, 0x0

    #@312
    goto :goto_c

    #@313
    .line 1637
    .end local v10    # "monthNumber":Ljava/lang/StringBuffer;
    .end local v25    # "isLeapMonth":I
    .end local v27    # "monthNumberStrings":[Ljava/lang/String;
    :pswitch_5
    if-nez v7, :cond_21

    #@315
    .line 1639
    const/16 v4, 0xb

    #@317
    move-object/from16 v0, p8

    #@319
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@31c
    move-result v4

    #@31d
    add-int/lit8 v14, v4, 0x1

    #@31f
    .line 1640
    const v16, 0x7fffffff

    #@322
    move-object/from16 v11, p0

    #@324
    move-object v12, v5

    #@325
    move-object/from16 v13, p1

    #@327
    move/from16 v15, p3

    #@329
    .line 1638
    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@32c
    goto/16 :goto_1

    #@32e
    .line 1642
    :cond_21
    const v9, 0x7fffffff

    #@331
    move-object/from16 v4, p0

    #@333
    move-object/from16 v6, p1

    #@335
    move/from16 v8, p3

    #@337
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@33a
    goto/16 :goto_1

    #@33c
    .line 1648
    :pswitch_6
    move-object/from16 v0, p0

    #@33e
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@340
    const/4 v6, 0x3

    #@341
    move/from16 v0, p3

    #@343
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@346
    move-result v6

    #@347
    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@34a
    .line 1649
    move-object/from16 v0, p0

    #@34c
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@34e
    const v6, 0x7fffffff

    #@351
    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@354
    .line 1650
    const/4 v4, 0x1

    #@355
    move/from16 v0, p3

    #@357
    if-ne v0, v4, :cond_23

    #@359
    .line 1651
    div-int/lit8 v7, v7, 0x64

    #@35b
    .line 1655
    :cond_22
    :goto_d
    new-instance v28, Ljava/text/FieldPosition;

    #@35d
    const/4 v4, -0x1

    #@35e
    move-object/from16 v0, v28

    #@360
    invoke-direct {v0, v4}, Ljava/text/FieldPosition;-><init>(I)V

    #@363
    .line 1656
    .local v28, "p":Ljava/text/FieldPosition;
    move-object/from16 v0, p0

    #@365
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@367
    int-to-long v8, v7

    #@368
    move-object/from16 v0, p1

    #@36a
    move-object/from16 v1, v28

    #@36c
    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@36f
    .line 1657
    const/4 v4, 0x3

    #@370
    move/from16 v0, p3

    #@372
    if-le v0, v4, :cond_3

    #@374
    .line 1658
    move-object/from16 v0, p0

    #@376
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@378
    add-int/lit8 v6, p3, -0x3

    #@37a
    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@37d
    .line 1659
    move-object/from16 v0, p0

    #@37f
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@381
    const-wide/16 v8, 0x0

    #@383
    move-object/from16 v0, p1

    #@385
    move-object/from16 v1, v28

    #@387
    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@38a
    goto/16 :goto_1

    #@38c
    .line 1652
    .end local v28    # "p":Ljava/text/FieldPosition;
    :cond_23
    const/4 v4, 0x2

    #@38d
    move/from16 v0, p3

    #@38f
    if-ne v0, v4, :cond_22

    #@391
    .line 1653
    div-int/lit8 v7, v7, 0xa

    #@393
    goto :goto_d

    #@394
    .line 1664
    :pswitch_7
    const/4 v4, 0x3

    #@395
    move/from16 v0, p3

    #@397
    if-ge v0, v4, :cond_24

    #@399
    .line 1665
    const v9, 0x7fffffff

    #@39c
    move-object/from16 v4, p0

    #@39e
    move-object/from16 v6, p1

    #@3a0
    move/from16 v8, p3

    #@3a2
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@3a5
    goto/16 :goto_1

    #@3a7
    .line 1670
    :cond_24
    const/4 v4, 0x7

    #@3a8
    move-object/from16 v0, p8

    #@3aa
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@3ad
    move-result v7

    #@3ae
    .line 1673
    :pswitch_8
    const/4 v4, 0x5

    #@3af
    move/from16 v0, p3

    #@3b1
    if-ne v0, v4, :cond_25

    #@3b3
    .line 1674
    move-object/from16 v0, p0

    #@3b5
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3b7
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@3b9
    move-object/from16 v0, p1

    #@3bb
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@3be
    .line 1675
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@3c0
    goto/16 :goto_1

    #@3c2
    .line 1676
    :cond_25
    const/4 v4, 0x4

    #@3c3
    move/from16 v0, p3

    #@3c5
    if-ne v0, v4, :cond_26

    #@3c7
    .line 1677
    move-object/from16 v0, p0

    #@3c9
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3cb
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@3cd
    move-object/from16 v0, p1

    #@3cf
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@3d2
    .line 1678
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@3d4
    goto/16 :goto_1

    #@3d6
    .line 1679
    :cond_26
    const/4 v4, 0x6

    #@3d7
    move/from16 v0, p3

    #@3d9
    if-ne v0, v4, :cond_27

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3df
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@3e1
    if-eqz v4, :cond_27

    #@3e3
    .line 1680
    move-object/from16 v0, p0

    #@3e5
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3e7
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@3e9
    move-object/from16 v0, p1

    #@3eb
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@3ee
    .line 1681
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@3f0
    goto/16 :goto_1

    #@3f2
    .line 1683
    :cond_27
    move-object/from16 v0, p0

    #@3f4
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@3f6
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@3f8
    move-object/from16 v0, p1

    #@3fa
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@3fd
    .line 1684
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@3ff
    goto/16 :goto_1

    #@401
    .line 1689
    :pswitch_9
    const/4 v4, 0x5

    #@402
    move/from16 v0, p3

    #@404
    if-lt v0, v4, :cond_28

    #@406
    move-object/from16 v0, p0

    #@408
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@40a
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@40c
    if-nez v4, :cond_29

    #@40e
    .line 1690
    :cond_28
    move-object/from16 v0, p0

    #@410
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@412
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@414
    move-object/from16 v0, p1

    #@416
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@419
    goto/16 :goto_1

    #@41b
    .line 1692
    :cond_29
    move-object/from16 v0, p0

    #@41d
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@41f
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@421
    move-object/from16 v0, p1

    #@423
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@426
    goto/16 :goto_1

    #@428
    .line 1696
    :pswitch_a
    if-nez v7, :cond_2a

    #@42a
    .line 1698
    const/16 v4, 0xa

    #@42c
    move-object/from16 v0, p8

    #@42e
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    #@431
    move-result v4

    #@432
    add-int/lit8 v14, v4, 0x1

    #@434
    .line 1699
    const v16, 0x7fffffff

    #@437
    move-object/from16 v11, p0

    #@439
    move-object v12, v5

    #@43a
    move-object/from16 v13, p1

    #@43c
    move/from16 v15, p3

    #@43e
    .line 1697
    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@441
    goto/16 :goto_1

    #@443
    .line 1701
    :cond_2a
    const v9, 0x7fffffff

    #@446
    move-object/from16 v4, p0

    #@448
    move-object/from16 v6, p1

    #@44a
    move/from16 v8, p3

    #@44c
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@44f
    goto/16 :goto_1

    #@451
    .line 1706
    :pswitch_b
    const/4 v4, 0x4

    #@452
    move/from16 v0, p3

    #@454
    if-ge v0, v4, :cond_2b

    #@456
    .line 1708
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@459
    move-result-object v4

    #@45a
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@45c
    move-object/from16 v0, v33

    #@45e
    move-wide/from16 v1, v20

    #@460
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@463
    move-result-object v30

    #@464
    .line 1709
    .local v30, "result":Ljava/lang/String;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@466
    .line 1714
    :goto_e
    move-object/from16 v0, p1

    #@468
    move-object/from16 v1, v30

    #@46a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46d
    goto/16 :goto_1

    #@46f
    .line 1711
    .local v30, "result":Ljava/lang/String;
    :cond_2b
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@472
    move-result-object v4

    #@473
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@475
    move-object/from16 v0, v33

    #@477
    move-wide/from16 v1, v20

    #@479
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@47c
    move-result-object v30

    #@47d
    .line 1712
    .local v30, "result":Ljava/lang/String;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@47f
    goto :goto_e

    #@480
    .line 1717
    .local v30, "result":Ljava/lang/String;
    :pswitch_c
    const/4 v4, 0x4

    #@481
    move/from16 v0, p3

    #@483
    if-ge v0, v4, :cond_2c

    #@485
    .line 1719
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@488
    move-result-object v4

    #@489
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@48b
    move-object/from16 v0, v33

    #@48d
    move-wide/from16 v1, v20

    #@48f
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@492
    move-result-object v30

    #@493
    .line 1727
    .local v30, "result":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p1

    #@495
    move-object/from16 v1, v30

    #@497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49a
    goto/16 :goto_1

    #@49c
    .line 1720
    .local v30, "result":Ljava/lang/String;
    :cond_2c
    const/4 v4, 0x5

    #@49d
    move/from16 v0, p3

    #@49f
    if-ne v0, v4, :cond_2d

    #@4a1
    .line 1722
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@4a4
    move-result-object v4

    #@4a5
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@4a7
    move-object/from16 v0, v33

    #@4a9
    move-wide/from16 v1, v20

    #@4ab
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@4ae
    move-result-object v30

    #@4af
    .local v30, "result":Ljava/lang/String;
    goto :goto_f

    #@4b0
    .line 1725
    .local v30, "result":Ljava/lang/String;
    :cond_2d
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@4b3
    move-result-object v4

    #@4b4
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@4b6
    move-object/from16 v0, v33

    #@4b8
    move-wide/from16 v1, v20

    #@4ba
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@4bd
    move-result-object v30

    #@4be
    .local v30, "result":Ljava/lang/String;
    goto :goto_f

    #@4bf
    .line 1730
    .local v30, "result":Ljava/lang/String;
    :pswitch_d
    const/4 v4, 0x1

    #@4c0
    move/from16 v0, p3

    #@4c2
    if-ne v0, v4, :cond_2f

    #@4c4
    .line 1732
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@4c7
    move-result-object v4

    #@4c8
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@4ca
    move-object/from16 v0, v33

    #@4cc
    move-wide/from16 v1, v20

    #@4ce
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@4d1
    move-result-object v30

    #@4d2
    .line 1733
    .local v30, "result":Ljava/lang/String;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@4d4
    .line 1739
    .end local v30    # "result":Ljava/lang/String;
    :cond_2e
    :goto_10
    move-object/from16 v0, p1

    #@4d6
    move-object/from16 v1, v30

    #@4d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4db
    goto/16 :goto_1

    #@4dd
    .line 1734
    .local v30, "result":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x4

    #@4de
    move/from16 v0, p3

    #@4e0
    if-ne v0, v4, :cond_2e

    #@4e2
    .line 1736
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@4e5
    move-result-object v4

    #@4e6
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@4e8
    move-object/from16 v0, v33

    #@4ea
    move-wide/from16 v1, v20

    #@4ec
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@4ef
    move-result-object v30

    #@4f0
    .line 1737
    .local v30, "result":Ljava/lang/String;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@4f2
    goto :goto_10

    #@4f3
    .line 1742
    .local v30, "result":Ljava/lang/String;
    :pswitch_e
    const/4 v4, 0x1

    #@4f4
    move/from16 v0, p3

    #@4f6
    if-ne v0, v4, :cond_31

    #@4f8
    .line 1744
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@4fb
    move-result-object v4

    #@4fc
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@4fe
    move-object/from16 v0, v33

    #@500
    move-wide/from16 v1, v20

    #@502
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@505
    move-result-object v30

    #@506
    .line 1756
    .end local v30    # "result":Ljava/lang/String;
    :cond_30
    :goto_11
    move-object/from16 v0, p1

    #@508
    move-object/from16 v1, v30

    #@50a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50d
    goto/16 :goto_1

    #@50f
    .line 1745
    .restart local v30    # "result":Ljava/lang/String;
    :cond_31
    const/4 v4, 0x2

    #@510
    move/from16 v0, p3

    #@512
    if-ne v0, v4, :cond_32

    #@514
    .line 1747
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@517
    move-result-object v4

    #@518
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@51a
    move-object/from16 v0, v33

    #@51c
    move-wide/from16 v1, v20

    #@51e
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@521
    move-result-object v30

    #@522
    .local v30, "result":Ljava/lang/String;
    goto :goto_11

    #@523
    .line 1748
    .local v30, "result":Ljava/lang/String;
    :cond_32
    const/4 v4, 0x3

    #@524
    move/from16 v0, p3

    #@526
    if-ne v0, v4, :cond_33

    #@528
    .line 1750
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@52b
    move-result-object v4

    #@52c
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@52e
    move-object/from16 v0, v33

    #@530
    move-wide/from16 v1, v20

    #@532
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@535
    move-result-object v30

    #@536
    .local v30, "result":Ljava/lang/String;
    goto :goto_11

    #@537
    .line 1751
    .local v30, "result":Ljava/lang/String;
    :cond_33
    const/4 v4, 0x4

    #@538
    move/from16 v0, p3

    #@53a
    if-ne v0, v4, :cond_30

    #@53c
    .line 1753
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@53f
    move-result-object v4

    #@540
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@542
    move-object/from16 v0, v33

    #@544
    move-wide/from16 v1, v20

    #@546
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@549
    move-result-object v30

    #@54a
    .line 1754
    .local v30, "result":Ljava/lang/String;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@54c
    goto :goto_11

    #@54d
    .line 1759
    .local v30, "result":Ljava/lang/String;
    :pswitch_f
    const/4 v4, 0x1

    #@54e
    move/from16 v0, p3

    #@550
    if-ne v0, v4, :cond_35

    #@552
    .line 1761
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@555
    move-result-object v4

    #@556
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@558
    move-object/from16 v0, v33

    #@55a
    move-wide/from16 v1, v20

    #@55c
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@55f
    move-result-object v30

    #@560
    .line 1766
    .end local v30    # "result":Ljava/lang/String;
    :cond_34
    :goto_12
    move-object/from16 v0, p1

    #@562
    move-object/from16 v1, v30

    #@564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@567
    goto/16 :goto_1

    #@569
    .line 1762
    .restart local v30    # "result":Ljava/lang/String;
    :cond_35
    const/4 v4, 0x4

    #@56a
    move/from16 v0, p3

    #@56c
    if-ne v0, v4, :cond_34

    #@56e
    .line 1764
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@571
    move-result-object v4

    #@572
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@574
    move-object/from16 v0, v33

    #@576
    move-wide/from16 v1, v20

    #@578
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@57b
    move-result-object v30

    #@57c
    .local v30, "result":Ljava/lang/String;
    goto :goto_12

    #@57d
    .line 1769
    .local v30, "result":Ljava/lang/String;
    :pswitch_10
    const/4 v4, 0x1

    #@57e
    move/from16 v0, p3

    #@580
    if-ne v0, v4, :cond_37

    #@582
    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@585
    move-result-object v4

    #@586
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@588
    move-object/from16 v0, v33

    #@58a
    move-wide/from16 v1, v20

    #@58c
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@58f
    move-result-object v30

    #@590
    .line 1785
    .end local v30    # "result":Ljava/lang/String;
    :cond_36
    :goto_13
    move-object/from16 v0, p1

    #@592
    move-object/from16 v1, v30

    #@594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@597
    goto/16 :goto_1

    #@599
    .line 1772
    .restart local v30    # "result":Ljava/lang/String;
    :cond_37
    const/4 v4, 0x2

    #@59a
    move/from16 v0, p3

    #@59c
    if-ne v0, v4, :cond_38

    #@59e
    .line 1774
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5a1
    move-result-object v4

    #@5a2
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@5a4
    move-object/from16 v0, v33

    #@5a6
    move-wide/from16 v1, v20

    #@5a8
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@5ab
    move-result-object v30

    #@5ac
    .local v30, "result":Ljava/lang/String;
    goto :goto_13

    #@5ad
    .line 1775
    .local v30, "result":Ljava/lang/String;
    :cond_38
    const/4 v4, 0x3

    #@5ae
    move/from16 v0, p3

    #@5b0
    if-ne v0, v4, :cond_39

    #@5b2
    .line 1777
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5b5
    move-result-object v4

    #@5b6
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@5b8
    move-object/from16 v0, v33

    #@5ba
    move-wide/from16 v1, v20

    #@5bc
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@5bf
    move-result-object v30

    #@5c0
    .local v30, "result":Ljava/lang/String;
    goto :goto_13

    #@5c1
    .line 1778
    .local v30, "result":Ljava/lang/String;
    :cond_39
    const/4 v4, 0x4

    #@5c2
    move/from16 v0, p3

    #@5c4
    if-ne v0, v4, :cond_3a

    #@5c6
    .line 1780
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5c9
    move-result-object v4

    #@5ca
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@5cc
    move-object/from16 v0, v33

    #@5ce
    move-wide/from16 v1, v20

    #@5d0
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@5d3
    move-result-object v30

    #@5d4
    .local v30, "result":Ljava/lang/String;
    goto :goto_13

    #@5d5
    .line 1781
    .local v30, "result":Ljava/lang/String;
    :cond_3a
    const/4 v4, 0x5

    #@5d6
    move/from16 v0, p3

    #@5d8
    if-ne v0, v4, :cond_36

    #@5da
    .line 1783
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5dd
    move-result-object v4

    #@5de
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@5e0
    move-object/from16 v0, v33

    #@5e2
    move-wide/from16 v1, v20

    #@5e4
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@5e7
    move-result-object v30

    #@5e8
    .local v30, "result":Ljava/lang/String;
    goto :goto_13

    #@5e9
    .line 1788
    .local v30, "result":Ljava/lang/String;
    :pswitch_11
    const/4 v4, 0x1

    #@5ea
    move/from16 v0, p3

    #@5ec
    if-ne v0, v4, :cond_3c

    #@5ee
    .line 1790
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@5f1
    move-result-object v4

    #@5f2
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@5f4
    move-object/from16 v0, v33

    #@5f6
    move-wide/from16 v1, v20

    #@5f8
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@5fb
    move-result-object v30

    #@5fc
    .line 1804
    .end local v30    # "result":Ljava/lang/String;
    :cond_3b
    :goto_14
    move-object/from16 v0, p1

    #@5fe
    move-object/from16 v1, v30

    #@600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@603
    goto/16 :goto_1

    #@605
    .line 1791
    .restart local v30    # "result":Ljava/lang/String;
    :cond_3c
    const/4 v4, 0x2

    #@606
    move/from16 v0, p3

    #@608
    if-ne v0, v4, :cond_3d

    #@60a
    .line 1793
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@60d
    move-result-object v4

    #@60e
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@610
    move-object/from16 v0, v33

    #@612
    move-wide/from16 v1, v20

    #@614
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@617
    move-result-object v30

    #@618
    .local v30, "result":Ljava/lang/String;
    goto :goto_14

    #@619
    .line 1794
    .local v30, "result":Ljava/lang/String;
    :cond_3d
    const/4 v4, 0x3

    #@61a
    move/from16 v0, p3

    #@61c
    if-ne v0, v4, :cond_3e

    #@61e
    .line 1796
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@621
    move-result-object v4

    #@622
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@624
    move-object/from16 v0, v33

    #@626
    move-wide/from16 v1, v20

    #@628
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@62b
    move-result-object v30

    #@62c
    .local v30, "result":Ljava/lang/String;
    goto :goto_14

    #@62d
    .line 1797
    .local v30, "result":Ljava/lang/String;
    :cond_3e
    const/4 v4, 0x4

    #@62e
    move/from16 v0, p3

    #@630
    if-ne v0, v4, :cond_3f

    #@632
    .line 1799
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@635
    move-result-object v4

    #@636
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@638
    move-object/from16 v0, v33

    #@63a
    move-wide/from16 v1, v20

    #@63c
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@63f
    move-result-object v30

    #@640
    .local v30, "result":Ljava/lang/String;
    goto :goto_14

    #@641
    .line 1800
    .local v30, "result":Ljava/lang/String;
    :cond_3f
    const/4 v4, 0x5

    #@642
    move/from16 v0, p3

    #@644
    if-ne v0, v4, :cond_3b

    #@646
    .line 1802
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    #@649
    move-result-object v4

    #@64a
    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@64c
    move-object/from16 v0, v33

    #@64e
    move-wide/from16 v1, v20

    #@650
    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    #@653
    move-result-object v30

    #@654
    .local v30, "result":Ljava/lang/String;
    goto :goto_14

    #@655
    .line 1808
    .local v30, "result":Ljava/lang/String;
    :pswitch_12
    const/4 v4, 0x3

    #@656
    move/from16 v0, p3

    #@658
    if-ge v0, v4, :cond_40

    #@65a
    .line 1809
    const/4 v8, 0x1

    #@65b
    const v9, 0x7fffffff

    #@65e
    move-object/from16 v4, p0

    #@660
    move-object/from16 v6, p1

    #@662
    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@665
    goto/16 :goto_1

    #@667
    .line 1814
    :cond_40
    const/4 v4, 0x7

    #@668
    move-object/from16 v0, p8

    #@66a
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@66d
    move-result v7

    #@66e
    .line 1815
    const/4 v4, 0x5

    #@66f
    move/from16 v0, p3

    #@671
    if-ne v0, v4, :cond_41

    #@673
    .line 1816
    move-object/from16 v0, p0

    #@675
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@677
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@679
    move-object/from16 v0, p1

    #@67b
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@67e
    .line 1817
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@680
    goto/16 :goto_1

    #@682
    .line 1818
    :cond_41
    const/4 v4, 0x4

    #@683
    move/from16 v0, p3

    #@685
    if-ne v0, v4, :cond_42

    #@687
    .line 1819
    move-object/from16 v0, p0

    #@689
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@68b
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@68d
    move-object/from16 v0, p1

    #@68f
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@692
    .line 1820
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@694
    goto/16 :goto_1

    #@696
    .line 1821
    :cond_42
    const/4 v4, 0x6

    #@697
    move/from16 v0, p3

    #@699
    if-ne v0, v4, :cond_43

    #@69b
    move-object/from16 v0, p0

    #@69d
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@69f
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@6a1
    if-eqz v4, :cond_43

    #@6a3
    .line 1822
    move-object/from16 v0, p0

    #@6a5
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@6a7
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@6a9
    move-object/from16 v0, p1

    #@6ab
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@6ae
    .line 1823
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@6b0
    goto/16 :goto_1

    #@6b2
    .line 1825
    :cond_43
    move-object/from16 v0, p0

    #@6b4
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@6b6
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@6b8
    move-object/from16 v0, p1

    #@6ba
    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@6bd
    .line 1826
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@6bf
    goto/16 :goto_1

    #@6c1
    .line 1830
    :pswitch_13
    const/4 v4, 0x4

    #@6c2
    move/from16 v0, p3

    #@6c4
    if-lt v0, v4, :cond_44

    #@6c6
    .line 1831
    move-object/from16 v0, p0

    #@6c8
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@6ca
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@6cc
    div-int/lit8 v6, v7, 0x3

    #@6ce
    move-object/from16 v0, p1

    #@6d0
    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@6d3
    goto/16 :goto_1

    #@6d5
    .line 1832
    :cond_44
    const/4 v4, 0x3

    #@6d6
    move/from16 v0, p3

    #@6d8
    if-ne v0, v4, :cond_45

    #@6da
    .line 1833
    move-object/from16 v0, p0

    #@6dc
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@6de
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@6e0
    div-int/lit8 v6, v7, 0x3

    #@6e2
    move-object/from16 v0, p1

    #@6e4
    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@6e7
    goto/16 :goto_1

    #@6e9
    .line 1835
    :cond_45
    div-int/lit8 v4, v7, 0x3

    #@6eb
    add-int/lit8 v14, v4, 0x1

    #@6ed
    const v16, 0x7fffffff

    #@6f0
    move-object/from16 v11, p0

    #@6f2
    move-object v12, v5

    #@6f3
    move-object/from16 v13, p1

    #@6f5
    move/from16 v15, p3

    #@6f7
    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@6fa
    goto/16 :goto_1

    #@6fc
    .line 1839
    :pswitch_14
    const/4 v4, 0x4

    #@6fd
    move/from16 v0, p3

    #@6ff
    if-lt v0, v4, :cond_46

    #@701
    .line 1840
    move-object/from16 v0, p0

    #@703
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@705
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@707
    div-int/lit8 v6, v7, 0x3

    #@709
    move-object/from16 v0, p1

    #@70b
    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@70e
    goto/16 :goto_1

    #@710
    .line 1841
    :cond_46
    const/4 v4, 0x3

    #@711
    move/from16 v0, p3

    #@713
    if-ne v0, v4, :cond_47

    #@715
    .line 1842
    move-object/from16 v0, p0

    #@717
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@719
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@71b
    div-int/lit8 v6, v7, 0x3

    #@71d
    move-object/from16 v0, p1

    #@71f
    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    #@722
    goto/16 :goto_1

    #@724
    .line 1844
    :cond_47
    div-int/lit8 v4, v7, 0x3

    #@726
    add-int/lit8 v14, v4, 0x1

    #@728
    const v16, 0x7fffffff

    #@72b
    move-object/from16 v11, p0

    #@72d
    move-object v12, v5

    #@72e
    move-object/from16 v13, p1

    #@730
    move/from16 v15, p3

    #@732
    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    #@735
    goto/16 :goto_1

    #@737
    .line 1848
    :pswitch_15
    move-object/from16 v0, p0

    #@739
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@73b
    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    #@73e
    move-result-object v4

    #@73f
    move-object/from16 v0, p1

    #@741
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@744
    goto/16 :goto_1

    #@746
    .line 1872
    .end local v30    # "result":Ljava/lang/String;
    .restart local v31    # "titlecase":Z
    :pswitch_16
    const/16 v31, 0x1

    #@748
    .line 1873
    goto/16 :goto_2

    #@74a
    .line 1876
    :pswitch_17
    move-object/from16 v0, p0

    #@74c
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@74e
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@750
    if-eqz v4, :cond_4

    #@752
    .line 1877
    move-object/from16 v0, p0

    #@754
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@756
    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@758
    move-object/from16 v0, v18

    #@75a
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@75d
    move-result-object v32

    #@75e
    check-cast v32, [Z

    #@760
    .line 1878
    .local v32, "transforms":[Z
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@762
    move-object/from16 v0, p6

    #@764
    if-ne v0, v4, :cond_48

    #@766
    .line 1879
    const/4 v4, 0x0

    #@767
    aget-boolean v31, v32, v4

    #@769
    .local v31, "titlecase":Z
    goto/16 :goto_2

    #@76b
    .local v31, "titlecase":Z
    :cond_48
    const/4 v4, 0x1

    #@76c
    aget-boolean v31, v32, v4

    #@76e
    .local v31, "titlecase":Z
    goto/16 :goto_2

    #@770
    .line 1902
    .end local v31    # "titlecase":Z
    .end local v32    # "transforms":[Z
    :cond_49
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@773
    move-result-object v4

    #@774
    .line 1903
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    #@776
    aget-object v6, v6, v29

    #@778
    .line 1902
    if-ne v4, v6, :cond_7

    #@77a
    .line 1904
    move-object/from16 v0, p7

    #@77c
    move/from16 v1, p4

    #@77e
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@781
    .line 1905
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@784
    move-result v4

    #@785
    add-int v4, v4, p4

    #@787
    sub-int v4, v4, v17

    #@789
    move-object/from16 v0, p7

    #@78b
    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@78e
    goto/16 :goto_3

    #@790
    .line 1549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_15
    .end packed-switch

    #@7dc
    .line 1870
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "ch"    # C
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "allowNegative"    # Z
    .param p7, "ambiguousYear"    # [Z
    .param p8, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 2793
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move/from16 v5, p5

    #@9
    move/from16 v6, p6

    #@b
    move-object/from16 v7, p7

    #@d
    move-object/from16 v8, p8

    #@f
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3500
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    .line 3501
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr:"

    #@5
    .line 3502
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@7
    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@9
    .line 3500
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3492
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected zeroPaddingNumber(JII)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # J
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I

    #@0
    .prologue
    .line 2140
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    invoke-virtual {v0, p3}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@5
    .line 2141
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@7
    invoke-virtual {v0, p4}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@a
    .line 2142
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 4
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "value"    # I
    .param p4, "minDigits"    # I
    .param p5, "maxDigits"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2042
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p3, :cond_0

    #@6
    .line 2043
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    #@9
    .line 2038
    :goto_0
    return-void

    #@a
    .line 2045
    :cond_0
    invoke-virtual {p1, p4}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@d
    .line 2046
    invoke-virtual {p1, p5}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@10
    .line 2047
    int-to-long v0, p3

    #@11
    new-instance v2, Ljava/text/FieldPosition;

    #@13
    const/4 v3, -0x1

    #@14
    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    #@17
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@1a
    goto :goto_0
.end method
