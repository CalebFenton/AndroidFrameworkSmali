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
.field public static final whitelist test-api AM_PM:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

.field private static final greylist-max-o CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

.field private static final greylist-max-o CAL_FIELD_COUNT:I

.field public static final whitelist test-api DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api ERA:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

.field private static final greylist-max-o FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api HOUR0:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api HOUR1:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api MILLISECOND:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api MINUTE:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api QUARTER:Landroid/icu/text/DateFormat$Field;

.field public static final greylist-max-o RELATED_YEAR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api SECOND:Landroid/icu/text/DateFormat$Field;

.field public static final greylist-max-o TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api TIME_ZONE:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final whitelist test-api YEAR_WOY:Landroid/icu/text/DateFormat$Field;

.field private static final whitelist serialVersionUID:J = -0x325750c275d0f8cdL


# instance fields
.field private final greylist-max-o calendarField:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2231
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 2232
    .local v0, "cal":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getFieldCount()I

    move-result v1

    sput v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    .line 2233
    sget v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    new-array v1, v1, [Landroid/icu/text/DateFormat$Field;

    sput-object v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    .line 2234
    new-instance v1, Ljava/util/HashMap;

    sget v2, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    .line 2242
    .end local v0    # "cal":Landroid/icu/util/GregorianCalendar;
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    .line 2247
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2252
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    .line 2257
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2263
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2268
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    .line 2273
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    .line 2278
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    .line 2283
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    .line 2288
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    .line 2293
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "millisecond"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    .line 2298
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    .line 2303
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2308
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    .line 2313
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    .line 2318
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "week of month"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2324
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "week of year"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2329
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2337
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "local day of week"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    .line 2342
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "extended year"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2348
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "Julian day"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    .line 2353
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "milliseconds in day"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    .line 2359
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "year for week of year"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    .line 2364
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "quarter"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    .line 2372
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "related year"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2377
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "am/pm/midnight/noon"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

    .line 2382
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "flexible day period"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

    .line 2390
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "time separator"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    .line 2414
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 2415
    iput p2, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    .line 2416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_1c

    .line 2417
    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    if-ltz p2, :cond_1c

    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p2, v0, :cond_1c

    .line 2419
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aput-object p0, v0, p2

    .line 2422
    :cond_1c
    return-void
.end method

.method public static whitelist test-api ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .registers 3
    .param p0, "calendarField"    # I

    .line 2436
    if-ltz p0, :cond_b

    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p0, v0, :cond_b

    .line 2439
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aget-object v0, v0, p0

    return-object v0

    .line 2437
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calendar field number is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCalendarField()I
    .registers 2

    .line 2450
    iget v0, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_1d

    .line 2466
    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2468
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 2472
    return-object v0

    .line 2469
    :cond_15
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Unknown attribute name."

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2462
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1d
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "A subclass of DateFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
