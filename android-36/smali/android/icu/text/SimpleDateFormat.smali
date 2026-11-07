.class public Landroid/icu/text/SimpleDateFormat;
.super Landroid/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SimpleDateFormat$PatternItem;,
        Landroid/icu/text/SimpleDateFormat$ContextValue;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CALENDAR_FIELD_TO_LEVEL:[I

.field static final greylist-max-o DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

.field private static final greylist-max-o DECIMAL_BUF_SIZE:I = 0xa

.field static greylist-max-o DelayedHebrewMonthCheck:Z = false

.field private static final greylist-max-o FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"

.field private static final greylist-max-o HEBREW_CAL_CUR_MILLENIUM_END_YEAR:I = 0x1770

.field private static final greylist-max-o HEBREW_CAL_CUR_MILLENIUM_START_YEAR:I = 0x1388

.field private static final greylist-max-o ISOSpecialEra:I = -0x7d00

.field private static final blacklist MAX_DAYLIGHT_DETECTION_RANGE:J = 0xdc46c32800L

.field private static final greylist-max-o NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "ADdFgHhKkmrSsuWwYy"

.field private static final greylist-max-o NUMERIC_FORMAT_CHARS2:Ljava/lang/String; = "ceLMQq"

.field private static greylist-max-o PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final greylist-max-o PATTERN_CHAR_TO_INDEX:[I

.field private static final greylist-max-o PATTERN_CHAR_TO_LEVEL:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final greylist-max-o SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"

.field private static greylist-max-o cachedDefaultLocale:Landroid/icu/util/ULocale; = null

.field private static greylist-max-o cachedDefaultPattern:Ljava/lang/String; = null

.field static final greylist-max-o currentSerialVersion:I = 0x2

.field private static final greylist-max-o millisPerHour:I = 0x36ee80

.field private static final whitelist serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient greylist-max-o capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private transient greylist-max-o decDigits:[C

.field private transient greylist-max-o decimalBuf:[C

.field private transient greylist-max-o defaultCenturyBase:J

.field private greylist-max-o defaultCenturyStart:Ljava/util/Date;

.field private transient greylist-max-o defaultCenturyStartYear:I

.field private greylist-max-o formatData:Landroid/icu/text/DateFormatSymbols;

.field private transient blacklist hasHanYearChar:Z

.field private transient greylist-max-o hasMinute:Z

.field private transient greylist-max-o hasSecond:Z

.field private transient greylist-max-o locale:Landroid/icu/util/ULocale;

.field private greylist-max-o numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o override:Ljava/lang/String;

.field private greylist-max-o overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o pattern:Ljava/lang/String;

.field private transient greylist-max-o patternItems:[Ljava/lang/Object;

.field private greylist-max-o serialVersionOnStream:I

.field private volatile greylist-max-o tzFormat:Landroid/icu/text/TimeZoneFormat;

.field private transient greylist-max-o useFastFormat:Z

.field private transient greylist-max-o useLocalZeroPaddingNumberFormat:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisNumeric(CI)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 388
    nop

    .line 400
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 410
    const/16 v1, 0x18

    new-array v2, v1, [I

    fill-array-data v2, :array_134

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    .line 429
    const/16 v2, 0x80

    new-array v2, v2, [I

    fill-array-data v2, :array_168

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    .line 455
    const/16 v2, 0x80

    new-array v2, v2, [Z

    fill-array-data v2, :array_26c

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    .line 869
    const/4 v2, 0x0

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    .line 870
    sput-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 1075
    const/16 v2, 0x80

    new-array v2, v2, [I

    fill-array-data v2, :array_2b0

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    .line 1099
    const/16 v2, 0x25

    new-array v2, v2, [I

    fill-array-data v2, :array_3b4

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1123
    const/16 v2, 0x26

    new-array v2, v2, [I

    fill-array-data v2, :array_402

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1146
    const/16 v2, 0x26

    new-array v2, v2, [Landroid/icu/text/DateFormat$Field;

    sget-object v3, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v0, 0x6

    sget-object v3, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x8

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x9

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0xa

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0xb

    aput-object v0, v2, v3

    const/16 v0, 0xc

    sget-object v3, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0xd

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0xe

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0xf

    aput-object v0, v2, v3

    const/16 v0, 0x10

    sget-object v3, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x11

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x12

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x13

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x14

    aput-object v0, v2, v3

    sget-object v0, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    const/16 v3, 0x15

    aput-object v0, v2, v3

    const/16 v0, 0x16

    sget-object v3, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x17

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v0, v2, v1

    const/16 v0, 0x19

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x1a

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x1b

    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x1c

    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x1d

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v1, 0x1e

    aput-object v0, v2, v1

    const/16 v0, 0x1f

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x20

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x21

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x22

    sget-object v1, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x23

    sget-object v1, Landroid/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x24

    sget-object v1, Landroid/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    const/16 v0, 0x25

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v2, v0

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    .line 1803
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    .line 2556
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    return-void

    nop

    :array_134
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

    :array_168
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
        -0x1
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

    :array_26c
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
        0x0t
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

    :array_2b0
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        0x24
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
        0x23
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

    :array_3b4
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
        -0x2
    .end array-data

    :array_402
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
        0x24
        0x25
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 9

    .line 648
    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 649
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "pattern"    # Ljava/lang/String;

    .line 659
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "pattern":Ljava/lang/String;
    .local v1, "pattern":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 660
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;)V
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;

    .line 706
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/icu/text/DateFormatSymbols;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "pattern":Ljava/lang/String;
    .local v2, "pattern":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 707
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "calendar"    # Landroid/icu/util/Calendar;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p5, "locale"    # Landroid/icu/util/ULocale;
    .param p6, "useFastFormat"    # Z
    .param p7, "override"    # Ljava/lang/String;

    .line 735
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    .line 518
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 736
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 737
    iput-object p2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 738
    iput-object p3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 739
    iput-object p4, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 740
    iput-object p5, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 741
    iput-boolean p6, p0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    .line 742
    iput-object p7, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 743
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initialize()V

    .line 744
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .registers 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "calendar"    # Landroid/icu/util/Calendar;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "useFastFormat"    # Z
    .param p6, "override"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {p3}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/icu/util/Calendar;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "pattern":Ljava/lang/String;
    .end local p4    # "locale":Landroid/icu/util/ULocale;
    .end local p5    # "useFastFormat":Z
    .end local p6    # "override":Ljava/lang/String;
    .local v2, "pattern":Ljava/lang/String;
    .local v6, "locale":Landroid/icu/util/ULocale;
    .local v7, "useFastFormat":Z
    .local v8, "override":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 729
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/ULocale;)V
    .registers 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatData"    # Landroid/icu/text/DateFormatSymbols;
    .param p3, "loc"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/icu/text/DateFormatSymbols;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "pattern":Ljava/lang/String;
    .end local p3    # "loc":Landroid/icu/util/ULocale;
    .local v2, "pattern":Ljava/lang/String;
    .local v6, "loc":Landroid/icu/util/ULocale;
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 718
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/icu/util/ULocale;

    .line 679
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .end local p1    # "pattern":Ljava/lang/String;
    .end local p2    # "loc":Landroid/icu/util/ULocale;
    .local v1, "pattern":Ljava/lang/String;
    .local v5, "loc":Landroid/icu/util/ULocale;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 680
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/icu/util/ULocale;

    .line 696
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v5, p3

    .end local p1    # "pattern":Ljava/lang/String;
    .end local p2    # "override":Ljava/lang/String;
    .end local p3    # "loc":Landroid/icu/util/ULocale;
    .local v1, "pattern":Ljava/lang/String;
    .local v5, "loc":Landroid/icu/util/ULocale;
    .local v7, "override":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 697
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;

    .line 669
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "pattern":Ljava/lang/String;
    .local v1, "pattern":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 670
    return-void
.end method

.method private greylist-max-o allowNumericFallback(I)Z
    .registers 3
    .param p1, "patternCharIndex"    # I

    .line 3527
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_19

    goto :goto_1b

    .line 3535
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 3533
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o countDigits(Ljava/lang/String;II)I
    .registers 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3606
    const/4 v0, 0x0

    .line 3607
    .local v0, "numDigits":I
    move v1, p1

    .line 3608
    .local v1, "idx":I
    :goto_2
    if-ge v1, p2, :cond_16

    .line 3609
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 3610
    .local v2, "cp":I
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3611
    add-int/lit8 v0, v0, 0x1

    .line 3613
    :cond_10
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3614
    .end local v2    # "cp":I
    goto :goto_2

    .line 3615
    :cond_16
    return v0
.end method

.method private greylist-max-o diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    .registers 12
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "items"    # [Ljava/lang/Object;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4172
    aget-object v0, p3, p4

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4173
    return v1

    .line 4175
    :cond_8
    aget-object v0, p3, p4

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4176
    .local v0, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-char v2, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4177
    .local v2, "ch":C
    invoke-static {v2}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v3

    .line 4178
    .local v3, "patternCharIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 4184
    sget-object v4, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v4, v4, v3

    .line 4185
    .local v4, "field":I
    if-ltz v4, :cond_27

    .line 4186
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 4187
    .local v5, "value":I
    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    .line 4188
    .local v6, "value_2":I
    if-eq v5, v6, :cond_27

    .line 4189
    const/4 v1, 0x1

    return v1

    .line 4192
    .end local v5    # "value":I
    .end local v6    # "value_2":I
    :cond_27
    return v1

    .line 4179
    .end local v4    # "field":I
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .registers 11
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I

    .line 1981
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v0, v0

    if-ge v0, p4, :cond_9

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, p4

    .line 1982
    .local v0, "limit":I
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .line 1984
    .local v1, "index":I
    :goto_c
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v4, p2, 0xa

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 1985
    div-int/lit8 p2, p2, 0xa

    .line 1986
    if-eqz v1, :cond_20

    if-nez p2, :cond_1d

    .line 1987
    goto :goto_20

    .line 1989
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1991
    :cond_20
    :goto_20
    sub-int v2, v0, v1

    sub-int v2, p3, v2

    .line 1992
    .local v2, "padding":I
    :goto_24
    const/4 v3, 0x0

    if-lez v2, :cond_36

    if-lez v1, :cond_36

    .line 1993
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v1, v1, -0x1

    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v3, v5, v3

    aput-char v3, v4, v1

    .line 1994
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 1996
    :cond_36
    :goto_36
    if-lez v2, :cond_42

    .line 1999
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2000
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 2002
    :cond_42
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int v4, v0, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 2003
    return-void
.end method

.method private greylist-max-o format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 20
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
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1031
    .local p5, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    move-object/from16 v1, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1032
    invoke-virtual {v6, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1038
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v11

    .line 1039
    .local v11, "items":[Ljava/lang/Object;
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_13
    array-length v0, v11

    if-ge v4, v0, :cond_8d

    .line 1040
    aget-object v0, v11, v4

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 1041
    aget-object v0, v11, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v9, v1

    move v5, v4

    goto/16 :goto_87

    .line 1043
    :cond_27
    aget-object v0, v11, v4

    move-object v12, v0

    check-cast v12, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 1044
    .local v12, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    const/4 v0, 0x0

    .line 1045
    .local v0, "start":I
    if-eqz v10, :cond_35

    .line 1047
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v13, v0

    goto :goto_36

    .line 1045
    :cond_35
    move v13, v0

    .line 1049
    .end local v0    # "start":I
    .local v13, "start":I
    :goto_36
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v0, :cond_4f

    .line 1050
    iget-char v2, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v8, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object v0, p0

    move-object v9, p1

    move-object v7, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    move-object v9, v1

    goto :goto_69

    .line 1053
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_4f
    move-object v9, v1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    iget-char v1, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v2, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-char v7, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v6, p4

    move-object/from16 v5, p2

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    :goto_69
    if-eqz v10, :cond_87

    .line 1058
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1059
    .local v1, "end":I
    sub-int v2, v1, v13

    if-lez v2, :cond_87

    .line 1061
    iget-char v2, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    move-result-object v2

    .line 1062
    .local v2, "attr":Landroid/icu/text/DateFormat$Field;
    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1063
    .local v3, "fp":Ljava/text/FieldPosition;
    invoke-virtual {v3, v13}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1064
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1065
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v1    # "end":I
    .end local v2    # "attr":Landroid/icu/text/DateFormat$Field;
    .end local v3    # "fp":Ljava/text/FieldPosition;
    .end local v12    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v13    # "start":I
    :cond_87
    :goto_87
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v6, p4

    move-object v1, v9

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_13

    :cond_8d
    move-object v9, v1

    .line 1070
    .end local v4    # "i":I
    return-object v9
.end method

.method private greylist-max-o getDefaultCenturyStart()Ljava/util/Date;
    .registers 3

    .line 934
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_9

    .line 936
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 938
    :cond_9
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method private greylist-max-o getDefaultCenturyStartYear()I
    .registers 3

    .line 943
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_9

    .line 945
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 947
    :cond_9
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return v0
.end method

.method private static declared-synchronized greylist-max-o getDefaultPattern()Ljava/lang/String;
    .registers 11

    const-class v0, Landroid/icu/text/SimpleDateFormat;

    monitor-enter v0

    .line 878
    :try_start_3
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 879
    .local v1, "defaultLocale":Landroid/icu/util/ULocale;
    sget-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 880
    sput-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    .line 881
    sget-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_86

    .line 885
    .local v2, "cal":Landroid/icu/util/Calendar;
    :try_start_19
    const-string v3, "android/icu/impl/data/icudata"

    sget-object v4, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-static {v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 887
    .local v3, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendar/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DateTimePatterns"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, "resourcePath":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    .line 890
    .local v5, "patternsRb":Landroid/icu/impl/ICUResourceBundle;
    if-nez v5, :cond_4d

    .line 891
    const-string v6, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v3, v6}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    move-object v5, v6

    .line 893
    :cond_4d
    if-eqz v5, :cond_78

    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v6

    const/16 v7, 0x9

    if-ge v6, v7, :cond_58

    goto :goto_78

    .line 896
    :cond_58
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    const/4 v7, 0x3

    invoke-static {v2, v6, v7}, Landroid/icu/util/Calendar;->getDateAtTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v6

    .line 898
    .local v6, "basePattern":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/CharSequence;

    .line 900
    invoke-virtual {v5, v7}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    .line 898
    invoke-static {v6, v8, v8, v9}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    goto :goto_7c

    .line 894
    .end local v6    # "basePattern":Ljava/lang/String;
    :cond_78
    :goto_78
    const-string v6, "yy/MM/dd HH:mm"

    sput-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_7c
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_7c} :catch_7d
    .catchall {:try_start_19 .. :try_end_7c} :catchall_86

    .line 904
    .end local v3    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "resourcePath":Ljava/lang/String;
    .end local v5    # "patternsRb":Landroid/icu/impl/ICUResourceBundle;
    :goto_7c
    goto :goto_82

    .line 902
    :catch_7d
    move-exception v3

    .line 903
    .local v3, "e":Ljava/util/MissingResourceException;
    :try_start_7e
    const-string v4, "yy/MM/dd HH:mm"

    sput-object v4, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 906
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :cond_82
    :goto_82
    sget-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_86

    monitor-exit v0

    return-object v2

    .line 877
    .end local v1    # "defaultLocale":Landroid/icu/util/ULocale;
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1
.end method

.method private static greylist-max-o getIndexFromChar(C)I
    .registers 3
    .param p0, "ch"    # C

    .line 1095
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public static greylist-max-o getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;
    .registers 11
    .param p0, "formatConfig"    # Landroid/icu/util/Calendar$FormatConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "ostr":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move v8, v1

    .line 760
    .local v8, "useFast":Z
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v4

    .line 762
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v5

    .line 764
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v7

    .line 766
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 760
    return-object v2
.end method

.method private static greylist-max-o getLevelFromChar(C)I
    .registers 3
    .param p0, "ch"    # C

    .line 452
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method private greylist-max-o getPatternItems()[Ljava/lang/Object;
    .registers 11

    .line 1812
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1813
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v0

    .line 1816
    :cond_7
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 1817
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1818
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v0

    .line 1821
    :cond_1a
    const/4 v0, 0x0

    .line 1822
    .local v0, "isPrevQuote":Z
    const/4 v1, 0x0

    .line 1823
    .local v1, "inQuote":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    .local v2, "text":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1825
    .local v3, "itemType":C
    const/4 v4, 0x1

    .line 1827
    .local v4, "itemLength":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    iget-object v7, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_95

    .line 1830
    iget-object v7, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1831
    .local v7, "ch":C
    const/16 v9, 0x27

    if-ne v7, v9, :cond_54

    .line 1832
    if-eqz v0, :cond_43

    .line 1833
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1834
    const/4 v0, 0x0

    goto :goto_4f

    .line 1836
    :cond_43
    const/4 v0, 0x1

    .line 1837
    if-eqz v3, :cond_4f

    .line 1838
    new-instance v9, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v9, v3, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    const/4 v3, 0x0

    .line 1842
    :cond_4f
    :goto_4f
    if-nez v1, :cond_52

    const/4 v8, 0x1

    :cond_52
    move v1, v8

    .end local v1    # "inQuote":Z
    .local v8, "inQuote":Z
    goto :goto_92

    .line 1844
    .end local v8    # "inQuote":Z
    .restart local v1    # "inQuote":Z
    :cond_54
    const/4 v0, 0x0

    .line 1845
    if-eqz v1, :cond_5b

    .line 1846
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_92

    .line 1848
    :cond_5b
    invoke-static {v7}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 1850
    if-ne v7, v3, :cond_66

    .line 1851
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 1853
    :cond_66
    if-nez v3, :cond_79

    .line 1854
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 1855
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_81

    .line 1859
    :cond_79
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v3, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_81
    :goto_81
    move v3, v7

    .line 1862
    const/4 v4, 0x1

    goto :goto_92

    .line 1866
    :cond_84
    if-eqz v3, :cond_8f

    .line 1867
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v3, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    const/4 v3, 0x0

    .line 1870
    :cond_8f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1829
    .end local v7    # "ch":C
    :goto_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 1876
    .end local v6    # "i":I
    :cond_95
    if-nez v3, :cond_a8

    .line 1877
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_b0

    .line 1878
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_b0

    .line 1882
    :cond_a8
    new-instance v6, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v6, v3, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1885
    :cond_b0
    :goto_b0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 1887
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v7, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1889
    iget-object v6, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v6
.end method

.method private greylist-max-o initLocalZeroPaddingNumberFormat()V
    .registers 9

    .line 1939
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v0, :cond_38

    .line 1940
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 1941
    .local v0, "tmpDecfs":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v4

    .line 1942
    .local v4, "tmpDigits":[Ljava/lang/String;
    iput-boolean v3, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 1943
    new-array v5, v2, [C

    iput-object v5, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    .line 1944
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    if-ge v5, v2, :cond_37

    .line 1945
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_2a

    .line 1946
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 1947
    goto :goto_37

    .line 1949
    :cond_2a
    iget-object v6, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-object v7, v4, v5

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v6, v5

    .line 1944
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1951
    .end local v0    # "tmpDecfs":Landroid/icu/text/DecimalFormatSymbols;
    .end local v4    # "tmpDigits":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_37
    :goto_37
    goto :goto_4d

    :cond_38
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_4b

    .line 1952
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    .line 1953
    iput-boolean v3, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_4d

    .line 1955
    :cond_4b
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 1958
    :goto_4d
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_55

    .line 1959
    new-array v0, v2, [C

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    .line 1961
    :cond_55
    return-void
.end method

.method private greylist-max-o initNumberFormatters(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 4288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4290
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/icu/text/SimpleDateFormat;->processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 4292
    return-void
.end method

.method private greylist-max-o initialize()V
    .registers 6

    .line 773
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_c

    .line 774
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 776
    :cond_c
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    if-nez v0, :cond_19

    .line 777
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 779
    :cond_19
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_25

    .line 780
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 782
    :cond_25
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_58

    .line 783
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    .line 784
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "digitString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_42

    goto :goto_50

    .line 789
    :cond_42
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "nsName":Ljava/lang/String;
    new-instance v3, Landroid/icu/impl/DateNumberFormat;

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v4, v1, v2}, Landroid/icu/impl/DateNumberFormat;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    goto :goto_58

    .line 787
    .end local v2    # "nsName":Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 794
    .end local v0    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v1    # "digitString":Ljava/lang/String;
    :cond_58
    :goto_58
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_63

    .line 795
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V

    .line 800
    :cond_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 802
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 803
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 805
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    .line 810
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 811
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 812
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 813
    const-string v0, "y=jpanyear"

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 816
    :cond_b2
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_bb

    .line 817
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initNumberFormatters(Landroid/icu/util/ULocale;)V

    .line 819
    :cond_bb
    return-void
.end method

.method private greylist-max-o initializeDefaultCenturyStart(J)V
    .registers 6
    .param p1, "baseTime"    # J

    .line 922
    iput-wide p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 925
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 926
    .local v0, "tmpCal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 927
    const/16 v1, -0x50

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 928
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 929
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 930
    return-void
.end method

.method private declared-synchronized greylist-max-o initializeTimeZoneFormat(Z)V
    .registers 9
    .param p1, "bForceUpdate"    # Z

    monitor-enter p0

    .line 828
    if-nez p1, :cond_7

    :try_start_3
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez v0, :cond_73

    .line 829
    .end local p0    # "this":Landroid/icu/text/SimpleDateFormat;
    :cond_7
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "digits":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v1, v1, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_3a

    .line 833
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 834
    .local v1, "decsym":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "strDigits":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v3, "digitsBuf":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_34

    aget-object v6, v2, v5

    .line 839
    .local v6, "digit":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    nop

    .end local v6    # "digit":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 841
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v1    # "decsym":Landroid/icu/text/DecimalFormatSymbols;
    .end local v2    # "strDigits":[Ljava/lang/String;
    .end local v3    # "digitsBuf":Ljava/lang/StringBuilder;
    goto :goto_4f

    .line 842
    :cond_3a
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v1, v1, Landroid/icu/impl/DateNumberFormat;

    if-eqz v1, :cond_4f

    .line 843
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v2}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    goto :goto_50

    .line 842
    :cond_4f
    :goto_4f
    nop

    .line 846
    :goto_50
    if-eqz v0, :cond_73

    .line 847
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 848
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 849
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    .line 851
    :cond_6e
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_75

    .line 855
    .end local v0    # "digits":Ljava/lang/String;
    :cond_73
    monitor-exit p0

    return-void

    .line 827
    .end local p1    # "bForceUpdate":Z
    :catchall_75
    move-exception p1

    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1
.end method

.method static greylist-max-o isFieldUnitIgnored(Ljava/lang/String;I)Z
    .registers 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "field"    # I

    .line 3950
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    aget v0, v0, p1

    .line 3953
    .local v0, "fieldLevel":I
    const/4 v1, 0x0

    .line 3954
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .line 3955
    .local v2, "prevCh":C
    const/4 v3, 0x0

    .line 3957
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_49

    .line 3958
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3959
    .local v5, "ch":C
    if-eq v5, v2, :cond_20

    if-lez v3, :cond_20

    .line 3960
    invoke-static {v2}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v8

    .line 3961
    .local v8, "level":I
    if-gt v0, v8, :cond_1f

    .line 3962
    return v6

    .line 3964
    :cond_1f
    const/4 v3, 0x0

    .line 3966
    .end local v8    # "level":I
    :cond_20
    const/16 v8, 0x27

    if-ne v5, v8, :cond_3c

    .line 3967
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_37

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_37

    .line 3968
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 3970
    :cond_37
    if-nez v1, :cond_3a

    move v6, v7

    :cond_3a
    move v1, v6

    .end local v1    # "inQuote":Z
    .local v6, "inQuote":Z
    goto :goto_47

    .line 3972
    .end local v6    # "inQuote":Z
    .restart local v1    # "inQuote":Z
    :cond_3c
    if-nez v1, :cond_47

    invoke-static {v5}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 3973
    move v2, v5

    .line 3974
    add-int/lit8 v3, v3, 0x1

    .line 3957
    :cond_47
    :goto_47
    add-int/2addr v4, v7

    goto :goto_8

    .line 3977
    .end local v4    # "i":I
    .end local v5    # "ch":C
    :cond_49
    if-lez v3, :cond_52

    .line 3979
    invoke-static {v2}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v4

    .line 3980
    .local v4, "level":I
    if-gt v0, v4, :cond_52

    .line 3981
    return v6

    .line 3984
    .end local v4    # "level":I
    :cond_52
    return v7
.end method

.method private static final greylist-max-o isNumeric(CI)Z
    .registers 3
    .param p0, "formatChar"    # C
    .param p1, "count"    # I

    .line 2031
    const-string v0, "ADdFgHhKkmrSsuWwYy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x2

    if-gt p1, v0, :cond_14

    .line 2032
    const-string v0, "ceLMQq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 2031
    :goto_17
    return v0
.end method

.method private static greylist-max-o isSyntaxChar(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 495
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    and-int/lit16 v1, p0, 0xff

    aget-boolean v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o lowerLevel([Ljava/lang/Object;II)Z
    .registers 10
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "i"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4212
    aget-object v0, p1, p2

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4213
    return v1

    .line 4215
    :cond_8
    aget-object v0, p1, p2

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4216
    .local v0, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-char v2, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4217
    .local v2, "ch":C
    invoke-static {v2}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v3

    .line 4218
    .local v3, "patternCharIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 4224
    if-lt v3, p3, :cond_19

    .line 4225
    const/4 v1, 0x1

    return v1

    .line 4227
    :cond_19
    return v1

    .line 4219
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist matchAlphaMonthStrings(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "wideData"    # [Ljava/lang/String;
    .param p4, "shortData"    # [Ljava/lang/String;
    .param p5, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2583
    const/4 v0, 0x0

    .local v0, "bestMatchLength":I
    const/4 v1, -0x1

    .line 2585
    .local v1, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p3

    if-ge v2, v3, :cond_1d

    .line 2587
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2588
    .local v3, "length":I
    const/4 v4, 0x0

    .line 2591
    .local v4, "matchLength":I
    if-le v3, v0, :cond_1a

    aget-object v5, p3, v2

    .line 2592
    invoke-direct {p0, p1, p2, v5, v3}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_1a

    .line 2594
    move v1, v2

    .line 2595
    move v0, v4

    .line 2585
    .end local v3    # "length":I
    .end local v4    # "matchLength":I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2598
    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    array-length v3, p4

    if-ge v2, v3, :cond_38

    .line 2600
    aget-object v3, p4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2601
    .restart local v3    # "length":I
    const/4 v4, 0x0

    .line 2604
    .restart local v4    # "matchLength":I
    if-le v3, v0, :cond_35

    aget-object v5, p4, v2

    .line 2605
    invoke-direct {p0, p1, p2, v5, v3}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_35

    .line 2607
    move v1, v2

    .line 2608
    move v0, v4

    .line 2598
    .end local v3    # "length":I
    .end local v4    # "matchLength":I
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2611
    :cond_38
    if-ltz v1, :cond_41

    .line 2613
    const/4 v3, 0x2

    invoke-virtual {p5, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2614
    add-int v3, p2, v0

    return v3

    .line 2616
    :cond_41
    not-int v3, p2

    return v3
.end method

.method private greylist-max-o matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "data"    # [Ljava/lang/String;
    .param p4, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .line 2785
    .local p5, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    const/4 v0, 0x0

    .local v0, "bestMatchLength":I
    const/4 v1, -0x1

    .line 2786
    .local v1, "bestMatch":I
    const/4 v2, 0x0

    .line 2787
    .local v2, "matchLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p4, :cond_20

    .line 2789
    aget-object v4, p3, v3

    if-eqz v4, :cond_1d

    .line 2790
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2791
    .local v4, "length":I
    if-le v4, v0, :cond_1d

    aget-object v5, p3, v3

    .line 2792
    invoke-direct {p0, p1, p2, v5, v4}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    move v2, v5

    if-ltz v5, :cond_1d

    .line 2793
    move v1, v3

    .line 2794
    move v0, v2

    .line 2787
    .end local v4    # "length":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2799
    .end local v3    # "i":I
    :cond_20
    if-ltz v1, :cond_2b

    .line 2800
    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v3, v3, v1

    iput-object v3, p5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2801
    add-int v3, p2, v0

    return v3

    .line 2804
    :cond_2b
    neg-int v3, p2

    return v3
.end method

.method private greylist-max-o matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .registers 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "items"    # [Ljava/lang/Object;
    .param p4, "itemIndex"    # I
    .param p5, "complete"    # [Z

    .line 2483
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    .line 2484
    .local v4, "originalPos":I
    aget-object v5, v2, v3

    check-cast v5, Ljava/lang/String;

    .line 2485
    .local v5, "patternLiteral":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2486
    .local v6, "plen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 2487
    .local v7, "tlen":I
    const/4 v8, 0x0

    move v9, v8

    move/from16 v8, p2

    .line 2488
    .end local p2    # "pos":I
    .local v8, "pos":I
    .local v9, "idx":I
    :goto_1a
    const/4 v10, 0x1

    if-ge v9, v6, :cond_c6

    if-ge v8, v7, :cond_c6

    .line 2489
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2490
    .local v11, "pch":C
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 2491
    .local v12, "ich":C
    invoke-static {v11}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-nez v13, :cond_33

    invoke-static {v11}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 2492
    :cond_33
    invoke-static {v12}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-nez v13, :cond_83

    invoke-static {v12}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_40

    goto :goto_83

    .line 2505
    :cond_40
    if-eq v11, v12, :cond_c1

    .line 2506
    const/16 v13, 0x2e

    if-ne v12, v13, :cond_65

    if-ne v8, v4, :cond_65

    if-lez v3, :cond_65

    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v14

    if-eqz v14, :cond_65

    .line 2507
    add-int/lit8 v13, v3, -0x1

    aget-object v13, v2, v13

    .line 2508
    .local v13, "before":Ljava/lang/Object;
    instance-of v14, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_64

    .line 2509
    move-object v14, v13

    check-cast v14, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v14, v14, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    .line 2510
    .local v14, "isNumeric":Z
    if-nez v14, :cond_64

    .line 2511
    add-int/lit8 v8, v8, 0x1

    .line 2512
    goto :goto_1a

    .line 2515
    .end local v13    # "before":Ljava/lang/Object;
    .end local v14    # "isNumeric":Z
    :cond_64
    goto :goto_c6

    :cond_65
    const/16 v14, 0x20

    if-eq v11, v14, :cond_6b

    if-ne v11, v13, :cond_76

    :cond_6b
    sget-object v13, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v13}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 2516
    add-int/lit8 v9, v9, 0x1

    .line 2517
    goto :goto_1a

    .line 2518
    :cond_76
    if-eq v8, v4, :cond_c6

    sget-object v13, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v13}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v13

    if-eqz v13, :cond_c6

    .line 2519
    add-int/lit8 v9, v9, 0x1

    .line 2520
    goto :goto_1a

    .line 2495
    :cond_83
    :goto_83
    add-int/lit8 v13, v9, 0x1

    if-ge v13, v6, :cond_a2

    add-int/lit8 v13, v9, 0x1

    .line 2496
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-nez v13, :cond_9f

    add-int/lit8 v13, v9, 0x1

    .line 2497
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 2498
    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    .line 2500
    :cond_a2
    :goto_a2
    add-int/lit8 v13, v8, 0x1

    if-ge v13, v7, :cond_c1

    add-int/lit8 v13, v8, 0x1

    .line 2501
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-nez v13, :cond_be

    add-int/lit8 v13, v8, 0x1

    .line 2502
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_c1

    .line 2503
    :cond_be
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    .line 2524
    :cond_c1
    add-int/2addr v9, v10

    .line 2525
    nop

    .end local v11    # "pch":C
    .end local v12    # "ich":C
    add-int/2addr v8, v10

    .line 2526
    goto/16 :goto_1a

    .line 2527
    :cond_c6
    :goto_c6
    const/4 v11, 0x0

    if-ne v9, v6, :cond_cb

    move v12, v10

    goto :goto_cc

    :cond_cb
    move v12, v11

    :goto_cc
    aput-boolean v12, p5, v11

    .line 2528
    aget-boolean v12, p5, v11

    if-nez v12, :cond_127

    sget-object v12, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v12}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v12

    if-eqz v12, :cond_127

    if-lez v3, :cond_127

    array-length v12, v2

    sub-int/2addr v12, v10

    if-ge v3, v12, :cond_127

    .line 2532
    if-ge v4, v7, :cond_127

    .line 2533
    add-int/lit8 v12, v3, -0x1

    aget-object v12, v2, v12

    .line 2534
    .local v12, "before":Ljava/lang/Object;
    add-int/lit8 v13, v3, 0x1

    aget-object v13, v2, v13

    .line 2535
    .local v13, "after":Ljava/lang/Object;
    instance-of v14, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_127

    instance-of v14, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_127

    .line 2536
    move-object v14, v12

    check-cast v14, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v14, v14, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2537
    .local v14, "beforeType":C
    move-object v15, v13

    check-cast v15, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v15, v15, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2538
    .local v15, "afterType":C
    sget-object v10, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10, v14}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v10

    move/from16 v16, v11

    sget-object v11, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v11, v15}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v11

    if-eq v10, v11, :cond_127

    .line 2539
    move v10, v4

    .line 2540
    .local v10, "newPos":I
    :goto_10d
    if-ge v10, v7, :cond_11e

    .line 2541
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2542
    .local v11, "ich":C
    invoke-static {v11}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v17

    if-nez v17, :cond_11a

    .line 2543
    goto :goto_11e

    .line 2545
    :cond_11a
    nop

    .end local v11    # "ich":C
    add-int/lit8 v10, v10, 0x1

    .line 2546
    goto :goto_10d

    .line 2547
    :cond_11e
    :goto_11e
    if-le v10, v4, :cond_122

    const/4 v11, 0x1

    goto :goto_124

    :cond_122
    move/from16 v11, v16

    :goto_124
    aput-boolean v11, p5, v16

    .line 2548
    move v8, v10

    .line 2553
    .end local v10    # "newPos":I
    .end local v12    # "before":Ljava/lang/Object;
    .end local v13    # "after":Ljava/lang/Object;
    .end local v14    # "beforeType":C
    .end local v15    # "afterType":C
    :cond_127
    return v8
.end method

.method private greylist-max-o matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .registers 25
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "monthPattern"    # Ljava/lang/String;
    .param p6, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v7, 0x0

    .line 2666
    .local v7, "i":I
    array-length v8, v4

    .line 2668
    .local v8, "count":I
    const/4 v9, 0x7

    if-ne v3, v9, :cond_14

    const/4 v7, 0x1

    .line 2674
    :cond_14
    const/4 v9, 0x0

    .local v9, "bestMatchLength":I
    const/4 v10, -0x1

    .line 2675
    .local v10, "bestMatch":I
    const/4 v11, 0x0

    .line 2676
    .local v11, "isLeapMonth":I
    const/4 v12, 0x0

    .line 2678
    .local v12, "matchLength":I
    :goto_18
    const/4 v13, 0x1

    if-ge v7, v8, :cond_50

    .line 2680
    aget-object v14, v4, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    .line 2683
    .local v14, "length":I
    if-le v14, v9, :cond_2f

    aget-object v15, v4, v7

    .line 2684
    invoke-direct {v0, v1, v2, v15, v14}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v15

    move v12, v15

    if-ltz v15, :cond_2f

    .line 2686
    move v10, v7

    .line 2687
    move v9, v12

    .line 2688
    const/4 v11, 0x0

    .line 2690
    :cond_2f
    if-eqz v5, :cond_4d

    .line 2691
    new-array v15, v13, [Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aget-object v17, v4, v7

    aput-object v17, v15, v16

    invoke-static {v5, v13, v13, v15}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 2693
    .local v13, "leapMonthName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 2694
    if-le v14, v9, :cond_4d

    .line 2695
    invoke-direct {v0, v1, v2, v13, v14}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v15

    move v12, v15

    if-ltz v15, :cond_4d

    .line 2697
    move v10, v7

    .line 2698
    move v9, v12

    .line 2699
    const/4 v11, 0x1

    .line 2678
    .end local v13    # "leapMonthName":Ljava/lang/String;
    .end local v14    # "length":I
    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 2703
    :cond_50
    if-ltz v10, :cond_65

    .line 2705
    if-ltz v3, :cond_62

    .line 2706
    if-ne v3, v13, :cond_58

    .line 2707
    add-int/lit8 v10, v10, 0x1

    .line 2709
    :cond_58
    invoke-virtual {v6, v3, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 2710
    if-eqz v5, :cond_62

    .line 2711
    const/16 v13, 0x16

    invoke-virtual {v6, v13, v11}, Landroid/icu/util/Calendar;->set(II)V

    .line 2714
    :cond_62
    add-int v13, v2, v9

    return v13

    .line 2716
    :cond_65
    not-int v13, v2

    return v13
.end method

.method private greylist-max-o parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .line 913
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 914
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 915
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 916
    return-void
.end method

.method private greylist-max-o parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxDigits"    # I
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .param p4, "allowNegative"    # Z
    .param p5, "fmt"    # Landroid/icu/text/NumberFormat;

    .line 3558
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 3559
    .local v0, "oldPos":I
    if-eqz p4, :cond_b

    .line 3560
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .local v1, "number":Ljava/lang/Number;
    goto :goto_43

    .line 3563
    .end local v1    # "number":Ljava/lang/Number;
    :cond_b
    instance-of v1, p5, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_2a

    .line 3564
    move-object v1, p5

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 3565
    .local v1, "oldPrefix":Ljava/lang/String;
    move-object v2, p5

    check-cast v2, Landroid/icu/text/DecimalFormat;

    const-string v3, "\uab00"

    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 3567
    .local v2, "number":Ljava/lang/Number;
    move-object v3, p5

    check-cast v3, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3, v1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3568
    .end local v1    # "oldPrefix":Ljava/lang/String;
    move-object v1, v2

    goto :goto_43

    .line 3569
    .end local v2    # "number":Ljava/lang/Number;
    :cond_2a
    instance-of v1, p5, Landroid/icu/impl/DateNumberFormat;

    .line 3570
    .local v1, "dateNumberFormat":Z
    if-eqz v1, :cond_35

    .line 3571
    move-object v2, p5

    check-cast v2, Landroid/icu/impl/DateNumberFormat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3573
    :cond_35
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 3574
    .restart local v2    # "number":Ljava/lang/Number;
    if-eqz v1, :cond_42

    .line 3575
    move-object v3, p5

    check-cast v3, Landroid/icu/impl/DateNumberFormat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3579
    .end local v1    # "dateNumberFormat":Z
    :cond_42
    move-object v1, v2

    .end local v2    # "number":Ljava/lang/Number;
    .local v1, "number":Ljava/lang/Number;
    :goto_43
    if-lez p2, :cond_63

    .line 3582
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v0

    .line 3583
    .local v2, "nDigits":I
    if-le v2, p2, :cond_63

    .line 3584
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 3585
    .local v3, "val":D
    sub-int/2addr v2, p2

    .line 3586
    :goto_51
    if-lez v2, :cond_59

    .line 3587
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    .line 3588
    add-int/lit8 v2, v2, -0x1

    goto :goto_51

    .line 3590
    :cond_59
    add-int v5, v0, p2

    invoke-virtual {p3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3591
    double-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3594
    .end local v2    # "nDigits":I
    .end local v3    # "val":D
    :cond_63
    return-object v1
.end method

.method private greylist-max-o parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "allowNegative"    # Z
    .param p4, "fmt"    # Landroid/icu/text/NumberFormat;

    .line 3546
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "pos":Ljava/text/ParsePosition;
    .end local p3    # "allowNegative":Z
    .end local p4    # "fmt":Landroid/icu/text/NumberFormat;
    .local v1, "text":Ljava/lang/String;
    .local v3, "pos":Ljava/text/ParsePosition;
    .local v4, "allowNegative":Z
    .local v5, "fmt":Landroid/icu/text/NumberFormat;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o parsePattern()V
    .registers 7

    .line 4348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4349
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    .line 4350
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    .line 4352
    const/4 v1, 0x0

    .line 4353
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 4354
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4355
    .local v3, "ch":C
    const/16 v4, 0x27

    const/4 v5, 0x1

    if-ne v3, v4, :cond_22

    .line 4356
    if-nez v1, :cond_20

    move v4, v5

    goto :goto_21

    :cond_20
    move v4, v0

    :goto_21
    move v1, v4

    .line 4358
    :cond_22
    const/16 v4, 0x5e74

    if-ne v3, v4, :cond_28

    .line 4359
    iput-boolean v5, p0, Landroid/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    .line 4361
    :cond_28
    if-nez v1, :cond_36

    .line 4362
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_30

    .line 4363
    iput-boolean v5, p0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4365
    :cond_30
    const/16 v4, 0x73

    if-ne v3, v4, :cond_36

    .line 4366
    iput-boolean v5, p0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    .line 4353
    .end local v3    # "ch":C
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4370
    .end local v2    # "i":I
    :cond_39
    return-void
.end method

.method private greylist-max-o processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 15
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "str"    # Ljava/lang/String;

    .line 4296
    if-eqz p2, :cond_85

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_85

    .line 4299
    :cond_a
    const/4 v0, 0x0

    .line 4303
    .local v0, "start":I
    const/4 v1, 0x1

    .line 4306
    .local v1, "moreToProcess":Z
    :goto_c
    if-eqz v1, :cond_84

    .line 4307
    const-string v2, ";"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 4308
    .local v2, "delimiterPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 4309
    const/4 v1, 0x0

    .line 4310
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "end":I
    goto :goto_1e

    .line 4312
    .end local v4    # "end":I
    :cond_1d
    move v4, v2

    .line 4315
    .restart local v4    # "end":I
    :goto_1e
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4316
    .local v5, "currentString":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4317
    .local v6, "equalSignPosition":I
    const/4 v7, 0x0

    if-ne v6, v3, :cond_2e

    .line 4318
    move-object v3, v5

    .line 4319
    .local v3, "nsName":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "fullOverride":Z
    goto :goto_43

    .line 4321
    .end local v3    # "nsName":Ljava/lang/String;
    .end local v8    # "fullOverride":Z
    :cond_2e
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4322
    .restart local v3    # "nsName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    .line 4323
    .local v8, "ovrField":Ljava/lang/Character;
    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4324
    const/4 v9, 0x0

    move v8, v9

    .line 4327
    .local v8, "fullOverride":Z
    :goto_43
    new-instance v9, Landroid/icu/util/ULocale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@numbers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 4328
    .local v9, "ovrLoc":Landroid/icu/util/ULocale;
    invoke-static {v9, v7}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v10

    .line 4329
    .local v10, "nf":Landroid/icu/text/NumberFormat;
    invoke-virtual {v10, v7}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4331
    if-eqz v8, :cond_70

    .line 4332
    invoke-virtual {p0, v10}, Landroid/icu/text/SimpleDateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    goto :goto_72

    .line 4336
    :cond_70
    iput-boolean v7, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 4339
    :goto_72
    if-nez v8, :cond_81

    iget-object v7, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_81

    .line 4340
    iget-object v7, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    :cond_81
    add-int/lit8 v0, v2, 0x1

    .line 4344
    .end local v2    # "delimiterPosition":I
    .end local v5    # "currentString":Ljava/lang/String;
    .end local v6    # "equalSignPosition":I
    .end local v9    # "ovrLoc":Landroid/icu/util/ULocale;
    .end local v10    # "nf":Landroid/icu/text/NumberFormat;
    goto :goto_c

    .line 4345
    .end local v3    # "nsName":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v8    # "fullOverride":Z
    :cond_84
    return-void

    .line 4297
    .end local v0    # "start":I
    .end local v1    # "moreToProcess":Z
    :cond_85
    :goto_85
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3831
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3832
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 3835
    .local v0, "capitalizationSettingValue":I
    :goto_e
    iget v2, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v2, v1, :cond_19

    .line 3837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    goto :goto_1e

    .line 3842
    :cond_19
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v1}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 3844
    :goto_1e
    const/4 v1, 0x2

    iput v1, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 3845
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v1}, Landroid/icu/text/SimpleDateFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 3846
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v1, :cond_35

    .line 3850
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 3853
    :cond_35
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 3855
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p0, v1}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 3856
    const/4 v1, 0x0

    if-ltz v0, :cond_57

    .line 3857
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_46
    if-ge v4, v3, :cond_57

    aget-object v5, v2, v4

    .line 3858
    .local v5, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v5}, Landroid/icu/text/DisplayContext;->value()I

    move-result v6

    if-ne v6, v0, :cond_54

    .line 3859
    invoke-virtual {p0, v5}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 3860
    goto :goto_57

    .line 3857
    .end local v5    # "context":Landroid/icu/text/DisplayContext;
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 3866
    :cond_57
    :goto_57
    sget-object v2, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 3867
    sget-object v2, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2, v1}, Landroid/icu/text/SimpleDateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    .line 3870
    :cond_64
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    .line 3871
    return-void
.end method

.method private greylist-max-o regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "length"    # I

    .line 2720
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "data":Ljava/lang/String;
    .end local p4    # "length":I
    .local v0, "text":Ljava/lang/String;
    .local v2, "start":I
    .local v3, "data":Ljava/lang/String;
    .local v5, "length":I
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    .line 2721
    move p2, v5

    .end local v5    # "length":I
    .local p1, "matches":Z
    .local p2, "length":I
    if-eqz p1, :cond_e

    .line 2722
    return p2

    .line 2724
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v3, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x2e

    if-ne p3, p4, :cond_2f

    .line 2725
    add-int/lit8 v5, p2, -0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 2726
    add-int/lit8 p4, p2, -0x1

    return p4

    .line 2729
    :cond_2f
    const/4 p3, -0x1

    return p3
.end method

.method private static greylist-max-o safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .registers 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;

    .line 1772
    if-eqz p0, :cond_c

    if-ltz p1, :cond_c

    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 1773
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1775
    :cond_c
    return-void
.end method

.method private static greylist-max-o safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "monthPattern"    # Ljava/lang/String;

    .line 1778
    if-eqz p0, :cond_1e

    if-ltz p1, :cond_1e

    array-length v0, p0

    if-ge p1, v0, :cond_1e

    .line 1779
    if-nez p3, :cond_f

    .line 1780
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 1782
    :cond_f
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v3, p0, p1

    aput-object v3, v1, v2

    invoke-static {p3, v0, v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1783
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1786
    .end local v0    # "s":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-void
.end method

.method private greylist-max-o subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I
    .registers 23
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
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    .line 2840
    .local p10, "tzTimeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v9

    return v9
.end method

.method private greylist-max-o subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I
    .registers 35
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
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2875
    .local p10, "tzTimeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .local p11, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v6, p8

    move-object/from16 v9, p9

    const/4 v3, 0x0

    .line 2876
    .local v3, "number":Ljava/lang/Number;
    const/4 v4, 0x0

    .line 2877
    .local v4, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const/4 v7, 0x0

    .line 2879
    .local v7, "value":I
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2881
    .local v5, "pos":Ljava/text/ParsePosition;
    invoke-static/range {p3 .. p3}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v12

    .line 2882
    .local v12, "patternCharIndex":I
    const/4 v10, -0x1

    if-ne v12, v10, :cond_1e

    .line 2883
    move/from16 v10, p2

    not-int v8, v10

    return v8

    .line 2886
    :cond_1e
    move/from16 v10, p2

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v4

    .line 2888
    sget-object v11, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v14, v11, v12

    .line 2890
    .local v14, "field":I
    if-eqz v9, :cond_2f

    .line 2891
    invoke-virtual {v9, v8, v4}, Landroid/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    .line 2893
    :cond_2f
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v15, "chinese"

    invoke-virtual {v11, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4d

    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v11

    move/from16 v16, v8

    const-string v8, "dangi"

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_4f

    :cond_4a
    move/from16 v8, v16

    goto :goto_50

    :cond_4d
    move/from16 v16, v8

    :goto_4f
    const/4 v8, 0x1

    :goto_50
    move/from16 v17, v8

    .line 2898
    .end local p2    # "start":I
    .local v10, "start":I
    .local v17, "isChineseCalendar":Z
    :goto_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v10, v8, :cond_5a

    .line 2899
    not-int v8, v10

    return v8

    .line 2901
    :cond_5a
    invoke-static {v1, v10}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v8

    .line 2904
    .local v8, "c":I
    invoke-static {v8}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v11

    if-nez v11, :cond_974

    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v11

    if-nez v11, :cond_974

    .line 2905
    nop

    .line 2909
    .end local v8    # "c":I
    invoke-virtual {v5, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2915
    const/16 v8, 0x1a

    const/4 v11, 0x4

    const/4 v15, 0x2

    if-eq v12, v11, :cond_ab

    const/16 v11, 0xf

    if-eq v12, v11, :cond_ab

    if-ne v12, v15, :cond_7c

    if-le v2, v15, :cond_ab

    :cond_7c
    if-eq v12, v8, :cond_ab

    const/16 v11, 0x13

    if-eq v12, v11, :cond_ab

    const/16 v11, 0x19

    if-eq v12, v11, :cond_ab

    const/4 v11, 0x1

    if-eq v12, v11, :cond_ab

    const/16 v11, 0x12

    if-eq v12, v11, :cond_ab

    const/16 v11, 0x1e

    if-eq v12, v11, :cond_ab

    if-nez v12, :cond_95

    if-nez v17, :cond_ab

    :cond_95
    const/16 v11, 0x1b

    if-eq v12, v11, :cond_ab

    const/16 v11, 0x1c

    if-eq v12, v11, :cond_ab

    const/16 v11, 0x8

    if-ne v12, v11, :cond_a2

    goto :goto_ab

    :cond_a2
    move/from16 v6, p6

    move v15, v2

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v2, v5

    goto/16 :goto_121

    .line 2931
    :cond_ab
    :goto_ab
    const/4 v11, 0x0

    .line 2932
    .local v11, "parsedNumericLeapMonth":Z
    if-eqz v9, :cond_dc

    if-eq v12, v15, :cond_b2

    if-ne v12, v8, :cond_dc

    .line 2934
    :cond_b2
    invoke-virtual {v9, v1, v5}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v8

    .line 2935
    .local v8, "args":[Ljava/lang/Object;
    if-eqz v8, :cond_d2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-le v15, v10, :cond_d2

    aget-object v15, v8, v16

    instance-of v15, v15, Ljava/lang/Number;

    if-eqz v15, :cond_d2

    .line 2936
    const/4 v11, 0x1

    .line 2937
    aget-object v15, v8, v16

    move-object v3, v15

    check-cast v3, Ljava/lang/Number;

    .line 2938
    const/4 v0, 0x1

    const/16 v15, 0x16

    invoke-virtual {v6, v15, v0}, Landroid/icu/util/Calendar;->set(II)V

    move-object v8, v3

    goto :goto_dd

    .line 2935
    :cond_d2
    const/16 v15, 0x16

    .line 2940
    invoke-virtual {v5, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2941
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2945
    .end local v8    # "args":[Ljava/lang/Object;
    :cond_dc
    move-object v8, v3

    .end local v3    # "number":Ljava/lang/Number;
    .local v8, "number":Ljava/lang/Number;
    :goto_dd
    if-nez v11, :cond_10f

    .line 2946
    if-eqz p5, :cond_fa

    .line 2947
    add-int v0, v10, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_eb

    .line 2948
    not-int v0, v10

    return v0

    .line 2950
    :cond_eb
    move-object/from16 v0, p0

    move-object v3, v5

    move-object v5, v4

    move/from16 v4, p6

    .end local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v3, "pos":Ljava/text/ParsePosition;
    .local v5, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v8

    move v15, v2

    move-object v2, v3

    move v6, v4

    move-object v3, v5

    .end local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    goto :goto_105

    .line 2952
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v5, "pos":Ljava/text/ParsePosition;
    :cond_fa
    move-object/from16 v0, p0

    move/from16 v6, p6

    move v15, v2

    move-object v3, v4

    move-object v2, v5

    .end local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-direct {v0, v1, v2, v6, v3}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v8

    .line 2954
    :goto_105
    if-nez v8, :cond_116

    invoke-direct {v0, v12}, Landroid/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v4

    if-nez v4, :cond_116

    .line 2956
    not-int v4, v10

    return v4

    .line 2945
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    :cond_10f
    move-object/from16 v0, p0

    move/from16 v6, p6

    move v15, v2

    move-object v3, v4

    move-object v2, v5

    .line 2960
    .end local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_116
    if-eqz v8, :cond_11f

    .line 2961
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v19, v8

    goto :goto_121

    .line 2960
    :cond_11f
    move-object/from16 v19, v8

    .line 2965
    .end local v8    # "number":Ljava/lang/Number;
    .end local v11    # "parsedNumericLeapMonth":Z
    .local v19, "number":Ljava/lang/Number;
    :goto_121
    const/4 v8, 0x6

    const/4 v11, 0x5

    const/4 v4, 0x3

    packed-switch v12, :pswitch_data_994

    .line 3501
    :pswitch_127
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v9, v12

    move v12, v10

    move-object/from16 v10, p10

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .local v9, "patternCharIndex":I
    .local v12, "start":I
    .local v13, "pos":Ljava/text/ParsePosition;
    .local v15, "value":I
    .local v20, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    if-eqz p5, :cond_93a

    .line 3502
    add-int v0, v12, v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_92a

    neg-int v0, v12

    return v0

    .line 3408
    .end local v9    # "patternCharIndex":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .local v12, "patternCharIndex":I
    :pswitch_13f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v5

    .line 3409
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3412
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15f

    .line 3413
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3417
    :cond_15f
    sget-object v4, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v4

    if-eqz v4, :cond_178

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3418
    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_178

    .line 3419
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3422
    :cond_178
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v3

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v5, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const/4 v3, -0x1

    move/from16 v20, v10

    move-object v10, v2

    move/from16 v2, v20

    move-object/from16 v20, v5

    move-object/from16 v5, p8

    .end local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "start":I
    .local v10, "pos":Ljava/text/ParsePosition;
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    .line 3459
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v10, "start":I
    :pswitch_191
    move/from16 v20, v10

    move-object v10, v2

    move/from16 v2, v20

    move-object/from16 v20, v3

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "start":I
    .local v10, "pos":Ljava/text/ParsePosition;
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const/4 v8, 0x0

    .line 3460
    .local v8, "newStart":I
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1a3

    if-ne v15, v4, :cond_1b8

    .line 3461
    :cond_1a3
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    array-length v4, v1

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_1b8

    .line 3464
    return v8

    .line 3467
    :cond_1b8
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const/4 v1, 0x4

    if-ne v15, v1, :cond_1d8

    .line 3468
    :cond_1c3
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    array-length v4, v1

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_1d8

    .line 3471
    return v8

    .line 3474
    :cond_1d8
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1e3

    const/4 v1, 0x4

    if-ne v15, v1, :cond_1f8

    .line 3475
    :cond_1e3
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    array-length v4, v1

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_1f8

    .line 3478
    return v8

    .line 3482
    :cond_1f8
    return v8

    .line 3427
    .end local v8    # "newStart":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v10, "start":I
    :pswitch_1f9
    move v1, v10

    move-object v10, v2

    move v2, v1

    move-object/from16 v20, v3

    const/4 v1, 0x4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "start":I
    .local v10, "pos":Ljava/text/ParsePosition;
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const/16 v3, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v11, p11

    move-object v13, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    move v12, v4

    move v4, v15

    move v15, v7

    move-object/from16 v7, p7

    .end local v7    # "value":I
    .end local v10    # "pos":Ljava/text/ParsePosition;
    .end local v12    # "patternCharIndex":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .local v21, "patternCharIndex":I
    invoke-direct/range {v0 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v16

    .line 3430
    move v7, v4

    move-object v6, v8

    .local v16, "ampmStart":I
    if-lez v16, :cond_21e

    .line 3431
    return v16

    .line 3433
    :cond_21e
    const/4 v8, 0x0

    .line 3434
    .restart local v8    # "newStart":I
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_229

    if-ne v7, v12, :cond_23a

    .line 3435
    :cond_229
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_23a

    .line 3437
    return v8

    .line 3440
    :cond_23a
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_246

    const/4 v9, 0x4

    if-ne v7, v9, :cond_258

    goto :goto_247

    :cond_246
    const/4 v9, 0x4

    .line 3441
    :goto_247
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_258

    .line 3443
    return v8

    .line 3446
    :cond_258
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_266

    if-ne v7, v9, :cond_263

    goto :goto_266

    :cond_263
    move-object/from16 v1, p1

    goto :goto_277

    .line 3447
    :cond_266
    :goto_266
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_277

    .line 3449
    return v8

    .line 3453
    :cond_277
    :goto_277
    return v8

    .line 3304
    .end local v8    # "newStart":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v16    # "ampmStart":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .local v10, "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_278
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    packed-switch v7, :pswitch_data_9e4

    .line 3318
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_297

    .line 3315
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_28b
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3316
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_297

    .line 3312
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_28e
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3313
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_297

    .line 3309
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_291
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3310
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_297

    .line 3306
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_294
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3307
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    nop

    .line 3321
    :goto_297
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3322
    .local v4, "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_2a9

    .line 3323
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3324
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3326
    :cond_2a9
    not-int v5, v2

    return v5

    .line 3277
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_2ab
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    packed-switch v7, :pswitch_data_9f0

    .line 3291
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_2ca

    .line 3288
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_2be
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3289
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_2ca

    .line 3285
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_2c1
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3286
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_2ca

    .line 3282
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_2c4
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3283
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    goto :goto_2ca

    .line 3279
    .end local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    :pswitch_2c7
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3280
    .restart local v3    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    nop

    .line 3294
    :goto_2ca
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3295
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_2dc

    .line 3296
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3297
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3299
    :cond_2dc
    not-int v5, v2

    return v5

    .line 3266
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_2de
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    if-ge v7, v9, :cond_2f1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_2f3

    :cond_2f1
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3267
    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_2f3
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3268
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_305

    .line 3269
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3270
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3272
    :cond_305
    not-int v5, v2

    return v5

    .line 3028
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_307
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v3, :cond_327

    .line 3029
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    .line 3030
    .local v3, "newStart":I
    if-lez v3, :cond_327

    .line 3031
    return v3

    .line 3034
    .end local v3    # "newStart":I
    :cond_327
    if-eqz v19, :cond_347

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_33e

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v3, :cond_33e

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v3, v3

    if-le v15, v3, :cond_347

    .line 3035
    :cond_33e
    const/4 v11, 0x1

    invoke-virtual {v6, v11, v15}, Landroid/icu/util/Calendar;->set(II)V

    .line 3036
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3038
    :cond_347
    not-int v3, v2

    return v3

    .line 3242
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_349
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v3, 0x0

    .line 3243
    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    packed-switch v7, :pswitch_data_9fc

    .line 3254
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_366

    .line 3251
    :pswitch_35d
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3252
    goto :goto_366

    .line 3248
    :pswitch_360
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3249
    goto :goto_366

    .line 3245
    :pswitch_363
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3246
    nop

    .line 3257
    :goto_366
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3258
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_378

    .line 3259
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3260
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3262
    :cond_378
    not-int v5, v2

    return v5

    .line 3367
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_37a
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v3, 0x2

    if-gt v7, v3, :cond_399

    if-eqz v19, :cond_399

    .line 3372
    add-int/lit8 v4, v15, -0x1

    mul-int/2addr v4, v12

    invoke-virtual {v6, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3373
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3378
    :cond_399
    const/4 v8, 0x0

    .line 3379
    .restart local v8    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_3a4

    if-ne v7, v9, :cond_3b2

    .line 3380
    :cond_3a4
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v3, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_3b2

    .line 3381
    return v8

    .line 3385
    :cond_3b2
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_3bc

    if-ne v7, v12, :cond_3cd

    .line 3386
    :cond_3bc
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_3cd

    .line 3387
    return v8

    .line 3391
    :cond_3cd
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_3db

    if-ne v7, v11, :cond_3d8

    goto :goto_3db

    :cond_3d8
    move-object/from16 v6, p8

    goto :goto_3ed

    .line 3392
    :cond_3db
    :goto_3db
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move-object v6, v5

    move v8, v3

    if-lez v3, :cond_3ed

    .line 3393
    return v8

    .line 3397
    :cond_3ed
    :goto_3ed
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_403

    if-eqz v19, :cond_403

    .line 3398
    add-int/lit8 v1, v15, -0x1

    mul-int/2addr v1, v12

    const/4 v3, 0x2

    invoke-virtual {v6, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 3399
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    return v1

    .line 3401
    :cond_403
    return v8

    .line 3329
    .end local v8    # "newStart":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_404
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v3, 0x2

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    if-gt v7, v3, :cond_423

    if-eqz v19, :cond_423

    .line 3334
    add-int/lit8 v1, v15, -0x1

    mul-int/2addr v1, v12

    invoke-virtual {v6, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 3335
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    return v1

    .line 3340
    :cond_423
    const/4 v8, 0x0

    .line 3341
    .restart local v8    # "newStart":I
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_42e

    if-ne v7, v9, :cond_43e

    .line 3342
    :cond_42e
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_43e

    .line 3343
    return v8

    .line 3347
    :cond_43e
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_448

    if-ne v7, v12, :cond_459

    .line 3348
    :cond_448
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_459

    .line 3349
    return v8

    .line 3353
    :cond_459
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_467

    if-ne v7, v11, :cond_464

    goto :goto_467

    :cond_464
    move-object/from16 v6, p8

    goto :goto_479

    .line 3354
    :cond_467
    :goto_467
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move-object v6, v5

    move v8, v3

    if-lez v3, :cond_479

    .line 3355
    return v8

    .line 3359
    :cond_479
    :goto_479
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_48f

    if-eqz v19, :cond_48f

    .line 3360
    add-int/lit8 v1, v15, -0x1

    mul-int/2addr v1, v12

    const/4 v3, 0x2

    invoke-virtual {v6, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 3361
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    return v1

    .line 3363
    :cond_48f
    return v8

    .line 3158
    .end local v8    # "newStart":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_490
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v11, 0x1

    if-eq v7, v11, :cond_511

    if-eqz v19, :cond_4b0

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_4b0

    move-object/from16 v1, p1

    goto/16 :goto_513

    .line 3164
    :cond_4b0
    const/4 v11, 0x0

    .line 3165
    .local v11, "newStart":I
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4bb

    if-ne v7, v9, :cond_4cb

    .line 3166
    :cond_4bb
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v11, v3

    if-lez v3, :cond_4cb

    .line 3167
    return v11

    .line 3170
    :cond_4cb
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4d5

    if-ne v7, v12, :cond_4e7

    .line 3171
    :cond_4d5
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v11, v3

    if-lez v3, :cond_4e7

    .line 3172
    return v11

    .line 3175
    :cond_4e7
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4f7

    if-ne v7, v8, :cond_4f2

    goto :goto_4f7

    :cond_4f2
    move-object/from16 v1, p1

    move-object/from16 v6, p8

    goto :goto_510

    .line 3176
    :cond_4f7
    :goto_4f7
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_50c

    .line 3177
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    .line 3176
    :cond_50c
    move-object/from16 v1, p1

    move-object/from16 v6, p8

    .line 3180
    :goto_510
    return v11

    .line 3158
    .end local v11    # "newStart":I
    :cond_511
    move-object/from16 v1, p1

    .line 3160
    :goto_513
    invoke-virtual {v6, v14, v15}, Landroid/icu/util/Calendar;->set(II)V

    .line 3161
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3232
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_51b
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    if-ge v7, v9, :cond_52e

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_530

    :cond_52e
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3233
    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_530
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3234
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_542

    .line 3235
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3236
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3238
    :cond_542
    not-int v5, v2

    return v5

    .line 3221
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_544
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    if-ge v7, v9, :cond_557

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_55e

    :cond_557
    if-ne v7, v11, :cond_55c

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_55e

    :cond_55c
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3222
    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_55e
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3223
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_570

    .line 3224
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3225
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3227
    :cond_570
    not-int v5, v2

    return v5

    .line 3121
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_572
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v3, 0x2

    if-le v7, v3, :cond_58e

    if-eqz v19, :cond_642

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_642

    .line 3123
    :cond_58e
    invoke-virtual {v6, v14, v15}, Landroid/icu/util/Calendar;->set(II)V

    .line 3124
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3211
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_596
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    if-ge v7, v9, :cond_5a9

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_5ab

    :cond_5a9
    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3212
    .local v3, "style":Landroid/icu/text/TimeZoneFormat$Style;
    :goto_5ab
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v13, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 3213
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_5bd

    .line 3214
    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3215
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3217
    :cond_5bd
    not-int v5, v2

    return v5

    .line 3204
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_5bf
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v15, v4, :cond_5da

    .line 3205
    const/4 v4, 0x0

    .end local v15    # "value":I
    .local v4, "value":I
    goto :goto_5db

    .line 3204
    .end local v4    # "value":I
    .restart local v15    # "value":I
    :cond_5da
    move v4, v15

    .line 3207
    .end local v15    # "value":I
    .restart local v4    # "value":I
    :goto_5db
    invoke-virtual {v6, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3208
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3186
    .end local v4    # "value":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_5e3
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v8, 0x0

    .line 3188
    .restart local v8    # "newStart":I
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v3, :cond_601

    if-lt v7, v11, :cond_601

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_610

    .line 3189
    :cond_601
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v3, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v3, 0x9

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_610

    .line 3190
    return v8

    .line 3194
    :cond_610
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v1, :cond_633

    if-ge v7, v11, :cond_620

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_633

    .line 3195
    :cond_620
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v3, 0x9

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_633

    .line 3196
    return v8

    .line 3200
    :cond_633
    not-int v1, v2

    return v1

    .line 2965
    .end local v8    # "newStart":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_635
    move v9, v15

    move v15, v7

    move v7, v9

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .line 3130
    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    :cond_642
    const/16 v16, 0x0

    .line 3131
    .local v16, "newStart":I
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_64e

    if-ne v7, v9, :cond_661

    .line 3132
    :cond_64e
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move/from16 v16, v3

    if-lez v3, :cond_661

    .line 3133
    return v16

    .line 3136
    :cond_661
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_66b

    if-ne v7, v12, :cond_67e

    .line 3137
    :cond_66b
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move/from16 v16, v3

    if-lez v3, :cond_67e

    .line 3138
    return v16

    .line 3141
    :cond_67e
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_688

    if-ne v7, v8, :cond_6a1

    .line 3142
    :cond_688
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_6a1

    .line 3143
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move/from16 v16, v3

    if-lez v3, :cond_6a1

    .line 3144
    return v16

    .line 3148
    :cond_6a1
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_6b1

    if-ne v7, v11, :cond_6ac

    goto :goto_6b1

    :cond_6ac
    move-object/from16 v1, p1

    move-object/from16 v6, p8

    goto :goto_6ce

    .line 3149
    :cond_6b1
    :goto_6b1
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_6ca

    .line 3150
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move/from16 v16, v3

    if-lez v3, :cond_6ce

    .line 3151
    return v16

    .line 3149
    :cond_6ca
    move-object/from16 v1, p1

    move-object/from16 v6, p8

    .line 3155
    :cond_6ce
    :goto_6ce
    return v16

    .line 3104
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v16    # "newStart":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_6cf
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v3

    .line 3105
    .local v3, "i":I
    if-ge v3, v12, :cond_6ee

    .line 3106
    :goto_6e7
    if-ge v3, v12, :cond_6f7

    .line 3107
    mul-int/lit8 v15, v15, 0xa

    .line 3108
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e7

    .line 3111
    :cond_6ee
    const/4 v4, 0x1

    .line 3112
    .local v4, "a":I
    :goto_6ef
    if-le v3, v12, :cond_6f6

    .line 3113
    mul-int/lit8 v4, v4, 0xa

    .line 3114
    add-int/lit8 v3, v3, -0x1

    goto :goto_6ef

    .line 3116
    :cond_6f6
    div-int/2addr v15, v4

    .line 3118
    .end local v4    # "a":I
    :cond_6f7
    const/16 v4, 0xe

    invoke-virtual {v6, v4, v15}, Landroid/icu/util/Calendar;->set(II)V

    .line 3119
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    return v4

    .line 3097
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_701
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/16 v3, 0xb

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v15, v4, :cond_71c

    .line 3098
    const/4 v4, 0x0

    .end local v15    # "value":I
    .local v4, "value":I
    goto :goto_71d

    .line 3097
    .end local v4    # "value":I
    .restart local v15    # "value":I
    :cond_71c
    move v4, v15

    .line 3100
    .end local v15    # "value":I
    .restart local v4    # "value":I
    :goto_71d
    invoke-virtual {v6, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3101
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3041
    .end local v4    # "value":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v21    # "patternCharIndex":I
    .local v2, "pos":Ljava/text/ParsePosition;
    .restart local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_725
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move/from16 v21, v12

    const/4 v9, 0x4

    move-object/from16 v10, p10

    move v12, v4

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "patternCharIndex":I
    const/4 v3, 0x2

    if-le v7, v3, :cond_82a

    if-eqz v19, :cond_745

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_745

    move/from16 v9, v21

    goto/16 :goto_82c

    .line 3064
    :cond_745
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v3, :cond_755

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_755

    const/4 v3, 0x1

    goto :goto_756

    :cond_755
    const/4 v3, 0x0

    :goto_756
    move v8, v3

    .line 3066
    .local v8, "haveMonthPat":Z
    const/4 v11, 0x0

    .line 3067
    .restart local v11    # "newStart":I
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_794

    if-lt v7, v12, :cond_794

    if-gt v7, v9, :cond_794

    if-nez v8, :cond_794

    .line 3068
    move/from16 v3, v21

    const/4 v4, 0x2

    .end local v21    # "patternCharIndex":I
    .local v3, "patternCharIndex":I
    if-ne v3, v4, :cond_77f

    .line 3069
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v22, v6

    move v6, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v22

    .end local v3    # "patternCharIndex":I
    .local v6, "patternCharIndex":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchAlphaMonthStrings(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    goto :goto_790

    .line 3070
    .end local v6    # "patternCharIndex":I
    .restart local v3    # "patternCharIndex":I
    :cond_77f
    move v6, v3

    .end local v3    # "patternCharIndex":I
    .restart local v6    # "patternCharIndex":I
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchAlphaMonthStrings(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    :goto_790
    move v11, v3

    .line 3071
    if-lez v11, :cond_796

    .line 3072
    return v11

    .line 3067
    .end local v6    # "patternCharIndex":I
    .restart local v21    # "patternCharIndex":I
    :cond_794
    move/from16 v6, v21

    .line 3075
    .end local v21    # "patternCharIndex":I
    .restart local v6    # "patternCharIndex":I
    :cond_796
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    const/16 v21, 0x0

    if-nez v1, :cond_7a7

    if-ne v7, v9, :cond_7a3

    goto :goto_7a7

    :cond_7a3
    move/from16 p2, v9

    move v9, v6

    goto :goto_7e9

    .line 3076
    :cond_7a7
    :goto_7a7
    const/4 v3, 0x2

    if-ne v6, v3, :cond_7c9

    .line 3077
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 3078
    if-eqz v8, :cond_7ba

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v1, v1, v16

    move-object v5, v1

    goto :goto_7bc

    :cond_7ba
    move-object/from16 v5, v21

    .line 3077
    :goto_7bc
    const/4 v3, 0x2

    move-object/from16 v1, p1

    move/from16 p2, v9

    move v9, v6

    move-object/from16 v6, p8

    .end local v6    # "patternCharIndex":I
    .restart local v9    # "patternCharIndex":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    goto :goto_7e5

    .line 3079
    .end local v9    # "patternCharIndex":I
    .restart local v6    # "patternCharIndex":I
    :cond_7c9
    move/from16 p2, v9

    move v9, v6

    .end local v6    # "patternCharIndex":I
    .restart local v9    # "patternCharIndex":I
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 3080
    if-eqz v8, :cond_7da

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v1, v1, v12

    move-object v5, v1

    goto :goto_7dc

    :cond_7da
    move-object/from16 v5, v21

    .line 3079
    :goto_7dc
    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    :goto_7e5
    move v11, v3

    .line 3081
    if-lez v11, :cond_7e9

    .line 3082
    return v11

    .line 3086
    :cond_7e9
    :goto_7e9
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_7f5

    if-ne v7, v12, :cond_7f4

    goto :goto_7f5

    .line 3093
    :cond_7f4
    return v11

    .line 3087
    :cond_7f5
    :goto_7f5
    const/4 v3, 0x2

    if-ne v9, v3, :cond_812

    .line 3088
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 3089
    if-eqz v8, :cond_806

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v21, v1, v18

    :cond_806
    move-object/from16 v5, v21

    .line 3088
    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    goto :goto_829

    .line 3090
    :cond_812
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 3091
    if-eqz v8, :cond_81e

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v21, v1, p2

    :cond_81e
    move-object/from16 v5, v21

    .line 3090
    const/4 v3, 0x2

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    .line 3087
    :goto_829
    return v3

    .line 3041
    .end local v8    # "haveMonthPat":Z
    .end local v9    # "patternCharIndex":I
    .end local v11    # "newStart":I
    .restart local v21    # "patternCharIndex":I
    :cond_82a
    move/from16 v9, v21

    .line 3046
    .end local v21    # "patternCharIndex":I
    .restart local v9    # "patternCharIndex":I
    :goto_82c
    add-int/lit8 v3, v15, -0x1

    const/4 v4, 0x2

    invoke-virtual {v6, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 3051
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hebrew"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_858

    if-lt v15, v8, :cond_858

    .line 3052
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_856

    .line 3053
    invoke-virtual {v6, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_858

    .line 3054
    const/4 v3, 0x2

    invoke-virtual {v6, v3, v15}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_858

    .line 3057
    :cond_856
    sput-boolean v11, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3060
    :cond_858
    :goto_858
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3001
    .end local v9    # "patternCharIndex":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_85d
    move v6, v15

    move v15, v7

    move v7, v6

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move v9, v12

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v9    # "patternCharIndex":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v3, :cond_889

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v4, "hebr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_881

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v4, "y=hebr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_889

    :cond_881
    const/16 v3, 0x3e8

    if-ge v15, v3, :cond_889

    .line 3002
    add-int/lit16 v3, v15, 0x1388

    move v4, v3

    .end local v15    # "value":I
    .local v3, "value":I
    goto :goto_8bb

    .line 3003
    .end local v3    # "value":I
    .restart local v15    # "value":I
    :cond_889
    const/4 v3, 0x2

    if-ne v7, v3, :cond_8ba

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-static {v1, v2, v4}, Landroid/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_8ba

    invoke-virtual {v6}, Landroid/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v3

    if-eqz v3, :cond_8ba

    .line 3012
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v3

    const/16 v4, 0x64

    rem-int/2addr v3, v4

    .line 3013
    .local v3, "ambiguousTwoDigitYear":I
    if-ne v15, v3, :cond_8a7

    const/4 v5, 0x1

    goto :goto_8a8

    :cond_8a7
    const/4 v5, 0x0

    :goto_8a8
    const/16 v16, 0x0

    aput-boolean v5, p7, v16

    .line 3014
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v5

    div-int/2addr v5, v4

    mul-int/2addr v5, v4

    .line 3015
    if-ge v15, v3, :cond_8b5

    goto :goto_8b6

    :cond_8b5
    const/4 v4, 0x0

    :goto_8b6
    add-int/2addr v5, v4

    add-int v4, v15, v5

    .end local v15    # "value":I
    .restart local v4    # "value":I
    goto :goto_8bb

    .line 3017
    .end local v3    # "ambiguousTwoDigitYear":I
    .end local v4    # "value":I
    .restart local v15    # "value":I
    :cond_8ba
    move v4, v15

    .end local v15    # "value":I
    .restart local v4    # "value":I
    :goto_8bb
    invoke-virtual {v6, v14, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3020
    sget-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v3, :cond_8d0

    .line 3021
    invoke-static {v4}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_8cd

    .line 3022
    const/4 v3, 0x2

    const/4 v11, 0x1

    invoke-virtual {v6, v3, v11}, Landroid/icu/util/Calendar;->add(II)V

    .line 3024
    :cond_8cd
    const/4 v5, 0x0

    sput-boolean v5, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3026
    :cond_8d0
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 2968
    .end local v4    # "value":I
    .end local v9    # "patternCharIndex":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "pos":Ljava/text/ParsePosition;
    .local v3, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v7    # "value":I
    .restart local v10    # "start":I
    .restart local v12    # "patternCharIndex":I
    :pswitch_8d5
    move/from16 p2, v15

    move v15, v7

    move/from16 v7, p2

    move-object/from16 v6, p8

    move-object v13, v2

    move-object/from16 v20, v3

    move v2, v10

    move v9, v12

    const/16 p2, 0x4

    const/4 v5, 0x0

    move-object/from16 v10, p10

    .end local v3    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "value":I
    .end local v10    # "start":I
    .end local v12    # "patternCharIndex":I
    .local v2, "start":I
    .restart local v9    # "patternCharIndex":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "value":I
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    if-eqz v17, :cond_8f0

    .line 2971
    invoke-virtual {v6, v5, v15}, Landroid/icu/util/Calendar;->set(II)V

    .line 2972
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 2974
    :cond_8f0
    const/4 v8, 0x0

    .line 2975
    .local v8, "ps":I
    if-ne v7, v11, :cond_901

    .line 2976
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v3, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move-object/from16 v6, p8

    move v12, v2

    .end local v8    # "ps":I
    .local v3, "ps":I
    goto :goto_924

    .line 2977
    .end local v3    # "ps":I
    .restart local v8    # "ps":I
    :cond_901
    move/from16 v1, p2

    if-ne v7, v1, :cond_915

    .line 2978
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v12, v2

    .end local v8    # "ps":I
    .restart local v3    # "ps":I
    goto :goto_924

    .line 2980
    .end local v3    # "ps":I
    .restart local v8    # "ps":I
    :cond_915
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    move v12, v2

    .line 2986
    .end local v2    # "start":I
    .end local v8    # "ps":I
    .restart local v3    # "ps":I
    .local v12, "start":I
    :goto_924
    not-int v0, v12

    if-ne v3, v0, :cond_929

    .line 2987
    const/16 v3, -0x7d00

    .line 2989
    :cond_929
    return v3

    .line 3503
    .end local v3    # "ps":I
    :cond_92a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p6

    move v2, v7

    move-object v3, v13

    move-object/from16 v5, v20

    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v3, "pos":Ljava/text/ParsePosition;
    .restart local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v7

    move-object v2, v5

    .end local v3    # "pos":Ljava/text/ParsePosition;
    .end local v5    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v19    # "number":Ljava/lang/Number;
    .local v2, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v7, "number":Ljava/lang/Number;
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    goto :goto_946

    .line 3505
    .end local v2    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v7    # "number":Ljava/lang/Number;
    .restart local v19    # "number":Ljava/lang/Number;
    .restart local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_93a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object/from16 v2, v20

    .end local v20    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v2    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-direct {v0, v1, v13, v4, v2}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v7

    .line 3507
    .end local v19    # "number":Ljava/lang/Number;
    .restart local v7    # "number":Ljava/lang/Number;
    :goto_946
    if-eqz p5, :cond_958

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->isLenient()Z

    move-result v3

    if-nez v3, :cond_958

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v5, v12, p4

    if-ge v3, v5, :cond_958

    .line 3508
    neg-int v3, v12

    return v3

    .line 3510
    :cond_958
    if-eqz v7, :cond_972

    .line 3511
    const/16 v3, 0x22

    if-eq v9, v3, :cond_966

    .line 3512
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v6, v14, v3}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_96d

    .line 3514
    :cond_966
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->setRelatedYear(I)V

    .line 3516
    :goto_96d
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    .line 3518
    :cond_972
    not-int v3, v12

    return v3

    .line 2904
    .end local v2    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v9    # "patternCharIndex":I
    .end local v13    # "pos":Ljava/text/ParsePosition;
    .end local v15    # "value":I
    .local v3, "number":Ljava/lang/Number;
    .local v4, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v5, "pos":Ljava/text/ParsePosition;
    .local v7, "value":I
    .local v8, "c":I
    .restart local v10    # "start":I
    .local v12, "patternCharIndex":I
    :cond_974
    move-object v2, v4

    move-object v13, v5

    move v9, v12

    move/from16 v5, v16

    const/4 v11, 0x1

    move/from16 v4, p6

    move v12, v10

    move-object/from16 v10, p10

    .line 2907
    .end local v4    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v10    # "start":I
    .restart local v2    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v9    # "patternCharIndex":I
    .local v12, "start":I
    .restart local v13    # "pos":Ljava/text/ParsePosition;
    invoke-static {v8}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int v8, v12, v15

    .line 2908
    .end local v12    # "start":I
    .local v8, "start":I
    move-object v4, v2

    move/from16 v16, v5

    move v10, v8

    move v12, v9

    move-object v5, v13

    move/from16 v13, p3

    move/from16 v2, p4

    move-object/from16 v9, p9

    goto/16 :goto_52

    nop

    :pswitch_data_994
    .packed-switch 0x0
        :pswitch_8d5
        :pswitch_85d
        :pswitch_725
        :pswitch_127
        :pswitch_701
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_6cf
        :pswitch_635
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_5e3
        :pswitch_5bf
        :pswitch_127
        :pswitch_596
        :pswitch_85d
        :pswitch_572
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_544
        :pswitch_51b
        :pswitch_490
        :pswitch_725
        :pswitch_404
        :pswitch_37a
        :pswitch_349
        :pswitch_307
        :pswitch_2de
        :pswitch_2ab
        :pswitch_278
        :pswitch_127
        :pswitch_1f9
        :pswitch_191
        :pswitch_13f
    .end packed-switch

    :pswitch_data_9e4
    .packed-switch 0x1
        :pswitch_294
        :pswitch_291
        :pswitch_28e
        :pswitch_28b
    .end packed-switch

    :pswitch_data_9f0
    .packed-switch 0x1
        :pswitch_2c7
        :pswitch_2c4
        :pswitch_2c1
        :pswitch_2be
    .end packed-switch

    :pswitch_data_9fc
    .packed-switch 0x1
        :pswitch_363
        :pswitch_360
        :pswitch_35d
    .end packed-switch
.end method

.method private greylist-max-o translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3624
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3625
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 3626
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3627
    .local v3, "c":C
    const/16 v4, 0x27

    if-eqz v1, :cond_19

    .line 3628
    if-ne v3, v4, :cond_2e

    .line 3629
    const/4 v1, 0x0

    goto :goto_2e

    .line 3631
    :cond_19
    if-ne v3, v4, :cond_1d

    .line 3632
    const/4 v1, 0x1

    goto :goto_2e

    .line 3633
    :cond_1d
    invoke-static {v3}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3634
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3635
    .local v4, "ci":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2e

    .line 3636
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3642
    .end local v4    # "ci":I
    :cond_2e
    :goto_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3625
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3644
    .end local v2    # "i":I
    :cond_34
    if-nez v1, :cond_3b

    .line 3647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3645
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unfinished quote in pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o tzFormat()Landroid/icu/text/TimeZoneFormat;
    .registers 2

    .line 862
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez v0, :cond_8

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 865
    :cond_8
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3815
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_9

    .line 3818
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 3820
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 3821
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3822
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3823
    return-void
.end method


# virtual methods
.method public whitelist test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pat"    # Ljava/lang/String;

    .line 3714
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3717
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 3718
    return-void
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 7
    .param p1, "pat"    # Ljava/lang/String;

    .line 3677
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3678
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    .line 3680
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 3682
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 3686
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "japanese"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 3687
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 3688
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v2, "y=jpanyear"

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-nez v1, :cond_48

    .line 3691
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 3692
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 3693
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    goto :goto_9a

    .line 3694
    :cond_48
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-nez v0, :cond_9a

    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-eqz v0, :cond_9a

    .line 3697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 3698
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 3699
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v3, "jpanyear"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3700
    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@numbers=jpanyear"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 3701
    .local v0, "ovrLoc":Landroid/icu/util/ULocale;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v4

    .line 3702
    .local v4, "nf":Landroid/icu/text/NumberFormat;
    invoke-virtual {v4, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3703
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 3704
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3705
    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 3708
    .end local v0    # "ovrLoc":Landroid/icu/util/ULocale;
    .end local v4    # "nf":Landroid/icu/text/NumberFormat;
    :cond_9a
    :goto_9a
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 3777
    invoke-super {p0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 3778
    .local v0, "other":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3781
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz v1, :cond_1a

    .line 3782
    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    .line 3784
    :cond_1a
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3804
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3805
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 3806
    .local v0, "that":Landroid/icu/text/SimpleDateFormat;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3807
    invoke-virtual {v2, v3}, Landroid/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 3806
    :goto_22
    return v1
.end method

.method public whitelist test-api format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1008
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v0, 0x0

    .line 1009
    .local v0, "backupTZ":Landroid/icu/util/TimeZone;
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eq p1, v1, :cond_31

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1013
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1014
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1015
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1016
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object v2, p1

    goto :goto_32

    .line 1018
    :cond_31
    move-object v2, p1

    .end local p1    # "cal":Landroid/icu/util/Calendar;
    .local v2, "cal":Landroid/icu/util/Calendar;
    :goto_32
    sget-object p1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .end local p3    # "pos":Ljava/text/FieldPosition;
    .end local p4    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .local v4, "toAppendTo":Ljava/lang/StringBuffer;
    .local v5, "pos":Ljava/text/FieldPosition;
    .local v6, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1019
    .local p1, "result":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_47

    .line 1021
    iget-object p2, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1023
    :cond_47
    return-object p1
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3882
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 3883
    .local v0, "cal":Landroid/icu/util/Calendar;
    instance-of v1, p1, Landroid/icu/util/Calendar;

    if-eqz v1, :cond_b

    .line 3884
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar;

    move-object v2, v0

    goto :goto_36

    .line 3885
    :cond_b
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_18

    .line 3886
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_28

    .line 3887
    :cond_18
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2a

    .line 3888
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3894
    :goto_28
    move-object v2, v0

    goto :goto_36

    .line 3889
    :cond_2a
    instance-of v1, p1, Ljava/time/temporal/Temporal;

    if-eqz v1, :cond_7d

    .line 3890
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-static {v1}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v0

    move-object v2, v0

    .line 3894
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .local v2, "cal":Landroid/icu/util/Calendar;
    :goto_36
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 3895
    .local v4, "toAppendTo":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 3896
    .local v5, "pos":Ljava/text/FieldPosition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3897
    .local v6, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 3899
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 3902
    .local v0, "as":Ljava/text/AttributedString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_78

    .line 3903
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/FieldPosition;

    .line 3904
    .local v3, "fp":Ljava/text/FieldPosition;
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    .line 3905
    .local v7, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v9

    invoke-virtual {v0, v7, v7, v8, v9}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 3902
    .end local v3    # "fp":Ljava/text/FieldPosition;
    .end local v7    # "attribute":Ljava/text/Format$Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 3908
    .end local v1    # "i":I
    :cond_78
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1

    .line 3892
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    .end local v4    # "toAppendTo":Ljava/lang/StringBuffer;
    .end local v5    # "pos":Ljava/text/FieldPosition;
    .end local v6    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .local v0, "cal":Landroid/icu/util/Calendar;
    :cond_7d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot format given Object as a Date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .line 967
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .registers 2

    .line 3727
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method greylist-max-o getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 3919
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getNumberFormat(C)Landroid/icu/text/NumberFormat;
    .registers 5
    .param p1, "field"    # C

    .line 4276
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 4277
    .local v0, "ovrField":Ljava/lang/Character;
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4278
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4279
    .local v1, "nsName":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/NumberFormat;

    .line 4280
    .local v2, "nf":Landroid/icu/text/NumberFormat;
    return-object v2

    .line 4282
    .end local v1    # "nsName":Ljava/lang/String;
    .end local v2    # "nf":Landroid/icu/text/NumberFormat;
    :cond_25
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object v1
.end method

.method protected whitelist test-api getSymbols()Landroid/icu/text/DateFormatSymbols;
    .registers 2

    .line 3743
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public whitelist test-api getTimeZoneFormat()Landroid/icu/text/TimeZoneFormat;
    .registers 2

    .line 3754
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 3794
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final greylist-max-o intervalFormatByAlgorithm(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 22
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

    .line 4015
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 4019
    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v12

    .line 4020
    .local v12, "items":[Ljava/lang/Object;
    const/4 v3, -0x1

    .line 4021
    .local v3, "diffBegin":I
    const/4 v4, -0x1

    .line 4026
    .local v4, "diffEnd":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    :try_start_17
    array-length v5, v12

    if-ge v0, v5, :cond_25

    .line 4027
    invoke-direct {v1, v9, v11, v12, v0}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 4028
    move v3, v0

    .line 4029
    goto :goto_25

    .line 4026
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 4033
    .end local v0    # "i":I
    :cond_25
    :goto_25
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2d

    .line 4035
    invoke-virtual {v1, v9, v2, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 4039
    :cond_2d
    array-length v5, v12

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_30
    if-lt v5, v3, :cond_3d

    .line 4040
    invoke-direct {v1, v9, v11, v12, v5}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v6
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_36} :catch_1ad

    if-eqz v6, :cond_3a

    .line 4041
    move v4, v5

    .line 4042
    goto :goto_3d

    .line 4039
    :cond_3a
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 4047
    .end local v5    # "i":I
    :cond_3d
    :goto_3d
    nop

    .line 4050
    const-string v13, " \u2013 "

    if-nez v3, :cond_51

    array-length v5, v12

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_51

    .line 4051
    invoke-virtual {v1, v9, v2, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4052
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4053
    invoke-virtual {v1, v11, v2, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4054
    return-object v2

    .line 4059
    :cond_51
    const/16 v5, 0x3e8

    .line 4060
    .local v5, "highestLevel":I
    move v6, v3

    move v14, v5

    .end local v5    # "highestLevel":I
    .local v6, "i":I
    .local v14, "highestLevel":I
    :goto_55
    if-gt v6, v4, :cond_9b

    .line 4061
    aget-object v5, v12, v6

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5e

    .line 4062
    goto :goto_6d

    .line 4064
    :cond_5e
    aget-object v5, v12, v6

    check-cast v5, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4065
    .local v5, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-char v8, v5, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4066
    .local v8, "ch":C
    invoke-static {v8}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v10

    .line 4067
    .local v10, "patternCharIndex":I
    if-eq v10, v0, :cond_70

    .line 4073
    if-ge v10, v14, :cond_6d

    .line 4074
    move v14, v10

    .line 4060
    .end local v5    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v8    # "ch":C
    .end local v10    # "patternCharIndex":I
    :cond_6d
    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 4068
    .restart local v5    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .restart local v8    # "ch":C
    .restart local v10    # "patternCharIndex":I
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Illegal pattern character \'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\' in \""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v1, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x22

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4082
    .end local v5    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v6    # "i":I
    .end local v8    # "ch":C
    .end local v10    # "patternCharIndex":I
    :cond_9b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9c
    if-ge v0, v3, :cond_ae

    .line 4083
    :try_start_9e
    invoke-direct {v1, v12, v0, v14}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v5
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_a2} :catch_aa

    if-eqz v5, :cond_a7

    .line 4084
    move v3, v0

    .line 4085
    move v15, v3

    goto :goto_af

    .line 4082
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 4096
    .end local v0    # "i":I
    :catch_aa
    move-exception v0

    move-object v10, v2

    goto/16 :goto_1a3

    .line 4082
    .restart local v0    # "i":I
    :cond_ae
    move v15, v3

    .line 4090
    .end local v0    # "i":I
    .end local v3    # "diffBegin":I
    .local v15, "diffBegin":I
    :goto_af
    :try_start_af
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_b2
    if-le v0, v4, :cond_bf

    .line 4091
    invoke-direct {v1, v12, v0, v14}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v3
    :try_end_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_b8} :catch_1a0

    if-eqz v3, :cond_bc

    .line 4092
    move v4, v0

    .line 4093
    goto :goto_c0

    .line 4090
    :cond_bc
    add-int/lit8 v0, v0, -0x1

    goto :goto_b2

    :cond_bf
    move v0, v4

    .line 4098
    .end local v4    # "diffEnd":I
    .local v0, "diffEnd":I
    :goto_c0
    nop

    .line 4102
    if-nez v15, :cond_d2

    array-length v3, v12

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_d2

    .line 4103
    invoke-virtual {v1, v9, v2, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4104
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4105
    invoke-virtual {v1, v11, v2, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4106
    return-object v2

    .line 4112
    :cond_d2
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4113
    invoke-virtual {v7, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4114
    sget-object v3, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1, v3}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v6

    .line 4117
    .local v6, "capSetting":Landroid/icu/text/DisplayContext;
    const/4 v3, 0x0

    move v5, v3

    .local v5, "i":I
    :goto_e1
    if-gt v5, v0, :cond_145

    .line 4118
    aget-object v3, v12, v5

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_f6

    .line 4119
    aget-object v3, v12, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v16, v0

    move-object v10, v2

    move-object v7, v6

    move v6, v5

    goto :goto_13a

    .line 4121
    :cond_f6
    aget-object v3, v12, v5

    check-cast v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4122
    .local v3, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-boolean v4, v1, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v4, :cond_11a

    .line 4123
    iget-char v4, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move v8, v4

    iget v4, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move-object v7, v6

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    .local v7, "capSetting":Landroid/icu/text/DisplayContext;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-char v9, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v10, p1

    move/from16 v16, v0

    move-object v0, v3

    move v3, v8

    move-object/from16 v8, p4

    .end local v3    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v0, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v16, "diffEnd":I
    invoke-virtual/range {v1 .. v10}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    move-object v10, v2

    move-object/from16 v1, p0

    goto :goto_13a

    .line 4126
    .end local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .end local v16    # "diffEnd":I
    .local v0, "diffEnd":I
    .restart local v3    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .restart local v5    # "i":I
    .local v6, "capSetting":Landroid/icu/text/DisplayContext;
    :cond_11a
    move/from16 v16, v0

    move-object v10, v2

    move-object v0, v3

    move-object v7, v6

    move v6, v5

    .end local v3    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v5    # "i":I
    .local v0, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v6, "i":I
    .restart local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .restart local v16    # "diffEnd":I
    iget-char v2, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v8, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object v6, v7

    move-object/from16 v7, p4

    .end local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .restart local v5    # "i":I
    .local v6, "capSetting":Landroid/icu/text/DisplayContext;
    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v6

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    .restart local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4117
    .end local v0    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    :goto_13a
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v9, p1

    move-object v6, v7

    move-object v2, v10

    move/from16 v0, v16

    move-object/from16 v7, p4

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_e1

    .end local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .end local v16    # "diffEnd":I
    .local v0, "diffEnd":I
    .local v6, "capSetting":Landroid/icu/text/DisplayContext;
    :cond_145
    move/from16 v16, v0

    move-object v10, v2

    move-object v7, v6

    move v6, v5

    .line 4132
    .end local v0    # "diffEnd":I
    .end local v5    # "i":I
    .end local v6    # "capSetting":Landroid/icu/text/DisplayContext;
    .restart local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .restart local v16    # "diffEnd":I
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4135
    move v0, v15

    move v5, v0

    .restart local v5    # "i":I
    :goto_14f
    array-length v0, v12

    if-ge v5, v0, :cond_19f

    .line 4136
    aget-object v0, v12, v5

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_161

    .line 4137
    aget-object v0, v12, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v5

    goto :goto_198

    .line 4139
    :cond_161
    aget-object v0, v12, v5

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4140
    .local v0, "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-boolean v2, v1, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v2, :cond_17d

    .line 4141
    iget-char v3, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-char v9, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v8, p4

    move-object v2, v10

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    move-object v10, v2

    goto :goto_198

    .line 4144
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_17d
    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    iget-char v2, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v8, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object v6, v7

    move-object/from16 v7, p4

    .end local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .restart local v5    # "i":I
    .local v6, "capSetting":Landroid/icu/text/DisplayContext;
    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v6

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    .restart local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4135
    .end local v0    # "item":Landroid/icu/text/SimpleDateFormat$PatternItem;
    :goto_198
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_14f

    .line 4149
    .end local v5    # "i":I
    :cond_19f
    return-object v10

    .line 4096
    .end local v7    # "capSetting":Landroid/icu/text/DisplayContext;
    .end local v16    # "diffEnd":I
    .restart local v4    # "diffEnd":I
    :catch_1a0
    move-exception v0

    move-object v10, v2

    move v3, v15

    .line 4097
    .end local v15    # "diffBegin":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v3, "diffBegin":I
    :goto_1a3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4045
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "highestLevel":I
    :catch_1ad
    move-exception v0

    move-object v10, v2

    .line 4046
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4016
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "diffBegin":I
    .end local v4    # "diffEnd":I
    .end local v12    # "items":[Ljava/lang/Object;
    :cond_1b9
    move-object v10, v2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not format on two different calendars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o isFieldUnitIgnored(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 3935
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "cal"    # Landroid/icu/util/Calendar;

    .line 2750
    const/4 v0, 0x0

    .line 2751
    .local v0, "i":I
    array-length v1, p4

    .line 2757
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "bestMatchLength":I
    const/4 v3, -0x1

    .line 2758
    .local v3, "bestMatch":I
    const/4 v4, 0x0

    .line 2759
    .local v4, "matchLength":I
    :goto_5
    if-ge v0, v1, :cond_1d

    .line 2760
    aget-object v5, p4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2763
    .local v5, "length":I
    if-le v5, v2, :cond_1a

    aget-object v6, p4, v0

    .line 2764
    invoke-direct {p0, p1, p2, v6, v5}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v6

    move v4, v6

    if-ltz v6, :cond_1a

    .line 2766
    move v3, v0

    .line 2767
    move v2, v4

    .line 2759
    .end local v5    # "length":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2771
    :cond_1d
    if-ltz v3, :cond_27

    .line 2772
    mul-int/lit8 v5, v3, 0x3

    invoke-virtual {p5, p3, v5}, Landroid/icu/util/Calendar;->set(II)V

    .line 2773
    add-int v5, p2, v2

    return v5

    .line 2776
    :cond_27
    neg-int v5, p2

    return v5
.end method

.method protected whitelist test-api matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "cal"    # Landroid/icu/util/Calendar;

    .line 2639
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "field":I
    .end local p4    # "data":[Ljava/lang/String;
    .end local p5    # "cal":Landroid/icu/util/Calendar;
    .local v1, "text":Ljava/lang/String;
    .local v2, "start":I
    .local v3, "field":I
    .local v4, "data":[Ljava/lang/String;
    .local v6, "cal":Landroid/icu/util/Calendar;
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .registers 45
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cal"    # Landroid/icu/util/Calendar;
    .param p3, "parsePos"    # Ljava/text/ParsePosition;

    .line 2049
    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const/4 v0, 0x0

    .line 2050
    .local v0, "backupTZ":Landroid/icu/util/TimeZone;
    const/4 v2, 0x0

    .line 2051
    .local v2, "resultCal":Landroid/icu/util/Calendar;
    iget-object v3, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v4, p2

    if-eq v4, v3, :cond_3c

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 2055
    iget-object v3, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2056
    iget-object v3, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 2057
    iget-object v3, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2058
    move-object/from16 v2, p2

    .line 2059
    iget-object v3, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object v9, v3

    move-object v14, v0

    move-object v15, v2

    .end local p2    # "cal":Landroid/icu/util/Calendar;
    .local v3, "cal":Landroid/icu/util/Calendar;
    goto :goto_3f

    .line 2062
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local p2    # "cal":Landroid/icu/util/Calendar;
    :cond_3c
    move-object v9, v4

    move-object v14, v0

    move-object v15, v2

    .end local v0    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v2    # "resultCal":Landroid/icu/util/Calendar;
    .end local p2    # "cal":Landroid/icu/util/Calendar;
    .local v9, "cal":Landroid/icu/util/Calendar;
    .local v14, "backupTZ":Landroid/icu/util/TimeZone;
    .local v15, "resultCal":Landroid/icu/util/Calendar;
    :goto_3f
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2063
    .local v0, "pos":I
    const/4 v12, 0x0

    if-gez v0, :cond_4a

    .line 2064
    invoke-virtual {v13, v12}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2065
    return-void

    .line 2067
    :cond_4a
    move v2, v0

    .line 2072
    .local v2, "start":I
    new-instance v3, Landroid/icu/util/Output;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v3

    .line 2074
    .local v16, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    new-instance v11, Landroid/icu/util/Output;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v11, v3}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2075
    .local v11, "tzTimeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v3, 0x1

    new-array v8, v3, [Z

    aput-boolean v12, v8, v12

    .line 2078
    .local v8, "ambiguousYear":[Z
    const/4 v4, -0x1

    .line 2080
    .local v4, "numericFieldStart":I
    const/4 v5, 0x0

    .line 2082
    .local v5, "numericFieldLength":I
    const/4 v6, 0x0

    .line 2084
    .local v6, "numericStartPos":I
    const/4 v7, 0x0

    .line 2085
    .local v7, "numericLeapMonthFormatter":Landroid/icu/text/MessageFormat;
    iget-object v10, v1, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v10, v10, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v10, :cond_83

    iget-object v10, v1, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v10, v10, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v10, v10

    const/4 v3, 0x7

    if-lt v10, v3, :cond_83

    .line 2086
    new-instance v3, Landroid/icu/text/MessageFormat;

    iget-object v10, v1, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v10, v10, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v17, 0x6

    aget-object v10, v10, v17

    iget-object v12, v1, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v10, v12}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v7, v3

    move-object v10, v7

    goto :goto_84

    .line 2089
    :cond_83
    move-object v10, v7

    .end local v7    # "numericLeapMonthFormatter":Landroid/icu/text/MessageFormat;
    .local v10, "numericLeapMonthFormatter":Landroid/icu/text/MessageFormat;
    :goto_84
    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v12

    .line 2090
    .local v12, "items":[Ljava/lang/Object;
    const/4 v3, 0x0

    move v7, v5

    move/from16 v18, v6

    move v5, v4

    move v4, v3

    move v3, v0

    .line 2091
    .end local v0    # "pos":I
    .end local v6    # "numericStartPos":I
    .local v3, "pos":I
    .local v4, "i":I
    .local v5, "numericFieldStart":I
    .local v7, "numericFieldLength":I
    .local v18, "numericStartPos":I
    :goto_8f
    array-length v0, v12

    if-ge v4, v0, :cond_217

    .line 2092
    aget-object v0, v12, v4

    instance-of v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v0, :cond_1db

    .line 2094
    aget-object v0, v12, v4

    move-object v6, v0

    check-cast v6, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 2095
    .local v6, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    iget-boolean v0, v6, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    move/from16 v19, v0

    const/4 v0, -0x1

    if-eqz v19, :cond_c6

    .line 2103
    if-ne v5, v0, :cond_c6

    .line 2105
    add-int/lit8 v0, v4, 0x1

    array-length v1, v12

    if-ge v0, v1, :cond_c6

    add-int/lit8 v0, v4, 0x1

    aget-object v0, v12, v0

    instance-of v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v0, :cond_c6

    add-int/lit8 v0, v4, 0x1

    aget-object v0, v12, v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v0, :cond_c6

    .line 2109
    move v0, v4

    .line 2110
    .end local v5    # "numericFieldStart":I
    .local v0, "numericFieldStart":I
    iget v7, v6, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 2111
    move v1, v3

    move/from16 v20, v1

    move/from16 v18, v7

    .end local v18    # "numericStartPos":I
    .local v1, "numericStartPos":I
    goto :goto_cb

    .line 2115
    .end local v0    # "numericFieldStart":I
    .end local v1    # "numericStartPos":I
    .restart local v5    # "numericFieldStart":I
    .restart local v18    # "numericStartPos":I
    :cond_c6
    move v0, v5

    move/from16 v20, v18

    move/from16 v18, v7

    .end local v5    # "numericFieldStart":I
    .end local v7    # "numericFieldLength":I
    .restart local v0    # "numericFieldStart":I
    .local v18, "numericFieldLength":I
    .local v20, "numericStartPos":I
    :goto_cb
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11f

    .line 2117
    iget v1, v6, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 2118
    .local v1, "len":I
    if-ne v0, v4, :cond_d6

    .line 2119
    move/from16 v1, v18

    move v5, v1

    goto :goto_d7

    .line 2118
    :cond_d6
    move v5, v1

    .line 2123
    .end local v1    # "len":I
    .local v5, "len":I
    :goto_d7
    move v1, v4

    .end local v4    # "i":I
    .local v1, "i":I
    iget-char v4, v6, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object v7, v6

    .end local v6    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v7, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    const/4 v6, 0x1

    move-object/from16 v19, v7

    .end local v7    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v19, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    const/4 v7, 0x0

    move/from16 v22, v0

    move-object/from16 v21, v12

    move-object/from16 p2, v15

    move-object/from16 v12, v19

    const/4 v0, 0x1

    move/from16 v19, v1

    move v15, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .end local v0    # "numericFieldStart":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .local v12, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v15, "start":I
    .local v19, "i":I
    .local v21, "items":[Ljava/lang/Object;
    .local v22, "numericFieldStart":I
    .local p2, "resultCal":Landroid/icu/util/Calendar;
    invoke-direct/range {v1 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v3

    .line 2126
    if-gez v3, :cond_116

    .line 2130
    add-int/lit8 v7, v18, -0x1

    .line 2131
    .end local v18    # "numericFieldLength":I
    .local v7, "numericFieldLength":I
    if-nez v7, :cond_107

    .line 2133
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2134
    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2135
    if-eqz v14, :cond_106

    .line 2136
    iget-object v0, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2138
    :cond_106
    return-void

    .line 2140
    :cond_107
    move/from16 v4, v22

    .line 2141
    .end local v19    # "i":I
    .restart local v4    # "i":I
    move/from16 v3, v20

    .line 2142
    move v2, v15

    move/from16 v18, v20

    move-object/from16 v12, v21

    move/from16 v5, v22

    move-object/from16 v15, p2

    goto/16 :goto_8f

    .line 2145
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v7    # "numericFieldLength":I
    .restart local v18    # "numericFieldLength":I
    .restart local v19    # "i":I
    :cond_116
    move-object v6, v14

    move-object/from16 v12, v16

    move/from16 v4, v19

    move-object/from16 v14, v21

    goto/16 :goto_1ce

    .end local v19    # "i":I
    .end local v21    # "items":[Ljava/lang/Object;
    .end local v22    # "numericFieldStart":I
    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .restart local v0    # "numericFieldStart":I
    .restart local v2    # "start":I
    .restart local v4    # "i":I
    .restart local v6    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v12, "items":[Ljava/lang/Object;
    .local v15, "resultCal":Landroid/icu/util/Calendar;
    :cond_11f
    move-object/from16 v1, p0

    move/from16 v22, v0

    move/from16 v19, v4

    move-object/from16 v21, v12

    move-object/from16 p2, v15

    const/4 v0, 0x1

    move v15, v2

    move-object v12, v6

    .end local v0    # "numericFieldStart":I
    .end local v2    # "start":I
    .end local v4    # "i":I
    .end local v6    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v12, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v15, "start":I
    .restart local v19    # "i":I
    .restart local v21    # "items":[Ljava/lang/Object;
    .restart local v22    # "numericFieldStart":I
    .restart local p2    # "resultCal":Landroid/icu/util/Calendar;
    iget-char v2, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_1c5

    .line 2147
    const/16 v22, -0x1

    .line 2149
    move v2, v3

    .line 2150
    .local v2, "s":I
    iget-char v4, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v5, v12, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v21

    move/from16 v21, v2

    move-object/from16 v2, p1

    .end local v2    # "s":I
    .local v12, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v14, "items":[Ljava/lang/Object;
    .local v16, "backupTZ":Landroid/icu/util/TimeZone;
    .local v17, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v21, "s":I
    invoke-direct/range {v1 .. v12}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v3

    .line 2153
    if-gez v3, :cond_1be

    .line 2154
    const/16 v2, -0x7d00

    if-ne v3, v2, :cond_1ac

    .line 2156
    move/from16 v3, v21

    .line 2158
    add-int/lit8 v4, v19, 0x1

    array-length v2, v14

    if-ge v4, v2, :cond_1a5

    .line 2160
    const/4 v2, 0x0

    .line 2163
    .local v2, "patl":Ljava/lang/String;
    add-int/lit8 v4, v19, 0x1

    :try_start_15b
    aget-object v4, v14, v4

    check-cast v4, Ljava/lang/String;
    :try_end_15f
    .catch Ljava/lang/ClassCastException; {:try_start_15b .. :try_end_15f} :catch_18f

    .line 2171
    .end local v2    # "patl":Ljava/lang/String;
    .local v4, "patl":Ljava/lang/String;
    nop

    .line 2174
    if-nez v4, :cond_169

    .line 2175
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v14, v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 2176
    :cond_169
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2177
    .local v2, "plen":I
    const/4 v5, 0x0

    .line 2181
    .local v5, "idx":I
    :goto_16e
    if-ge v5, v2, :cond_184

    .line 2183
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2184
    .local v6, "pch":C
    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_180

    invoke-static {v6}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v7

    if-eqz v7, :cond_184

    .line 2185
    :cond_180
    nop

    .end local v6    # "pch":C
    add-int/lit8 v5, v5, 0x1

    .line 2188
    goto :goto_16e

    .line 2191
    :cond_184
    if-ne v5, v2, :cond_18a

    .line 2192
    add-int/lit8 v6, v19, 0x1

    move v4, v6

    .end local v19    # "i":I
    .local v6, "i":I
    goto :goto_18c

    .line 2191
    .end local v6    # "i":I
    .restart local v19    # "i":I
    :cond_18a
    move/from16 v4, v19

    .line 2195
    .end local v2    # "plen":I
    .end local v5    # "idx":I
    .end local v19    # "i":I
    .local v4, "i":I
    :goto_18c
    move-object/from16 v6, v16

    goto :goto_1ce

    .line 2164
    .end local v4    # "i":I
    .local v2, "patl":Ljava/lang/String;
    .restart local v19    # "i":I
    :catch_18f
    move-exception v0

    .line 2165
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2166
    move/from16 v4, v21

    .end local v21    # "s":I
    .local v4, "s":I
    invoke-virtual {v13, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2167
    if-eqz v16, :cond_1a2

    .line 2168
    iget-object v5, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v6, v16

    .end local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .local v6, "backupTZ":Landroid/icu/util/TimeZone;
    invoke-virtual {v5, v6}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    goto :goto_1a4

    .line 2167
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    :cond_1a2
    move-object/from16 v6, v16

    .line 2170
    .end local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    :goto_1a4
    return-void

    .line 2158
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v2    # "patl":Ljava/lang/String;
    .end local v4    # "s":I
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v21    # "s":I
    :cond_1a5
    move-object/from16 v6, v16

    move/from16 v4, v21

    .end local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v21    # "s":I
    .restart local v4    # "s":I
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    move/from16 v4, v19

    goto :goto_1ce

    .line 2197
    .end local v4    # "s":I
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v21    # "s":I
    :cond_1ac
    move-object/from16 v6, v16

    move/from16 v4, v21

    .end local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v21    # "s":I
    .restart local v4    # "s":I
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2198
    invoke-virtual {v13, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2199
    if-eqz v6, :cond_1bd

    .line 2200
    iget-object v0, v1, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2202
    :cond_1bd
    return-void

    .line 2153
    .end local v4    # "s":I
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .restart local v21    # "s":I
    :cond_1be
    move-object/from16 v6, v16

    move/from16 v4, v21

    .end local v16    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v21    # "s":I
    .restart local v4    # "s":I
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    move/from16 v4, v19

    goto :goto_1ce

    .line 2145
    .end local v4    # "s":I
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v17    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v12, "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .local v14, "backupTZ":Landroid/icu/util/TimeZone;
    .local v16, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v21, "items":[Ljava/lang/Object;
    :cond_1c5
    move-object/from16 v17, v12

    move-object v6, v14

    move-object/from16 v12, v16

    move-object/from16 v14, v21

    .end local v16    # "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .end local v21    # "items":[Ljava/lang/Object;
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .local v12, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v14, "items":[Ljava/lang/Object;
    .restart local v17    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    move/from16 v4, v19

    .line 2207
    .end local v17    # "field":Landroid/icu/text/SimpleDateFormat$PatternItem;
    .end local v19    # "i":I
    .local v4, "i":I
    :goto_1ce
    move-object v2, v1

    move v1, v4

    move-object v4, v14

    move/from16 v7, v18

    move/from16 v18, v20

    move/from16 v5, v22

    const/16 v17, 0x0

    move-object v14, v6

    goto :goto_20c

    .line 2209
    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v20    # "numericStartPos":I
    .end local v22    # "numericFieldStart":I
    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .local v2, "start":I
    .local v5, "numericFieldStart":I
    .restart local v7    # "numericFieldLength":I
    .local v12, "items":[Ljava/lang/Object;
    .local v14, "backupTZ":Landroid/icu/util/TimeZone;
    .local v15, "resultCal":Landroid/icu/util/Calendar;
    .restart local v16    # "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v18, "numericStartPos":I
    :cond_1db
    move/from16 v19, v4

    move-object v6, v14

    move-object/from16 p2, v15

    const/4 v0, 0x1

    move v15, v2

    move-object v14, v12

    move-object/from16 v12, v16

    .end local v2    # "start":I
    .end local v4    # "i":I
    .end local v16    # "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .restart local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .local v12, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v14, "items":[Ljava/lang/Object;
    .local v15, "start":I
    .restart local v19    # "i":I
    .restart local p2    # "resultCal":Landroid/icu/util/Calendar;
    const/16 v16, -0x1

    .line 2210
    .end local v5    # "numericFieldStart":I
    .local v16, "numericFieldStart":I
    move-object v2, v6

    .end local v6    # "backupTZ":Landroid/icu/util/TimeZone;
    .local v2, "backupTZ":Landroid/icu/util/TimeZone;
    new-array v6, v0, [Z

    .line 2211
    .local v6, "complete":[Z
    move-object v4, v14

    move/from16 v5, v19

    move-object v14, v2

    move-object/from16 v2, p1

    .end local v2    # "backupTZ":Landroid/icu/util/TimeZone;
    .end local v19    # "i":I
    .local v4, "items":[Ljava/lang/Object;
    .local v5, "i":I
    .local v14, "backupTZ":Landroid/icu/util/TimeZone;
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v3

    .line 2212
    move-object v2, v1

    move v1, v5

    .end local v5    # "i":I
    .restart local v1    # "i":I
    const/16 v17, 0x0

    aget-boolean v5, v6, v17

    if-nez v5, :cond_20a

    .line 2214
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2215
    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2216
    if-eqz v14, :cond_209

    .line 2217
    iget-object v0, v2, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2219
    :cond_209
    return-void

    .line 2212
    :cond_20a
    move/from16 v5, v16

    .line 2222
    .end local v6    # "complete":[Z
    .end local v16    # "numericFieldStart":I
    .local v5, "numericFieldStart":I
    :goto_20c
    add-int/2addr v1, v0

    move-object/from16 v16, v12

    move-object v12, v4

    move v4, v1

    move-object v1, v2

    move v2, v15

    move-object/from16 v15, p2

    goto/16 :goto_8f

    .line 2226
    .end local v1    # "i":I
    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .local v2, "start":I
    .local v4, "i":I
    .local v12, "items":[Ljava/lang/Object;
    .local v15, "resultCal":Landroid/icu/util/Calendar;
    .local v16, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    :cond_217
    move-object/from16 p2, v15

    const/4 v0, 0x1

    const/4 v6, 0x0

    move v15, v2

    move-object v2, v1

    move v1, v4

    move-object v4, v12

    move-object/from16 v12, v16

    .end local v2    # "start":I
    .end local v16    # "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .restart local v1    # "i":I
    .local v4, "items":[Ljava/lang/Object;
    .local v12, "dayPeriod":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/DayPeriodRules$DayPeriod;>;"
    .local v15, "start":I
    .restart local p2    # "resultCal":Landroid/icu/util/Calendar;
    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_258

    .line 2227
    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2228
    .local v0, "extra":C
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_255

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v2, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_255

    array-length v1, v4

    if-eqz v1, :cond_255

    .line 2230
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    .line 2231
    .local v1, "lastItem":Ljava/lang/Object;
    move/from16 v20, v0

    .end local v0    # "extra":C
    .local v20, "extra":C
    instance-of v0, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v0, :cond_25c

    move-object v0, v1

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v0, :cond_25c

    .line 2232
    add-int/lit8 v3, v3, 0x1

    goto :goto_25c

    .line 2228
    .end local v1    # "lastItem":Ljava/lang/Object;
    .end local v20    # "extra":C
    .restart local v0    # "extra":C
    :cond_255
    move/from16 v20, v0

    .end local v0    # "extra":C
    .restart local v20    # "extra":C
    goto :goto_25c

    .line 2226
    .end local v19    # "i":I
    .end local v20    # "extra":C
    .local v1, "i":I
    :cond_258
    move-object/from16 v6, p1

    move/from16 v19, v1

    .line 2238
    .end local v1    # "i":I
    .restart local v19    # "i":I
    :cond_25c
    :goto_25c
    iget-object v0, v12, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v0, :cond_312

    .line 2239
    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/DayPeriodRules;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;

    move-result-object v0

    .line 2241
    .local v0, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v20

    const/16 v1, 0xb

    if-nez v20, :cond_2a2

    invoke-virtual {v9, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v20

    if-nez v20, :cond_2a2

    .line 2244
    iget-object v1, v12, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v1, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-object/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "numericFieldStart":I
    .local v23, "items":[Ljava/lang/Object;
    .local v24, "numericFieldStart":I
    invoke-virtual {v0, v1}, Landroid/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v4

    .line 2248
    .local v4, "midPoint":D
    double-to-int v1, v4

    .line 2249
    .local v1, "midPointHour":I
    move-wide/from16 v25, v4

    .end local v4    # "midPoint":D
    .local v25, "midPoint":D
    int-to-double v4, v1

    sub-double v4, v25, v4

    const-wide/16 v27, 0x0

    cmpl-double v4, v4, v27

    if-lez v4, :cond_293

    const/16 v4, 0x1e

    goto :goto_294

    :cond_293
    const/4 v4, 0x0

    .line 2252
    .local v4, "midPointMinute":I
    :goto_294
    const/16 v5, 0xb

    invoke-virtual {v9, v5, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2253
    const/16 v5, 0xc

    invoke-virtual {v9, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 2254
    .end local v1    # "midPointHour":I
    .end local v4    # "midPointMinute":I
    .end local v25    # "midPoint":D
    move/from16 v21, v7

    goto/16 :goto_318

    .line 2241
    .end local v23    # "items":[Ljava/lang/Object;
    .end local v24    # "numericFieldStart":I
    .local v4, "items":[Ljava/lang/Object;
    .restart local v5    # "numericFieldStart":I
    :cond_2a2
    move-object/from16 v23, v4

    move/from16 v24, v5

    move v5, v1

    .line 2257
    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "numericFieldStart":I
    .restart local v23    # "items":[Ljava/lang/Object;
    .restart local v24    # "numericFieldStart":I
    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2b2

    .line 2258
    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .local v1, "hourOfDay":I
    goto :goto_2bc

    .line 2260
    .end local v1    # "hourOfDay":I
    :cond_2b2
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 2263
    .restart local v1    # "hourOfDay":I
    if-nez v1, :cond_2bc

    const/16 v1, 0xc

    .line 2265
    :cond_2bc
    :goto_2bc
    nop

    .line 2269
    if-eqz v1, :cond_308

    const/16 v4, 0xd

    if-gt v4, v1, :cond_2cc

    const/16 v4, 0x17

    if-gt v1, v4, :cond_2cc

    move-object/from16 v22, v0

    move/from16 v21, v7

    goto :goto_30c

    .line 2284
    :cond_2cc
    const/16 v5, 0xc

    if-ne v1, v5, :cond_2d1

    const/4 v1, 0x0

    .line 2285
    :cond_2d1
    move v4, v7

    .end local v7    # "numericFieldLength":I
    .local v4, "numericFieldLength":I
    int-to-double v6, v1

    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    move/from16 v21, v4

    .end local v4    # "numericFieldLength":I
    .local v21, "numericFieldLength":I
    int-to-double v4, v5

    const-wide/high16 v25, 0x404e000000000000L    # 60.0

    div-double v4, v4, v25

    add-double/2addr v6, v4

    .line 2286
    .local v6, "currentHour":D
    iget-object v4, v12, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v0, v4}, Landroid/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v4

    .line 2288
    .local v4, "midPointHour":D
    sub-double v25, v6, v4

    .line 2291
    .local v25, "hoursAheadMidPoint":D
    const-wide/high16 v27, -0x3fe8000000000000L    # -6.0

    cmpg-double v20, v27, v25

    move-object/from16 v22, v0

    .end local v0    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .local v22, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    const/16 v0, 0x9

    if-gtz v20, :cond_300

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    cmpg-double v20, v25, v27

    if-gez v20, :cond_300

    .line 2293
    move/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "hourOfDay":I
    .local v20, "hourOfDay":I
    invoke-virtual {v9, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_318

    .line 2291
    .end local v20    # "hourOfDay":I
    .restart local v1    # "hourOfDay":I
    :cond_300
    move/from16 v20, v1

    .line 2295
    .end local v1    # "hourOfDay":I
    .restart local v20    # "hourOfDay":I
    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_318

    .line 2269
    .end local v4    # "midPointHour":D
    .end local v6    # "currentHour":D
    .end local v20    # "hourOfDay":I
    .end local v21    # "numericFieldLength":I
    .end local v22    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v25    # "hoursAheadMidPoint":D
    .restart local v0    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .restart local v1    # "hourOfDay":I
    .restart local v7    # "numericFieldLength":I
    :cond_308
    move-object/from16 v22, v0

    move/from16 v21, v7

    .line 2271
    .end local v0    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v7    # "numericFieldLength":I
    .restart local v21    # "numericFieldLength":I
    .restart local v22    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    :goto_30c
    const/16 v5, 0xb

    invoke-virtual {v9, v5, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_318

    .line 2238
    .end local v1    # "hourOfDay":I
    .end local v21    # "numericFieldLength":I
    .end local v22    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v23    # "items":[Ljava/lang/Object;
    .end local v24    # "numericFieldStart":I
    .local v4, "items":[Ljava/lang/Object;
    .restart local v5    # "numericFieldStart":I
    .restart local v7    # "numericFieldLength":I
    :cond_312
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v21, v7

    .line 2305
    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "numericFieldStart":I
    .end local v7    # "numericFieldLength":I
    .restart local v21    # "numericFieldLength":I
    .restart local v23    # "items":[Ljava/lang/Object;
    .restart local v24    # "numericFieldStart":I
    :goto_318
    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2330
    :try_start_31b
    iget-object v0, v11, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 2331
    .local v0, "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    const/16 v17, 0x0

    aget-boolean v1, v8, v17
    :try_end_323
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31b .. :try_end_323} :catch_4dc

    if-nez v1, :cond_335

    :try_start_325
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;
    :try_end_327
    .catch Ljava/lang/IllegalArgumentException; {:try_start_325 .. :try_end_327} :catch_32e

    if-eq v0, v1, :cond_32a

    goto :goto_335

    :cond_32a
    move-object/from16 v26, v8

    goto/16 :goto_4be

    .line 2453
    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :catch_32e
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v26, v8

    goto/16 :goto_4e1

    .line 2337
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :cond_335
    :goto_335
    const/16 v17, 0x0

    :try_start_337
    aget-boolean v1, v8, v17
    :try_end_339
    .catch Ljava/lang/IllegalArgumentException; {:try_start_337 .. :try_end_339} :catch_4dc

    if-eqz v1, :cond_359

    .line 2338
    :try_start_33b
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    .line 2339
    .local v1, "copy":Landroid/icu/util/Calendar;
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 2340
    .local v4, "parsedDate":Ljava/util/Date;
    invoke-direct {v2}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_359

    .line 2342
    invoke-direct {v2}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    const/4 v6, 0x1

    invoke-virtual {v9, v6, v5}, Landroid/icu/util/Calendar;->set(II)V
    :try_end_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33b .. :try_end_359} :catch_32e

    .line 2345
    .end local v1    # "copy":Landroid/icu/util/Calendar;
    .end local v4    # "parsedDate":Ljava/util/Date;
    :cond_359
    :try_start_359
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;
    :try_end_35b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_359 .. :try_end_35b} :catch_4dc

    if-eq v0, v1, :cond_4ba

    .line 2346
    :try_start_35d
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    .line 2347
    .restart local v1    # "copy":Landroid/icu/util/Calendar;
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 2348
    .local v4, "tz":Landroid/icu/util/TimeZone;
    const/4 v5, 0x0

    .line 2349
    .local v5, "btz":Landroid/icu/util/BasicTimeZone;
    instance-of v6, v4, Landroid/icu/util/BasicTimeZone;
    :try_end_36a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35d .. :try_end_36a} :catch_4b4

    if-eqz v6, :cond_373

    .line 2350
    :try_start_36c
    move-object v6, v4

    check-cast v6, Landroid/icu/util/BasicTimeZone;
    :try_end_36f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36c .. :try_end_36f} :catch_32e

    move-object v5, v6

    move-object/from16 v25, v5

    goto :goto_375

    .line 2349
    :cond_373
    move-object/from16 v25, v5

    .line 2354
    .end local v5    # "btz":Landroid/icu/util/BasicTimeZone;
    .local v25, "btz":Landroid/icu/util/BasicTimeZone;
    :goto_375
    const/16 v5, 0xf

    const/4 v6, 0x0

    :try_start_378
    invoke-virtual {v1, v5, v6}, Landroid/icu/util/Calendar;->set(II)V

    .line 2355
    const/16 v7, 0x10

    invoke-virtual {v1, v7, v6}, Landroid/icu/util/Calendar;->set(II)V

    .line 2356
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 2360
    .local v26, "localMillis":J
    const/4 v6, 0x2

    new-array v6, v6, [I
    :try_end_387
    .catch Ljava/lang/IllegalArgumentException; {:try_start_378 .. :try_end_387} :catch_4b4

    move-object/from16 v30, v6

    .line 2361
    .local v30, "offsets":[I
    if-eqz v25, :cond_3c0

    .line 2362
    :try_start_38b
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;
    :try_end_38d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38b .. :try_end_38d} :catch_3b8

    if-ne v0, v6, :cond_3a2

    .line 2363
    :try_start_38f
    sget-object v28, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v29, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    invoke-virtual/range {v25 .. v30}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    :try_end_396
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38f .. :try_end_396} :catch_32e

    move-object/from16 v5, v25

    move-object/from16 v25, v1

    move-object v1, v5

    move-object/from16 v5, v30

    move-wide/from16 v29, v26

    move-object/from16 v26, v8

    goto :goto_3f3

    .line 2366
    :cond_3a2
    :try_start_3a2
    sget-object v28, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v29, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    invoke-virtual/range {v25 .. v30}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    :try_end_3a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a2 .. :try_end_3a9} :catch_3b8

    move-object/from16 v5, v25

    move-object/from16 v25, v1

    move-object v1, v5

    move-object v6, v8

    move-wide/from16 v7, v26

    move-object/from16 v5, v30

    .end local v8    # "ambiguousYear":[Z
    .end local v26    # "localMillis":J
    .end local v30    # "offsets":[I
    .local v1, "btz":Landroid/icu/util/BasicTimeZone;
    .local v5, "offsets":[I
    .local v6, "ambiguousYear":[Z
    .local v7, "localMillis":J
    .local v25, "copy":Landroid/icu/util/Calendar;
    move-object/from16 v26, v6

    move-wide/from16 v29, v7

    goto :goto_3f3

    .line 2453
    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .end local v1    # "btz":Landroid/icu/util/BasicTimeZone;
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v5    # "offsets":[I
    .end local v6    # "ambiguousYear":[Z
    .end local v7    # "localMillis":J
    .end local v25    # "copy":Landroid/icu/util/Calendar;
    .restart local v8    # "ambiguousYear":[Z
    :catch_3b8
    move-exception v0

    move-object v6, v8

    move-object/from16 v1, p2

    move-object/from16 v26, v6

    .end local v8    # "ambiguousYear":[Z
    .restart local v6    # "ambiguousYear":[Z
    goto/16 :goto_4e1

    .line 2372
    .end local v6    # "ambiguousYear":[Z
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .local v1, "copy":Landroid/icu/util/Calendar;
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    .restart local v8    # "ambiguousYear":[Z
    .local v25, "btz":Landroid/icu/util/BasicTimeZone;
    .restart local v26    # "localMillis":J
    .restart local v30    # "offsets":[I
    :cond_3c0
    move-object/from16 v5, v25

    move-object/from16 v25, v1

    move-object v1, v5

    move-object v6, v8

    move-wide/from16 v7, v26

    move-object/from16 v5, v30

    .end local v8    # "ambiguousYear":[Z
    .end local v26    # "localMillis":J
    .end local v30    # "offsets":[I
    .local v1, "btz":Landroid/icu/util/BasicTimeZone;
    .restart local v5    # "offsets":[I
    .restart local v6    # "ambiguousYear":[Z
    .restart local v7    # "localMillis":J
    .local v25, "copy":Landroid/icu/util/Calendar;
    move-object/from16 v26, v6

    const/4 v6, 0x1

    .end local v6    # "ambiguousYear":[Z
    .local v26, "ambiguousYear":[Z
    :try_start_3cd
    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2374
    move/from16 v16, v6

    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_3dd

    aget v6, v5, v16

    if-nez v6, :cond_3db

    goto :goto_3dd

    :cond_3db
    const/4 v6, 0x1

    goto :goto_3e6

    :cond_3dd
    :goto_3dd
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_3f1

    const/4 v6, 0x1

    aget v16, v5, v6

    if-nez v16, :cond_3f1

    .line 2381
    :goto_3e6
    const-wide/32 v27, 0x5265c00

    move-wide/from16 v29, v7

    .end local v7    # "localMillis":J
    .local v29, "localMillis":J
    sub-long v7, v29, v27

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    goto :goto_3f3

    .line 2374
    .end local v29    # "localMillis":J
    .restart local v7    # "localMillis":J
    :cond_3f1
    move-wide/from16 v29, v7

    .line 2387
    .end local v7    # "localMillis":J
    .restart local v29    # "localMillis":J
    :goto_3f3
    const/16 v16, 0x1

    aget v6, v5, v16

    .line 2388
    .local v6, "resolvedSavings":I
    sget-object v7, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v7, :cond_410

    .line 2389
    aget v7, v5, v16

    if-eqz v7, :cond_408

    .line 2391
    const/4 v6, 0x0

    move-object/from16 v36, v0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    goto/16 :goto_4a1

    .line 2389
    :cond_408
    move-object/from16 v36, v0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    goto/16 :goto_4a1

    .line 2394
    :cond_410
    const/16 v16, 0x1

    aget v7, v5, v16

    if-nez v7, :cond_49b

    .line 2395
    if-eqz v1, :cond_48a

    .line 2398
    const/16 v17, 0x0

    aget v7, v5, v17

    int-to-long v7, v7

    add-long v7, v29, v7

    .line 2399
    .local v7, "baseTime":J
    move-wide/from16 v27, v7

    .line 2400
    .local v27, "time":J
    const-wide v31, 0xdc46c32800L

    add-long v33, v7, v31

    .line 2401
    .local v33, "limit":J
    const/16 v35, 0x0

    move-wide/from16 v39, v27

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v4, v39

    .line 2404
    .end local v5    # "offsets":[I
    .local v4, "time":J
    .local v27, "tz":Landroid/icu/util/TimeZone;
    .local v28, "offsets":[I
    .local v35, "trs":Landroid/icu/util/TimeZoneTransition;
    :goto_432
    cmp-long v36, v4, v33

    if-gez v36, :cond_457

    .line 2405
    move-object/from16 v36, v0

    const/4 v0, 0x0

    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .local v36, "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    invoke-virtual {v1, v4, v5, v0}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v37

    move-object/from16 v35, v37

    .line 2406
    if-nez v35, :cond_442

    .line 2407
    goto :goto_459

    .line 2409
    :cond_442
    invoke-virtual/range {v35 .. v35}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    move v6, v0

    .line 2410
    if-eqz v6, :cond_44e

    .line 2411
    goto :goto_459

    .line 2413
    :cond_44e
    invoke-virtual/range {v35 .. v35}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v37

    move-wide/from16 v4, v37

    move-object/from16 v0, v36

    goto :goto_432

    .line 2404
    .end local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :cond_457
    move-object/from16 v36, v0

    .line 2416
    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :goto_459
    if-nez v6, :cond_489

    .line 2419
    move-wide v4, v7

    .line 2420
    sub-long v31, v7, v31

    .line 2421
    .end local v33    # "limit":J
    .local v31, "limit":J
    :goto_45e
    cmp-long v0, v4, v31

    if-lez v0, :cond_482

    .line 2422
    const/4 v0, 0x1

    invoke-virtual {v1, v4, v5, v0}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v16

    move-object/from16 v35, v16

    .line 2423
    if-nez v35, :cond_46c

    .line 2424
    goto :goto_482

    .line 2426
    :cond_46c
    invoke-virtual/range {v35 .. v35}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v16

    move/from16 v6, v16

    .line 2427
    if-eqz v6, :cond_479

    .line 2428
    goto :goto_482

    .line 2430
    :cond_479
    invoke-virtual/range {v35 .. v35}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v33

    const-wide/16 v37, 0x1

    sub-long v4, v33, v37

    goto :goto_45e

    .line 2433
    :cond_482
    :goto_482
    if-nez v6, :cond_489

    .line 2434
    invoke-virtual {v1}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    move v6, v0

    .line 2437
    .end local v4    # "time":J
    .end local v7    # "baseTime":J
    .end local v31    # "limit":J
    .end local v35    # "trs":Landroid/icu/util/TimeZoneTransition;
    :cond_489
    goto :goto_495

    .line 2438
    .end local v27    # "tz":Landroid/icu/util/TimeZone;
    .end local v28    # "offsets":[I
    .end local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .local v4, "tz":Landroid/icu/util/TimeZone;
    .restart local v5    # "offsets":[I
    :cond_48a
    move-object/from16 v36, v0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v5    # "offsets":[I
    .restart local v27    # "tz":Landroid/icu/util/TimeZone;
    .restart local v28    # "offsets":[I
    .restart local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v0

    move v6, v0

    .line 2440
    :goto_495
    if-nez v6, :cond_4a1

    .line 2442
    const v6, 0x36ee80

    goto :goto_4a1

    .line 2394
    .end local v27    # "tz":Landroid/icu/util/TimeZone;
    .end local v28    # "offsets":[I
    .end local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v4    # "tz":Landroid/icu/util/TimeZone;
    .restart local v5    # "offsets":[I
    :cond_49b
    move-object/from16 v36, v0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    .line 2446
    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .end local v4    # "tz":Landroid/icu/util/TimeZone;
    .end local v5    # "offsets":[I
    .restart local v27    # "tz":Landroid/icu/util/TimeZone;
    .restart local v28    # "offsets":[I
    .restart local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :cond_4a1
    :goto_4a1
    const/16 v17, 0x0

    aget v0, v28, v17

    const/16 v4, 0xf

    invoke-virtual {v9, v4, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2447
    const/16 v0, 0x10

    invoke-virtual {v9, v0, v6}, Landroid/icu/util/Calendar;->set(II)V
    :try_end_4af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3cd .. :try_end_4af} :catch_4b0

    goto :goto_4be

    .line 2453
    .end local v1    # "btz":Landroid/icu/util/BasicTimeZone;
    .end local v6    # "resolvedSavings":I
    .end local v25    # "copy":Landroid/icu/util/Calendar;
    .end local v27    # "tz":Landroid/icu/util/TimeZone;
    .end local v28    # "offsets":[I
    .end local v29    # "localMillis":J
    .end local v36    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    :catch_4b0
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_4e1

    .end local v26    # "ambiguousYear":[Z
    .restart local v8    # "ambiguousYear":[Z
    :catch_4b4
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v1, p2

    .end local v8    # "ambiguousYear":[Z
    .restart local v26    # "ambiguousYear":[Z
    goto :goto_4e1

    .line 2345
    .end local v26    # "ambiguousYear":[Z
    .restart local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v8    # "ambiguousYear":[Z
    :cond_4ba
    move-object/from16 v36, v0

    move-object/from16 v26, v8

    .line 2460
    .end local v0    # "tztype":Landroid/icu/text/TimeZoneFormat$TimeType;
    .end local v8    # "ambiguousYear":[Z
    .restart local v26    # "ambiguousYear":[Z
    :goto_4be
    nop

    .line 2463
    if-eqz p2, :cond_4d2

    .line 2464
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    move-object/from16 v1, p2

    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .local v1, "resultCal":Landroid/icu/util/Calendar;
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2465
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_4d4

    .line 2463
    .end local v1    # "resultCal":Landroid/icu/util/Calendar;
    .restart local p2    # "resultCal":Landroid/icu/util/Calendar;
    :cond_4d2
    move-object/from16 v1, p2

    .line 2468
    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .restart local v1    # "resultCal":Landroid/icu/util/Calendar;
    :goto_4d4
    if-eqz v14, :cond_4db

    .line 2469
    iget-object v0, v2, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2471
    :cond_4db
    return-void

    .line 2453
    .end local v1    # "resultCal":Landroid/icu/util/Calendar;
    .end local v26    # "ambiguousYear":[Z
    .restart local v8    # "ambiguousYear":[Z
    .restart local p2    # "resultCal":Landroid/icu/util/Calendar;
    :catch_4dc
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v26, v8

    .line 2454
    .end local v8    # "ambiguousYear":[Z
    .end local p2    # "resultCal":Landroid/icu/util/Calendar;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "resultCal":Landroid/icu/util/Calendar;
    .restart local v26    # "ambiguousYear":[Z
    :goto_4e1
    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2455
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2456
    if-eqz v14, :cond_4ee

    .line 2457
    iget-object v4, v2, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2459
    :cond_4ee
    return-void
.end method

.method protected whitelist test-api patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .registers 4
    .param p1, "ch"    # C

    .line 1176
    invoke-static {p1}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v0

    .line 1177
    .local v0, "patternCharIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1178
    sget-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object v1, v1, v0

    return-object v1

    .line 1180
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api set2DigitYearStart(Ljava/util/Date;)V
    .registers 2
    .param p1, "startDate"    # Ljava/util/Date;

    .line 957
    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 958
    return-void
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 3
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 980
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 981
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_1b

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1b

    .line 984
    :cond_13
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 986
    :cond_1b
    return-void
.end method

.method public whitelist test-api setDateFormatSymbols(Landroid/icu/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "newFormatSymbols"    # Landroid/icu/text/DateFormatSymbols;

    .line 3736
    invoke-virtual {p1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3737
    return-void
.end method

.method public whitelist test-api setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .registers 4
    .param p1, "newNumberFormat"    # Landroid/icu/text/NumberFormat;

    .line 1922
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    .line 1923
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 1924
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 1926
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1927
    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 1929
    :cond_11
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    .line 1930
    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 1932
    :cond_17
    return-void
.end method

.method public whitelist test-api setNumberFormat(Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .registers 9
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "overrideNF"    # Landroid/icu/text/NumberFormat;

    .line 4243
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4247
    .local v1, "nsName":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-nez v2, :cond_2a

    .line 4248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4250
    :cond_2a
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-nez v2, :cond_35

    .line 4251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4255
    :cond_35
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 4256
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4257
    .local v3, "field":C
    const-string v4, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5a

    .line 4260
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4255
    .end local v3    # "field":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 4258
    .restart local v3    # "field":C
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal field character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in setNumberFormat."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4266
    .end local v2    # "i":I
    .end local v3    # "field":C
    :cond_79
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 4267
    return-void
.end method

.method public whitelist test-api setTimeZoneFormat(Landroid/icu/text/TimeZoneFormat;)V
    .registers 3
    .param p1, "tzfmt"    # Landroid/icu/text/TimeZoneFormat;

    .line 3763
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3765
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    goto :goto_13

    .line 3768
    :cond_9
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    .line 3770
    :goto_13
    return-void
.end method

.method protected blacklist subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)Ljava/lang/String;
    .registers 20
    .param p1, "ch"    # C
    .param p2, "count"    # I
    .param p3, "beginOffset"    # I
    .param p4, "fieldNum"    # I
    .param p5, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p6, "pos"    # Ljava/text/FieldPosition;
    .param p7, "patternCharToOutput"    # C
    .param p8, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v0

    .line 1218
    .local v2, "buf":Ljava/lang/StringBuffer;
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    .line 1219
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api subFormat(CIILjava/text/FieldPosition;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .registers 16
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

    .line 1200
    const/4 v4, 0x0

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    move v7, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v8, p6

    .end local p1    # "ch":C
    .end local p2    # "count":I
    .end local p3    # "beginOffset":I
    .end local p4    # "pos":Ljava/text/FieldPosition;
    .end local p6    # "cal":Landroid/icu/util/Calendar;
    .local v1, "ch":C
    .local v2, "count":I
    .local v3, "beginOffset":I
    .local v6, "pos":Ljava/text/FieldPosition;
    .local v8, "cal":Landroid/icu/util/Calendar;
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V
    .registers 39
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "ch"    # C
    .param p3, "count"    # I
    .param p4, "beginOffset"    # I
    .param p5, "fieldNum"    # I
    .param p6, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p7, "pos"    # Ljava/text/FieldPosition;
    .param p8, "patternCharToOutput"    # C
    .param p9, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v9, p9

    const v11, 0x7fffffff

    .line 1244
    .local v11, "maxIntCount":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 1245
    .local v12, "bufstart":I
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v13

    .line 1246
    .local v13, "tz":Landroid/icu/util/TimeZone;
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 1247
    .local v14, "date":J
    const/16 v16, 0x0

    .line 1249
    .local v16, "result":Ljava/lang/String;
    invoke-static {v10}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v1

    .line 1250
    .local v1, "patternCharIndex":I
    const/16 v3, 0x22

    const/4 v4, -0x1

    if-ne v1, v4, :cond_50

    .line 1251
    const/16 v4, 0x6c

    if-ne v10, v4, :cond_27

    .line 1252
    return-void

    .line 1254
    :cond_27
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal pattern character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1260
    :cond_50
    sget-object v5, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v5, v5, v1

    .line 1261
    .local v5, "field":I
    const/4 v6, 0x0

    .line 1263
    .local v6, "value":I
    if-ltz v5, :cond_64

    .line 1264
    if-eq v1, v3, :cond_5e

    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_62

    :cond_5e
    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getRelatedYear()I

    move-result v3

    :goto_62
    move v6, v3

    goto :goto_65

    .line 1263
    :cond_64
    move v3, v6

    .line 1267
    .end local v6    # "value":I
    .local v3, "value":I
    :goto_65
    invoke-virtual {v0, v10}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v17

    .line 1268
    .local v17, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1270
    .local v18, "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    const/16 v8, 0xb

    const/16 v4, 0xc

    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_aa2

    .line 1720
    :pswitch_73
    move/from16 v10, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    move v11, v1

    move-object v12, v9

    move-object/from16 v1, v17

    move-object/from16 v9, p7

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .local v19, "tz":Landroid/icu/util/TimeZone;
    .local v20, "bufstart":I
    .local v26, "maxIntCount":I
    .local v27, "field":I
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_9e7

    .line 1704
    .end local v19    # "tz":Landroid/icu/util/TimeZone;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v13    # "tz":Landroid/icu/util/TimeZone;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_94
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1705
    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    move v11, v1

    move-object v12, v9

    move-object/from16 v1, v17

    move-object/from16 v9, p7

    goto/16 :goto_9e7

    .line 1617
    :pswitch_b1
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/DayPeriodRules;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;

    move-result-object v2

    .line 1618
    .local v2, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    if-nez v2, :cond_d9

    .line 1624
    move-object v4, v2

    .end local v2    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .local v4, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    const/16 v2, 0x61

    const/16 v8, 0x42

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v10, v3

    move-object/from16 v19, v4

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v11, v1

    move-object/from16 v1, p1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v4    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v5    # "field":I
    .local v10, "value":I
    .local v11, "patternCharIndex":I
    .local v19, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    invoke-virtual/range {v0 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    .line 1625
    move-object v2, v1

    return-void

    .line 1629
    .end local v10    # "value":I
    .end local v19    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .restart local v1    # "patternCharIndex":I
    .restart local v2    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    :cond_d9
    move-object/from16 v19, v2

    move v10, v3

    move/from16 v27, v5

    move/from16 v26, v11

    move-object/from16 v2, p1

    move/from16 v3, p3

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v2    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v3    # "value":I
    .end local v5    # "field":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v19    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    invoke-virtual {v9, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 1630
    .local v1, "hour":I
    const/4 v5, 0x0

    .line 1631
    .local v5, "minute":I
    const/4 v8, 0x0

    .line 1632
    .local v8, "second":I
    iget-boolean v7, v0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v7, :cond_f3

    invoke-virtual {v9, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    :cond_f3
    move/from16 v22, v5

    .line 1633
    .end local v5    # "minute":I
    .local v22, "minute":I
    iget-boolean v5, v0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v5, :cond_ff

    const/16 v5, 0xd

    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    :cond_ff
    move/from16 v20, v8

    .line 1637
    .end local v8    # "second":I
    .local v20, "second":I
    if-nez v1, :cond_113

    if-nez v22, :cond_113

    if-nez v20, :cond_113

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/DayPeriodRules;->hasMidnight()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1638
    sget-object v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-object v5, v4

    move-object/from16 v4, v19

    .local v4, "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    goto :goto_12b

    .line 1639
    .end local v4    # "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    :cond_113
    if-ne v1, v4, :cond_125

    if-nez v22, :cond_125

    if-nez v20, :cond_125

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/DayPeriodRules;->hasNoon()Z

    move-result v4

    if-eqz v4, :cond_125

    .line 1640
    sget-object v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-object v5, v4

    move-object/from16 v4, v19

    .restart local v4    # "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    goto :goto_12b

    .line 1642
    .end local v4    # "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    :cond_125
    move-object/from16 v4, v19

    .end local v19    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .local v4, "ruleSet":Landroid/icu/impl/DayPeriodRules;
    invoke-virtual {v4, v1}, Landroid/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v5

    .line 1650
    .local v5, "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    :goto_12b
    nop

    .line 1651
    const/4 v7, 0x0

    .line 1654
    .local v7, "toAppend":Ljava/lang/String;
    sget-object v8, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v8, :cond_15a

    sget-object v8, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v8, :cond_15a

    sget-object v8, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v8, :cond_15a

    .line 1656
    invoke-virtual {v5}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v8

    .line 1657
    .local v8, "index":I
    if-gt v3, v6, :cond_146

    .line 1658
    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v6, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v7, v6, v8

    goto :goto_15a

    .line 1659
    :cond_146
    const/4 v6, 0x4

    if-eq v3, v6, :cond_154

    const/4 v6, 0x5

    if-le v3, v6, :cond_14d

    goto :goto_154

    .line 1662
    :cond_14d
    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v6, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v7, v6, v8

    goto :goto_15a

    .line 1660
    :cond_154
    :goto_154
    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v6, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v7, v6, v8

    .line 1671
    .end local v8    # "index":I
    :cond_15a
    :goto_15a
    if-nez v7, :cond_18e

    sget-object v6, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v6, :cond_164

    sget-object v6, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v5, v6, :cond_18e

    .line 1674
    :cond_164
    invoke-virtual {v4, v1}, Landroid/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v5

    .line 1675
    invoke-virtual {v5}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v6

    .line 1677
    .local v6, "index":I
    const/4 v8, 0x3

    if-gt v3, v8, :cond_177

    .line 1678
    iget-object v8, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v8, v8, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v7, v8, v6

    move-object v6, v7

    goto :goto_18f

    .line 1679
    :cond_177
    const/4 v8, 0x4

    if-eq v3, v8, :cond_186

    const/4 v8, 0x5

    if-le v3, v8, :cond_17e

    goto :goto_186

    .line 1682
    :cond_17e
    iget-object v8, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v8, v8, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v7, v8, v6

    move-object v6, v7

    goto :goto_18f

    .line 1680
    :cond_186
    :goto_186
    iget-object v8, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v8, v8, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v7, v8, v6

    move-object v6, v7

    goto :goto_18f

    .line 1687
    .end local v6    # "index":I
    :cond_18e
    move-object v6, v7

    .end local v7    # "toAppend":Ljava/lang/String;
    .local v6, "toAppend":Ljava/lang/String;
    :goto_18f
    sget-object v7, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v7, :cond_1ad

    sget-object v7, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v5, v7, :cond_1ad

    if-nez v6, :cond_19a

    goto :goto_1ad

    .line 1697
    :cond_19a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1700
    move/from16 v6, p4

    move-object/from16 v7, p6

    move v3, v10

    move/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_9e7

    .line 1693
    :cond_1ad
    :goto_1ad
    const/16 v2, 0x61

    const/16 v8, 0x42

    move-object/from16 v7, p7

    move/from16 v21, v1

    move-object/from16 v19, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .end local v1    # "hour":I
    .end local v4    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v5    # "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .end local v6    # "toAppend":Ljava/lang/String;
    .restart local v19    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .local v21, "hour":I
    .local v23, "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .local v24, "toAppend":Ljava/lang/String;
    invoke-virtual/range {v0 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    .line 1694
    return-void

    .line 1577
    .end local v10    # "value":I
    .end local v19    # "ruleSet":Landroid/icu/impl/DayPeriodRules;
    .end local v20    # "second":I
    .end local v21    # "hour":I
    .end local v22    # "minute":I
    .end local v23    # "periodType":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .end local v24    # "toAppend":Ljava/lang/String;
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .local v5, "field":I
    .local v11, "maxIntCount":I
    :pswitch_1c7
    move v10, v3

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v3, p3

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    invoke-virtual {v9, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 1578
    .local v1, "hour":I
    const/4 v2, 0x0

    .line 1583
    .local v2, "toAppend":Ljava/lang/String;
    if-ne v1, v4, :cond_21a

    iget-boolean v5, v0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v5, :cond_1e0

    .line 1584
    invoke-virtual {v9, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_21a

    :cond_1e0
    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v4, :cond_1ec

    .line 1585
    const/16 v5, 0xd

    invoke-virtual {v9, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_21a

    .line 1589
    :cond_1ec
    const/16 v4, 0x9

    invoke-virtual {v9, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    .line 1591
    .end local v10    # "value":I
    .local v4, "value":I
    const/4 v8, 0x3

    if-gt v3, v8, :cond_1ff

    .line 1592
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v2, v5, v4

    move-object v10, v2

    move/from16 v19, v4

    goto :goto_21d

    .line 1593
    :cond_1ff
    const/4 v6, 0x4

    if-eq v3, v6, :cond_210

    const/4 v6, 0x5

    if-le v3, v6, :cond_206

    goto :goto_210

    .line 1596
    :cond_206
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v2, v5, v4

    move-object v10, v2

    move/from16 v19, v4

    goto :goto_21d

    .line 1594
    :cond_210
    :goto_210
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v2, v5, v4

    move-object v10, v2

    move/from16 v19, v4

    goto :goto_21d

    .line 1600
    .end local v4    # "value":I
    .restart local v10    # "value":I
    :cond_21a
    move/from16 v19, v10

    move-object v10, v2

    .end local v2    # "toAppend":Ljava/lang/String;
    .local v10, "toAppend":Ljava/lang/String;
    .local v19, "value":I
    :goto_21d
    if-nez v10, :cond_23e

    .line 1606
    const/16 v2, 0x61

    const/16 v8, 0x62

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v21, v1

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v1, p1

    .end local v1    # "hour":I
    .end local v12    # "bufstart":I
    .local v20, "bufstart":I
    .restart local v21    # "hour":I
    invoke-virtual/range {v0 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    move-object v2, v1

    move-object v8, v9

    move-object v9, v7

    move-object v7, v6

    move v6, v4

    move v4, v3

    goto :goto_253

    .line 1608
    .end local v20    # "bufstart":I
    .end local v21    # "hour":I
    .restart local v1    # "hour":I
    .restart local v12    # "bufstart":I
    :cond_23e
    move-object/from16 v2, p1

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v21, v1

    move v4, v3

    move-object v8, v9

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    .end local v1    # "hour":I
    .end local v12    # "bufstart":I
    .restart local v20    # "bufstart":I
    .restart local v21    # "hour":I
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1611
    nop

    .line 1724
    .end local v10    # "toAppend":Ljava/lang/String;
    .end local v21    # "hour":I
    :goto_253
    move-object v12, v8

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    move/from16 v3, v19

    move-object/from16 v19, v13

    goto/16 :goto_9e9

    .line 1509
    .end local v19    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    :pswitch_25e
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .local v10, "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-ne v4, v12, :cond_281

    .line 1511
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2c3

    .line 1512
    :cond_281
    const/4 v1, 0x2

    if-ne v4, v1, :cond_291

    .line 1514
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2c3

    .line 1515
    :cond_291
    const/4 v1, 0x3

    if-ne v4, v1, :cond_2a1

    .line 1517
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2c3

    .line 1518
    :cond_2a1
    const/4 v1, 0x4

    if-ne v4, v1, :cond_2b1

    .line 1520
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2c3

    .line 1521
    :cond_2b1
    const/4 v1, 0x5

    if-ne v4, v1, :cond_2c1

    .line 1523
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2c3

    .line 1521
    :cond_2c1
    move-object/from16 v1, v16

    .line 1525
    .end local v16    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_2c3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    move-object/from16 v16, v1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1490
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    :pswitch_2d2
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-ne v4, v12, :cond_2f5

    .line 1492
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_337

    .line 1493
    :cond_2f5
    const/4 v1, 0x2

    if-ne v4, v1, :cond_305

    .line 1495
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_337

    .line 1496
    :cond_305
    const/4 v1, 0x3

    if-ne v4, v1, :cond_315

    .line 1498
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_337

    .line 1499
    :cond_315
    const/4 v1, 0x4

    if-ne v4, v1, :cond_325

    .line 1501
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_337

    .line 1502
    :cond_325
    const/4 v1, 0x5

    if-ne v4, v1, :cond_335

    .line 1504
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_337

    .line 1502
    :cond_335
    move-object/from16 v1, v16

    .line 1506
    .end local v16    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    move-object/from16 v16, v1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1480
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    :pswitch_346
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-ne v4, v12, :cond_369

    .line 1482
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_37b

    .line 1483
    :cond_369
    const/4 v1, 0x4

    if-ne v4, v1, :cond_379

    .line 1485
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_37b

    .line 1483
    :cond_379
    move-object/from16 v1, v16

    .line 1487
    .end local v16    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_37b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1488
    move-object/from16 v16, v1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1289
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    :pswitch_38a
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v1, :cond_3bc

    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v1, v1

    if-gt v10, v1, :cond_3bc

    .line 1290
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    add-int/lit8 v3, v10, -0x1

    invoke-static {v1, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1291
    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    goto/16 :goto_9e7

    .line 1289
    :cond_3bc
    move v1, v4

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v21, v17

    move-object v8, v2

    goto/16 :goto_940

    .line 1463
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .restart local v1    # "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    :pswitch_3c6
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-ne v4, v12, :cond_3e9

    .line 1465
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_41d

    .line 1466
    :cond_3e9
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3f9

    .line 1468
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_41d

    .line 1469
    :cond_3f9
    const/4 v1, 0x3

    if-ne v4, v1, :cond_409

    .line 1471
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_41d

    .line 1472
    :cond_409
    const/4 v1, 0x4

    if-ne v4, v1, :cond_41b

    .line 1474
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    .line 1475
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v1, v16

    goto :goto_41d

    .line 1472
    :cond_41b
    move-object/from16 v1, v16

    .line 1477
    .end local v16    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_41d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    move-object/from16 v16, v1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1562
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    :pswitch_42c
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    .end local v1    # "patternCharIndex":I
    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v1, 0x5

    if-lt v4, v1, :cond_454

    .line 1563
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v10, 0x3

    invoke-static {v1, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    goto/16 :goto_9e7

    .line 1564
    :cond_454
    const/4 v1, 0x4

    if-ne v4, v1, :cond_468

    .line 1565
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v10, 0x3

    invoke-static {v1, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    goto/16 :goto_9e7

    .line 1566
    :cond_468
    const/4 v1, 0x3

    if-ne v4, v1, :cond_47c

    .line 1567
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v10, 0x3

    invoke-static {v1, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    goto/16 :goto_9e7

    .line 1569
    :cond_47c
    div-int/lit8 v3, v10, 0x3

    add-int/2addr v3, v12

    const v5, 0x7fffffff

    move-object/from16 v1, v17

    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1571
    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1551
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_48d
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v3, 0x5

    if-lt v4, v3, :cond_4b5

    .line 1552
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    div-int/lit8 v5, v10, 0x3

    invoke-static {v3, v5, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1553
    :cond_4b5
    const/4 v3, 0x4

    if-ne v4, v3, :cond_4c7

    .line 1554
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    div-int/lit8 v5, v10, 0x3

    invoke-static {v3, v5, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1555
    :cond_4c7
    const/4 v3, 0x3

    if-ne v4, v3, :cond_4d9

    .line 1556
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/lit8 v5, v10, 0x3

    invoke-static {v3, v5, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1558
    :cond_4d9
    div-int/lit8 v3, v10, 0x3

    add-int/2addr v3, v12

    const v5, 0x7fffffff

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1560
    move v0, v4

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1529
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_4ed
    move/from16 v0, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_518

    .line 1530
    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object/from16 v2, p1

    move v3, v10

    move v10, v0

    move-object/from16 v0, p0

    .end local v10    # "value":I
    .restart local v3    # "value":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1531
    move-object v12, v8

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1535
    .end local v3    # "value":I
    .restart local v10    # "value":I
    :cond_518
    move-object/from16 v2, p1

    move v3, v10

    move v10, v0

    move-object/from16 v0, p0

    .end local v10    # "value":I
    .restart local v3    # "value":I
    const/4 v4, 0x7

    invoke-virtual {v8, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 1536
    const/4 v4, 0x5

    if-ne v10, v4, :cond_536

    .line 1537
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1538
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1539
    :cond_536
    const/4 v4, 0x4

    if-ne v10, v4, :cond_549

    .line 1540
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1541
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1542
    :cond_549
    const/4 v4, 0x6

    if-ne v10, v4, :cond_562

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v4, :cond_562

    .line 1543
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1544
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1546
    :cond_562
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1547
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1549
    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1451
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_572
    move/from16 v10, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-ne v10, v12, :cond_598

    .line 1453
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4, v5, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    .line 1454
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v4, v16

    goto :goto_5ac

    .line 1455
    :cond_598
    const/4 v4, 0x4

    if-ne v10, v4, :cond_5aa

    .line 1457
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4, v5, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v16

    .line 1458
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v4, v16

    goto :goto_5ac

    .line 1455
    :cond_5aa
    move-object/from16 v4, v16

    .line 1460
    .end local v16    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_5ac
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    move-object/from16 v16, v4

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1438
    .end local v4    # "result":Ljava/lang/String;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_5b8
    move/from16 v10, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v4, 0x4

    if-ge v10, v4, :cond_5db

    .line 1440
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4, v5, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .end local v16    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5f3

    .line 1441
    .end local v4    # "result":Ljava/lang/String;
    .restart local v16    # "result":Ljava/lang/String;
    :cond_5db
    const/4 v4, 0x5

    if-ne v10, v4, :cond_5e9

    .line 1443
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4, v5, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .end local v16    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5f3

    .line 1446
    .end local v4    # "result":Ljava/lang/String;
    .restart local v16    # "result":Ljava/lang/String;
    :cond_5e9
    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4, v5, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1448
    .end local v16    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_5f3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1449
    move-object/from16 v16, v4

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1385
    .end local v4    # "result":Ljava/lang/String;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_5ff
    move/from16 v10, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v4, 0x3

    if-ge v10, v4, :cond_626

    .line 1386
    const v5, 0x7fffffff

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1387
    move v10, v3

    .end local v3    # "value":I
    .restart local v10    # "value":I
    move-object/from16 v0, p0

    move-object v12, v8

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1391
    .end local v10    # "value":I
    .restart local v3    # "value":I
    :cond_626
    move v4, v10

    move v10, v3

    .end local v3    # "value":I
    .restart local v10    # "value":I
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    move-object/from16 v0, p0

    .end local v10    # "value":I
    .restart local v3    # "value":I
    goto/16 :goto_709

    .line 1427
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_631
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v3, 0x4

    if-ge v4, v3, :cond_659

    .line 1429
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1430
    .end local v16    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v18, v3

    .end local v18    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .local v3, "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    goto :goto_667

    .line 1432
    .end local v0    # "result":Ljava/lang/String;
    .end local v3    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v18    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    :cond_659
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1433
    .end local v16    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v18, v3

    .line 1435
    :goto_667
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1436
    move-object/from16 v16, v0

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_9e9

    .line 1417
    .end local v0    # "result":Ljava/lang/String;
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .local v3, "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_676
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-nez v10, :cond_6a7

    .line 1418
    nop

    .line 1419
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 1418
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    move-object/from16 v2, p1

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1422
    :cond_6a7
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v3, v10

    .end local v10    # "value":I
    .restart local v3    # "value":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1424
    .end local v3    # "value":I
    .restart local v10    # "value":I
    move-object v12, v8

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1410
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_6b9
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    const/4 v3, 0x5

    if-lt v4, v3, :cond_6e6

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v3, :cond_6d9

    goto :goto_6e6

    .line 1413
    :cond_6d9
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-static {v3, v10, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1415
    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1411
    :cond_6e6
    :goto_6e6
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v10, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    move-object v12, v8

    move v3, v10

    move-object/from16 v19, v13

    goto/16 :goto_9e7

    .line 1270
    .end local v10    # "value":I
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v3    # "value":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_6f3
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .line 1394
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    :goto_709
    const/4 v5, 0x5

    if-ne v4, v5, :cond_71c

    .line 1395
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v5, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1396
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1397
    :cond_71c
    const/4 v5, 0x4

    if-ne v4, v5, :cond_72f

    .line 1398
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v5, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1399
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1400
    :cond_72f
    const/4 v5, 0x6

    if-ne v4, v5, :cond_748

    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v5, :cond_748

    .line 1401
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    invoke-static {v5, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1402
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1404
    :cond_748
    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v5, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1405
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1407
    move-object v12, v8

    move-object/from16 v19, v13

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1369
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_758
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move-object v8, v9

    move/from16 v26, v11

    move/from16 v20, v12

    const/4 v12, 0x1

    const/16 v25, 0x0

    move-object/from16 v9, p7

    move v11, v1

    move-object/from16 v1, v17

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1370
    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1371
    const/4 v12, 0x1

    if-ne v4, v12, :cond_786

    .line 1372
    div-int/lit8 v3, v10, 0x64

    .end local v10    # "value":I
    .restart local v3    # "value":I
    goto :goto_78d

    .line 1373
    .end local v3    # "value":I
    .restart local v10    # "value":I
    :cond_786
    const/4 v3, 0x2

    if-ne v4, v3, :cond_78c

    .line 1374
    div-int/lit8 v3, v10, 0xa

    .end local v10    # "value":I
    .restart local v3    # "value":I
    goto :goto_78d

    .line 1373
    .end local v3    # "value":I
    .restart local v10    # "value":I
    :cond_78c
    move v3, v10

    .line 1376
    .end local v10    # "value":I
    .restart local v3    # "value":I
    :goto_78d
    new-instance v5, Ljava/text/FieldPosition;

    const/4 v10, -0x1

    invoke-direct {v5, v10}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1377
    .local v5, "p":Ljava/text/FieldPosition;
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    move-object/from16 v19, v13

    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .local v19, "tz":Landroid/icu/util/TimeZone;
    int-to-long v12, v3

    invoke-virtual {v10, v12, v13, v2, v5}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1378
    const/4 v10, 0x3

    if-le v4, v10, :cond_7ac

    .line 1379
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    add-int/lit8 v12, v4, -0x3

    invoke-virtual {v10, v12}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1380
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13, v2, v5}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1383
    .end local v5    # "p":Ljava/text/FieldPosition;
    :cond_7ac
    move-object v12, v8

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1358
    .end local v19    # "tz":Landroid/icu/util/TimeZone;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .local v5, "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v13    # "tz":Landroid/icu/util/TimeZone;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_7b1
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v10, v3

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    const/16 v25, 0x0

    move v11, v1

    move-object v12, v9

    move-object/from16 v1, v17

    move-object/from16 v9, p7

    .end local v3    # "value":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v10    # "value":I
    .local v11, "patternCharIndex":I
    .restart local v19    # "tz":Landroid/icu/util/TimeZone;
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    if-nez v10, :cond_7e0

    .line 1359
    nop

    .line 1360
    invoke-virtual {v12, v8}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 1359
    const v5, 0x7fffffff

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v3, v10

    goto/16 :goto_9e7

    .line 1363
    :cond_7e0
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v3, v10

    .end local v10    # "value":I
    .restart local v3    # "value":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1365
    move-object v8, v2

    goto/16 :goto_9e7

    .line 1314
    .end local v19    # "tz":Landroid/icu/util/TimeZone;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v13    # "tz":Landroid/icu/util/TimeZone;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_7f0
    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object v8, v2

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    const/16 v25, 0x0

    move v11, v1

    move-object v12, v9

    move-object/from16 v1, v17

    move-object/from16 v9, p7

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v19    # "tz":Landroid/icu/util/TimeZone;
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    invoke-virtual {v12}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "hebrew"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_834

    .line 1315
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    .line 1316
    .local v2, "isLeap":Z
    if-eqz v2, :cond_826

    const/4 v5, 0x6

    if-ne v3, v5, :cond_826

    const/4 v10, 0x3

    if-lt v4, v10, :cond_826

    .line 1317
    const/16 v3, 0xd

    .line 1319
    :cond_826
    if-nez v2, :cond_832

    const/4 v5, 0x6

    if-lt v3, v5, :cond_832

    const/4 v10, 0x3

    if-ge v4, v10, :cond_832

    .line 1320
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    goto :goto_835

    .line 1323
    .end local v2    # "isLeap":Z
    :cond_832
    move v10, v3

    goto :goto_835

    .line 1314
    :cond_834
    move v10, v3

    .line 1323
    .end local v3    # "value":I
    .restart local v10    # "value":I
    :goto_835
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v2, :cond_84a

    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_84a

    .line 1324
    const/16 v2, 0x16

    invoke-virtual {v12, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    goto :goto_84c

    :cond_84a
    move/from16 v2, v25

    :goto_84c
    move v13, v2

    .line 1326
    .local v13, "isLeapMonth":I
    const/16 v21, 0x0

    const/4 v3, 0x5

    if-ne v4, v3, :cond_882

    .line 1327
    const/4 v3, 0x2

    if-ne v11, v3, :cond_867

    .line 1328
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v13, :cond_861

    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v21, v5, v3

    :cond_861
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_87a

    .line 1330
    :cond_867
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v13, :cond_875

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v24, 0x5

    aget-object v21, v3, v24

    :cond_875
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1332
    :goto_87a
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1333
    :cond_882
    const/4 v3, 0x4

    if-ne v4, v3, :cond_8bb

    .line 1334
    const/4 v3, 0x2

    if-ne v11, v3, :cond_8a1

    .line 1335
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v13, :cond_894

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v21, v3, v25

    :cond_894
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1336
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1338
    :cond_8a1
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v13, :cond_8ae

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v21, v3, v5

    :cond_8ae
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1339
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1341
    :cond_8bb
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8f7

    .line 1342
    const/4 v3, 0x2

    if-ne v11, v3, :cond_8dc

    .line 1343
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v13, :cond_8cf

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v21, v3, v17

    :cond_8cf
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1344
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1346
    :cond_8dc
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v13, :cond_8ea

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v28, 0x4

    aget-object v21, v3, v28

    :cond_8ea
    move-object/from16 v3, v21

    invoke-static {v2, v10, v8, v3}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1347
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    goto/16 :goto_9e9

    .line 1350
    :cond_8f7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1351
    .local v2, "monthNumber":Ljava/lang/StringBuffer;
    add-int/lit8 v3, v10, 0x1

    const v5, 0x7fffffff

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1352
    move-object v3, v2

    move-object v2, v1

    move v1, v4

    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v2, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v3, "monthNumber":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 1353
    .local v5, "monthNumberStrings":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v25

    .line 1354
    if-eqz v13, :cond_91a

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/16 v22, 0x6

    aget-object v21, v4, v22

    :cond_91a
    move-object/from16 v4, v21

    move-object/from16 v21, v2

    move/from16 v2, v25

    .end local v2    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v21, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-static {v5, v2, v8, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1356
    .end local v3    # "monthNumber":Ljava/lang/StringBuffer;
    .end local v5    # "monthNumberStrings":[Ljava/lang/String;
    move-object v2, v8

    move v3, v10

    move-object/from16 v4, v18

    move-object/from16 v1, v21

    goto/16 :goto_9e9

    .line 1270
    .end local v10    # "value":I
    .end local v19    # "tz":Landroid/icu/util/TimeZone;
    .end local v20    # "bufstart":I
    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .local v3, "value":I
    .local v5, "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .local v13, "tz":Landroid/icu/util/TimeZone;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_92b
    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object v8, v2

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v17

    move v11, v1

    move-object v12, v9

    move/from16 v1, p3

    move-object/from16 v9, p7

    .line 1296
    .end local v1    # "patternCharIndex":I
    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v19    # "tz":Landroid/icu/util/TimeZone;
    .restart local v20    # "bufstart":I
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    :goto_940
    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v2, :cond_962

    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v4, "hebr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_958

    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v4, "y=hebr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_962

    :cond_958
    const/16 v2, 0x1388

    if-le v3, v2, :cond_962

    const/16 v2, 0x1770

    if-ge v3, v2, :cond_962

    .line 1298
    add-int/lit16 v3, v3, -0x1388

    .line 1306
    :cond_962
    const/4 v2, 0x2

    if-ne v1, v2, :cond_975

    .line 1307
    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v2, v8

    move-object/from16 v1, v21

    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v10, p3

    goto/16 :goto_9e7

    .line 1309
    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_975
    move-object/from16 v1, v21

    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1311
    move v10, v4

    goto/16 :goto_9e7

    .line 1272
    .end local v19    # "tz":Landroid/icu/util/TimeZone;
    .end local v20    # "bufstart":I
    .end local v26    # "maxIntCount":I
    .end local v27    # "field":I
    .local v1, "patternCharIndex":I
    .restart local v5    # "field":I
    .local v11, "maxIntCount":I
    .restart local v12    # "bufstart":I
    .restart local v13    # "tz":Landroid/icu/util/TimeZone;
    .restart local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :pswitch_986
    move/from16 v10, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v27, v5

    move/from16 v26, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    move v11, v1

    move-object v12, v9

    move-object/from16 v1, v17

    move-object/from16 v9, p7

    .end local v5    # "field":I
    .end local v12    # "bufstart":I
    .end local v13    # "tz":Landroid/icu/util/TimeZone;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v1, "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .local v11, "patternCharIndex":I
    .restart local v19    # "tz":Landroid/icu/util/TimeZone;
    .restart local v20    # "bufstart":I
    .restart local v26    # "maxIntCount":I
    .restart local v27    # "field":I
    invoke-virtual {v12}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chinese"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9dd

    invoke-virtual {v12}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dangi"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b3

    goto :goto_9dd

    .line 1276
    :cond_9b3
    const/4 v4, 0x5

    if-ne v10, v4, :cond_9c2

    .line 1277
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1278
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v4, v18

    goto :goto_9e9

    .line 1279
    :cond_9c2
    const/4 v4, 0x4

    if-ne v10, v4, :cond_9d1

    .line 1280
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1281
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-object/from16 v4, v18

    goto :goto_9e9

    .line 1283
    :cond_9d1
    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1284
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1287
    move-object/from16 v4, v18

    goto :goto_9e9

    .line 1274
    :cond_9dd
    :goto_9dd
    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1724
    :goto_9e7
    move-object/from16 v4, v18

    .end local v18    # "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .local v4, "capContextUsageType":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    :goto_9e9
    if-nez p5, :cond_a62

    if-eqz v7, :cond_a62

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move/from16 v8, v20

    .end local v20    # "bufstart":I
    .local v8, "bufstart":I
    if-le v5, v8, :cond_a5f

    .line 1725
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_a5c

    .line 1726
    const/4 v5, 0x0

    .line 1727
    .local v5, "titlecase":Z
    sget-object v10, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    invoke-virtual {v7}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v13

    aget v10, v10, v13

    packed-switch v10, :pswitch_data_af2

    goto :goto_a2d

    .line 1733
    :pswitch_a0c
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v10, v10, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v10, :cond_a2d

    .line 1734
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v10, v10, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Z

    .line 1735
    .local v10, "transforms":[Z
    sget-object v13, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v7, v13, :cond_a25

    .line 1736
    const/16 v25, 0x0

    aget-boolean v13, v10, v25

    goto :goto_a29

    :cond_a25
    const/16 v17, 0x1

    aget-boolean v13, v10, v17

    :goto_a29
    move v5, v13

    .line 1737
    .end local v10    # "transforms":[Z
    goto :goto_a2d

    .line 1729
    :pswitch_a2b
    const/4 v5, 0x1

    .line 1730
    nop

    .line 1742
    :cond_a2d
    :goto_a2d
    if-eqz v5, :cond_a59

    .line 1743
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v10, :cond_a3b

    .line 1745
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v10}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v10

    iput-object v10, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 1749
    :cond_a3b
    iget-object v10, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    invoke-virtual {v10}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/text/BreakIterator;

    .line 1750
    .local v10, "mutableCapitalizationBrkIter":Landroid/icu/text/BreakIterator;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1751
    .local v13, "firstField":Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    iget-object v1, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    const/16 v0, 0x300

    invoke-static {v1, v13, v10, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "firstFieldTitleCase":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v2, v8, v1, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a66

    .line 1742
    .end local v0    # "firstFieldTitleCase":Ljava/lang/String;
    .end local v10    # "mutableCapitalizationBrkIter":Landroid/icu/text/BreakIterator;
    .end local v13    # "firstField":Ljava/lang/String;
    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_a59
    move-object/from16 v21, v1

    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    goto :goto_a66

    .line 1725
    .end local v5    # "titlecase":Z
    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_a5c
    move-object/from16 v21, v1

    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    goto :goto_a66

    .line 1724
    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :cond_a5f
    move-object/from16 v21, v1

    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    goto :goto_a66

    .end local v8    # "bufstart":I
    .end local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .restart local v20    # "bufstart":I
    :cond_a62
    move-object/from16 v21, v1

    move/from16 v8, v20

    .line 1758
    .end local v1    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    .end local v20    # "bufstart":I
    .restart local v8    # "bufstart":I
    .restart local v21    # "currentNumberFormat":Landroid/icu/text/NumberFormat;
    :goto_a66
    invoke-static/range {p8 .. p8}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v0

    .line 1759
    .local v0, "outputCharIndex":I
    invoke-virtual {v9}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {v9}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-ne v1, v5, :cond_aa1

    .line 1760
    invoke-virtual {v9}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    sget-object v5, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v5, v5, v0

    if-ne v1, v5, :cond_a8b

    .line 1761
    invoke-virtual {v9, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1762
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, v6

    sub-int/2addr v1, v8

    invoke-virtual {v9, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_aa1

    .line 1763
    :cond_a8b
    invoke-virtual {v9}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v5, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object v5, v5, v0

    if-ne v1, v5, :cond_aa1

    .line 1765
    invoke-virtual {v9, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1766
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, v6

    sub-int/2addr v1, v8

    invoke-virtual {v9, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1769
    :cond_aa1
    :goto_aa1
    return-void

    :pswitch_data_aa2
    .packed-switch 0x0
        :pswitch_986
        :pswitch_92b
        :pswitch_7f0
        :pswitch_73
        :pswitch_7b1
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_758
        :pswitch_6f3
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_6b9
        :pswitch_676
        :pswitch_73
        :pswitch_631
        :pswitch_92b
        :pswitch_5ff
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_5b8
        :pswitch_572
        :pswitch_4ed
        :pswitch_7f0
        :pswitch_48d
        :pswitch_42c
        :pswitch_3c6
        :pswitch_38a
        :pswitch_346
        :pswitch_2d2
        :pswitch_25e
        :pswitch_73
        :pswitch_1c7
        :pswitch_b1
        :pswitch_94
    .end packed-switch

    :pswitch_data_af2
    .packed-switch 0x1
        :pswitch_a2b
        :pswitch_a0c
        :pswitch_a0c
    .end packed-switch
.end method

.method protected whitelist test-api subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .registers 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "ch"    # C
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "allowNegative"    # Z
    .param p7, "ambiguousYear"    # [Z
    .param p8, "cal"    # Landroid/icu/util/Calendar;

    .line 2830
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v9

    return v9
.end method

.method public whitelist test-api toLocalizedPattern()Ljava/lang/String;
    .registers 4

    .line 3667
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v2, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 3654
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist test-api zeroPaddingNumber(JII)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # J
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I

    .line 2010
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p3}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2011
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p4}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 2012
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .registers 10
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "value"    # I
    .param p4, "minDigits"    # I
    .param p5, "maxDigits"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1905
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_a

    if-ltz p3, :cond_a

    .line 1906
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    goto :goto_1a

    .line 1908
    :cond_a
    invoke-virtual {p1, p4}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1909
    invoke-virtual {p1, p5}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1910
    int-to-long v0, p3

    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1912
    :goto_1a
    return-void
.end method
