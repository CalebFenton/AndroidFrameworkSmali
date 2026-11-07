.class public Landroid/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;,
        Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$FormatParser;,
        Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;,
        Landroid/icu/text/DateTimePatternGenerator$PatternInfo;,
        Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;,
        Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;,
        Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;,
        Landroid/icu/text/DateTimePatternGenerator$VariableField;,
        Landroid/icu/text/DateTimePatternGenerator$DTPGflags;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;,
        Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;,
        Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/DateTimePatternGenerator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final blacklist APPENDITEM_WIDTH:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static final blacklist APPENDITEM_WIDTH_INT:I

.field private static final greylist-max-o CANONICAL_ITEMS:[Ljava/lang/String;

.field private static final greylist-max-o CANONICAL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CLDR_FIELD_APPEND:[Ljava/lang/String;

.field private static final greylist-max-o CLDR_FIELD_NAME:[Ljava/lang/String;

.field private static final blacklist CLDR_FIELD_WIDTH:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static final greylist-max-o DATE_MASK:I = 0x3ff

.field public static final whitelist test-api DAY:I = 0x7

.field public static final whitelist test-api DAYPERIOD:I = 0xa

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH:I = 0x9

.field public static final whitelist test-api DAY_OF_YEAR:I = 0x8

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELTA:I = 0x10

.field private static greylist-max-o DTPNG_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ERA:I = 0x0

.field private static final greylist-max-o EXTRA_FIELD:I = 0x10000

.field private static final greylist-max-o FIELD_NAME:[Ljava/lang/String;

.field private static final greylist-max-o FRACTIONAL_MASK:I = 0x4000

.field public static final whitelist test-api FRACTIONAL_SECOND:I = 0xe

.field public static final whitelist test-api HOUR:I = 0xb

.field private static final greylist-max-o LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

.field static final greylist-max-o LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LONG:I = -0x104

.field public static final whitelist test-api MATCH_ALL_FIELDS_LENGTH:I = 0xffff

.field public static final whitelist test-api MATCH_HOUR_FIELD_LENGTH:I = 0x800

.field public static final greylist-max-o MATCH_MINUTE_FIELD_LENGTH:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api MATCH_NO_OPTIONS:I = 0x0

.field public static final greylist-max-o MATCH_SECOND_FIELD_LENGTH:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api MINUTE:I = 0xc

.field private static final greylist-max-o MISSING_FIELD:I = 0x1000

.field public static final whitelist test-api MONTH:I = 0x3

.field private static final greylist-max-o NARROW:I = -0x101

.field private static final greylist-max-o NONE:I = 0x0

.field private static final greylist-max-o NUMERIC:I = 0x100

.field public static final whitelist test-api QUARTER:I = 0x2

.field public static final whitelist test-api SECOND:I = 0xd

.field private static final greylist-max-o SECOND_AND_FRACTIONAL_MASK:I = 0x6000

.field private static final greylist-max-o SHORT:I = -0x103

.field private static final greylist-max-o SHORTER:I = -0x102

.field private static final greylist-max-o TIME_MASK:I = 0xfc00

.field public static final greylist-max-o TYPE_LIMIT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api WEEKDAY:I = 0x6

.field public static final whitelist test-api WEEK_OF_MONTH:I = 0x5

.field public static final whitelist test-api WEEK_OF_YEAR:I = 0x4

.field public static final whitelist test-api YEAR:I = 0x1

.field public static final whitelist test-api ZONE:I = 0xf

.field private static final greylist-max-o types:[[I


# instance fields
.field private transient greylist-max-o _distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

.field private greylist-max-o allowedHourFormats:[Ljava/lang/String;

.field private greylist-max-o appendItemFormats:[Ljava/lang/String;

.field private greylist-max-o basePattern_pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o cldrAvailableFormatKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field private blacklist dateTimeFormats:[Ljava/lang/String;

.field private greylist-max-o decimal:Ljava/lang/String;

.field private greylist-max-o defaultHourFormatChar:C

.field private blacklist fieldDisplayNames:[[Ljava/lang/String;

.field private transient greylist-max-o fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

.field private volatile greylist-max-o frozen:Z

.field private greylist-max-o skeleton2pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$misAvailableFormatSet(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAvailableFormat(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFieldDisplayName(Landroid/icu/text/DateTimePatternGenerator;ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCANONICAL_ITEMS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCLDR_FIELD_WIDTH()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
    .registers 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLAST_RESORT_ALLOWED_HOUR_FORMAT()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgettypes()[[I
    .registers 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCLDRFieldAndWidthNumber(Landroid/icu/impl/UResource$Key;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getCLDRFieldAndWidthNumber(Landroid/icu/impl/UResource$Key;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCanonicalChar(IC)C
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalChar(IC)C

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCanonicalIndex(Ljava/lang/String;Z)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smshowMask(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 88

    .line 338
    const-string v0, "H"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v1, "supplementalData"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 478
    .local v1, "suppData":Landroid/icu/impl/ICUResourceBundle;
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;Landroid/icu/text/DateTimePatternGenerator-IA;)V

    .line 479
    .local v2, "allowedHoursSink":Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
    const-string v3, "timeData"

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 481
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    .line 1310
    .end local v0    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "suppData":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "allowedHoursSink":Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1311
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH_INT:I

    .line 1312
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->values()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 2088
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    .line 2381
    const-string v15, "*"

    const-string v16, "Timezone"

    const-string v1, "Era"

    const-string v2, "Year"

    const-string v3, "Quarter"

    const-string v4, "Month"

    const-string v5, "Week"

    const-string v6, "*"

    const-string v7, "Day-Of-Week"

    const-string v8, "Day"

    const-string v9, "*"

    const-string v10, "*"

    const-string v11, "*"

    const-string v12, "Hour"

    const-string v13, "Minute"

    const-string v14, "Second"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    .line 2387
    const-string v15, "*"

    const-string v16, "zone"

    const-string v1, "era"

    const-string v2, "year"

    const-string v3, "quarter"

    const-string v4, "month"

    const-string v5, "week"

    const-string v6, "weekOfMonth"

    const-string v7, "weekday"

    const-string v8, "day"

    const-string v9, "dayOfYear"

    const-string v10, "weekdayOfMonth"

    const-string v11, "dayperiod"

    const-string v12, "hour"

    const-string v13, "minute"

    const-string v14, "second"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    .line 2393
    const-string v15, "Fractional_Second"

    const-string v16, "Zone"

    const-string v1, "Era"

    const-string v2, "Year"

    const-string v3, "Quarter"

    const-string v4, "Month"

    const-string v5, "Week_in_Year"

    const-string v6, "Week_in_Month"

    const-string v7, "Weekday"

    const-string v8, "Day"

    const-string v9, "Day_Of_Year"

    const-string v10, "Day_of_Week_in_Month"

    const-string v11, "Dayperiod"

    const-string v12, "Hour"

    const-string v13, "Minute"

    const-string v14, "Second"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    .line 2400
    const-string v15, "S"

    const-string v16, "v"

    const-string v1, "G"

    const-string v2, "y"

    const-string v3, "Q"

    const-string v4, "M"

    const-string v5, "w"

    const-string v6, "W"

    const-string v7, "E"

    const-string v8, "d"

    const-string v9, "D"

    const-string v10, "F"

    const-string v11, "a"

    const-string v12, "H"

    const-string v13, "m"

    const-string v14, "s"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    .line 2426
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    .line 2505
    const/16 v0, 0x47

    const/4 v1, 0x0

    const/16 v2, -0x103

    const/4 v3, 0x1

    const/4 v4, 0x3

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    const/16 v6, -0x104

    const/4 v7, 0x4

    filled-new-array {v0, v1, v6, v7}, [I

    move-result-object v0

    const/16 v1, 0x47

    const/4 v8, 0x0

    const/16 v9, -0x101

    const/4 v10, 0x5

    filled-new-array {v1, v8, v9, v10}, [I

    move-result-object v1

    const/16 v8, 0x79

    const/16 v11, 0x100

    const/16 v12, 0x14

    filled-new-array {v8, v3, v11, v3, v12}, [I

    move-result-object v8

    const/16 v13, 0x59

    const/16 v14, 0x110

    filled-new-array {v13, v3, v14, v3, v12}, [I

    move-result-object v13

    const/16 v15, 0x75

    const/16 v14, 0x120

    filled-new-array {v15, v3, v14, v3, v12}, [I

    move-result-object v14

    const/16 v15, 0x72

    const/16 v11, 0x130

    filled-new-array {v15, v3, v11, v3, v12}, [I

    move-result-object v11

    const/16 v15, 0x55

    filled-new-array {v15, v3, v2, v3, v4}, [I

    move-result-object v15

    const/16 v12, 0x55

    filled-new-array {v12, v3, v6, v7}, [I

    move-result-object v12

    const/16 v6, 0x55

    filled-new-array {v6, v3, v9, v10}, [I

    move-result-object v6

    const/16 v9, 0x51

    const/4 v10, 0x2

    move-object/from16 v23, v13

    const/16 v7, 0x100

    move-object v13, v12

    move-object v12, v15

    filled-new-array {v9, v10, v7, v3, v10}, [I

    move-result-object v15

    filled-new-array {v9, v10, v2, v4}, [I

    move-result-object v7

    const/16 v2, -0x104

    const/4 v4, 0x4

    filled-new-array {v9, v10, v2, v4}, [I

    move-result-object v26

    const/16 v2, -0x101

    const/4 v4, 0x5

    filled-new-array {v9, v10, v2, v4}, [I

    move-result-object v9

    const/16 v2, 0x71

    const/16 v4, 0x110

    filled-new-array {v2, v10, v4, v3, v10}, [I

    move-result-object v27

    const/16 v4, -0x113

    const/4 v3, 0x3

    filled-new-array {v2, v10, v4, v3}, [I

    move-result-object v29

    const/16 v4, -0x114

    const/4 v3, 0x4

    filled-new-array {v2, v10, v4, v3}, [I

    move-result-object v31

    const/16 v4, -0x111

    const/4 v3, 0x5

    filled-new-array {v2, v10, v4, v3}, [I

    move-result-object v2

    const/16 v4, 0x4d

    move-object/from16 v28, v0

    move-object/from16 v34, v1

    move-object/from16 v18, v9

    move-object/from16 v9, v23

    const/4 v0, 0x3

    const/16 v1, 0x100

    const/4 v3, 0x1

    const/16 v35, 0x14

    filled-new-array {v4, v0, v1, v3, v10}, [I

    move-result-object v23

    const/16 v1, -0x103

    filled-new-array {v4, v0, v1, v0}, [I

    move-result-object v36

    const/16 v1, -0x104

    const/4 v3, 0x4

    filled-new-array {v4, v0, v1, v3}, [I

    move-result-object v38

    const/16 v1, -0x101

    const/4 v3, 0x5

    filled-new-array {v4, v0, v1, v3}, [I

    move-result-object v4

    const/16 v1, 0x4c

    move-object/from16 v37, v2

    const/16 v2, 0x110

    const/4 v3, 0x1

    filled-new-array {v1, v0, v2, v3, v10}, [I

    move-result-object v1

    const/16 v10, 0x4c

    const/16 v2, -0x113

    filled-new-array {v10, v0, v2, v0}, [I

    move-result-object v10

    const/16 v2, 0x4c

    move-object/from16 v41, v1

    const/16 v1, -0x114

    const/4 v3, 0x4

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v2

    const/16 v1, 0x4c

    move-object/from16 v42, v2

    const/16 v2, -0x111

    const/4 v3, 0x5

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x6c

    move-object/from16 v40, v1

    const/16 v1, 0x110

    const/4 v3, 0x1

    filled-new-array {v2, v0, v1, v3, v3}, [I

    move-result-object v2

    const/16 v1, 0x77

    move-object/from16 v43, v2

    move-object/from16 v44, v4

    const/4 v0, 0x4

    const/16 v2, 0x100

    const/4 v4, 0x2

    filled-new-array {v1, v0, v2, v3, v4}, [I

    move-result-object v1

    const/16 v4, 0x57

    const/4 v0, 0x5

    filled-new-array {v4, v0, v2, v3}, [I

    move-result-object v4

    const/16 v2, 0x45

    const/4 v0, 0x6

    move-object/from16 v45, v1

    move-object/from16 v46, v4

    const/16 v1, -0x103

    const/4 v4, 0x3

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v2

    const/16 v1, 0x45

    const/4 v3, 0x4

    const/16 v4, -0x104

    filled-new-array {v1, v0, v4, v3}, [I

    move-result-object v1

    const/16 v3, 0x45

    move-object/from16 v48, v1

    const/4 v1, 0x5

    const/16 v4, -0x101

    filled-new-array {v3, v0, v4, v1}, [I

    move-result-object v3

    const/16 v1, 0x45

    const/16 v4, -0x102

    filled-new-array {v1, v0, v4, v0}, [I

    move-result-object v1

    const/16 v4, 0x120

    move-object/from16 v49, v1

    const/16 v1, 0x63

    move-object/from16 v50, v2

    move-object/from16 v47, v3

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v1, v0, v4, v2, v3}, [I

    move-result-object v4

    const/16 v2, -0x123

    const/4 v3, 0x3

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v2

    const/16 v3, -0x124

    move-object/from16 v52, v2

    const/4 v2, 0x4

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v3

    const/16 v2, -0x121

    move-object/from16 v53, v3

    const/4 v3, 0x5

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v2

    const/16 v3, -0x122

    filled-new-array {v1, v0, v3, v0}, [I

    move-result-object v1

    const/16 v3, 0x65

    move-object/from16 v54, v1

    move-object/from16 v51, v2

    move-object/from16 v55, v4

    move-object/from16 v56, v31

    move-object/from16 v31, v43

    const/4 v1, 0x1

    const/16 v2, 0x110

    const/4 v4, 0x2

    filled-new-array {v3, v0, v2, v1, v4}, [I

    move-result-object v43

    move-object/from16 v58, v26

    move-object/from16 v26, v44

    const/16 v1, -0x113

    const/4 v2, 0x3

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v44

    move-object/from16 v59, v45

    const/16 v1, -0x114

    const/4 v2, 0x4

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v45

    move-object/from16 v60, v46

    const/4 v1, 0x5

    const/16 v2, -0x111

    filled-new-array {v3, v0, v2, v1}, [I

    move-result-object v46

    const/16 v1, -0x112

    filled-new-array {v3, v0, v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x7

    const/4 v3, 0x1

    move-object/from16 v57, v0

    const/16 v0, 0x100

    filled-new-array {v1, v2, v0, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x67

    const/4 v4, 0x7

    move/from16 v0, v35

    move-object/from16 v35, v1

    const/16 v1, 0x110

    filled-new-array {v2, v4, v1, v3, v0}, [I

    move-result-object v0

    const/16 v1, 0x44

    const/16 v2, 0x8

    const/4 v4, 0x3

    move-object/from16 v61, v0

    const/16 v0, 0x100

    filled-new-array {v1, v2, v0, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x46

    const/16 v4, 0x9

    filled-new-array {v2, v4, v0, v3}, [I

    move-result-object v2

    const/16 v0, 0x61

    const/16 v4, 0xa

    move-object/from16 v62, v1

    move-object/from16 v63, v2

    const/16 v1, -0x103

    const/4 v2, 0x3

    filled-new-array {v0, v4, v1, v3, v2}, [I

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, -0x104

    const/4 v3, 0x4

    filled-new-array {v1, v4, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x61

    const/16 v3, -0x101

    move-object/from16 v20, v0

    const/4 v0, 0x5

    filled-new-array {v2, v4, v3, v0}, [I

    move-result-object v2

    const/16 v3, 0x62

    move-object/from16 v64, v1

    move-object/from16 v65, v2

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/16 v2, -0x113

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v3

    const/16 v2, 0x62

    const/4 v0, 0x4

    const/16 v1, -0x114

    filled-new-array {v2, v4, v1, v0}, [I

    move-result-object v2

    const/16 v1, 0x62

    move-object/from16 v67, v2

    const/4 v0, 0x5

    const/16 v2, -0x111

    filled-new-array {v1, v4, v2, v0}, [I

    move-result-object v1

    const/16 v2, 0x42

    const/16 v0, -0x133

    move-object/from16 v68, v1

    move-object/from16 v66, v3

    const/4 v1, 0x1

    const/4 v3, 0x3

    filled-new-array {v2, v4, v0, v1, v3}, [I

    move-result-object v0

    const/16 v3, -0x134

    const/4 v1, 0x4

    filled-new-array {v2, v4, v3, v1}, [I

    move-result-object v2

    const/16 v1, 0x42

    const/16 v3, -0x131

    move-object/from16 v70, v0

    const/4 v0, 0x5

    filled-new-array {v1, v4, v3, v0}, [I

    move-result-object v1

    const/16 v0, 0xb

    const/16 v3, 0x1a0

    const/16 v4, 0x48

    move-object/from16 v71, v1

    move-object/from16 v69, v2

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v4, v0, v3, v1, v2}, [I

    move-result-object v0

    const/16 v3, 0xb

    const/16 v4, 0x1b0

    move-object/from16 v72, v0

    const/16 v0, 0x6b

    filled-new-array {v0, v3, v4, v1, v2}, [I

    move-result-object v0

    const/16 v3, 0x68

    const/16 v4, 0xb

    move-object/from16 v73, v0

    const/16 v0, 0x100

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v3

    const/16 v4, 0x4b

    const/16 v0, 0xb

    move-object/from16 v74, v3

    const/16 v3, 0x110

    filled-new-array {v4, v0, v3, v1, v2}, [I

    move-result-object v0

    const/16 v4, 0x6d

    const/16 v3, 0xc

    move-object/from16 v75, v0

    const/16 v0, 0x100

    filled-new-array {v4, v3, v0, v1, v2}, [I

    move-result-object v3

    const/16 v4, 0x73

    move-object/from16 v17, v3

    const/16 v3, 0xd

    filled-new-array {v4, v3, v0, v1, v2}, [I

    move-result-object v3

    const/16 v2, 0xd

    const/16 v4, 0x3e8

    const/16 v0, 0x41

    move-object/from16 v77, v3

    const/16 v3, 0x110

    filled-new-array {v0, v2, v3, v1, v4}, [I

    move-result-object v0

    const/16 v2, 0xe

    const/16 v3, 0x3e8

    const/16 v4, 0x53

    move-object/from16 v16, v0

    const/16 v0, 0x100

    filled-new-array {v4, v2, v0, v1, v3}, [I

    move-result-object v0

    const/16 v2, -0x123

    const/16 v3, 0x76

    const/16 v4, 0xf

    filled-new-array {v3, v4, v2, v1}, [I

    move-result-object v2

    const/16 v1, -0x124

    move-object/from16 v78, v0

    const/4 v0, 0x4

    filled-new-array {v3, v4, v1, v0}, [I

    move-result-object v1

    const/16 v3, 0x7a

    move-object/from16 v24, v1

    move-object/from16 v76, v2

    const/16 v0, -0x103

    const/4 v1, 0x1

    const/4 v2, 0x3

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    const/16 v1, -0x104

    const/4 v2, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/16 v3, 0x5a

    const/4 v2, 0x1

    move-object/from16 v19, v0

    move-object/from16 v79, v1

    const/4 v0, 0x3

    const/16 v1, -0x111

    filled-new-array {v3, v4, v1, v2, v0}, [I

    move-result-object v3

    const/16 v0, 0x5a

    const/4 v1, 0x4

    const/16 v2, -0x114

    filled-new-array {v0, v4, v2, v1}, [I

    move-result-object v0

    const/16 v1, 0x5a

    const/4 v2, 0x5

    move-object/from16 v21, v0

    const/16 v0, -0x113

    filled-new-array {v1, v4, v0, v2}, [I

    move-result-object v1

    const/16 v2, 0x4f

    move-object/from16 v81, v1

    const/4 v1, 0x1

    filled-new-array {v2, v4, v0, v1}, [I

    move-result-object v2

    const/16 v0, 0x4f

    move-object/from16 v80, v2

    const/4 v1, 0x4

    const/16 v2, -0x114

    filled-new-array {v0, v4, v2, v1}, [I

    move-result-object v0

    const/16 v1, 0x56

    const/4 v2, 0x1

    move-object/from16 v22, v0

    const/16 v0, -0x113

    filled-new-array {v1, v4, v0, v2}, [I

    move-result-object v1

    const/16 v0, 0x56

    move-object/from16 v39, v1

    const/16 v1, -0x114

    const/4 v2, 0x2

    filled-new-array {v0, v4, v1, v2}, [I

    move-result-object v0

    const/16 v1, 0x56

    const/16 v2, -0x115

    move-object/from16 v85, v0

    const/4 v0, 0x3

    filled-new-array {v1, v4, v2, v0}, [I

    move-result-object v0

    const/16 v2, -0x116

    move-object/from16 v25, v0

    const/4 v0, 0x4

    filled-new-array {v1, v4, v2, v0}, [I

    move-result-object v1

    const/16 v2, 0x58

    move-object/from16 v33, v1

    const/4 v0, 0x1

    const/16 v1, -0x111

    filled-new-array {v2, v4, v1, v0}, [I

    move-result-object v2

    const/16 v0, 0x58

    move-object/from16 v30, v2

    const/4 v1, 0x2

    const/16 v2, -0x113

    filled-new-array {v0, v4, v2, v1}, [I

    move-result-object v0

    const/16 v1, 0x58

    const/4 v2, 0x4

    move-object/from16 v32, v0

    const/16 v0, -0x114

    filled-new-array {v1, v4, v0, v2}, [I

    move-result-object v1

    const/16 v0, 0x78

    move-object/from16 v83, v1

    const/16 v1, -0x111

    const/4 v2, 0x1

    filled-new-array {v0, v4, v1, v2}, [I

    move-result-object v0

    const/16 v1, 0x78

    const/4 v2, 0x2

    move-object/from16 v84, v0

    const/16 v0, -0x113

    filled-new-array {v1, v4, v0, v2}, [I

    move-result-object v86

    const/16 v0, 0x78

    const/16 v1, -0x114

    const/4 v2, 0x4

    filled-new-array {v0, v4, v1, v2}, [I

    move-result-object v87

    move-object/from16 v82, v14

    move-object v14, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v10

    move-object/from16 v10, v82

    move-object/from16 v82, v65

    move-object/from16 v65, v17

    move-object/from16 v17, v58

    move-object/from16 v58, v70

    move-object/from16 v70, v24

    move-object/from16 v24, v36

    move-object/from16 v36, v47

    move-object/from16 v47, v57

    move-object/from16 v57, v68

    move-object/from16 v68, v78

    move-object/from16 v78, v39

    move-object/from16 v39, v52

    move-object/from16 v52, v20

    move-object/from16 v20, v29

    move-object/from16 v29, v42

    move-object/from16 v42, v54

    move-object/from16 v54, v82

    move-object/from16 v82, v77

    move-object/from16 v77, v22

    move-object/from16 v22, v37

    move-object/from16 v37, v49

    move-object/from16 v49, v61

    move-object/from16 v61, v72

    move-object/from16 v72, v79

    move-object/from16 v79, v85

    move-object/from16 v85, v84

    move-object/from16 v84, v83

    move-object/from16 v83, v32

    move-object/from16 v32, v59

    move-object/from16 v59, v69

    move-object/from16 v69, v76

    move-object/from16 v76, v80

    move-object/from16 v80, v25

    move-object/from16 v25, v38

    move-object/from16 v38, v55

    move-object/from16 v55, v66

    move-object/from16 v66, v82

    move-object/from16 v82, v48

    move-object/from16 v48, v35

    move-object/from16 v35, v82

    move-object/from16 v82, v30

    move-object/from16 v30, v40

    move-object/from16 v40, v53

    move-object/from16 v53, v64

    move-object/from16 v64, v75

    move-object/from16 v75, v81

    move-object/from16 v81, v33

    move-object/from16 v33, v60

    move-object/from16 v60, v71

    move-object/from16 v71, v19

    move-object/from16 v19, v27

    move-object/from16 v27, v41

    move-object/from16 v41, v51

    move-object/from16 v51, v63

    move-object/from16 v63, v74

    move-object/from16 v74, v21

    move-object/from16 v21, v56

    move-object/from16 v56, v67

    move-object/from16 v67, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v34

    move-object/from16 v34, v50

    move-object/from16 v50, v62

    move-object/from16 v62, v73

    move-object/from16 v73, v3

    filled-new-array/range {v5 .. v87}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2060
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 2061
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    .line 2062
    const-string v0, "?"

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    .line 2065
    const-string v0, "{1} {0}"

    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormats:[Ljava/lang/String;

    .line 2071
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    .line 2072
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$sfgetCOUNT()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    .line 2073
    const/16 v0, 0x48

    iput-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 2076
    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    .line 2078
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2079
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2080
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 2427
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    .line 78
    return-void
.end method

.method private greylist-max-o addCLDRData(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V
    .registers 10
    .param p1, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .param p2, "uLocale"    # Landroid/icu/util/ULocale;

    .line 286
    const-string v0, "calendar/"

    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 287
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getCalendarTypeToUse(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "calendarTypeToUse":Ljava/lang/String;
    new-instance v3, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator-IA;)V

    .line 299
    .local v3, "appendItemFormatsSink":Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/appendItems"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->getAllChildrenWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_2e
    .catch Ljava/util/MissingResourceException; {:try_start_14 .. :try_end_2e} :catch_2f

    .line 303
    goto :goto_30

    .line 302
    :catch_2f
    move-exception v5

    .line 306
    :goto_30
    new-instance v5, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;

    invoke-direct {v5, p0, v4}, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator-IA;)V

    .line 308
    .local v5, "appendItemNamesSink":Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;
    :try_start_35
    const-string v4, "fields"

    invoke-virtual {v1, v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getAllChildrenWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_3a
    .catch Ljava/util/MissingResourceException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 312
    goto :goto_3c

    .line 311
    :catch_3b
    move-exception v4

    .line 315
    :goto_3c
    new-instance v4, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;

    invoke-direct {v4, p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V

    .line 317
    .local v4, "availableFormatsSink":Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;
    :try_start_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/availableFormats"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllChildrenWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_5b
    .catch Ljava/util/MissingResourceException; {:try_start_41 .. :try_end_5b} :catch_5c

    .line 321
    goto :goto_5d

    .line 320
    :catch_5c
    move-exception v0

    .line 322
    :goto_5d
    return-void
.end method

.method private greylist-max-o addCanonicalItems()V
    .registers 5

    .line 2161
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    .line 2163
    .local v0, "patternInfo":Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 2164
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 2163
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2166
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method private greylist-max-o addICUPatterns(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V
    .registers 15
    .param p1, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .param p2, "uLocale"    # Landroid/icu/util/ULocale;

    .line 172
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 173
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getCalendarTypeToUse(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "calendarTypeToUse":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/DateTimePatterns"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 176
    .local v2, "dateTimePatterns":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    const-string v6, "ICUResourceBundle"

    const-string v7, "Resource in wrong format"

    const/16 v8, 0x8

    if-ne v5, v8, :cond_76

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v5

    if-lt v5, v8, :cond_76

    .line 179
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3c
    if-ge v5, v8, :cond_75

    .line 181
    invoke-virtual {v2, v5}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 183
    .local v9, "patternRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v10

    const/4 v11, 0x0

    sparse-switch v10, :sswitch_data_92

    .line 191
    new-instance v8, Ljava/util/MissingResourceException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v7, v6, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 188
    :sswitch_65
    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "pattern":Ljava/lang/String;
    goto :goto_6f

    .line 185
    .end local v10    # "pattern":Ljava/lang/String;
    :sswitch_6a
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .restart local v10    # "pattern":Ljava/lang/String;
    nop

    .line 193
    :goto_6f
    invoke-virtual {p0, v10, v11, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 179
    .end local v9    # "patternRes":Landroid/icu/util/UResourceBundle;
    .end local v10    # "pattern":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 195
    .end local v5    # "i":I
    :cond_75
    return-void

    .line 177
    :cond_76
    new-instance v5, Ljava/util/MissingResourceException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v7, v6, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_6a
        0x8 -> :sswitch_65
    .end sparse-switch
.end method

.method private greylist-max-o adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .registers 22
    .param p1, "patternWithMatcher"    # Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .param p2, "inputRequest"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p4, "options"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2222
    .local p3, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    iget-object v5, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2224
    .local v4, "newPattern":Ljava/lang/StringBuilder;
    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_149

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2225
    .local v6, "item":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3a

    .line 2226
    iget-object v7, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_145

    .line 2228
    :cond_3a
    move-object v7, v6

    check-cast v7, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    .line 2230
    .local v7, "variableField":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2236
    .local v8, "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v9

    .line 2240
    .local v9, "type":I
    sget-object v10, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v10}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0xd

    if-eqz v10, :cond_66

    if-ne v9, v11, :cond_66

    .line 2241
    iget-object v10, v0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-$$Nest$fgetoriginal(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v10

    const/16 v11, 0xe

    invoke-virtual {v10, v11, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_142

    .line 2243
    :cond_66
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-$$Nest$fgettype(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I

    move-result-object v10

    aget v10, v10, v9

    if-eqz v10, :cond_142

    .line 2270
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-$$Nest$fgetoriginal(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v10

    .line 2271
    .local v10, "reqFieldChar":C
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-$$Nest$fgetoriginal(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v12

    .line 2272
    .local v12, "reqFieldLen":I
    const/16 v13, 0x45

    const/4 v14, 0x3

    if-ne v10, v13, :cond_86

    if-ge v12, v14, :cond_86

    .line 2273
    const/4 v12, 0x3

    .line 2275
    :cond_86
    move v15, v12

    .line 2276
    .local v15, "adjFieldLen":I
    iget-object v13, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2277
    .local v13, "matcherWithSkeleton":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    const/16 v14, 0xb

    if-ne v9, v14, :cond_91

    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_9f

    :cond_91
    const/16 v14, 0xc

    if-ne v9, v14, :cond_99

    and-int/lit16 v14, v3, 0x1000

    if-eqz v14, :cond_9f

    :cond_99
    if-ne v9, v11, :cond_a4

    and-int/lit16 v11, v3, 0x2000

    if-nez v11, :cond_a4

    .line 2280
    :cond_9f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    goto :goto_cc

    .line 2281
    :cond_a4
    if-eqz v13, :cond_cc

    const/16 v11, 0x63

    if-eq v10, v11, :cond_cc

    const/16 v11, 0x65

    if-eq v10, v11, :cond_cc

    .line 2286
    invoke-static {v13}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-$$Nest$fgetoriginal(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v11

    .line 2287
    .local v11, "skelFieldLen":I
    invoke-virtual {v7}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->isNumeric()Z

    move-result v14

    .line 2288
    .local v14, "patFieldIsNumeric":Z
    invoke-virtual {v13, v9}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->fieldIsNumeric(I)Z

    move-result v16

    .line 2289
    .local v16, "skelFieldIsNumeric":Z
    if-eq v11, v12, :cond_c8

    if-eqz v14, :cond_c4

    if-eqz v16, :cond_c8

    :cond_c4
    if-eqz v16, :cond_cc

    if-nez v14, :cond_cc

    .line 2293
    :cond_c8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 2296
    .end local v11    # "skelFieldLen":I
    .end local v14    # "patFieldIsNumeric":Z
    .end local v16    # "skelFieldIsNumeric":Z
    :cond_cc
    :goto_cc
    const/16 v11, 0xb

    if-eq v9, v11, :cond_df

    const/4 v11, 0x3

    if-eq v9, v11, :cond_df

    const/4 v11, 0x6

    if-eq v9, v11, :cond_df

    const/4 v11, 0x1

    if-ne v9, v11, :cond_dd

    const/16 v11, 0x59

    if-ne v10, v11, :cond_df

    .line 2300
    :cond_dd
    move v11, v10

    goto :goto_e4

    .line 2301
    :cond_df
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    :goto_e4
    nop

    .line 2302
    .local v11, "c":C
    const/16 v14, 0x45

    if-ne v11, v14, :cond_ee

    const/4 v14, 0x3

    if-ge v15, v14, :cond_ee

    .line 2306
    const/16 v11, 0x65

    .line 2308
    :cond_ee
    const/16 v14, 0xb

    if-ne v9, v14, :cond_133

    .line 2316
    sget-object v14, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_131

    iget-char v14, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    if-ne v10, v14, :cond_ff

    goto :goto_131

    .line 2318
    :cond_ff
    const/16 v14, 0x68

    if-ne v10, v14, :cond_10c

    iget-char v14, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    const/16 v1, 0x4b

    if-ne v14, v1, :cond_10c

    .line 2319
    const/16 v11, 0x4b

    goto :goto_133

    .line 2320
    :cond_10c
    const/16 v1, 0x6b

    const/16 v14, 0x48

    if-ne v10, v14, :cond_119

    iget-char v14, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    if-ne v14, v1, :cond_119

    .line 2321
    const/16 v11, 0x6b

    goto :goto_133

    .line 2322
    :cond_119
    if-ne v10, v1, :cond_124

    iget-char v1, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    const/16 v14, 0x48

    if-ne v1, v14, :cond_124

    .line 2323
    const/16 v11, 0x48

    goto :goto_133

    .line 2324
    :cond_124
    const/16 v1, 0x4b

    if-ne v10, v1, :cond_133

    iget-char v1, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    const/16 v14, 0x68

    if-ne v1, v14, :cond_133

    .line 2325
    const/16 v11, 0x68

    goto :goto_133

    .line 2317
    :cond_131
    :goto_131
    iget-char v11, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 2328
    :cond_133
    :goto_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 2329
    move v1, v15

    .local v1, "i":I
    :goto_13a
    if-lez v1, :cond_142

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_13a

    .line 2331
    .end local v1    # "i":I
    .end local v10    # "reqFieldChar":C
    .end local v11    # "c":C
    .end local v12    # "reqFieldLen":I
    .end local v13    # "matcherWithSkeleton":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v15    # "adjFieldLen":I
    :cond_142
    :goto_142
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2333
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "variableField":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    .end local v8    # "fieldBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "type":I
    :goto_145
    move-object/from16 v1, p1

    goto/16 :goto_1e

    .line 2335
    :cond_149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o checkFrozen()V
    .registers 3

    .line 2091
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2094
    return-void

    .line 2092
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o consumeShortTimePattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .registers 3
    .param p1, "shortTimePattern"    # Ljava/lang/String;
    .param p2, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    .line 219
    invoke-direct {p0, p2, p1}, Landroid/icu/text/DateTimePatternGenerator;->hackTimes(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private greylist-max-o fillInMissing()V
    .registers 5

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_59

    .line 251
    invoke-virtual {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 252
    const-string v1, "{0} \u251c{2}: {1}\u2524"

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    .line 254
    :cond_10
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    .line 255
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 257
    :cond_30
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    .line 258
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 260
    :cond_43
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_56

    .line 261
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 250
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_59
    return-void
.end method

.method private greylist-max-o getAllowedHourFormats(Landroid/icu/util/ULocale;)V
    .registers 11
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 368
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "language":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 374
    :cond_15
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 375
    .local v3, "max":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 379
    .end local v3    # "max":Landroid/icu/util/ULocale;
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 381
    const-string v0, "und"

    .line 383
    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 384
    const-string v2, "001"

    .line 387
    :cond_31
    invoke-direct {p0, v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "list":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 391
    .local v4, "defaultCharFromLocale":Ljava/lang/Character;
    const-string v5, "hours"

    invoke-virtual {p1, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "hourCycle":Ljava/lang/String;
    const/4 v6, 0x1

    if-eqz v5, :cond_90

    .line 393
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    :cond_46
    goto :goto_6f

    :sswitch_47
    const-string v7, "h24"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    move v7, v1

    goto :goto_70

    :sswitch_51
    const-string v7, "h23"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    move v7, v6

    goto :goto_70

    :sswitch_5b
    const-string v7, "h12"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    const/4 v7, 0x2

    goto :goto_70

    :sswitch_65
    const-string v7, "h11"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    const/4 v7, 0x3

    goto :goto_70

    :goto_6f
    const/4 v7, -0x1

    :goto_70
    packed-switch v7, :pswitch_data_e6

    goto :goto_90

    .line 404
    :pswitch_74
    const/16 v7, 0x4b

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_90

    .line 401
    :pswitch_7b
    const/16 v7, 0x68

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 402
    goto :goto_90

    .line 398
    :pswitch_82
    const/16 v7, 0x48

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 399
    goto :goto_90

    .line 395
    :pswitch_89
    const/16 v7, 0x6b

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 396
    nop

    .line 410
    :cond_90
    :goto_90
    if-nez v3, :cond_a2

    .line 412
    :try_start_92
    invoke-static {v2}, Landroid/icu/util/Region;->getInstance(Ljava/lang/String;)Landroid/icu/util/Region;

    move-result-object v7

    .line 413
    .local v7, "region":Landroid/icu/util/Region;
    invoke-virtual {v7}, Landroid/icu/util/Region;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 414
    invoke-direct {p0, v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_9f} :catch_a1

    move-object v3, v8

    .line 417
    .end local v7    # "region":Landroid/icu/util/Region;
    goto :goto_a2

    .line 415
    :catch_a1
    move-exception v7

    .line 420
    :cond_a2
    :goto_a2
    if-eqz v3, :cond_be

    .line 421
    if-eqz v4, :cond_ab

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_b1

    :cond_ab
    aget-object v7, v3, v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b1
    iput-char v1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 422
    array-length v1, v3

    sub-int/2addr v1, v6

    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    goto :goto_d3

    .line 424
    :cond_be
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    iput-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    .line 425
    if-eqz v4, :cond_c9

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_d1

    :cond_c9
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_d1
    iput-char v1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 427
    :goto_d3
    return-void

    :sswitch_data_d4
    .sparse-switch
        0x18c88 -> :sswitch_65
        0x18c89 -> :sswitch_5b
        0x18ca9 -> :sswitch_51
        0x18caa -> :sswitch_47
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_89
        :pswitch_82
        :pswitch_7b
        :pswitch_74
    .end packed-switch
.end method

.method private blacklist getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "langCountry":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 343
    .local v1, "list":[Ljava/lang/String;
    if-nez v1, :cond_2a

    .line 344
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 346
    :cond_2a
    return-object v1
.end method

.method private greylist-max-o getAppendFormat(I)Ljava/lang/String;
    .registers 3
    .param p1, "foundMask"    # I

    .line 2136
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static greylist-max-o getAppendFormatNumber(Landroid/icu/impl/UResource$Key;)I
    .registers 3
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 582
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 583
    return v0

    .line 581
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    .end local v0    # "i":I
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getAppendFormatNumber(Ljava/lang/String;)I
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 597
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 598
    return v0

    .line 596
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    .end local v0    # "i":I
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getAppendName(I)Ljava/lang/String;
    .registers 6
    .param p1, "foundMask"    # I

    .line 2133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object v2, v2, p1

    sget v3, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH_INT:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .registers 24
    .param p1, "source"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "missingFields"    # I
    .param p3, "distInfo"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    .param p4, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p6, "options"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "I",
            "Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2101
    .local p5, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    const/4 v5, 0x0

    .line 2102
    .local v5, "resultPattern":Ljava/lang/String;
    if-eqz v2, :cond_78

    .line 2103
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v6

    .line 2104
    .local v6, "resultPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    move-object/from16 v7, p5

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v5

    .line 2106
    .end local p5    # "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    .local v7, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    :goto_17
    iget v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-eqz v8, :cond_75

    .line 2110
    iget v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/16 v9, 0x6000

    and-int/2addr v8, v9

    const/16 v10, 0x4000

    if-ne v8, v10, :cond_3e

    and-int/lit16 v8, v2, 0x6000

    if-ne v8, v9, :cond_3e

    .line 2112
    iput-object v5, v6, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 2113
    invoke-static {v7}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v7

    .line 2114
    sget-object v8, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2115
    invoke-direct {v0, v6, v1, v7, v4}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v5

    .line 2116
    iget v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    and-int/lit16 v8, v8, -0x4001

    iput v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2117
    goto :goto_17

    .line 2120
    :cond_3e
    iget v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2121
    .local v8, "startingMask":I
    iget v9, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    move-object/from16 v10, p4

    invoke-direct {v0, v1, v9, v3, v10}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v9

    .line 2122
    .local v9, "tempWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    invoke-direct {v0, v9, v1, v7, v4}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v11

    .line 2123
    .local v11, "temp":Ljava/lang/String;
    iget v12, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    not-int v12, v12

    and-int/2addr v12, v8

    .line 2124
    .local v12, "foundMask":I
    invoke-direct {v0, v12}, Landroid/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I

    move-result v13

    .line 2125
    .local v13, "topField":I
    nop

    .line 2126
    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aput-object v5, v1, v16

    const/16 v16, 0x1

    aput-object v11, v1, v16

    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x2

    aput-object v16, v1, v15

    .line 2125
    const/4 v0, 0x3

    invoke-static {v14, v15, v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2127
    .end local v8    # "startingMask":I
    .end local v9    # "tempWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v11    # "temp":Ljava/lang/String;
    .end local v12    # "foundMask":I
    .end local v13    # "topField":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_17

    .line 2106
    :cond_75
    move-object/from16 v10, p4

    goto :goto_7c

    .line 2102
    .end local v6    # "resultPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v7    # "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    .restart local p5    # "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    :cond_78
    move-object/from16 v10, p4

    move-object/from16 v7, p5

    .line 2129
    .end local p5    # "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    .restart local v7    # "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    :goto_7c
    return-object v5
.end method

.method private greylist-max-o getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;
    .registers 5
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p3, "options"    # I

    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;IZ)Ljava/lang/String;
    .registers 21
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p3, "options"    # I
    .param p4, "allowDuplicateFields"    # Z

    .line 674
    move-object/from16 v1, p0

    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 676
    .local v6, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    move-object/from16 v8, p1

    invoke-direct {v1, v8, v6}, Landroid/icu/text/DateTimePatternGenerator;->mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "skeletonMapped":Ljava/lang/String;
    monitor-enter p0

    .line 681
    :try_start_f
    iget-object v0, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_ac

    move/from16 v10, p4

    :try_start_15
    invoke-virtual {v0, v9, v2, v10}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 682
    iget-object v0, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 v3, -0x1

    move-object/from16 v5, p2

    invoke-direct {v1, v0, v3, v2, v5}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v0

    .line 683
    .local v0, "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_b1

    if-nez v2, :cond_3e

    :try_start_29
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    if-nez v2, :cond_3e

    .line 685
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_39

    move/from16 v7, p3

    :try_start_33
    invoke-direct {v1, v0, v2, v6, v7}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 692
    .end local v0    # "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    :catchall_39
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_af

    .line 683
    .restart local v0    # "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    :cond_3e
    move/from16 v7, p3

    .line 687
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I

    move-result v2

    move v11, v2

    .line 690
    .local v11, "neededFields":I
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    and-int/lit16 v3, v11, 0x3ff

    iget-object v4, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 691
    .local v12, "datePattern":Ljava/lang/String;
    iget-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const v3, 0xfc00

    and-int/2addr v3, v11

    iget-object v4, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object/from16 v5, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .end local v0    # "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v11    # "neededFields":I
    .local v2, "timePattern":Ljava/lang/String;
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_b1

    .line 694
    if-nez v12, :cond_6c

    if-nez v2, :cond_6a

    const-string v0, ""

    goto :goto_6b

    :cond_6a
    move-object v0, v2

    :goto_6b
    return-object v0

    .line 695
    :cond_6c
    if-nez v2, :cond_6f

    return-object v12

    .line 697
    :cond_6f
    iget-object v0, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "canonicalSkeleton":Ljava/lang/String;
    const/4 v3, 0x3

    .line 699
    .local v3, "style":I
    const/4 v4, 0x0

    .line 700
    .local v4, "monthFieldLen":I
    const/16 v5, 0x4d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 701
    .local v7, "monthFieldOffset":I
    const/4 v11, 0x1

    if-ltz v7, :cond_87

    .line 702
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v11

    sub-int v4, v5, v7

    .line 704
    :cond_87
    const/4 v5, 0x4

    if-ne v4, v5, :cond_96

    .line 705
    const/16 v5, 0x45

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_94

    .line 706
    const/4 v3, 0x0

    goto :goto_9a

    .line 708
    :cond_94
    const/4 v3, 0x1

    goto :goto_9a

    .line 710
    :cond_96
    const/4 v5, 0x3

    if-ne v4, v5, :cond_9a

    .line 711
    const/4 v3, 0x2

    .line 714
    :cond_9a
    :goto_9a
    nop

    .line 715
    invoke-virtual {v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->getDateTimeFormat(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    aput-object v12, v14, v11

    .line 714
    invoke-static {v5, v13, v13, v14}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 692
    .end local v0    # "canonicalSkeleton":Ljava/lang/String;
    .end local v2    # "timePattern":Ljava/lang/String;
    .end local v3    # "style":I
    .end local v4    # "monthFieldLen":I
    .end local v7    # "monthFieldOffset":I
    .end local v12    # "datePattern":Ljava/lang/String;
    :catchall_ac
    move-exception v0

    move/from16 v10, p4

    :goto_af
    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b1

    throw v0

    :catchall_b1
    move-exception v0

    goto :goto_af
.end method

.method private greylist-max-o getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .registers 15
    .param p1, "source"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "includeMask"    # I
    .param p3, "missingFields"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    .param p4, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2171
    const v0, 0x7fffffff

    .line 2172
    .local v0, "bestDistance":I
    const/high16 v1, -0x80000000

    .line 2173
    .local v1, "bestMissingFieldMask":I
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 2174
    .local v2, "bestPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    new-instance v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v3, v4}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    .line 2175
    .local v3, "tempInfo":Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2176
    .local v6, "trial":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    invoke-virtual {v6, p4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 2177
    goto :goto_1c

    .line 2179
    :cond_2f
    invoke-virtual {p1, v6, p2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I

    move-result v7

    .line 2189
    .local v7, "distance":I
    if-lt v7, v0, :cond_3b

    if-ne v7, v0, :cond_59

    iget v8, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-ge v1, v8, :cond_59

    .line 2190
    :cond_3b
    move v0, v7

    .line 2191
    iget v1, v3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2192
    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 2193
    .local v8, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v9, v8, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v9, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 2196
    iget-boolean v9, v8, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v9, :cond_51

    .line 2197
    iput-object v6, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    goto :goto_53

    .line 2199
    :cond_51
    iput-object v4, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2201
    :goto_53
    invoke-virtual {p3, v3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    .line 2202
    if-nez v7, :cond_59

    .line 2203
    goto :goto_5a

    .line 2206
    .end local v6    # "trial":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v7    # "distance":I
    .end local v8    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_59
    goto :goto_1c

    .line 2207
    :cond_5a
    :goto_5a
    return-object v2
.end method

.method private static blacklist getCLDRFieldAndWidthNumber(Landroid/icu/impl/UResource$Key;)I
    .registers 5
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 606
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$sfgetCOUNT()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 607
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$mcldrKey(Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "fullKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 609
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$sfgetCOUNT()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    return v3

    .line 606
    .end local v2    # "fullKey":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 605
    .end local v1    # "j":I
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "i":I
    :cond_30
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getCalendarTypeToUse(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 200
    const-string v0, "calendar"

    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "calendarTypeToUse":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 202
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "preferredCalendarTypes":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 205
    .end local v0    # "preferredCalendarTypes":[Ljava/lang/String;
    :cond_10
    if-nez v1, :cond_14

    .line 206
    const-string v1, "gregorian"

    .line 208
    :cond_14
    return-object v1
.end method

.method private static greylist-max-o getCanonicalChar(IC)C
    .registers 5
    .param p0, "field"    # I
    .param p1, "reference"    # C

    .line 2491
    const/16 v0, 0x68

    if-eq p1, v0, :cond_39

    const/16 v1, 0x4b

    if-ne p1, v1, :cond_9

    goto :goto_39

    .line 2496
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 2497
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v1, v1, v0

    .line 2498
    .local v1, "row":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    if-ne v2, p0, :cond_1d

    .line 2499
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-char v2, v2

    return v2

    .line 2496
    .end local v1    # "row":[I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2502
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2492
    :cond_39
    :goto_39
    return v0
.end method

.method private static greylist-max-o getCanonicalIndex(Ljava/lang/String;Z)I
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 2463
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2464
    .local v0, "len":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 2465
    return v1

    .line 2467
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2469
    .local v3, "ch":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_1a

    .line 2470
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_17

    .line 2471
    return v1

    .line 2469
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2474
    .end local v4    # "i":I
    :cond_1a
    const/4 v4, -0x1

    .line 2475
    .local v4, "bestRow":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_3c

    .line 2476
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v6, v6, v5

    .line 2477
    .local v6, "row":[I
    aget v7, v6, v2

    if-eq v7, v3, :cond_2a

    goto :goto_38

    .line 2478
    :cond_2a
    move v4, v5

    .line 2479
    const/4 v7, 0x3

    aget v7, v6, v7

    if-le v7, v0, :cond_31

    goto :goto_38

    .line 2480
    :cond_31
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget v7, v6, v7

    if-ge v7, v0, :cond_3b

    .line 2475
    .end local v6    # "row":[I
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 2481
    .restart local v6    # "row":[I
    :cond_3b
    return v5

    .line 2483
    .end local v5    # "i":I
    .end local v6    # "row":[I
    :cond_3c
    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v4

    :goto_40
    return v1
.end method

.method public static whitelist test-api getEmptyInstance()Landroid/icu/text/DateTimePatternGenerator;
    .registers 1

    .line 68
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    .line 69
    .local v0, "instance":Landroid/icu/text/DateTimePatternGenerator;
    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    .line 70
    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;->fillInMissing()V

    .line 71
    return-object v0
.end method

.method private static greylist-max-o getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 6
    .param p0, "fp"    # Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .param p1, "nuke"    # Ljava/util/BitSet;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 557
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_36

    .line 558
    :cond_17
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 559
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 560
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 562
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .end local v2    # "item":Ljava/lang/Object;
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 565
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 4
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "localeKey":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator;

    .line 119
    .local v1, "result":Landroid/icu/text/DateTimePatternGenerator;
    if-eqz v1, :cond_f

    .line 120
    return-object v1

    .line 123
    :cond_f
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v2}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    .line 124
    .end local v1    # "result":Landroid/icu/text/DateTimePatternGenerator;
    .local v2, "result":Landroid/icu/text/DateTimePatternGenerator;
    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Landroid/icu/text/DateTimePatternGenerator;->initData(Landroid/icu/util/ULocale;Z)V

    .line 127
    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    .line 128
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-object v2
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/DateTimePatternGenerator;
    .registers 1

    .line 85
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 2
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;

    .line 93
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 101
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstanceNoStdPat(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 3
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    .line 144
    .local v0, "result":Landroid/icu/text/DateTimePatternGenerator;
    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/DateTimePatternGenerator;->initData(Landroid/icu/util/ULocale;Z)V

    .line 145
    return-object v0
.end method

.method private static greylist-max-o getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 2446
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v1

    .line 2447
    .local v1, "i":I
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v3, v3, v1

    aget v0, v3, v0

    aget-object v0, v2, v0

    .line 2448
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    if-gez v2, :cond_2c

    .line 2449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 2452
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2454
    :goto_3f
    return-object v0
.end method

.method private greylist-max-o getSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2024
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v0

    .line 2025
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 2026
    .local v1, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2027
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2028
    .local v4, "item":Ljava/lang/String;
    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2029
    goto :goto_13

    .line 2031
    :cond_32
    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2032
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "item":Ljava/lang/String;
    goto :goto_13

    .line 2033
    :cond_36
    return-object v1
.end method

.method private greylist-max-o getTopBitNumber(I)I
    .registers 4
    .param p1, "foundMask"    # I

    .line 2152
    const/4 v0, 0x0

    .line 2153
    .local v0, "i":I
    :goto_1
    if-eqz p1, :cond_8

    .line 2154
    ushr-int/lit8 p1, p1, 0x1

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2157
    :cond_8
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private greylist-max-o hackTimes(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
    .registers 14
    .param p1, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .param p2, "shortTimePattern"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "mmss":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 509
    .local v1, "gotMm":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x73

    const/4 v5, 0x0

    if-ge v2, v3, :cond_70

    .line 510
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 511
    .local v3, "item":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_39

    .line 512
    if-eqz v1, :cond_6d

    .line 513
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 516
    :cond_39
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 517
    .local v6, "ch":C
    const/16 v7, 0x6d

    if-ne v6, v7, :cond_4a

    .line 518
    const/4 v1, 0x1

    .line 519
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 520
    :cond_4a
    if-ne v6, v4, :cond_5a

    .line 521
    if-nez v1, :cond_4f

    .line 522
    goto :goto_70

    .line 524
    :cond_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 526
    goto :goto_70

    .line 527
    :cond_5a
    if-nez v1, :cond_70

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_70

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_70

    const/16 v7, 0x76

    if-eq v6, v7, :cond_70

    const/16 v7, 0x56

    if-ne v6, v7, :cond_6d

    .line 528
    goto :goto_70

    .line 509
    .end local v3    # "item":Ljava/lang/Object;
    .end local v6    # "ch":C
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 534
    .end local v2    # "i":I
    :cond_70
    :goto_70
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 535
    .local v2, "variables":Ljava/util/BitSet;
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 536
    .local v3, "nuke":Ljava/util/BitSet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7b
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v7}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_bd

    .line 537
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v7}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 538
    .local v7, "item":Ljava/lang/Object;
    instance-of v8, v7, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v8, :cond_ba

    .line 539
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 540
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 541
    .local v8, "ch":C
    if-eq v8, v4, :cond_a6

    const/16 v9, 0x53

    if-ne v8, v9, :cond_ba

    .line 542
    :cond_a6
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 543
    add-int/lit8 v9, v6, -0x1

    .local v9, "j":I
    :goto_ab
    if-ltz v9, :cond_ba

    .line 544
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_b4

    goto :goto_ba

    .line 545
    :cond_b4
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 543
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 536
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "ch":C
    .end local v9    # "j":I
    :cond_ba
    :goto_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 550
    .end local v6    # "i":I
    :cond_bd
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v4, v3}, Landroid/icu/text/DateTimePatternGenerator;->getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "hhmm":Ljava/lang/String;
    invoke-virtual {p0, v4, v5, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 552
    return-void
.end method

.method private blacklist initData(Landroid/icu/util/ULocale;Z)V
    .registers 5
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;
    .param p2, "skipStdPatterns"    # Z

    .line 152
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    .line 154
    .local v0, "returnInfo":Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    .line 155
    if-nez p2, :cond_d

    .line 156
    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addICUPatterns(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V

    .line 158
    :cond_d
    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addCLDRData(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V

    .line 159
    if-nez p2, :cond_16

    .line 160
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFromCalendar(Landroid/icu/util/ULocale;)V

    goto :goto_1b

    .line 163
    :cond_16
    const-string v1, "{1} {0}"

    invoke-virtual {p0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    .line 165
    :goto_1b
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimalSymbols(Landroid/icu/util/ULocale;)V

    .line 166
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getAllowedHourFormats(Landroid/icu/util/ULocale;)V

    .line 167
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->fillInMissing()V

    .line 168
    return-void
.end method

.method private greylist-max-o isAvailableFormatSet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSingleField(Ljava/lang/String;)Z
    .registers 5
    .param p0, "skeleton"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1474
    .local v1, "first":C
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 1475
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_13

    return v0

    .line 1474
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1477
    .end local v2    # "i":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;
    .registers 20
    .param p1, "skeleton"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 726
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v2, "skeletonCopy":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 728
    .local v3, "inQuoted":Z
    const/4 v4, 0x0

    .local v4, "patPos":I
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_bc

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 730
    .local v5, "patChr":C
    const/16 v6, 0x27

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_25

    .line 731
    if-nez v3, :cond_1e

    move v7, v8

    :cond_1e
    move-object/from16 v10, p2

    move v3, v7

    move/from16 v16, v8

    .end local v3    # "inQuoted":Z
    .local v7, "inQuoted":Z
    goto/16 :goto_b8

    .line 732
    .end local v7    # "inQuoted":Z
    .restart local v3    # "inQuoted":Z
    :cond_25
    if-nez v3, :cond_b4

    .line 739
    const/16 v6, 0x48

    const/16 v9, 0x6a

    if-eq v5, v9, :cond_4f

    const/16 v10, 0x43

    if-ne v5, v10, :cond_34

    move-object/from16 v10, p2

    goto :goto_51

    .line 769
    :cond_34
    const/16 v7, 0x4a

    if-ne v5, v7, :cond_46

    .line 772
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-object/from16 v10, p2

    invoke-virtual {v10, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move/from16 v16, v8

    goto/16 :goto_b8

    .line 775
    :cond_46
    move-object/from16 v10, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v16, v8

    goto/16 :goto_b8

    .line 739
    :cond_4f
    move-object/from16 v10, p2

    .line 740
    :goto_51
    const/4 v11, 0x0

    .line 741
    .local v11, "extraLen":I
    :goto_52
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_67

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v5, :cond_67

    .line 742
    add-int/lit8 v11, v11, 0x1

    .line 743
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 745
    :cond_67
    and-int/lit8 v12, v11, 0x1

    add-int/2addr v12, v8

    .line 746
    .local v12, "hourLen":I
    const/4 v13, 0x2

    if-ge v11, v13, :cond_6f

    move v13, v8

    goto :goto_73

    :cond_6f
    shr-int/lit8 v13, v11, 0x1

    add-int/lit8 v13, v13, 0x3

    .line 747
    .local v13, "dayPeriodLen":I
    :goto_73
    const/16 v14, 0x68

    .line 748
    .local v14, "hourChar":C
    const/16 v15, 0x61

    .line 749
    .local v15, "dayPeriodChar":C
    if-ne v5, v9, :cond_7e

    .line 750
    iget-char v7, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    move/from16 v16, v8

    .end local v14    # "hourChar":C
    .local v7, "hourChar":C
    goto :goto_9a

    .line 752
    .end local v7    # "hourChar":C
    .restart local v14    # "hourChar":C
    :cond_7e
    iget-object v9, v0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    aget-object v9, v9, v7

    .line 753
    .local v9, "bestAllowed":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 755
    .end local v14    # "hourChar":C
    .restart local v7    # "hourChar":C
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 756
    .local v14, "last":C
    move/from16 v16, v8

    const/16 v8, 0x62

    if-eq v14, v8, :cond_99

    const/16 v8, 0x42

    if-ne v14, v8, :cond_9a

    .line 757
    :cond_99
    move v15, v14

    .line 760
    .end local v9    # "bestAllowed":Ljava/lang/String;
    .end local v14    # "last":C
    :cond_9a
    :goto_9a
    if-eq v7, v6, :cond_a0

    const/16 v6, 0x6b

    if-ne v7, v6, :cond_a1

    .line 761
    :cond_a0
    const/4 v13, 0x0

    .line 763
    :cond_a1
    :goto_a1
    add-int/lit8 v6, v13, -0x1

    .end local v13    # "dayPeriodLen":I
    .local v6, "dayPeriodLen":I
    if-lez v13, :cond_aa

    .line 764
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v6

    goto :goto_a1

    .line 766
    :cond_aa
    :goto_aa
    add-int/lit8 v8, v12, -0x1

    .end local v12    # "hourLen":I
    .local v8, "hourLen":I
    if-lez v12, :cond_b3

    .line 767
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v8

    goto :goto_aa

    .line 769
    .end local v6    # "dayPeriodLen":I
    .end local v7    # "hourChar":C
    .end local v8    # "hourLen":I
    .end local v11    # "extraLen":I
    .end local v15    # "dayPeriodChar":C
    :cond_b3
    goto :goto_b8

    .line 732
    :cond_b4
    move-object/from16 v10, p2

    move/from16 v16, v8

    .line 728
    .end local v5    # "patChr":C
    :goto_b8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_bc
    move-object/from16 v10, p2

    .line 779
    .end local v4    # "patPos":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private greylist-max-o setAvailableFormat(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1486
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1487
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1488
    return-void
.end method

.method private greylist-max-o setDateTimeFromCalendar(Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 325
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, "cal":Landroid/icu/util/Calendar;
    const/4 v1, 0x0

    .local v1, "style":I
    :goto_5
    const/4 v2, 0x3

    if-gt v1, v2, :cond_12

    .line 327
    invoke-static {v0, p1, v1}, Landroid/icu/util/Calendar;->getDateAtTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "dateTimeFormat":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(ILjava/lang/String;)V

    .line 326
    .end local v2    # "dateTimeFormat":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 330
    .end local v1    # "style":I
    :cond_12
    return-void
.end method

.method private greylist-max-o setDecimalSymbols(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 334
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 335
    .local v0, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private blacklist setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "width"    # Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1441
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1442
    const/16 v0, 0x10

    if-ge p1, v0, :cond_13

    if-ltz p1, :cond_13

    .line 1443
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result v1

    aput-object p3, v0, v1

    .line 1445
    :cond_13
    return-void
.end method

.method private static greylist-max-o showMask(I)Ljava/lang/String;
    .registers 4
    .param p0, "mask"    # I

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2370
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2a

    .line 2371
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p0

    if-nez v2, :cond_10

    .line 2372
    goto :goto_27

    .line 2373
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 2374
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    :cond_1b
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2378
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Z
    .param p3, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeletonToUse"    # Ljava/lang/String;
    .param p3, "override"    # Z
    .param p4, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 852
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_13

    .line 853
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    .local v0, "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    goto :goto_1e

    .line 855
    .end local v0    # "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :cond_13
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p2, v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    .line 857
    .restart local v0    # "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :goto_1e
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "basePattern":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 866
    .local v3, "previousPatternWithSameBase":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    iget-boolean v5, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v5, :cond_35

    if-eqz p2, :cond_3e

    if-nez p3, :cond_3e

    .line 867
    :cond_35
    iput v4, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 868
    iget-object v5, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v5, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    .line 869
    if-nez p3, :cond_3e

    .line 870
    return-object p0

    .line 877
    :cond_3e
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 878
    .local v5, "previousValue":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    if-eqz v5, :cond_58

    .line 879
    const/4 v6, 0x2

    iput v6, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 880
    iget-object v6, v5, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v6, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    .line 881
    if-eqz p3, :cond_57

    if-eqz p2, :cond_58

    iget-boolean v6, v5, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v6, :cond_58

    :cond_57
    return-object p0

    .line 883
    :cond_58
    iput v1, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 884
    const-string v6, ""

    iput-object v6, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    .line 885
    new-instance v6, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz p2, :cond_63

    move v1, v4

    :cond_63
    invoke-direct {v6, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;-><init>(Ljava/lang/String;Z)V

    .line 889
    .local v6, "patWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v1, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    return-object p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 1539
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    .line 1540
    .local v0, "result":Landroid/icu/text/DateTimePatternGenerator;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 1541
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    .line 1542
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormats:[Ljava/lang/String;

    .line 1543
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    .line 1544
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    invoke-virtual {v1}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    .line 1545
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1546
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 1547
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 1549
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z
    :try_end_51
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_51} :catch_52

    .line 1550
    return-object v0

    .line 1551
    .end local v0    # "result":Landroid/icu/text/DateTimePatternGenerator;
    :catch_52
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Internal Error"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;
    .registers 3

    .line 1526
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    .line 1527
    .local v0, "result":Landroid/icu/text/DateTimePatternGenerator;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    .line 1528
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api freeze()Landroid/icu/text/DateTimePatternGenerator;
    .registers 2

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    .line 1518
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAppendItemFormat(I)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # I

    .line 1386
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api getAppendItemName(I)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # I

    .line 1413
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 954
    monitor-enter p0

    .line 955
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 956
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 957
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 993
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 994
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object p1, v0

    .line 996
    :cond_8
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 997
    return-object p1
.end method

.method public whitelist test-api getBestPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 625
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBestPattern(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "options"    # I

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 5
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "options"    # I
    .param p3, "allowDuplicateFields"    # Z

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCanonicalSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    monitor-enter p0

    .line 938
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 939
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 940
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api getDateTimeFormat()Ljava/lang/String;
    .registers 2

    .line 1076
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getDateTimeFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDateTimeFormat(I)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # I

    .line 1115
    if-ltz p1, :cond_a

    const/4 v0, 0x3

    if-gt p1, v0, :cond_a

    .line 1118
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormats:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1116
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style here: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getDecimal()Ljava/lang/String;
    .registers 2

    .line 1141
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDefaultHourCycle()Landroid/icu/text/DateFormat$HourCycle;
    .registers 3

    .line 1420
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->getDefaultHourFormatChar()C

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 1425
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1423
    :sswitch_f
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_24:Landroid/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1421
    :sswitch_12
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_12:Landroid/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1424
    :sswitch_15
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_11:Landroid/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1422
    :sswitch_18
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_23:Landroid/icu/text/DateFormat$HourCycle;

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x48 -> :sswitch_18
        0x4b -> :sswitch_15
        0x68 -> :sswitch_12
        0x6b -> :sswitch_f
    .end sparse-switch
.end method

.method public greylist-max-o getDefaultHourFormatChar()C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    iget-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return v0
.end method

.method public whitelist test-api getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;
    .registers 5
    .param p1, "field"    # I
    .param p2, "width"    # Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1456
    const/16 v0, 0x10

    if-ge p1, v0, :cond_12

    if-gez p1, :cond_7

    goto :goto_12

    .line 1459
    :cond_7
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 1457
    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public greylist-max-o getFields(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2356
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2358
    .local v0, "newPattern":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2359
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 2360
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 2362
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    .end local v2    # "item":Ljava/lang/Object;
    :goto_53
    goto :goto_14

    .line 2365
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1159
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1160
    if-nez p1, :cond_9

    .line 1161
    :try_start_3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object p1, v0

    .line 1163
    :cond_9
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1164
    .local v1, "cur":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 1165
    .local v2, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v3, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 1166
    .local v3, "pattern":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1167
    goto :goto_13

    .line 1169
    :cond_32
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v5}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, "trial":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1171
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1173
    .end local v1    # "cur":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v2    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v4    # "trial":Ljava/lang/String;
    :cond_44
    goto :goto_13

    .line 1195
    :cond_45
    monitor-exit p0

    return-object p1

    .line 1196
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public whitelist test-api getSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 902
    monitor-enter p0

    .line 903
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 904
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 905
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public greylist-max-o getSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    monitor-enter p0

    .line 920
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 921
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 922
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api getSkeletons(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 975
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 976
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object p1, v0

    .line 978
    :cond_8
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 979
    .local v1, "item":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 980
    .local v2, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v3, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 981
    .local v3, "pattern":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 982
    goto :goto_12

    .line 984
    :cond_31
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .end local v1    # "item":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v2    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .end local v3    # "pattern":Ljava/lang/String;
    goto :goto_12

    .line 986
    :cond_39
    return-object p1
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1509
    iget-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return v0
.end method

.method public whitelist test-api replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;

    .line 1012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DateTimePatternGenerator;->replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "options"    # I

    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_1
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 1032
    .local v0, "patternNoMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v1

    const-class v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 1033
    .end local v0    # "patternNoMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist test-api setAppendItemFormat(ILjava/lang/String;)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1374
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1375
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1376
    return-void
.end method

.method public whitelist test-api setAppendItemName(ILjava/lang/String;)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1400
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 1401
    return-void
.end method

.method public whitelist test-api setDateTimeFormat(ILjava/lang/String;)V
    .registers 6
    .param p1, "style"    # I
    .param p2, "dateTimeFormat"    # Ljava/lang/String;

    .line 1098
    if-ltz p1, :cond_d

    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    .line 1101
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1102
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormats:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1103
    return-void

    .line 1099
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style here: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDateTimeFormat(Ljava/lang/String;)V
    .registers 4
    .param p1, "dateTimeFormat"    # Ljava/lang/String;

    .line 1059
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1060
    const/4 v0, 0x0

    .local v0, "style":I
    :goto_4
    const/4 v1, 0x3

    if-gt v0, v1, :cond_d

    .line 1061
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(ILjava/lang/String;)V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1063
    .end local v0    # "style":I
    :cond_d
    return-void
.end method

.method public whitelist test-api setDecimal(Ljava/lang/String;)V
    .registers 2
    .param p1, "decimal"    # Ljava/lang/String;

    .line 1132
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1133
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    .line 1134
    return-void
.end method

.method public greylist-max-o setDefaultHourFormatChar(C)V
    .registers 2
    .param p1, "defaultHourFormatChar"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    iput-char p1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 502
    return-void
.end method

.method public greylist-max-o skeletonsAreSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2002
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2003
    return v1

    .line 2006
    :cond_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v0

    .line 2007
    .local v0, "parser1":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v2

    .line 2008
    .local v2, "parser2":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1c

    .line 2009
    return v5

    .line 2011
    :cond_1c
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2012
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2013
    .local v6, "item":Ljava/lang/String;
    invoke-static {v6, v5}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v7

    .line 2014
    .local v7, "index1":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2015
    .local v8, "item2":Ljava/lang/String;
    invoke-static {v8, v5}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v9

    .line 2016
    .local v9, "index2":I
    sget-object v10, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v10, v10, v7

    aget v10, v10, v1

    sget-object v11, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v11, v11, v9

    aget v11, v11, v1

    if-eq v10, v11, :cond_4d

    .line 2017
    return v5

    .line 2019
    .end local v6    # "item":Ljava/lang/String;
    .end local v7    # "index1":I
    .end local v8    # "item2":Ljava/lang/String;
    .end local v9    # "index2":I
    :cond_4d
    goto :goto_24

    .line 2020
    :cond_4e
    return v1
.end method
