.class public Landroid/icu/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELD_COUNT:I

.field public static final DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

.field public static final ERA:Landroid/icu/text/DateFormat$Field;

.field public static final EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

.field private static final FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOUR0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR1:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

.field public static final JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECOND:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MINUTE:Landroid/icu/text/DateFormat$Field;

.field public static final MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final QUARTER:Landroid/icu/text/DateFormat$Field;

.field public static final RELATED_YEAR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECOND:Landroid/icu/text/DateFormat$Field;

.field public static final TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

.field public static final TIME_ZONE:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR_WOY:Landroid/icu/text/DateFormat$Field;

.field private static final serialVersionUID:J = -0x325750c275d0f8cdL


# instance fields
.field private final calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2196
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@3
    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@6
    .line 2197
    .local v0, "cal":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFieldCount()I

    #@9
    move-result v1

    #@a
    sput v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    #@c
    .line 2198
    sget v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    #@e
    new-array v1, v1, [Landroid/icu/text/DateFormat$Field;

    #@10
    sput-object v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    #@12
    .line 2199
    new-instance v1, Ljava/util/HashMap;

    #@14
    sget v2, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    #@16
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@19
    sput-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    #@1b
    .line 2208
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@1d
    const-string/jumbo v2, "am pm"

    #@20
    const/16 v3, 0x9

    #@22
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@25
    sput-object v1, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    #@27
    .line 2214
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@29
    const-string/jumbo v2, "day of month"

    #@2c
    const/4 v3, 0x5

    #@2d
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    #@32
    .line 2220
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@34
    const-string/jumbo v2, "day of week"

    #@37
    const/4 v3, 0x7

    #@38
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@3b
    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    #@3d
    .line 2227
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@3f
    const-string/jumbo v2, "day of week in month"

    #@42
    const/16 v3, 0x8

    #@44
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@47
    .line 2226
    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    #@49
    .line 2233
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@4b
    const-string/jumbo v2, "day of year"

    #@4e
    const/4 v3, 0x6

    #@4f
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@52
    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    #@54
    .line 2239
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@56
    const-string/jumbo v2, "era"

    #@59
    const/4 v3, 0x0

    #@5a
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@5d
    sput-object v1, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    #@5f
    .line 2245
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@61
    const-string/jumbo v2, "hour of day"

    #@64
    const/16 v3, 0xb

    #@66
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@69
    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    #@6b
    .line 2251
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@6d
    const-string/jumbo v2, "hour of day 1"

    #@70
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@73
    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    #@75
    .line 2257
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@77
    const-string/jumbo v2, "hour"

    #@7a
    const/16 v3, 0xa

    #@7c
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@7f
    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    #@81
    .line 2263
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@83
    const-string/jumbo v2, "hour 1"

    #@86
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@89
    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    #@8b
    .line 2269
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@8d
    const-string/jumbo v2, "millisecond"

    #@90
    const/16 v3, 0xe

    #@92
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@95
    sput-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    #@97
    .line 2275
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@99
    const-string/jumbo v2, "minute"

    #@9c
    const/16 v3, 0xc

    #@9e
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@a1
    sput-object v1, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    #@a3
    .line 2281
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@a5
    const-string/jumbo v2, "month"

    #@a8
    const/4 v3, 0x2

    #@a9
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@ac
    sput-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    #@ae
    .line 2287
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@b0
    const-string/jumbo v2, "second"

    #@b3
    const/16 v3, 0xd

    #@b5
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@b8
    sput-object v1, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@ba
    .line 2293
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@bc
    const-string/jumbo v2, "time zone"

    #@bf
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@c4
    .line 2300
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@c6
    const-string/jumbo v2, "week of month"

    #@c9
    const/4 v3, 0x4

    #@ca
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@cd
    .line 2299
    sput-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    #@cf
    .line 2306
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@d1
    const-string/jumbo v2, "week of year"

    #@d4
    const/4 v3, 0x3

    #@d5
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@d8
    sput-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    #@da
    .line 2312
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@dc
    const-string/jumbo v2, "year"

    #@df
    const/4 v3, 0x1

    #@e0
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@e3
    sput-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    #@e5
    .line 2321
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@e7
    const-string/jumbo v2, "local day of week"

    #@ea
    const/16 v3, 0x12

    #@ec
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@ef
    sput-object v1, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    #@f1
    .line 2327
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@f3
    const-string/jumbo v2, "extended year"

    #@f6
    .line 2328
    const/16 v3, 0x13

    #@f8
    .line 2327
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@fb
    sput-object v1, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    #@fd
    .line 2334
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@ff
    const-string/jumbo v2, "Julian day"

    #@102
    const/16 v3, 0x14

    #@104
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@107
    sput-object v1, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    #@109
    .line 2341
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@10b
    const-string/jumbo v2, "milliseconds in day"

    #@10e
    const/16 v3, 0x15

    #@110
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@113
    .line 2340
    sput-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    #@115
    .line 2347
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@117
    const-string/jumbo v2, "year for week of year"

    #@11a
    const/16 v3, 0x11

    #@11c
    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@11f
    sput-object v1, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    #@121
    .line 2353
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@123
    const-string/jumbo v2, "quarter"

    #@126
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@129
    sput-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    #@12b
    .line 2361
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@12d
    const-string/jumbo v2, "related year"

    #@130
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@133
    sput-object v1, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    #@135
    .line 2368
    new-instance v1, Landroid/icu/text/DateFormat$Field;

    #@137
    const-string/jumbo v2, "time separator"

    #@13a
    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@13d
    sput-object v1, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    #@13f
    .line 2182
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    #@0
    .prologue
    .line 2394
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 2395
    iput p2, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    #@5
    .line 2396
    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    const-class v1, Landroid/icu/text/DateFormat$Field;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 2397
    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 2398
    if-ltz p2, :cond_0

    #@14
    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    #@16
    if-ge p2, v0, :cond_0

    #@18
    .line 2399
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    #@1a
    aput-object p0, v0, p2

    #@1c
    .line 2393
    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .locals 2
    .param p0, "calendarField"    # I

    #@0
    .prologue
    .line 2418
    if-ltz p0, :cond_0

    #@2
    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 2419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Calendar field number is out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2421
    :cond_1
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    #@11
    aget-object v0, v0, p0

    #@13
    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    #@0
    .prologue
    .line 2434
    iget v0, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    #@2
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 2446
    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Landroid/icu/text/DateFormat$Field;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 2447
    new-instance v1, Ljava/io/InvalidObjectException;

    #@a
    .line 2448
    const-string/jumbo v2, "A subclass of DateFormat.Field must implement readResolve."

    #@d
    .line 2447
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2451
    :cond_0
    sget-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 2453
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@1d
    .line 2454
    new-instance v1, Ljava/io/InvalidObjectException;

    #@1f
    const-string/jumbo v2, "Unknown attribute name."

    #@22
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 2457
    :cond_1
    return-object v0
.end method
