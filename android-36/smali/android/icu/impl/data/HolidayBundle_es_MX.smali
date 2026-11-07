.class public Landroid/icu/impl/data/HolidayBundle_es_MX;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_es_MX.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 23
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Constitution Day"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0x15

    const-string v6, "Benito Ju\u00e1rez Day"

    const/4 v7, 0x2

    invoke-direct {v1, v7, v3, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v3, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v3, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Cinco de Mayo"

    const/4 v6, 0x4

    invoke-direct {v1, v6, v5, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Navy Day"

    invoke-direct {v1, v5, v4, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0x10

    const-string v4, "Independence Day"

    const/16 v5, 0x8

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "D\u00eda de la Raza"

    const/16 v4, 0x9

    const/16 v6, 0xc

    invoke-direct {v1, v4, v6, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Day of the Dead"

    const/16 v5, 0xa

    invoke-direct {v1, v5, v7, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0x14

    const-string v4, "Revolution Day"

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Flag Day"

    const/16 v4, 0xb

    invoke-direct {v1, v4, v6, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fHolidays:[Landroid/icu/util/Holiday;

    .line 38
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_es_MX;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fContents:[[Ljava/lang/Object;

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

    .line 42
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 42
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_es_MX;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
