.class public Landroid/icu/impl/data/HolidayBundle_de_DE;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_de_DE.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v3, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Memorial Day"

    const/4 v4, 0x5

    const/16 v5, 0xf

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v3, "Unity Day"

    const/16 v5, 0x9

    const/4 v7, 0x3

    invoke-direct {v1, v5, v7, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0x12

    const-string v6, "Day of Prayer and Repentance"

    const/16 v7, 0xa

    invoke-direct {v1, v7, v3, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x6

    sget-object v2, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v7

    const/16 v1, 0xb

    sget-object v2, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fHolidays:[Landroid/icu/util/Holiday;

    .line 43
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_de_DE;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fContents:[[Ljava/lang/Object;

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

    .line 47
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 47
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_de_DE;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
