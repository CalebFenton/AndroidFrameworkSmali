.class public Landroid/icu/impl/data/HolidayBundle_da_DK;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_da_DK.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x5

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 19
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@9
    .line 20
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@b
    aput-object v1, v0, v5

    #@d
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@f
    const-string/jumbo v2, "General Prayer Day"

    #@12
    const/16 v3, 0x1e

    #@14
    const/4 v4, -0x6

    #@15
    invoke-direct {v1, v9, v3, v4, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@18
    aput-object v1, v0, v6

    #@1a
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@1c
    const-string/jumbo v2, "Constitution Day"

    #@1f
    invoke-direct {v1, v7, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@22
    aput-object v1, v0, v8

    #@24
    .line 23
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

    #@26
    aput-object v1, v0, v9

    #@28
    .line 24
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@2a
    const/4 v2, 0x4

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@2f
    aput-object v1, v0, v7

    #@31
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    #@33
    const/4 v2, 0x6

    #@34
    aput-object v1, v0, v2

    #@36
    .line 29
    sget-object v1, Landroid/icu/util/EasterHoliday;->MAUNDY_THURSDAY:Landroid/icu/util/EasterHoliday;

    #@38
    const/4 v2, 0x7

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 30
    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@3d
    const/16 v2, 0x8

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 31
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@43
    const/16 v2, 0x9

    #@45
    aput-object v1, v0, v2

    #@47
    .line 32
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@49
    const/16 v2, 0xa

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 33
    sget-object v1, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    #@4f
    const/16 v2, 0xb

    #@51
    aput-object v1, v0, v2

    #@53
    .line 34
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    #@55
    const/16 v2, 0xc

    #@57
    aput-object v1, v0, v2

    #@59
    .line 19
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_da_DK;->fHolidays:[Landroid/icu/util/Holiday;

    #@5b
    .line 37
    new-array v0, v6, [[Ljava/lang/Object;

    #@5d
    .line 38
    new-array v1, v8, [Ljava/lang/Object;

    #@5f
    const-string/jumbo v2, "holidays"

    #@62
    aput-object v2, v1, v5

    #@64
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_da_DK;->fHolidays:[Landroid/icu/util/Holiday;

    #@66
    aput-object v2, v1, v6

    #@68
    aput-object v1, v0, v5

    #@6a
    .line 37
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_da_DK;->fContents:[[Ljava/lang/Object;

    #@6c
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 40
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_da_DK;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
