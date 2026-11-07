.class public Landroid/icu/impl/data/HolidayBundle_iw_IL;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_iw_IL.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/util/Holiday;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    .line 32
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 36
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 36
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_iw_IL;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
