.class public Landroid/icu/impl/data/HolidayBundle_fr_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_fr_CA.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/util/Holiday;

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v2, "New Year\'s Day"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x13

    const-string v5, "Victoria Day"

    const/4 v6, 0x4

    invoke-direct {v1, v6, v2, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x18

    const-string v5, "National Day"

    const/4 v7, 0x5

    invoke-direct {v1, v7, v2, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v5, "Canada Day"

    const/4 v8, 0x6

    invoke-direct {v1, v8, v4, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v5, "Civic Holiday"

    const/4 v9, 0x7

    invoke-direct {v1, v9, v4, v2, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v5, "Labour Day"

    const/16 v6, 0x8

    invoke-direct {v1, v6, v4, v2, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v4, "Thanksgiving"

    const/16 v5, 0x9

    invoke-direct {v1, v5, v6, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v2, "Remembrance Day"

    const/16 v4, 0xa

    const/16 v7, 0xb

    invoke-direct {v1, v4, v7, v3, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v7

    const/16 v1, 0xc

    sget-object v2, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    .line 42
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;

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

    .line 46
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 46
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_fr_CA;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
