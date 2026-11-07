.class public Landroid/icu/impl/data/HolidayBundle_ja_JP;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_ja_JP.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 23
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/icu/util/Holiday;

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v3, 0xb

    const-string v4, "National Foundation Day"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v5, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    .line 26
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;

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

    .line 30
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 30
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_ja_JP;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
