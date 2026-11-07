.class public Landroid/icu/impl/data/HolidayBundle_en_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_CA.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 23
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/icu/util/Holiday;

    sget-object v2, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v4, 0x13

    const-string v5, "Victoria Day"

    const/4 v6, 0x4

    invoke-direct {v2, v6, v4, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const-string v5, "Canada Day"

    const/4 v7, 0x6

    invoke-direct {v2, v7, v4, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const-string v8, "Civic Holiday"

    const/4 v9, 0x7

    invoke-direct {v2, v9, v4, v5, v8}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x3

    aput-object v2, v1, v8

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v8, 0x8

    const-string v10, "Labor Day"

    invoke-direct {v2, v8, v4, v5, v10}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const-string v4, "Thanksgiving"

    const/16 v6, 0x9

    invoke-direct {v2, v6, v8, v5, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v4, 0xb

    const-string v5, "Remembrance Day"

    invoke-direct {v2, v0, v4, v3, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v7

    sget-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v9

    sget-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v8

    sget-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v6

    sput-object v1, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    .line 42
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Labour Day"

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 48
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_en_CA;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
