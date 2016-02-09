.class public Landroid/icu/impl/data/HolidayBundle_en_GB;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_GB.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x1f

    #@2
    const/4 v7, -0x2

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 19
    const/16 v0, 0xa

    #@8
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@a
    .line 20
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@c
    aput-object v1, v0, v4

    #@e
    .line 21
    sget-object v1, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    #@10
    aput-object v1, v0, v5

    #@12
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@14
    const-string/jumbo v2, "Spring Holiday"

    #@17
    const/4 v3, 0x4

    #@18
    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 23
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@1f
    const-string/jumbo v2, "Summer Bank Holiday"

    #@22
    const/4 v3, 0x7

    #@23
    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@26
    const/4 v2, 0x3

    #@27
    aput-object v1, v0, v2

    #@29
    .line 24
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@30
    const/4 v2, 0x5

    #@31
    aput-object v1, v0, v2

    #@33
    .line 26
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@35
    const-string/jumbo v2, "Christmas Holiday"

    #@38
    const/16 v3, 0xb

    #@3a
    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@3d
    const/4 v2, 0x6

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 29
    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@42
    const/4 v2, 0x7

    #@43
    aput-object v1, v0, v2

    #@45
    .line 30
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@47
    const/16 v2, 0x8

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 31
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@4d
    const/16 v2, 0x9

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 19
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Landroid/icu/util/Holiday;

    #@53
    .line 33
    new-array v0, v6, [[Ljava/lang/Object;

    #@55
    .line 34
    new-array v1, v6, [Ljava/lang/Object;

    #@57
    const-string/jumbo v2, "holidays"

    #@5a
    aput-object v2, v1, v4

    #@5c
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Landroid/icu/util/Holiday;

    #@5e
    aput-object v2, v1, v5

    #@60
    aput-object v1, v0, v4

    #@62
    .line 36
    new-array v1, v6, [Ljava/lang/Object;

    #@64
    const-string/jumbo v2, "Labor Day"

    #@67
    aput-object v2, v1, v4

    #@69
    const-string/jumbo v2, "Labour Day"

    #@6c
    aput-object v2, v1, v5

    #@6e
    aput-object v1, v0, v5

    #@70
    .line 33
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;

    #@72
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
    .line 38
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;
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
