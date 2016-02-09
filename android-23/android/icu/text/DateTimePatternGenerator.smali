.class public Landroid/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateTimePatternGenerator$PatternInfo;,
        Landroid/icu/text/DateTimePatternGenerator$VariableField;,
        Landroid/icu/text/DateTimePatternGenerator$FormatParser;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;,
        Landroid/icu/text/DateTimePatternGenerator$DTPGflags;,
        Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/DateTimePatternGenerator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CANONICAL_ITEMS:[Ljava/lang/String;

.field private static final CANONICAL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLDR_FIELD_APPEND:[Ljava/lang/String;

.field private static final CLDR_FIELD_NAME:[Ljava/lang/String;

.field private static final DATE_MASK:I = 0x3ff

.field public static final DAY:I = 0x7

.field public static final DAYPERIOD:I = 0xa

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x9

.field public static final DAY_OF_YEAR:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DELTA:I = 0x10

.field private static DTPNG_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:I = 0x0

.field private static final EXTRA_FIELD:I = 0x10000

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FRACTIONAL_MASK:I = 0x4000

.field public static final FRACTIONAL_SECOND:I = 0xe

.field public static final HOUR:I = 0xb

.field private static final LONG:I = -0x103

.field public static final MATCH_ALL_FIELDS_LENGTH:I = 0xffff

.field public static final MATCH_HOUR_FIELD_LENGTH:I = 0x800

.field public static final MATCH_MINUTE_FIELD_LENGTH:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_NO_OPTIONS:I = 0x0

.field public static final MATCH_SECOND_FIELD_LENGTH:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:I = 0xc

.field private static final MISSING_FIELD:I = 0x1000

.field public static final MONTH:I = 0x3

.field private static final NARROW:I = -0x101

.field private static final NONE:I = 0x0

.field private static final NUMERIC:I = 0x100

.field public static final QUARTER:I = 0x2

.field public static final SECOND:I = 0xd

.field private static final SECOND_AND_FRACTIONAL_MASK:I = 0x6000

.field private static final SHORT:I = -0x102

.field private static final TIME_MASK:I = 0xfc00

.field public static final TYPE_LIMIT:I = 0x10

.field public static final WEEKDAY:I = 0x6

.field public static final WEEK_OF_MONTH:I = 0x5

.field public static final WEEK_OF_YEAR:I = 0x4

.field public static final YEAR:I = 0x1

.field public static final ZONE:I = 0xf

.field private static final types:[[I


# instance fields
.field private transient _distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

.field private appendItemFormats:[Ljava/lang/String;

.field private appendItemNames:[Ljava/lang/String;

.field private basePattern_pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field

.field private cldrAvailableFormatKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field private dateTimeFormat:Ljava/lang/String;

.field private decimal:Ljava/lang/String;

.field private defaultHourFormatChar:C

.field private transient fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

.field private volatile frozen:Z

.field private skeleton2pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[[I
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Z)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/String;
    .locals 1
    .param p0, "mask"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/16 v8, 0xf

    #@3
    const/4 v7, 0x3

    #@4
    const/4 v6, 0x2

    #@5
    const/4 v5, 0x1

    #@6
    .line 1612
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@8
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@b
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    #@d
    .line 1864
    const/16 v0, 0x10

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 1865
    const-string/jumbo v1, "Era"

    #@14
    const/4 v2, 0x0

    #@15
    aput-object v1, v0, v2

    #@17
    const-string/jumbo v1, "Year"

    #@1a
    aput-object v1, v0, v5

    #@1c
    const-string/jumbo v1, "Quarter"

    #@1f
    aput-object v1, v0, v6

    #@21
    const-string/jumbo v1, "Month"

    #@24
    aput-object v1, v0, v7

    #@26
    const-string/jumbo v1, "Week"

    #@29
    aput-object v1, v0, v9

    #@2b
    const-string/jumbo v1, "*"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    const-string/jumbo v1, "Day-Of-Week"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 1866
    const-string/jumbo v1, "Day"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    const-string/jumbo v1, "*"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    const-string/jumbo v1, "*"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    const-string/jumbo v1, "*"

    #@4e
    const/16 v2, 0xa

    #@50
    aput-object v1, v0, v2

    #@52
    .line 1867
    const-string/jumbo v1, "Hour"

    #@55
    const/16 v2, 0xb

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, "Minute"

    #@5c
    const/16 v2, 0xc

    #@5e
    aput-object v1, v0, v2

    #@60
    const-string/jumbo v1, "Second"

    #@63
    const/16 v2, 0xd

    #@65
    aput-object v1, v0, v2

    #@67
    const-string/jumbo v1, "*"

    #@6a
    const/16 v2, 0xe

    #@6c
    aput-object v1, v0, v2

    #@6e
    const-string/jumbo v1, "Timezone"

    #@71
    aput-object v1, v0, v8

    #@73
    .line 1864
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    #@75
    .line 1870
    const/16 v0, 0x10

    #@77
    new-array v0, v0, [Ljava/lang/String;

    #@79
    .line 1871
    const-string/jumbo v1, "era"

    #@7c
    const/4 v2, 0x0

    #@7d
    aput-object v1, v0, v2

    #@7f
    const-string/jumbo v1, "year"

    #@82
    aput-object v1, v0, v5

    #@84
    const-string/jumbo v1, "*"

    #@87
    aput-object v1, v0, v6

    #@89
    const-string/jumbo v1, "month"

    #@8c
    aput-object v1, v0, v7

    #@8e
    const-string/jumbo v1, "week"

    #@91
    aput-object v1, v0, v9

    #@93
    const-string/jumbo v1, "*"

    #@96
    const/4 v2, 0x5

    #@97
    aput-object v1, v0, v2

    #@99
    const-string/jumbo v1, "weekday"

    #@9c
    const/4 v2, 0x6

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 1872
    const-string/jumbo v1, "day"

    #@a2
    const/4 v2, 0x7

    #@a3
    aput-object v1, v0, v2

    #@a5
    const-string/jumbo v1, "*"

    #@a8
    const/16 v2, 0x8

    #@aa
    aput-object v1, v0, v2

    #@ac
    const-string/jumbo v1, "*"

    #@af
    const/16 v2, 0x9

    #@b1
    aput-object v1, v0, v2

    #@b3
    const-string/jumbo v1, "dayperiod"

    #@b6
    const/16 v2, 0xa

    #@b8
    aput-object v1, v0, v2

    #@ba
    .line 1873
    const-string/jumbo v1, "hour"

    #@bd
    const/16 v2, 0xb

    #@bf
    aput-object v1, v0, v2

    #@c1
    const-string/jumbo v1, "minute"

    #@c4
    const/16 v2, 0xc

    #@c6
    aput-object v1, v0, v2

    #@c8
    const-string/jumbo v1, "second"

    #@cb
    const/16 v2, 0xd

    #@cd
    aput-object v1, v0, v2

    #@cf
    const-string/jumbo v1, "*"

    #@d2
    const/16 v2, 0xe

    #@d4
    aput-object v1, v0, v2

    #@d6
    const-string/jumbo v1, "zone"

    #@d9
    aput-object v1, v0, v8

    #@db
    .line 1870
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    #@dd
    .line 1876
    const/16 v0, 0x10

    #@df
    new-array v0, v0, [Ljava/lang/String;

    #@e1
    .line 1877
    const-string/jumbo v1, "Era"

    #@e4
    const/4 v2, 0x0

    #@e5
    aput-object v1, v0, v2

    #@e7
    const-string/jumbo v1, "Year"

    #@ea
    aput-object v1, v0, v5

    #@ec
    const-string/jumbo v1, "Quarter"

    #@ef
    aput-object v1, v0, v6

    #@f1
    const-string/jumbo v1, "Month"

    #@f4
    aput-object v1, v0, v7

    #@f6
    const-string/jumbo v1, "Week_in_Year"

    #@f9
    aput-object v1, v0, v9

    #@fb
    const-string/jumbo v1, "Week_in_Month"

    #@fe
    const/4 v2, 0x5

    #@ff
    aput-object v1, v0, v2

    #@101
    const-string/jumbo v1, "Weekday"

    #@104
    const/4 v2, 0x6

    #@105
    aput-object v1, v0, v2

    #@107
    .line 1878
    const-string/jumbo v1, "Day"

    #@10a
    const/4 v2, 0x7

    #@10b
    aput-object v1, v0, v2

    #@10d
    const-string/jumbo v1, "Day_Of_Year"

    #@110
    const/16 v2, 0x8

    #@112
    aput-object v1, v0, v2

    #@114
    const-string/jumbo v1, "Day_of_Week_in_Month"

    #@117
    const/16 v2, 0x9

    #@119
    aput-object v1, v0, v2

    #@11b
    const-string/jumbo v1, "Dayperiod"

    #@11e
    const/16 v2, 0xa

    #@120
    aput-object v1, v0, v2

    #@122
    .line 1879
    const-string/jumbo v1, "Hour"

    #@125
    const/16 v2, 0xb

    #@127
    aput-object v1, v0, v2

    #@129
    const-string/jumbo v1, "Minute"

    #@12c
    const/16 v2, 0xc

    #@12e
    aput-object v1, v0, v2

    #@130
    const-string/jumbo v1, "Second"

    #@133
    const/16 v2, 0xd

    #@135
    aput-object v1, v0, v2

    #@137
    const-string/jumbo v1, "Fractional_Second"

    #@13a
    const/16 v2, 0xe

    #@13c
    aput-object v1, v0, v2

    #@13e
    const-string/jumbo v1, "Zone"

    #@141
    aput-object v1, v0, v8

    #@143
    .line 1876
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    #@145
    .line 1883
    new-array v0, v8, [Ljava/lang/String;

    #@147
    .line 1884
    const-string/jumbo v1, "G"

    #@14a
    const/4 v2, 0x0

    #@14b
    aput-object v1, v0, v2

    #@14d
    const-string/jumbo v1, "y"

    #@150
    aput-object v1, v0, v5

    #@152
    const-string/jumbo v1, "Q"

    #@155
    aput-object v1, v0, v6

    #@157
    const-string/jumbo v1, "M"

    #@15a
    aput-object v1, v0, v7

    #@15c
    const-string/jumbo v1, "w"

    #@15f
    aput-object v1, v0, v9

    #@161
    const-string/jumbo v1, "W"

    #@164
    const/4 v2, 0x5

    #@165
    aput-object v1, v0, v2

    #@167
    const-string/jumbo v1, "E"

    #@16a
    const/4 v2, 0x6

    #@16b
    aput-object v1, v0, v2

    #@16d
    .line 1885
    const-string/jumbo v1, "d"

    #@170
    const/4 v2, 0x7

    #@171
    aput-object v1, v0, v2

    #@173
    const-string/jumbo v1, "D"

    #@176
    const/16 v2, 0x8

    #@178
    aput-object v1, v0, v2

    #@17a
    const-string/jumbo v1, "F"

    #@17d
    const/16 v2, 0x9

    #@17f
    aput-object v1, v0, v2

    #@181
    .line 1886
    const-string/jumbo v1, "H"

    #@184
    const/16 v2, 0xa

    #@186
    aput-object v1, v0, v2

    #@188
    const-string/jumbo v1, "m"

    #@18b
    const/16 v2, 0xb

    #@18d
    aput-object v1, v0, v2

    #@18f
    const-string/jumbo v1, "s"

    #@192
    const/16 v2, 0xc

    #@194
    aput-object v1, v0, v2

    #@196
    const-string/jumbo v1, "S"

    #@199
    const/16 v2, 0xd

    #@19b
    aput-object v1, v0, v2

    #@19d
    const-string/jumbo v1, "v"

    #@1a0
    const/16 v2, 0xe

    #@1a2
    aput-object v1, v0, v2

    #@1a4
    .line 1883
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    #@1a6
    .line 1889
    new-instance v0, Ljava/util/HashSet;

    #@1a8
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    #@1aa
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1ad
    move-result-object v1

    #@1ae
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1b1
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    #@1b3
    .line 1947
    const/16 v0, 0x43

    #@1b5
    new-array v0, v0, [[I

    #@1b7
    .line 1951
    const/16 v1, 0x47

    #@1b9
    const/4 v2, 0x0

    #@1ba
    const/16 v3, -0x102

    #@1bc
    filled-new-array {v1, v2, v3, v5, v7}, [I

    #@1bf
    move-result-object v1

    #@1c0
    const/4 v2, 0x0

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    .line 1952
    const/16 v1, 0x47

    #@1c5
    const/4 v2, 0x0

    #@1c6
    const/16 v3, -0x103

    #@1c8
    filled-new-array {v1, v2, v3, v9}, [I

    #@1cb
    move-result-object v1

    #@1cc
    aput-object v1, v0, v5

    #@1ce
    .line 1954
    const/16 v1, 0x79

    #@1d0
    const/16 v2, 0x100

    #@1d2
    const/16 v3, 0x14

    #@1d4
    filled-new-array {v1, v5, v2, v5, v3}, [I

    #@1d7
    move-result-object v1

    #@1d8
    aput-object v1, v0, v6

    #@1da
    .line 1955
    const/16 v1, 0x59

    #@1dc
    const/16 v2, 0x110

    #@1de
    const/16 v3, 0x14

    #@1e0
    filled-new-array {v1, v5, v2, v5, v3}, [I

    #@1e3
    move-result-object v1

    #@1e4
    aput-object v1, v0, v7

    #@1e6
    .line 1956
    const/16 v1, 0x75

    #@1e8
    const/16 v2, 0x120

    #@1ea
    const/16 v3, 0x14

    #@1ec
    filled-new-array {v1, v5, v2, v5, v3}, [I

    #@1ef
    move-result-object v1

    #@1f0
    aput-object v1, v0, v9

    #@1f2
    .line 1957
    const/16 v1, 0x72

    #@1f4
    const/16 v2, 0x130

    #@1f6
    const/16 v3, 0x14

    #@1f8
    filled-new-array {v1, v5, v2, v5, v3}, [I

    #@1fb
    move-result-object v1

    #@1fc
    const/4 v2, 0x5

    #@1fd
    aput-object v1, v0, v2

    #@1ff
    .line 1958
    const/16 v1, 0x55

    #@201
    const/16 v2, -0x102

    #@203
    filled-new-array {v1, v5, v2, v5, v7}, [I

    #@206
    move-result-object v1

    #@207
    const/4 v2, 0x6

    #@208
    aput-object v1, v0, v2

    #@20a
    .line 1959
    const/16 v1, 0x55

    #@20c
    const/16 v2, -0x103

    #@20e
    filled-new-array {v1, v5, v2, v9}, [I

    #@211
    move-result-object v1

    #@212
    const/4 v2, 0x7

    #@213
    aput-object v1, v0, v2

    #@215
    .line 1960
    const/16 v1, 0x55

    #@217
    const/16 v2, -0x101

    #@219
    const/4 v3, 0x5

    #@21a
    filled-new-array {v1, v5, v2, v3}, [I

    #@21d
    move-result-object v1

    #@21e
    const/16 v2, 0x8

    #@220
    aput-object v1, v0, v2

    #@222
    .line 1962
    const/16 v1, 0x51

    #@224
    const/16 v2, 0x100

    #@226
    filled-new-array {v1, v6, v2, v5, v6}, [I

    #@229
    move-result-object v1

    #@22a
    const/16 v2, 0x9

    #@22c
    aput-object v1, v0, v2

    #@22e
    .line 1963
    const/16 v1, 0x51

    #@230
    const/16 v2, -0x102

    #@232
    filled-new-array {v1, v6, v2, v7}, [I

    #@235
    move-result-object v1

    #@236
    const/16 v2, 0xa

    #@238
    aput-object v1, v0, v2

    #@23a
    .line 1964
    const/16 v1, 0x51

    #@23c
    const/16 v2, -0x103

    #@23e
    filled-new-array {v1, v6, v2, v9}, [I

    #@241
    move-result-object v1

    #@242
    const/16 v2, 0xb

    #@244
    aput-object v1, v0, v2

    #@246
    .line 1966
    const/16 v1, 0x71

    #@248
    const/16 v2, 0x110

    #@24a
    filled-new-array {v1, v6, v2, v5, v6}, [I

    #@24d
    move-result-object v1

    #@24e
    const/16 v2, 0xc

    #@250
    aput-object v1, v0, v2

    #@252
    .line 1967
    const/16 v1, 0x71

    #@254
    const/16 v2, -0xf2

    #@256
    filled-new-array {v1, v6, v2, v7}, [I

    #@259
    move-result-object v1

    #@25a
    const/16 v2, 0xd

    #@25c
    aput-object v1, v0, v2

    #@25e
    .line 1968
    const/16 v1, 0x71

    #@260
    const/16 v2, -0xf3

    #@262
    filled-new-array {v1, v6, v2, v9}, [I

    #@265
    move-result-object v1

    #@266
    const/16 v2, 0xe

    #@268
    aput-object v1, v0, v2

    #@26a
    .line 1970
    const/16 v1, 0x4d

    #@26c
    const/16 v2, 0x100

    #@26e
    filled-new-array {v1, v7, v2, v5, v6}, [I

    #@271
    move-result-object v1

    #@272
    aput-object v1, v0, v8

    #@274
    .line 1971
    const/16 v1, 0x4d

    #@276
    const/16 v2, -0x102

    #@278
    filled-new-array {v1, v7, v2, v7}, [I

    #@27b
    move-result-object v1

    #@27c
    const/16 v2, 0x10

    #@27e
    aput-object v1, v0, v2

    #@280
    .line 1972
    const/16 v1, 0x4d

    #@282
    const/16 v2, -0x103

    #@284
    filled-new-array {v1, v7, v2, v9}, [I

    #@287
    move-result-object v1

    #@288
    const/16 v2, 0x11

    #@28a
    aput-object v1, v0, v2

    #@28c
    .line 1973
    const/16 v1, 0x4d

    #@28e
    const/16 v2, -0x101

    #@290
    const/4 v3, 0x5

    #@291
    filled-new-array {v1, v7, v2, v3}, [I

    #@294
    move-result-object v1

    #@295
    const/16 v2, 0x12

    #@297
    aput-object v1, v0, v2

    #@299
    .line 1974
    const/16 v1, 0x4c

    #@29b
    const/16 v2, 0x110

    #@29d
    filled-new-array {v1, v7, v2, v5, v6}, [I

    #@2a0
    move-result-object v1

    #@2a1
    const/16 v2, 0x13

    #@2a3
    aput-object v1, v0, v2

    #@2a5
    .line 1975
    const/16 v1, 0x4c

    #@2a7
    const/16 v2, -0x112

    #@2a9
    filled-new-array {v1, v7, v2, v7}, [I

    #@2ac
    move-result-object v1

    #@2ad
    const/16 v2, 0x14

    #@2af
    aput-object v1, v0, v2

    #@2b1
    .line 1976
    const/16 v1, 0x4c

    #@2b3
    const/16 v2, -0x113

    #@2b5
    filled-new-array {v1, v7, v2, v9}, [I

    #@2b8
    move-result-object v1

    #@2b9
    const/16 v2, 0x15

    #@2bb
    aput-object v1, v0, v2

    #@2bd
    .line 1977
    const/16 v1, 0x4c

    #@2bf
    const/16 v2, -0x111

    #@2c1
    const/4 v3, 0x5

    #@2c2
    filled-new-array {v1, v7, v2, v3}, [I

    #@2c5
    move-result-object v1

    #@2c6
    const/16 v2, 0x16

    #@2c8
    aput-object v1, v0, v2

    #@2ca
    .line 1979
    const/16 v1, 0x6c

    #@2cc
    const/16 v2, 0x110

    #@2ce
    filled-new-array {v1, v7, v2, v5, v5}, [I

    #@2d1
    move-result-object v1

    #@2d2
    const/16 v2, 0x17

    #@2d4
    aput-object v1, v0, v2

    #@2d6
    .line 1981
    const/16 v1, 0x77

    #@2d8
    const/16 v2, 0x100

    #@2da
    filled-new-array {v1, v9, v2, v5, v6}, [I

    #@2dd
    move-result-object v1

    #@2de
    const/16 v2, 0x18

    #@2e0
    aput-object v1, v0, v2

    #@2e2
    .line 1982
    const/16 v1, 0x57

    #@2e4
    const/4 v2, 0x5

    #@2e5
    const/16 v3, 0x110

    #@2e7
    filled-new-array {v1, v2, v3, v5}, [I

    #@2ea
    move-result-object v1

    #@2eb
    const/16 v2, 0x19

    #@2ed
    aput-object v1, v0, v2

    #@2ef
    .line 1984
    const/16 v1, 0x45

    #@2f1
    const/4 v2, 0x6

    #@2f2
    const/16 v3, -0x102

    #@2f4
    filled-new-array {v1, v2, v3, v5, v7}, [I

    #@2f7
    move-result-object v1

    #@2f8
    const/16 v2, 0x1a

    #@2fa
    aput-object v1, v0, v2

    #@2fc
    .line 1985
    const/16 v1, 0x45

    #@2fe
    const/4 v2, 0x6

    #@2ff
    const/16 v3, -0x103

    #@301
    filled-new-array {v1, v2, v3, v9}, [I

    #@304
    move-result-object v1

    #@305
    const/16 v2, 0x1b

    #@307
    aput-object v1, v0, v2

    #@309
    .line 1986
    const/16 v1, 0x45

    #@30b
    const/4 v2, 0x6

    #@30c
    const/16 v3, -0x101

    #@30e
    const/4 v4, 0x5

    #@30f
    filled-new-array {v1, v2, v3, v4}, [I

    #@312
    move-result-object v1

    #@313
    const/16 v2, 0x1c

    #@315
    aput-object v1, v0, v2

    #@317
    .line 1987
    const/16 v1, 0x63

    #@319
    const/4 v2, 0x6

    #@31a
    const/16 v3, 0x120

    #@31c
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@31f
    move-result-object v1

    #@320
    const/16 v2, 0x1d

    #@322
    aput-object v1, v0, v2

    #@324
    .line 1988
    const/16 v1, 0x63

    #@326
    const/4 v2, 0x6

    #@327
    const/16 v3, -0x122

    #@329
    filled-new-array {v1, v2, v3, v7}, [I

    #@32c
    move-result-object v1

    #@32d
    const/16 v2, 0x1e

    #@32f
    aput-object v1, v0, v2

    #@331
    .line 1989
    const/16 v1, 0x63

    #@333
    const/4 v2, 0x6

    #@334
    const/16 v3, -0x123

    #@336
    filled-new-array {v1, v2, v3, v9}, [I

    #@339
    move-result-object v1

    #@33a
    const/16 v2, 0x1f

    #@33c
    aput-object v1, v0, v2

    #@33e
    .line 1990
    const/16 v1, 0x63

    #@340
    const/4 v2, 0x6

    #@341
    const/16 v3, -0x121

    #@343
    const/4 v4, 0x5

    #@344
    filled-new-array {v1, v2, v3, v4}, [I

    #@347
    move-result-object v1

    #@348
    const/16 v2, 0x20

    #@34a
    aput-object v1, v0, v2

    #@34c
    .line 1991
    const/16 v1, 0x65

    #@34e
    const/4 v2, 0x6

    #@34f
    const/16 v3, 0x110

    #@351
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@354
    move-result-object v1

    #@355
    const/16 v2, 0x21

    #@357
    aput-object v1, v0, v2

    #@359
    .line 1992
    const/16 v1, 0x65

    #@35b
    const/4 v2, 0x6

    #@35c
    const/16 v3, -0x112

    #@35e
    filled-new-array {v1, v2, v3, v7}, [I

    #@361
    move-result-object v1

    #@362
    const/16 v2, 0x22

    #@364
    aput-object v1, v0, v2

    #@366
    .line 1993
    const/16 v1, 0x65

    #@368
    const/4 v2, 0x6

    #@369
    const/16 v3, -0x113

    #@36b
    filled-new-array {v1, v2, v3, v9}, [I

    #@36e
    move-result-object v1

    #@36f
    const/16 v2, 0x23

    #@371
    aput-object v1, v0, v2

    #@373
    .line 1994
    const/16 v1, 0x65

    #@375
    const/4 v2, 0x6

    #@376
    const/16 v3, -0x111

    #@378
    const/4 v4, 0x5

    #@379
    filled-new-array {v1, v2, v3, v4}, [I

    #@37c
    move-result-object v1

    #@37d
    const/16 v2, 0x24

    #@37f
    aput-object v1, v0, v2

    #@381
    .line 1996
    const/16 v1, 0x64

    #@383
    const/4 v2, 0x7

    #@384
    const/16 v3, 0x100

    #@386
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@389
    move-result-object v1

    #@38a
    const/16 v2, 0x25

    #@38c
    aput-object v1, v0, v2

    #@38e
    .line 1997
    const/16 v1, 0x44

    #@390
    const/16 v2, 0x8

    #@392
    const/16 v3, 0x110

    #@394
    filled-new-array {v1, v2, v3, v5, v7}, [I

    #@397
    move-result-object v1

    #@398
    const/16 v2, 0x26

    #@39a
    aput-object v1, v0, v2

    #@39c
    .line 1998
    const/16 v1, 0x46

    #@39e
    const/16 v2, 0x9

    #@3a0
    const/16 v3, 0x120

    #@3a2
    filled-new-array {v1, v2, v3, v5}, [I

    #@3a5
    move-result-object v1

    #@3a6
    const/16 v2, 0x27

    #@3a8
    aput-object v1, v0, v2

    #@3aa
    .line 1999
    const/16 v1, 0x67

    #@3ac
    const/4 v2, 0x7

    #@3ad
    const/16 v3, 0x130

    #@3af
    const/16 v4, 0x14

    #@3b1
    filled-new-array {v1, v2, v3, v5, v4}, [I

    #@3b4
    move-result-object v1

    #@3b5
    const/16 v2, 0x28

    #@3b7
    aput-object v1, v0, v2

    #@3b9
    .line 2001
    const/16 v1, 0x61

    #@3bb
    const/16 v2, 0xa

    #@3bd
    const/16 v3, -0x102

    #@3bf
    filled-new-array {v1, v2, v3, v5}, [I

    #@3c2
    move-result-object v1

    #@3c3
    const/16 v2, 0x29

    #@3c5
    aput-object v1, v0, v2

    #@3c7
    .line 2003
    const/16 v1, 0x48

    #@3c9
    const/16 v2, 0xb

    #@3cb
    const/16 v3, 0x1a0

    #@3cd
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@3d0
    move-result-object v1

    #@3d1
    const/16 v2, 0x2a

    #@3d3
    aput-object v1, v0, v2

    #@3d5
    .line 2004
    const/16 v1, 0x6b

    #@3d7
    const/16 v2, 0xb

    #@3d9
    const/16 v3, 0x1b0

    #@3db
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@3de
    move-result-object v1

    #@3df
    const/16 v2, 0x2b

    #@3e1
    aput-object v1, v0, v2

    #@3e3
    .line 2005
    const/16 v1, 0x68

    #@3e5
    const/16 v2, 0xb

    #@3e7
    const/16 v3, 0x100

    #@3e9
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@3ec
    move-result-object v1

    #@3ed
    const/16 v2, 0x2c

    #@3ef
    aput-object v1, v0, v2

    #@3f1
    .line 2006
    const/16 v1, 0x4b

    #@3f3
    const/16 v2, 0xb

    #@3f5
    const/16 v3, 0x110

    #@3f7
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@3fa
    move-result-object v1

    #@3fb
    const/16 v2, 0x2d

    #@3fd
    aput-object v1, v0, v2

    #@3ff
    .line 2008
    const/16 v1, 0x6d

    #@401
    const/16 v2, 0xc

    #@403
    const/16 v3, 0x100

    #@405
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@408
    move-result-object v1

    #@409
    const/16 v2, 0x2e

    #@40b
    aput-object v1, v0, v2

    #@40d
    .line 2010
    const/16 v1, 0x73

    #@40f
    const/16 v2, 0xd

    #@411
    const/16 v3, 0x100

    #@413
    filled-new-array {v1, v2, v3, v5, v6}, [I

    #@416
    move-result-object v1

    #@417
    const/16 v2, 0x2f

    #@419
    aput-object v1, v0, v2

    #@41b
    .line 2011
    const/16 v1, 0x53

    #@41d
    const/16 v2, 0xe

    #@41f
    const/16 v3, 0x110

    #@421
    const/16 v4, 0x3e8

    #@423
    filled-new-array {v1, v2, v3, v5, v4}, [I

    #@426
    move-result-object v1

    #@427
    const/16 v2, 0x30

    #@429
    aput-object v1, v0, v2

    #@42b
    .line 2012
    const/16 v1, 0x41

    #@42d
    const/16 v2, 0xd

    #@42f
    const/16 v3, 0x120

    #@431
    const/16 v4, 0x3e8

    #@433
    filled-new-array {v1, v2, v3, v5, v4}, [I

    #@436
    move-result-object v1

    #@437
    const/16 v2, 0x31

    #@439
    aput-object v1, v0, v2

    #@43b
    .line 2014
    const/16 v1, 0x76

    #@43d
    const/16 v2, -0x122

    #@43f
    filled-new-array {v1, v8, v2, v5}, [I

    #@442
    move-result-object v1

    #@443
    const/16 v2, 0x32

    #@445
    aput-object v1, v0, v2

    #@447
    .line 2015
    const/16 v1, 0x76

    #@449
    const/16 v2, -0x123

    #@44b
    filled-new-array {v1, v8, v2, v9}, [I

    #@44e
    move-result-object v1

    #@44f
    const/16 v2, 0x33

    #@451
    aput-object v1, v0, v2

    #@453
    .line 2016
    const/16 v1, 0x7a

    #@455
    const/16 v2, -0x102

    #@457
    filled-new-array {v1, v8, v2, v5, v7}, [I

    #@45a
    move-result-object v1

    #@45b
    const/16 v2, 0x34

    #@45d
    aput-object v1, v0, v2

    #@45f
    .line 2017
    const/16 v1, 0x7a

    #@461
    const/16 v2, -0x103

    #@463
    filled-new-array {v1, v8, v2, v9}, [I

    #@466
    move-result-object v1

    #@467
    const/16 v2, 0x35

    #@469
    aput-object v1, v0, v2

    #@46b
    .line 2018
    const/16 v1, 0x5a

    #@46d
    const/16 v2, -0x111

    #@46f
    filled-new-array {v1, v8, v2, v5, v7}, [I

    #@472
    move-result-object v1

    #@473
    const/16 v2, 0x36

    #@475
    aput-object v1, v0, v2

    #@477
    .line 2019
    const/16 v1, 0x5a

    #@479
    const/16 v2, -0x113

    #@47b
    filled-new-array {v1, v8, v2, v9}, [I

    #@47e
    move-result-object v1

    #@47f
    const/16 v2, 0x37

    #@481
    aput-object v1, v0, v2

    #@483
    .line 2020
    const/16 v1, 0x5a

    #@485
    const/16 v2, -0x112

    #@487
    const/4 v3, 0x5

    #@488
    filled-new-array {v1, v8, v2, v3}, [I

    #@48b
    move-result-object v1

    #@48c
    const/16 v2, 0x38

    #@48e
    aput-object v1, v0, v2

    #@490
    .line 2021
    const/16 v1, 0x4f

    #@492
    const/16 v2, -0x112

    #@494
    filled-new-array {v1, v8, v2, v5}, [I

    #@497
    move-result-object v1

    #@498
    const/16 v2, 0x39

    #@49a
    aput-object v1, v0, v2

    #@49c
    .line 2022
    const/16 v1, 0x4f

    #@49e
    const/16 v2, -0x113

    #@4a0
    filled-new-array {v1, v8, v2, v9}, [I

    #@4a3
    move-result-object v1

    #@4a4
    const/16 v2, 0x3a

    #@4a6
    aput-object v1, v0, v2

    #@4a8
    .line 2023
    const/16 v1, 0x56

    #@4aa
    const/16 v2, -0x112

    #@4ac
    filled-new-array {v1, v8, v2, v5}, [I

    #@4af
    move-result-object v1

    #@4b0
    const/16 v2, 0x3b

    #@4b2
    aput-object v1, v0, v2

    #@4b4
    .line 2024
    const/16 v1, 0x56

    #@4b6
    const/16 v2, -0x113

    #@4b8
    filled-new-array {v1, v8, v2, v6}, [I

    #@4bb
    move-result-object v1

    #@4bc
    const/16 v2, 0x3c

    #@4be
    aput-object v1, v0, v2

    #@4c0
    .line 2025
    const/16 v1, 0x58

    #@4c2
    const/16 v2, -0x111

    #@4c4
    filled-new-array {v1, v8, v2, v5}, [I

    #@4c7
    move-result-object v1

    #@4c8
    const/16 v2, 0x3d

    #@4ca
    aput-object v1, v0, v2

    #@4cc
    .line 2026
    const/16 v1, 0x58

    #@4ce
    const/16 v2, -0x112

    #@4d0
    filled-new-array {v1, v8, v2, v6}, [I

    #@4d3
    move-result-object v1

    #@4d4
    const/16 v2, 0x3e

    #@4d6
    aput-object v1, v0, v2

    #@4d8
    .line 2027
    const/16 v1, 0x58

    #@4da
    const/16 v2, -0x113

    #@4dc
    filled-new-array {v1, v8, v2, v9}, [I

    #@4df
    move-result-object v1

    #@4e0
    const/16 v2, 0x3f

    #@4e2
    aput-object v1, v0, v2

    #@4e4
    .line 2028
    const/16 v1, 0x78

    #@4e6
    const/16 v2, -0x111

    #@4e8
    filled-new-array {v1, v8, v2, v5}, [I

    #@4eb
    move-result-object v1

    #@4ec
    const/16 v2, 0x40

    #@4ee
    aput-object v1, v0, v2

    #@4f0
    .line 2029
    const/16 v1, 0x78

    #@4f2
    const/16 v2, -0x112

    #@4f4
    filled-new-array {v1, v8, v2, v6}, [I

    #@4f7
    move-result-object v1

    #@4f8
    const/16 v2, 0x41

    #@4fa
    aput-object v1, v0, v2

    #@4fc
    .line 2030
    const/16 v1, 0x78

    #@4fe
    const/16 v2, -0x113

    #@500
    filled-new-array {v1, v8, v2, v9}, [I

    #@503
    move-result-object v1

    #@504
    const/16 v2, 0x42

    #@506
    aput-object v1, v0, v2

    #@508
    .line 1947
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@50a
    .line 50
    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x10

    #@3
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1587
    new-instance v1, Ljava/util/TreeMap;

    #@8
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@b
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@d
    .line 1588
    new-instance v1, Ljava/util/TreeMap;

    #@f
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@12
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@14
    .line 1589
    const-string/jumbo v1, "?"

    #@17
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    #@19
    .line 1590
    const-string/jumbo v1, "{1} {0}"

    #@1c
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    #@1e
    .line 1591
    new-array v1, v4, [Ljava/lang/String;

    #@20
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@22
    .line 1592
    new-array v1, v4, [Ljava/lang/String;

    #@24
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@26
    .line 1594
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@29
    .line 1595
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@2b
    const-string/jumbo v2, "{0} \u251c{2}: {1}\u2524"

    #@2e
    aput-object v2, v1, v0

    #@30
    .line 1596
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "F"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v1, v0

    #@48
    .line 1594
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1599
    :cond_0
    const/16 v1, 0x48

    #@4d
    iput-char v1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@4f
    .line 1602
    const/4 v1, 0x0

    #@50
    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    #@52
    .line 1604
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@54
    invoke-direct {v1, v5}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@57
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@59
    .line 1605
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5b
    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    #@5e
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@60
    .line 1606
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@62
    invoke-direct {v1, v5}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    #@65
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@67
    .line 1696
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->complete()V

    #@6a
    .line 1890
    new-instance v1, Ljava/util/HashSet;

    #@6c
    const/16 v2, 0x14

    #@6e
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    #@71
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    #@73
    .line 69
    return-void
.end method

.method private adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 21
    .param p1, "patternWithMatcher"    # Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .param p2, "inputRequest"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p4, "options"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1742
    .local p3, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@4
    move-object/from16 v19, v0

    #@6
    move-object/from16 v0, p1

    #@8
    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    #@a
    move-object/from16 v20, v0

    #@c
    invoke-virtual/range {v19 .. v20}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@f
    .line 1743
    new-instance v10, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 1744
    .local v10, "newPattern":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@18
    move-object/from16 v19, v0

    #@1a
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    #@1d
    move-result-object v19

    #@1e
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v7

    #@22
    .local v7, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v19

    #@26
    if-eqz v19, :cond_e

    #@28
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    .line 1745
    .local v6, "item":Ljava/lang/Object;
    instance-of v0, v6, Ljava/lang/String;

    #@2e
    move/from16 v19, v0

    #@30
    if-eqz v19, :cond_0

    #@32
    .line 1746
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@36
    move-object/from16 v19, v0

    #@38
    check-cast v6, Ljava/lang/String;

    #@3a
    .end local v6    # "item":Ljava/lang/Object;
    move-object/from16 v0, v19

    #@3c
    invoke-virtual {v0, v6}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    #@3f
    move-result-object v19

    #@40
    move-object/from16 v0, v19

    #@42
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_0

    #@46
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_0
    move-object/from16 v18, v6

    #@48
    .line 1748
    check-cast v18, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@4a
    .line 1749
    .local v18, "variableField":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    #@4f
    move-result-object v19

    #@50
    move-object/from16 v0, v19

    #@52
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@55
    .line 1755
    .local v4, "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    #@58
    move-result v17

    #@59
    .line 1757
    .local v17, "type":I
    sget-object v19, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@5b
    move-object/from16 v0, p3

    #@5d
    move-object/from16 v1, v19

    #@5f
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@62
    move-result v19

    #@63
    if-eqz v19, :cond_2

    #@65
    const/16 v19, 0xd

    #@67
    move/from16 v0, v17

    #@69
    move/from16 v1, v19

    #@6b
    if-ne v0, v1, :cond_2

    #@6d
    .line 1758
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;

    #@70
    move-result-object v19

    #@71
    const/16 v20, 0xe

    #@73
    aget-object v9, v19, v20

    #@75
    .line 1759
    .local v9, "newField":Ljava/lang/String;
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    #@79
    move-object/from16 v19, v0

    #@7b
    move-object/from16 v0, v19

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 1760
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 1815
    .end local v9    # "newField":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@86
    goto :goto_0

    #@87
    .line 1761
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get1(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I

    #@8a
    move-result-object v19

    #@8b
    aget v19, v19, v17

    #@8d
    if-eqz v19, :cond_1

    #@8f
    .line 1786
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;

    #@92
    move-result-object v19

    #@93
    aget-object v12, v19, v17

    #@95
    .line 1787
    .local v12, "reqField":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@98
    move-result v13

    #@99
    .line 1788
    .local v13, "reqFieldLen":I
    const/16 v19, 0x0

    #@9b
    move/from16 v0, v19

    #@9d
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@a0
    move-result v19

    #@a1
    const/16 v20, 0x45

    #@a3
    move/from16 v0, v19

    #@a5
    move/from16 v1, v20

    #@a7
    if-ne v0, v1, :cond_3

    #@a9
    const/16 v19, 0x3

    #@ab
    move/from16 v0, v19

    #@ad
    if-ge v13, v0, :cond_3

    #@af
    .line 1789
    const/4 v13, 0x3

    #@b0
    .line 1791
    :cond_3
    move v2, v13

    #@b1
    .line 1792
    .local v2, "adjFieldLen":I
    move-object/from16 v0, p1

    #@b3
    iget-object v8, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@b5
    .line 1793
    .local v8, "matcherWithSkeleton":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    const/16 v19, 0xb

    #@b7
    move/from16 v0, v17

    #@b9
    move/from16 v1, v19

    #@bb
    if-ne v0, v1, :cond_8

    #@bd
    move/from16 v0, p4

    #@bf
    and-int/lit16 v0, v0, 0x800

    #@c1
    move/from16 v19, v0

    #@c3
    if-nez v19, :cond_8

    #@c5
    .line 1796
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@c8
    move-result v2

    #@c9
    .line 1807
    :cond_5
    :goto_1
    const/16 v19, 0xb

    #@cb
    move/from16 v0, v17

    #@cd
    move/from16 v1, v19

    #@cf
    if-eq v0, v1, :cond_d

    #@d1
    const/16 v19, 0x3

    #@d3
    move/from16 v0, v17

    #@d5
    move/from16 v1, v19

    #@d7
    if-eq v0, v1, :cond_d

    #@d9
    const/16 v19, 0x6

    #@db
    move/from16 v0, v17

    #@dd
    move/from16 v1, v19

    #@df
    if-eq v0, v1, :cond_d

    #@e1
    const/16 v19, 0x1

    #@e3
    move/from16 v0, v17

    #@e5
    move/from16 v1, v19

    #@e7
    if-ne v0, v1, :cond_6

    #@e9
    const/16 v19, 0x0

    #@eb
    move/from16 v0, v19

    #@ed
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@f0
    move-result v19

    #@f1
    const/16 v20, 0x59

    #@f3
    move/from16 v0, v19

    #@f5
    move/from16 v1, v20

    #@f7
    if-ne v0, v1, :cond_d

    #@f9
    .line 1808
    :cond_6
    const/16 v19, 0x0

    #@fb
    move/from16 v0, v19

    #@fd
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@100
    move-result v3

    #@101
    .line 1809
    .local v3, "c":C
    :goto_2
    const/16 v19, 0xb

    #@103
    move/from16 v0, v17

    #@105
    move/from16 v1, v19

    #@107
    if-ne v0, v1, :cond_7

    #@109
    sget-object v19, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@10b
    move-object/from16 v0, p3

    #@10d
    move-object/from16 v1, v19

    #@10f
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@112
    move-result v19

    #@113
    if-eqz v19, :cond_7

    #@115
    .line 1810
    move-object/from16 v0, p0

    #@117
    iget-char v3, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@119
    .line 1812
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    #@11b
    .end local v4    # "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    .line 1813
    .restart local v4    # "fieldBuilder":Ljava/lang/StringBuilder;
    move v5, v2

    #@11f
    .local v5, "i":I
    :goto_3
    if-lez v5, :cond_1

    #@121
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@124
    add-int/lit8 v5, v5, -0x1

    #@126
    goto :goto_3

    #@127
    .line 1794
    .end local v3    # "c":C
    .end local v5    # "i":I
    :cond_8
    const/16 v19, 0xc

    #@129
    move/from16 v0, v17

    #@12b
    move/from16 v1, v19

    #@12d
    if-ne v0, v1, :cond_9

    #@12f
    move/from16 v0, p4

    #@131
    and-int/lit16 v0, v0, 0x1000

    #@133
    move/from16 v19, v0

    #@135
    if-eqz v19, :cond_4

    #@137
    .line 1795
    :cond_9
    const/16 v19, 0xd

    #@139
    move/from16 v0, v17

    #@13b
    move/from16 v1, v19

    #@13d
    if-ne v0, v1, :cond_a

    #@13f
    move/from16 v0, p4

    #@141
    and-int/lit16 v0, v0, 0x2000

    #@143
    move/from16 v19, v0

    #@145
    if-eqz v19, :cond_4

    #@147
    .line 1797
    :cond_a
    if-eqz v8, :cond_5

    #@149
    .line 1798
    move/from16 v0, v17

    #@14b
    invoke-virtual {v8, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->origStringForField(I)Ljava/lang/String;

    #@14e
    move-result-object v14

    #@14f
    .line 1799
    .local v14, "skelField":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@152
    move-result v16

    #@153
    .line 1800
    .local v16, "skelFieldLen":I
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->isNumeric()Z

    #@156
    move-result v11

    #@157
    .line 1801
    .local v11, "patFieldIsNumeric":Z
    move/from16 v0, v17

    #@159
    invoke-virtual {v8, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->fieldIsNumeric(I)Z

    #@15c
    move-result v15

    #@15d
    .line 1802
    .local v15, "skelFieldIsNumeric":Z
    move/from16 v0, v16

    #@15f
    if-eq v0, v13, :cond_c

    #@161
    if-eqz v11, :cond_b

    #@163
    if-eqz v15, :cond_c

    #@165
    :cond_b
    if-eqz v15, :cond_5

    #@167
    if-nez v11, :cond_5

    #@169
    .line 1804
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@16c
    move-result v2

    #@16d
    goto/16 :goto_1

    #@16f
    .line 1808
    .end local v11    # "patFieldIsNumeric":Z
    .end local v14    # "skelField":Ljava/lang/String;
    .end local v15    # "skelFieldIsNumeric":Z
    .end local v16    # "skelFieldLen":I
    :cond_d
    const/16 v19, 0x0

    #@171
    move/from16 v0, v19

    #@173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@176
    move-result v3

    #@177
    .restart local v3    # "c":C
    goto :goto_2

    #@178
    .line 1819
    .end local v2    # "adjFieldLen":I
    .end local v3    # "c":C
    .end local v4    # "fieldBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "item":Ljava/lang/Object;
    .end local v8    # "matcherWithSkeleton":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v12    # "reqField":Ljava/lang/String;
    .end local v13    # "reqFieldLen":I
    .end local v17    # "type":I
    .end local v18    # "variableField":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v19

    #@17c
    return-object v19
.end method

.method private checkFrozen()V
    .locals 2

    #@0
    .prologue
    .line 1615
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1616
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1614
    :cond_0
    return-void
.end method

.method private complete()V
    .locals 4

    #@0
    .prologue
    .line 1687
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    #@2
    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    #@5
    .line 1689
    .local v1, "patternInfo":Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 1691
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@17
    .line 1689
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1686
    :cond_0
    return-void
.end method

.method private getAppendFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "foundMask"    # I

    #@0
    .prologue
    .line 1659
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public static getAppendFormatNumber(Ljava/lang/String;)I
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 350
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    return v0

    #@11
    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 352
    :cond_1
    const/4 v1, -0x1

    #@15
    return v1
.end method

.method private getAppendName(I)Ljava/lang/String;
    .locals 2
    .param p1, "foundMask"    # I

    #@0
    .prologue
    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@e
    aget-object v1, v1, p1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "\'"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 13
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
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1625
    .local p5, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    const/4 v3, 0x0

    #@1
    .line 1626
    .local v3, "resultPattern":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@3
    .line 1627
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    #@6
    move-result-object v4

    #@7
    .line 1628
    .local v4, "resultPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    move-object/from16 v0, p5

    #@9
    move/from16 v1, p6

    #@b
    invoke-direct {p0, v4, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 1630
    .local v3, "resultPattern":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p3

    #@11
    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@13
    if-eqz v9, :cond_1

    #@15
    .line 1634
    move-object/from16 v0, p3

    #@17
    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@19
    and-int/lit16 v9, v9, 0x6000

    #@1b
    const/16 v10, 0x4000

    #@1d
    if-ne v9, v10, :cond_0

    #@1f
    .line 1635
    and-int/lit16 v9, p2, 0x6000

    #@21
    const/16 v10, 0x6000

    #@23
    if-ne v9, v10, :cond_0

    #@25
    .line 1636
    iput-object v3, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    #@27
    .line 1637
    invoke-static/range {p5 .. p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    #@2a
    move-result-object p5

    #@2b
    .line 1638
    sget-object v9, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@2d
    move-object/from16 v0, p5

    #@2f
    invoke-virtual {v0, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@32
    .line 1639
    move-object/from16 v0, p5

    #@34
    move/from16 v1, p6

    #@36
    invoke-direct {p0, v4, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 1640
    move-object/from16 v0, p3

    #@3c
    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@3e
    and-int/lit16 v9, v9, -0x4001

    #@40
    move-object/from16 v0, p3

    #@42
    iput v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@44
    goto :goto_0

    #@45
    .line 1644
    :cond_0
    move-object/from16 v0, p3

    #@47
    iget v5, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@49
    .line 1645
    .local v5, "startingMask":I
    move-object/from16 v0, p3

    #@4b
    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@4d
    move-object/from16 v0, p3

    #@4f
    move-object/from16 v1, p4

    #@51
    invoke-direct {p0, p1, v9, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    #@54
    move-result-object v7

    #@55
    .line 1646
    .local v7, "tempWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    move-object/from16 v0, p5

    #@57
    move/from16 v1, p6

    #@59
    invoke-direct {p0, v7, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    .line 1647
    .local v6, "temp":Ljava/lang/String;
    move-object/from16 v0, p3

    #@5f
    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@61
    not-int v9, v9

    #@62
    and-int v2, v5, v9

    #@64
    .line 1648
    .local v2, "foundMask":I
    invoke-direct {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I

    #@67
    move-result v8

    #@68
    .line 1649
    .local v8, "topField":I
    invoke-direct {p0, v8}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    const/4 v10, 0x3

    #@6d
    new-array v10, v10, [Ljava/lang/Object;

    #@6f
    const/4 v11, 0x0

    #@70
    aput-object v3, v10, v11

    #@72
    const/4 v11, 0x1

    #@73
    aput-object v6, v10, v11

    #@75
    invoke-direct {p0, v8}, Landroid/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    const/4 v12, 0x2

    #@7a
    aput-object v11, v10, v12

    #@7c
    invoke-static {v9, v10}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    goto :goto_0

    #@81
    .line 1652
    .end local v2    # "foundMask":I
    .end local v3    # "resultPattern":Ljava/lang/String;
    .end local v4    # "resultPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v5    # "startingMask":I
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "tempWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v8    # "topField":I
    :cond_1
    return-object v3
.end method

.method private getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;
    .locals 17
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 401
    const-class v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@2
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v7

    #@6
    .line 403
    .local v7, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 404
    .local v15, "skeletonCopy":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    #@e
    .line 405
    .local v11, "inQuoted":Z
    const/4 v14, 0x0

    #@f
    .local v14, "patPos":I
    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v2

    #@13
    if-ge v14, v2, :cond_4

    #@15
    .line 406
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    #@18
    move-result v13

    #@19
    .line 407
    .local v13, "patChr":C
    const/16 v2, 0x27

    #@1b
    if-ne v13, v2, :cond_2

    #@1d
    .line 408
    if-eqz v11, :cond_1

    #@1f
    const/4 v11, 0x0

    #@20
    .line 405
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@22
    goto :goto_0

    #@23
    .line 408
    :cond_1
    const/4 v11, 0x1

    #@24
    goto :goto_1

    #@25
    .line 409
    :cond_2
    if-nez v11, :cond_0

    #@27
    .line 410
    const/16 v2, 0x6a

    #@29
    if-ne v13, v2, :cond_3

    #@2b
    .line 411
    move-object/from16 v0, p0

    #@2d
    iget-char v2, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@2f
    invoke-virtual {v15, v14, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@32
    goto :goto_1

    #@33
    .line 412
    :cond_3
    const/16 v2, 0x4a

    #@35
    if-ne v13, v2, :cond_0

    #@37
    .line 415
    const/16 v2, 0x48

    #@39
    invoke-virtual {v15, v14, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@3c
    .line 416
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@3e
    invoke-virtual {v7, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_1

    #@42
    .line 422
    .end local v13    # "patChr":C
    :cond_4
    monitor-enter p0

    #@43
    .line 423
    :try_start_0
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@47
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@53
    .line 424
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@5b
    const/4 v4, -0x1

    #@5c
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p2

    #@60
    invoke-direct {v0, v2, v4, v3, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    #@63
    move-result-object v9

    #@64
    .line 425
    .local v9, "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    move-object/from16 v0, p0

    #@66
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@68
    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@6a
    if-nez v2, :cond_5

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@70
    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@72
    if-nez v2, :cond_5

    #@74
    .line 427
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@78
    move-object/from16 v0, p0

    #@7a
    move/from16 v1, p3

    #@7c
    invoke-direct {v0, v9, v2, v7, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    move-result-object v2

    #@80
    monitor-exit p0

    #@81
    return-object v2

    #@82
    .line 429
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@84
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@86
    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I

    #@89
    move-result v12

    #@8a
    .line 432
    .local v12, "neededFields":I
    move-object/from16 v0, p0

    #@8c
    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@8e
    and-int/lit16 v4, v12, 0x3ff

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@94
    move-object/from16 v2, p0

    #@96
    move-object/from16 v6, p2

    #@98
    move/from16 v8, p3

    #@9a
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    .line 433
    .local v10, "datePattern":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@a2
    const v2, 0xfc00

    #@a5
    and-int v4, v12, v2

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@ab
    move-object/from16 v2, p0

    #@ad
    move-object/from16 v6, p2

    #@af
    move/from16 v8, p3

    #@b1
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b4
    move-result-object v16

    #@b5
    .local v16, "timePattern":Ljava/lang/String;
    monitor-exit p0

    #@b6
    .line 436
    if-nez v10, :cond_7

    #@b8
    if-nez v16, :cond_6

    #@ba
    const-string/jumbo v16, ""

    #@bd
    .end local v16    # "timePattern":Ljava/lang/String;
    :cond_6
    return-object v16

    #@be
    .line 422
    .end local v9    # "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .end local v10    # "datePattern":Ljava/lang/String;
    .end local v12    # "neededFields":I
    :catchall_0
    move-exception v2

    #@bf
    monitor-exit p0

    #@c0
    throw v2

    #@c1
    .line 437
    .restart local v9    # "bestWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .restart local v10    # "datePattern":Ljava/lang/String;
    .restart local v12    # "neededFields":I
    .restart local v16    # "timePattern":Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_8

    #@c3
    return-object v10

    #@c4
    .line 438
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DateTimePatternGenerator;->getDateTimeFormat()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    const/4 v3, 0x2

    #@c9
    new-array v3, v3, [Ljava/lang/Object;

    #@cb
    const/4 v4, 0x0

    #@cc
    aput-object v16, v3, v4

    #@ce
    const/4 v4, 0x1

    #@cf
    aput-object v10, v3, v4

    #@d1
    invoke-static {v2, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d4
    move-result-object v2

    #@d5
    return-object v2
.end method

.method private getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .locals 9
    .param p1, "source"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "includeMask"    # I
    .param p3, "missingFields"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    .param p4, "skipMatcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1705
    const v0, 0x7fffffff

    #@4
    .line 1706
    .local v0, "bestDistance":I
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    #@6
    const-string/jumbo v7, ""

    #@9
    invoke-direct {v1, v7, v8}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@c
    .line 1707
    .local v1, "bestPatternWithMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    new-instance v4, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@e
    invoke-direct {v4, v8}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    #@11
    .line 1708
    .local v4, "tempInfo":Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@13
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@16
    move-result-object v7

    #@17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v6

    #@1b
    .local v6, "trial$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@27
    .line 1709
    .local v5, "trial":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    invoke-virtual {v5, p4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_0

    #@2d
    .line 1712
    invoke-virtual {p1, v5, p2, v4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I

    #@30
    move-result v2

    #@31
    .line 1715
    .local v2, "distance":I
    if-ge v2, v0, :cond_0

    #@33
    .line 1716
    move v0, v2

    #@34
    .line 1717
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@36
    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@3c
    .line 1718
    .local v3, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    #@3e
    iput-object v7, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    #@40
    .line 1721
    iget-boolean v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    #@42
    if-eqz v7, :cond_2

    #@44
    .line 1722
    iput-object v5, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@46
    .line 1726
    :goto_0
    invoke-virtual {p3, v4}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    #@49
    .line 1727
    if-nez v2, :cond_0

    #@4b
    .line 1732
    .end local v2    # "distance":I
    .end local v3    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .end local v5    # "trial":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :cond_1
    return-object v1

    #@4c
    .line 1724
    .restart local v2    # "distance":I
    .restart local v3    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .restart local v5    # "trial":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :cond_2
    iput-object v8, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@4e
    goto :goto_0
.end method

.method private static getCanonicalIndex(Ljava/lang/String;Z)I
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 1924
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 1925
    .local v3, "len":I
    if-nez v3, :cond_0

    #@8
    .line 1926
    return v5

    #@9
    .line 1928
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 1930
    .local v1, "ch":I
    const/4 v2, 0x1

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@10
    .line 1931
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v6

    #@14
    if-eq v6, v1, :cond_1

    #@16
    .line 1932
    return v5

    #@17
    .line 1930
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1935
    :cond_2
    const/4 v0, -0x1

    #@1b
    .line 1936
    .local v0, "bestRow":I
    const/4 v2, 0x0

    #@1c
    :goto_1
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@1e
    array-length v6, v6

    #@1f
    if-ge v2, v6, :cond_5

    #@21
    .line 1937
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@23
    aget-object v4, v6, v2

    #@25
    .line 1938
    .local v4, "row":[I
    aget v6, v4, v7

    #@27
    if-eq v6, v1, :cond_4

    #@29
    .line 1936
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 1939
    :cond_4
    move v0, v2

    #@2d
    .line 1940
    const/4 v6, 0x3

    #@2e
    aget v6, v4, v6

    #@30
    if-gt v6, v3, :cond_3

    #@32
    .line 1941
    array-length v6, v4

    #@33
    add-int/lit8 v6, v6, -0x1

    #@35
    aget v6, v4, v6

    #@37
    if-lt v6, v3, :cond_3

    #@39
    .line 1942
    return v2

    #@3a
    .line 1944
    .end local v4    # "row":[I
    :cond_5
    if-eqz p1, :cond_6

    #@3c
    move v0, v5

    #@3d
    .end local v0    # "bestRow":I
    :cond_6
    return v0
.end method

.method public static getEmptyInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator;

    #@2
    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    #@5
    return-object v0
.end method

.method private static getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4
    .param p0, "fp"    # Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .param p1, "nuke"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 324
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    if-ge v0, v3, :cond_2

    #@10
    .line 325
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 324
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 326
    :cond_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .line 327
    .local v1, "item":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p0, v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_1

    #@31
    .line 330
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_1

    #@39
    .line 333
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3
.end method

.method public static getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 33
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@3
    move-result-object v22

    #@4
    .line 113
    .local v22, "localeKey":Ljava/lang/String;
    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    #@6
    move-object/from16 v0, v31

    #@8
    move-object/from16 v1, v22

    #@a
    invoke-interface {v0, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v27

    #@e
    check-cast v27, Landroid/icu/text/DateTimePatternGenerator;

    #@10
    .line 114
    .local v27, "result":Landroid/icu/text/DateTimePatternGenerator;
    if-eqz v27, :cond_0

    #@12
    .line 115
    return-object v27

    #@13
    .line 117
    :cond_0
    new-instance v27, Landroid/icu/text/DateTimePatternGenerator;

    #@15
    .end local v27    # "result":Landroid/icu/text/DateTimePatternGenerator;
    invoke-direct/range {v27 .. v27}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    #@18
    .line 118
    .restart local v27    # "result":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v28, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    #@1a
    invoke-direct/range {v28 .. v28}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    #@1d
    .line 119
    .local v28, "returnInfo":Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    const/16 v29, 0x0

    #@1f
    .line 121
    .local v29, "shortTimePattern":Ljava/lang/String;
    const/16 v17, 0x0

    #@21
    .end local v29    # "shortTimePattern":Ljava/lang/String;
    .local v17, "i":I
    :goto_0
    const/16 v31, 0x3

    #@23
    move/from16 v0, v17

    #@25
    move/from16 v1, v31

    #@27
    if-gt v0, v1, :cond_3

    #@29
    .line 122
    move/from16 v0, v17

    #@2b
    move-object/from16 v1, p0

    #@2d
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Landroid/icu/text/SimpleDateFormat;

    #@33
    .line 123
    .local v6, "df":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@36
    move-result-object v31

    #@37
    const/16 v32, 0x0

    #@39
    move-object/from16 v0, v27

    #@3b
    move-object/from16 v1, v31

    #@3d
    move/from16 v2, v32

    #@3f
    move-object/from16 v3, v28

    #@41
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@44
    .line 124
    move/from16 v0, v17

    #@46
    move-object/from16 v1, p0

    #@48
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@4b
    move-result-object v6

    #@4c
    .end local v6    # "df":Landroid/icu/text/SimpleDateFormat;
    check-cast v6, Landroid/icu/text/SimpleDateFormat;

    #@4e
    .line 125
    .restart local v6    # "df":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@51
    move-result-object v31

    #@52
    const/16 v32, 0x0

    #@54
    move-object/from16 v0, v27

    #@56
    move-object/from16 v1, v31

    #@58
    move/from16 v2, v32

    #@5a
    move-object/from16 v3, v28

    #@5c
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@5f
    .line 126
    const/16 v31, 0x3

    #@61
    move/from16 v0, v17

    #@63
    move/from16 v1, v31

    #@65
    if-ne v0, v1, :cond_1

    #@67
    .line 129
    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@6a
    move-result-object v29

    #@6b
    .line 133
    .local v29, "shortTimePattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@6d
    invoke-direct/range {v16 .. v16}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    #@70
    .line 134
    .local v16, "fp":Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    move-object/from16 v0, v16

    #@72
    move-object/from16 v1, v29

    #@74
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@77
    .line 135
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    #@7a
    move-result-object v21

    #@7b
    .line 136
    .local v21, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v18, 0x0

    #@7d
    .local v18, "idx":I
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@80
    move-result v31

    #@81
    move/from16 v0, v18

    #@83
    move/from16 v1, v31

    #@85
    if-ge v0, v1, :cond_1

    #@87
    .line 137
    move-object/from16 v0, v21

    #@89
    move/from16 v1, v18

    #@8b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v19

    #@8f
    .line 138
    .local v19, "item":Ljava/lang/Object;
    move-object/from16 v0, v19

    #@91
    instance-of v0, v0, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@93
    move/from16 v31, v0

    #@95
    if-eqz v31, :cond_2

    #@97
    move-object/from16 v11, v19

    #@99
    .line 139
    check-cast v11, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@9b
    .line 140
    .local v11, "fld":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    invoke-virtual {v11}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    #@9e
    move-result v31

    #@9f
    const/16 v32, 0xb

    #@a1
    move/from16 v0, v31

    #@a3
    move/from16 v1, v32

    #@a5
    if-ne v0, v1, :cond_2

    #@a7
    .line 141
    invoke-virtual {v11}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    #@aa
    move-result-object v31

    #@ab
    const/16 v32, 0x0

    #@ad
    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->charAt(I)C

    #@b0
    move-result v31

    #@b1
    move/from16 v0, v31

    #@b3
    move-object/from16 v1, v27

    #@b5
    iput-char v0, v1, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@b7
    .line 121
    .end local v11    # "fld":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    .end local v16    # "fp":Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .end local v18    # "idx":I
    .end local v19    # "item":Ljava/lang/Object;
    .end local v21    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v29    # "shortTimePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    #@b9
    goto/16 :goto_0

    #@bb
    .line 136
    .restart local v16    # "fp":Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .restart local v18    # "idx":I
    .restart local v19    # "item":Ljava/lang/Object;
    .restart local v21    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v29    # "shortTimePattern":Ljava/lang/String;
    :cond_2
    add-int/lit8 v18, v18, 0x1

    #@bd
    goto :goto_1

    #@be
    .line 149
    .end local v6    # "df":Landroid/icu/text/SimpleDateFormat;
    .end local v16    # "fp":Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .end local v18    # "idx":I
    .end local v19    # "item":Ljava/lang/Object;
    .end local v21    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v29    # "shortTimePattern":Ljava/lang/String;
    :cond_3
    const-string/jumbo v31, "android/icu/impl/data/icudt55b"

    #@c1
    move-object/from16 v0, v31

    #@c3
    move-object/from16 v1, p0

    #@c5
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@c8
    move-result-object v26

    #@c9
    check-cast v26, Landroid/icu/impl/ICUResourceBundle;

    #@cb
    .line 151
    .local v26, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v31, "calendar"

    #@ce
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, v31

    #@d2
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    .line 152
    .local v5, "calendarTypeToUse":Ljava/lang/String;
    if-nez v5, :cond_4

    #@d8
    .line 153
    const-string/jumbo v31, "calendar"

    #@db
    const/16 v32, 0x1

    #@dd
    move-object/from16 v0, v31

    #@df
    move-object/from16 v1, p0

    #@e1
    move/from16 v2, v32

    #@e3
    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    #@e6
    move-result-object v25

    #@e7
    .line 154
    .local v25, "preferredCalendarTypes":[Ljava/lang/String;
    const/16 v31, 0x0

    #@e9
    aget-object v5, v25, v31

    #@eb
    .line 156
    .end local v25    # "preferredCalendarTypes":[Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_5

    #@ed
    .line 157
    const-string/jumbo v5, "gregorian"

    #@f0
    .line 168
    :cond_5
    :try_start_0
    new-instance v31, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v32, "calendar/"

    #@f8
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v31

    #@fc
    move-object/from16 v0, v31

    #@fe
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v31

    #@102
    const-string/jumbo v32, "/appendItems"

    #@105
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v31

    #@109
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v31

    #@10d
    move-object/from16 v0, v26

    #@10f
    move-object/from16 v1, v31

    #@111
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@114
    move-result-object v20

    #@115
    .line 169
    .local v20, "itemBundle":Landroid/icu/impl/ICUResourceBundle;
    const/16 v17, 0x0

    #@117
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@11a
    move-result v31

    #@11b
    move/from16 v0, v17

    #@11d
    move/from16 v1, v31

    #@11f
    if-ge v0, v1, :cond_6

    #@121
    .line 170
    move-object/from16 v0, v20

    #@123
    move/from16 v1, v17

    #@125
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@128
    move-result-object v12

    #@129
    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    #@12b
    .line 171
    .local v12, "formatBundle":Landroid/icu/impl/ICUResourceBundle;
    move-object/from16 v0, v20

    #@12d
    move/from16 v1, v17

    #@12f
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@132
    move-result-object v31

    #@133
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@136
    move-result-object v14

    #@137
    .line 172
    .local v14, "formatName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@13a
    move-result-object v30

    #@13b
    .line 173
    .local v30, "value":Ljava/lang/String;
    invoke-static {v14}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Ljava/lang/String;)I

    #@13e
    move-result v31

    #@13f
    move-object/from16 v0, v27

    #@141
    move/from16 v1, v31

    #@143
    move-object/from16 v2, v30

    #@145
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@148
    .line 169
    add-int/lit8 v17, v17, 0x1

    #@14a
    goto :goto_2

    #@14b
    .line 175
    .end local v12    # "formatBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v14    # "formatName":Ljava/lang/String;
    .end local v20    # "itemBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v30    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@14c
    .line 180
    :cond_6
    :try_start_1
    const-string/jumbo v31, "fields"

    #@14f
    move-object/from16 v0, v26

    #@151
    move-object/from16 v1, v31

    #@153
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@156
    move-result-object v20

    #@157
    .line 182
    .restart local v20    # "itemBundle":Landroid/icu/impl/ICUResourceBundle;
    const/16 v17, 0x0

    #@159
    :goto_3
    const/16 v31, 0x10

    #@15b
    move/from16 v0, v17

    #@15d
    move/from16 v1, v31

    #@15f
    if-ge v0, v1, :cond_8

    #@161
    .line 183
    invoke-static/range {v17 .. v17}, Landroid/icu/text/DateTimePatternGenerator;->isCLDRFieldName(I)Z

    #@164
    move-result v31

    #@165
    if-eqz v31, :cond_7

    #@167
    .line 184
    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    #@169
    aget-object v31, v31, v17

    #@16b
    move-object/from16 v0, v20

    #@16d
    move-object/from16 v1, v31

    #@16f
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@172
    move-result-object v10

    #@173
    .line 185
    .local v10, "fieldBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v31, "dn"

    #@176
    move-object/from16 v0, v31

    #@178
    invoke-virtual {v10, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@17b
    move-result-object v8

    #@17c
    .line 186
    .local v8, "dnBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@17f
    move-result-object v30

    #@180
    .line 188
    .restart local v30    # "value":Ljava/lang/String;
    move-object/from16 v0, v27

    #@182
    move/from16 v1, v17

    #@184
    move-object/from16 v2, v30

    #@186
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemName(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@189
    .line 182
    .end local v8    # "dnBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v10    # "fieldBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v30    # "value":Ljava/lang/String;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    #@18b
    goto :goto_3

    #@18c
    .line 191
    .end local v20    # "itemBundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_1
    move-exception v9

    #@18d
    .line 195
    :cond_8
    const/4 v4, 0x0

    #@18e
    .line 203
    .local v4, "availFormatsBundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_2
    new-instance v31, Ljava/lang/StringBuilder;

    #@190
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v32, "calendar/"

    #@196
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v31

    #@19a
    move-object/from16 v0, v31

    #@19c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v31

    #@1a0
    const-string/jumbo v32, "/availableFormats"

    #@1a3
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v31

    #@1a7
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v31

    #@1ab
    move-object/from16 v0, v26

    #@1ad
    move-object/from16 v1, v31

    #@1af
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    #@1b2
    move-result-object v4

    #@1b3
    .line 208
    .end local v4    # "availFormatsBundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_4
    const/16 v23, 0x1

    #@1b5
    .line 209
    .local v23, "override":Z
    :cond_9
    :goto_5
    if-eqz v4, :cond_c

    #@1b7
    .line 210
    const/16 v17, 0x0

    #@1b9
    :goto_6
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@1bc
    move-result v31

    #@1bd
    move/from16 v0, v17

    #@1bf
    move/from16 v1, v31

    #@1c1
    if-ge v0, v1, :cond_b

    #@1c3
    .line 211
    move/from16 v0, v17

    #@1c5
    invoke-virtual {v4, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@1c8
    move-result-object v31

    #@1c9
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@1cc
    move-result-object v13

    #@1cd
    .line 213
    .local v13, "formatKey":Ljava/lang/String;
    move-object/from16 v0, v27

    #@1cf
    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z

    #@1d2
    move-result v31

    #@1d3
    if-nez v31, :cond_a

    #@1d5
    .line 214
    move-object/from16 v0, v27

    #@1d7
    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V

    #@1da
    .line 217
    move/from16 v0, v17

    #@1dc
    invoke-virtual {v4, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@1df
    move-result-object v31

    #@1e0
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@1e3
    move-result-object v15

    #@1e4
    .line 218
    .local v15, "formatValue":Ljava/lang/String;
    move-object/from16 v0, v27

    #@1e6
    move/from16 v1, v23

    #@1e8
    move-object/from16 v2, v28

    #@1ea
    invoke-virtual {v0, v15, v13, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@1ed
    .line 210
    .end local v15    # "formatValue":Ljava/lang/String;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    #@1ef
    goto :goto_6

    #@1f0
    .line 222
    .end local v13    # "formatKey":Ljava/lang/String;
    :cond_b
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@1f3
    move-result-object v24

    #@1f4
    check-cast v24, Landroid/icu/impl/ICUResourceBundle;

    #@1f6
    .line 223
    .local v24, "pbundle":Landroid/icu/impl/ICUResourceBundle;
    if-nez v24, :cond_e

    #@1f8
    .line 238
    .end local v24    # "pbundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_c
    if-eqz v29, :cond_d

    #@1fa
    .line 239
    invoke-static/range {v27 .. v29}, Landroid/icu/text/DateTimePatternGenerator;->hackTimes(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V

    #@1fd
    .line 242
    :cond_d
    invoke-static/range {p0 .. p0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@200
    move-result-object v31

    #@201
    const/16 v32, 0x2

    #@203
    move-object/from16 v0, v31

    #@205
    move-object/from16 v1, p0

    #@207
    move/from16 v2, v32

    #@209
    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@20c
    move-result-object v31

    #@20d
    move-object/from16 v0, v27

    #@20f
    move-object/from16 v1, v31

    #@211
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    #@214
    .line 245
    new-instance v7, Landroid/icu/text/DecimalFormatSymbols;

    #@216
    move-object/from16 v0, p0

    #@218
    invoke-direct {v7, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@21b
    .line 246
    .local v7, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@21e
    move-result v31

    #@21f
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@222
    move-result-object v31

    #@223
    move-object/from16 v0, v27

    #@225
    move-object/from16 v1, v31

    #@227
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V

    #@22a
    .line 249
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    #@22d
    .line 250
    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    #@22f
    move-object/from16 v0, v31

    #@231
    move-object/from16 v1, v22

    #@233
    move-object/from16 v2, v27

    #@235
    invoke-interface {v0, v1, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@238
    .line 251
    return-object v27

    #@239
    .line 227
    .end local v7    # "dfs":Landroid/icu/text/DecimalFormatSymbols;
    .restart local v24    # "pbundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_e
    :try_start_3
    new-instance v31, Ljava/lang/StringBuilder;

    #@23b
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@23e
    const-string/jumbo v32, "calendar/"

    #@241
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v31

    #@245
    move-object/from16 v0, v31

    #@247
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v31

    #@24b
    const-string/jumbo v32, "/availableFormats"

    #@24e
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v31

    #@252
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@255
    move-result-object v31

    #@256
    move-object/from16 v0, v24

    #@258
    move-object/from16 v1, v31

    #@25a
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    #@25d
    move-result-object v4

    #@25e
    .line 231
    :goto_7
    if-eqz v4, :cond_9

    #@260
    invoke-virtual/range {v24 .. v24}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@263
    move-result-object v31

    #@264
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@267
    move-result-object v31

    #@268
    const-string/jumbo v32, "root"

    #@26b
    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26e
    move-result v31

    #@26f
    if-eqz v31, :cond_9

    #@271
    .line 232
    const/16 v23, 0x0

    #@273
    goto/16 :goto_5

    #@275
    .line 228
    :catch_2
    move-exception v9

    #@276
    .line 229
    .local v9, "e":Ljava/util/MissingResourceException;
    const/4 v4, 0x0

    #@277
    .restart local v4    # "availFormatsBundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_7

    #@278
    .line 204
    .end local v9    # "e":Ljava/util/MissingResourceException;
    .end local v23    # "override":Z
    .end local v24    # "pbundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_3
    move-exception v9

    #@279
    .restart local v9    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_4
.end method

.method public static getInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 87
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 97
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1908
    invoke-static {p0, v6}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    #@4
    move-result v0

    #@5
    .line 1909
    .local v0, "i":I
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    #@7
    sget-object v5, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@9
    aget-object v5, v5, v0

    #@b
    aget v5, v5, v6

    #@d
    aget-object v1, v4, v5

    #@f
    .line 1910
    .local v1, "name":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@11
    aget-object v4, v4, v0

    #@13
    const/4 v5, 0x2

    #@14
    aget v3, v4, v5

    #@16
    .line 1911
    .local v3, "subtype":I
    if-gez v3, :cond_1

    #@18
    const/4 v2, 0x1

    #@19
    .line 1912
    .local v2, "string":Z
    :goto_0
    if-eqz v2, :cond_0

    #@1b
    neg-int v3, v3

    #@1c
    .line 1913
    :cond_0
    if-gez v3, :cond_2

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, ":S"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 1915
    :goto_1
    return-object v1

    #@33
    .line 1911
    .end local v2    # "string":Z
    :cond_1
    const/4 v2, 0x0

    #@34
    .restart local v2    # "string":Z
    goto :goto_0

    #@35
    .line 1914
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, ":N"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    goto :goto_1
.end method

.method private getSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1552
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@2
    invoke-virtual {v5, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    .line 1553
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/TreeSet;

    #@c
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@f
    .line 1554
    .local v4, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "obj$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    .line 1555
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 1556
    .local v0, "item":Ljava/lang/String;
    const-string/jumbo v5, "G"

    #@24
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    const-string/jumbo v5, "a"

    #@2d
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_0

    #@33
    .line 1559
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1561
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method

.method private getTopBitNumber(I)I
    .locals 2
    .param p1, "foundMask"    # I

    #@0
    .prologue
    .line 1675
    const/4 v0, 0x0

    #@1
    .line 1676
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    #@3
    .line 1677
    ushr-int/lit8 p1, p1, 0x1

    #@5
    .line 1678
    add-int/lit8 v0, v0, 0x1

    #@7
    goto :goto_0

    #@8
    .line 1680
    :cond_0
    add-int/lit8 v1, v0, -0x1

    #@a
    return v1
.end method

.method private static hackTimes(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
    .locals 13
    .param p0, "result"    # Landroid/icu/text/DateTimePatternGenerator;
    .param p1, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .param p2, "hackPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0x73

    #@2
    const/4 v11, 0x0

    #@3
    .line 273
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    invoke-virtual {v9, p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@8
    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 276
    .local v6, "mmss":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .line 277
    .local v1, "gotMm":Z
    const/4 v3, 0x0

    #@f
    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@11
    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@14
    move-result-object v9

    #@15
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@18
    move-result v9

    #@19
    if-ge v3, v9, :cond_3

    #@1b
    .line 278
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@1d
    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@20
    move-result-object v9

    #@21
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    .line 279
    .local v4, "item":Ljava/lang/Object;
    instance-of v9, v4, Ljava/lang/String;

    #@27
    if-eqz v9, :cond_1

    #@29
    .line 280
    if-eqz v1, :cond_0

    #@2b
    .line 281
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@2d
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    invoke-virtual {v9, v10}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 284
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v0

    #@43
    .line 285
    .local v0, "ch":C
    const/16 v9, 0x6d

    #@45
    if-ne v0, v9, :cond_2

    #@47
    .line 286
    const/4 v1, 0x1

    #@48
    .line 287
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_1

    #@4c
    .line 288
    :cond_2
    if-ne v0, v12, :cond_7

    #@4e
    .line 289
    if-nez v1, :cond_6

    #@50
    .line 302
    .end local v0    # "ch":C
    .end local v4    # "item":Ljava/lang/Object;
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/BitSet;

    #@52
    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    #@55
    .line 303
    .local v8, "variables":Ljava/util/BitSet;
    new-instance v7, Ljava/util/BitSet;

    #@57
    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    #@5a
    .line 304
    .local v7, "nuke":Ljava/util/BitSet;
    const/4 v3, 0x0

    #@5b
    :goto_3
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5d
    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@60
    move-result-object v9

    #@61
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@64
    move-result v9

    #@65
    if-ge v3, v9, :cond_9

    #@67
    .line 305
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@69
    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    #@6c
    move-result-object v9

    #@6d
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v4

    #@71
    .line 306
    .restart local v4    # "item":Ljava/lang/Object;
    instance-of v9, v4, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@73
    if-eqz v9, :cond_5

    #@75
    .line 307
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    #@78
    .line 308
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v0

    #@80
    .line 309
    .restart local v0    # "ch":C
    if-eq v0, v12, :cond_4

    #@82
    const/16 v9, 0x53

    #@84
    if-ne v0, v9, :cond_5

    #@86
    .line 310
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    #@89
    .line 311
    add-int/lit8 v5, v3, -0x1

    #@8b
    .local v5, "j":I
    :goto_4
    if-ltz v5, :cond_5

    #@8d
    .line 312
    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    #@90
    move-result v9

    #@91
    if-eqz v9, :cond_8

    #@93
    .line 304
    .end local v0    # "ch":C
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@95
    goto :goto_3

    #@96
    .line 292
    .end local v7    # "nuke":Ljava/util/BitSet;
    .end local v8    # "variables":Ljava/util/BitSet;
    .restart local v0    # "ch":C
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    .line 293
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {p0, v9, v11, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@a0
    goto :goto_2

    #@a1
    .line 295
    :cond_7
    if-nez v1, :cond_3

    #@a3
    const/16 v9, 0x7a

    #@a5
    if-eq v0, v9, :cond_3

    #@a7
    const/16 v9, 0x5a

    #@a9
    if-eq v0, v9, :cond_3

    #@ab
    const/16 v9, 0x76

    #@ad
    if-eq v0, v9, :cond_3

    #@af
    const/16 v9, 0x56

    #@b1
    if-ne v0, v9, :cond_0

    #@b3
    goto :goto_2

    #@b4
    .line 313
    .restart local v5    # "j":I
    .restart local v7    # "nuke":Ljava/util/BitSet;
    .restart local v8    # "variables":Ljava/util/BitSet;
    :cond_8
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    #@b7
    .line 311
    add-int/lit8 v5, v5, 0x1

    #@b9
    goto :goto_4

    #@ba
    .line 318
    .end local v0    # "ch":C
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_9
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@bc
    invoke-static {v9, v7}, Landroid/icu/text/DateTimePatternGenerator;->getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    .line 319
    .local v2, "hhmm":Ljava/lang/String;
    invoke-virtual {p0, v2, v11, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@c3
    .line 272
    return-void
.end method

.method private isAvailableFormatSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static isCLDRFieldName(I)Z
    .locals 3
    .param p0, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 357
    if-gez p0, :cond_0

    #@3
    const/16 v0, 0x10

    #@5
    if-lt p0, v0, :cond_0

    #@7
    .line 358
    return v2

    #@8
    .line 360
    :cond_0
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    #@a
    aget-object v0, v0, p0

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    const/16 v1, 0x2a

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 361
    return v2

    #@15
    .line 364
    :cond_1
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public static isSingleField(Ljava/lang/String;)Z
    .locals 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1022
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    .line 1023
    .local v0, "first":C
    const/4 v1, 0x1

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_1

    #@c
    .line 1024
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    if-eq v2, v0, :cond_0

    #@12
    return v3

    #@13
    .line 1023
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1026
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method private setAvailableFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1036
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@3
    .line 1037
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8
    .line 1035
    return-void
.end method

.method private static showMask(I)Ljava/lang/String;
    .locals 3
    .param p0, "mask"    # I

    #@0
    .prologue
    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1853
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    #@8
    if-ge v0, v2, :cond_2

    #@a
    .line 1854
    const/4 v2, 0x1

    #@b
    shl-int/2addr v2, v0

    #@c
    and-int/2addr v2, p0

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1853
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1856
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1857
    const-string/jumbo v2, " | "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1858
    :cond_1
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    #@20
    aget-object v2, v2, v0

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 1859
    const-string/jumbo v2, " "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    goto :goto_1

    #@2c
    .line 1861
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Z
    .param p3, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    #@0
    .prologue
    .line 498
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeletonToUse"    # Ljava/lang/String;
    .param p3, "override"    # Z
    .param p4, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 517
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@6
    .line 519
    if-nez p2, :cond_2

    #@8
    .line 520
    new-instance v7, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@a
    invoke-direct {v7, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@d
    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@f
    invoke-virtual {v7, p1, v8, v6}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@12
    move-result-object v1

    #@13
    .line 524
    .local v1, "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 532
    .local v0, "basePattern":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@19
    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@1f
    .line 533
    .local v3, "previousPatternWithSameBase":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    if-eqz v3, :cond_0

    #@21
    iget-boolean v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    #@23
    if-eqz v7, :cond_3

    #@25
    if-eqz p2, :cond_0

    #@27
    if-eqz p3, :cond_3

    #@29
    .line 544
    :cond_0
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@2b
    invoke-virtual {v7, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@31
    .line 545
    .local v4, "previousValue":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    if-eqz v4, :cond_4

    #@33
    .line 546
    const/4 v7, 0x2

    #@34
    iput v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    #@36
    .line 547
    iget-object v7, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    #@38
    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    #@3a
    .line 548
    if-eqz p3, :cond_1

    #@3c
    if-eqz p2, :cond_4

    #@3e
    iget-boolean v7, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    #@40
    if-eqz v7, :cond_4

    #@42
    :cond_1
    return-object p0

    #@43
    .line 522
    .end local v0    # "basePattern":Ljava/lang/String;
    .end local v1    # "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v3    # "previousPatternWithSameBase":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .end local v4    # "previousValue":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_2
    new-instance v7, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@45
    invoke-direct {v7, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@48
    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@4a
    invoke-virtual {v7, p2, v8, v6}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@4d
    move-result-object v1

    #@4e
    .restart local v1    # "matcher":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    goto :goto_0

    #@4f
    .line 534
    .restart local v0    # "basePattern":Ljava/lang/String;
    .restart local v3    # "previousPatternWithSameBase":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_3
    iput v5, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    #@51
    .line 535
    iget-object v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    #@53
    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    #@55
    .line 536
    if-nez p3, :cond_0

    #@57
    .line 537
    return-object p0

    #@58
    .line 550
    .restart local v4    # "previousValue":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_4
    iput v6, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    #@5a
    .line 551
    const-string/jumbo v7, ""

    #@5d
    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    #@5f
    .line 552
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@61
    if-eqz p2, :cond_5

    #@63
    :goto_1
    invoke-direct {v2, p1, v5}, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;-><init>(Ljava/lang/String;Z)V

    #@66
    .line 556
    .local v2, "patWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@68
    invoke-virtual {v5, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 557
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@6d
    invoke-virtual {v5, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 558
    return-object p0

    #@71
    .end local v2    # "patWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_5
    move v5, v6

    #@72
    .line 552
    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 1089
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DateTimePatternGenerator;

    #@6
    .line 1090
    .local v1, "result":Landroid/icu/text/DateTimePatternGenerator;
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/TreeMap;

    #@e
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@10
    .line 1091
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@12
    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/TreeMap;

    #@18
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@1a
    .line 1092
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, [Ljava/lang/String;

    #@22
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@24
    .line 1093
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@26
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, [Ljava/lang/String;

    #@2c
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@2e
    .line 1094
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-direct {v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@34
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@36
    .line 1095
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@38
    invoke-direct {v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    #@3b
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@3d
    .line 1096
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-direct {v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    #@43
    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@45
    .line 1098
    const/4 v2, 0x0

    #@46
    iput-boolean v2, v1, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1099
    return-object v1

    #@49
    .line 1100
    .end local v1    # "result":Landroid/icu/text/DateTimePatternGenerator;
    :catch_0
    move-exception v0

    #@4a
    .line 1102
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@4c
    const-string/jumbo v3, "Internal Error"

    #@4f
    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v2
.end method

.method public cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;
    .locals 2

    #@0
    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    #@6
    .line 1078
    .local v0, "result":Landroid/icu/text/DateTimePatternGenerator;
    const/4 v1, 0x0

    #@7
    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    #@9
    .line 1079
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1076
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public freeze()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    #@0
    .prologue
    .line 1068
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    #@3
    .line 1069
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAppendItemFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getAppendItemName(I)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1009
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 621
    monitor-enter p0

    #@1
    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@3
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    .line 623
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit p0

    #@10
    return-object v0

    #@11
    .line 621
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 662
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 663
    new-instance p1, Ljava/util/HashSet;

    #@4
    .end local p1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 665
    .restart local p1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    #@9
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 666
    return-object p1
.end method

.method public getBestPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBestPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 394
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getCanonicalSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 603
    monitor-enter p0

    #@1
    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@3
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    .line 605
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit p0

    #@10
    return-object v0

    #@11
    .line 603
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public getDateTimeFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 737
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDecimal()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDefaultHourFormatChar()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 260
    iget-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@2
    return v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1839
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@2
    invoke-virtual {v3, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 1841
    .local v2, "newPattern":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@c
    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 1842
    .local v0, "item":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1843
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0

    #@2e
    .line 1845
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "{"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v4}, Landroid/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, "}"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0

    #@48
    .line 1848
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method

.method public getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 779
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    #@1
    .line 780
    if-nez p1, :cond_0

    #@3
    .line 781
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    .end local p1    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v2, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object p1, v2

    #@9
    .line 783
    .end local v2    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@b
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v6

    #@f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "cur$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_2

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@1f
    .line 784
    .local v0, "cur":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@21
    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@27
    .line 785
    .local v4, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v3, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    #@29
    .line 786
    .local v3, "pattern":Ljava/lang/String;
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    #@2b
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_1

    #@31
    .line 789
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    const/4 v7, 0x0

    #@36
    invoke-direct {p0, v6, v0, v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 790
    .local v5, "trial":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_1

    #@40
    .line 791
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 779
    .end local v0    # "cur":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v1    # "cur$iterator":Ljava/util/Iterator;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v4    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    .end local v5    # "trial":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@45
    monitor-exit p0

    #@46
    throw v6

    #@47
    .restart local v1    # "cur$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    #@48
    .line 815
    return-object p1
.end method

.method public getSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    monitor-enter p0

    #@1
    .line 571
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@3
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    .line 572
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit p0

    #@10
    return-object v0

    #@11
    .line 570
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public getSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 586
    monitor-enter p0

    #@1
    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@3
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    .line 588
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit p0

    #@10
    return-object v0

    #@11
    .line 586
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public getSkeletons(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 643
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 644
    new-instance p1, Ljava/util/LinkedHashMap;

    #@4
    .end local p1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    #@7
    .line 646
    .restart local p1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@9
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@1d
    .line 647
    .local v0, "item":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    #@1f
    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    #@25
    .line 648
    .local v3, "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    iget-object v2, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    #@27
    .line 649
    .local v2, "pattern":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    #@29
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_1

    #@2f
    .line 652
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_0

    #@37
    .line 654
    .end local v0    # "item":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "patternWithSkelFlag":Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
    :cond_2
    return-object p1
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1060
    iget-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    #@2
    return v0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 682
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DateTimePatternGenerator;->replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 701
    monitor-enter p0

    #@1
    .line 702
    :try_start_0
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    #@7
    .line 703
    .local v0, "patternNoMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v1, p2, v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@f
    move-result-object v1

    #@10
    const-class v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@12
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v0, v1, v2, p3}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v1

    #@1a
    monitor-exit p0

    #@1b
    return-object v1

    #@1c
    .line 701
    .end local v0    # "patternNoMatcher":Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public setAppendItemFormat(ILjava/lang/String;)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 968
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@3
    .line 969
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    #@5
    aput-object p2, v0, p1

    #@7
    .line 967
    return-void
.end method

.method public setAppendItemName(ILjava/lang/String;)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 996
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@3
    .line 997
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    #@5
    aput-object p2, v0, p1

    #@7
    .line 995
    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTimeFormat"    # Ljava/lang/String;

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@3
    .line 727
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    #@5
    .line 725
    return-void
.end method

.method public setDecimal(Ljava/lang/String;)V
    .locals 0
    .param p1, "decimal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 752
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    #@3
    .line 753
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    #@5
    .line 751
    return-void
.end method

.method public setDefaultHourFormatChar(C)V
    .locals 0
    .param p1, "defaultHourFormatChar"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 269
    iput-char p1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    #@2
    .line 268
    return-void
.end method

.method public skeletonsAreSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "skeleton"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1530
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 1531
    return v11

    #@9
    .line 1534
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    #@c
    move-result-object v6

    #@d
    .line 1535
    .local v6, "parser1":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    #@10
    move-result-object v7

    #@11
    .line 1536
    .local v7, "parser2":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    #@14
    move-result v8

    #@15
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    #@18
    move-result v9

    #@19
    if-eq v8, v9, :cond_1

    #@1b
    .line 1537
    return v10

    #@1c
    .line 1539
    :cond_1
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v2

    #@20
    .line 1540
    .local v2, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v4

    #@24
    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_3

    #@2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    .line 1541
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    #@33
    move-result v0

    #@34
    .line 1542
    .local v0, "index1":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Ljava/lang/String;

    #@3a
    .line 1543
    .local v5, "item2":Ljava/lang/String;
    invoke-static {v5, v10}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    #@3d
    move-result v1

    #@3e
    .line 1544
    .local v1, "index2":I
    sget-object v8, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@40
    aget-object v8, v8, v0

    #@42
    aget v8, v8, v11

    #@44
    sget-object v9, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    #@46
    aget-object v9, v9, v1

    #@48
    aget v9, v9, v11

    #@4a
    if-eq v8, v9, :cond_2

    #@4c
    .line 1545
    return v10

    #@4d
    .line 1548
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "item2":Ljava/lang/String;
    :cond_3
    return v11
.end method
