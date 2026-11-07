.class public Landroid/icu/impl/data/HolidayBundle_en_GB;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_GB.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/util/Holiday;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v2, "Spring Holiday"

    const/4 v3, 0x4

    const/16 v4, 0x1f

    const/4 v5, -0x2

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v2, "Summer Bank Holiday"

    const/4 v6, 0x7

    invoke-direct {v1, v6, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0xb

    const-string v3, "Christmas Holiday"

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v6

    const/16 v1, 0x8

    sget-object v2, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Landroid/icu/util/Holiday;

    .line 39
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Labor Day"

    const-string v2, "Labour Day"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;

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

    .line 45
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 45
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_en_GB;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
