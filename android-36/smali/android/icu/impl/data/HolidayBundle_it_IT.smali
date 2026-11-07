.class public Landroid/icu/impl/data/HolidayBundle_it_IT;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_it_IT.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v4, "Liberation Day"

    const/4 v5, 0x3

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v4, "Labor Day"

    const/4 v6, 0x4

    invoke-direct {v1, v6, v3, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v3, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v3, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0x1a

    const-string v4, "St. Stephens Day"

    const/16 v5, 0xb

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    sget-object v2, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fHolidays:[Landroid/icu/util/Holiday;

    .line 40
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_it_IT;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 44
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 44
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_it_IT;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
