.class public Landroid/icu/impl/data/HolidayBundle_it_IT;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_it_IT.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 18
    const/16 v0, 0xc

    #@7
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@9
    .line 19
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@b
    aput-object v1, v0, v5

    #@d
    .line 20
    sget-object v1, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    #@f
    aput-object v1, v0, v6

    #@11
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@13
    const-string/jumbo v2, "Liberation Day"

    #@16
    invoke-direct {v1, v3, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@19
    aput-object v1, v0, v7

    #@1b
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@1d
    const-string/jumbo v2, "Labor Day"

    #@20
    invoke-direct {v1, v4, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@23
    aput-object v1, v0, v3

    #@25
    .line 23
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    #@27
    aput-object v1, v0, v4

    #@29
    .line 24
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@2b
    const/4 v2, 0x5

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    #@30
    const/4 v2, 0x6

    #@31
    aput-object v1, v0, v2

    #@33
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@35
    const/4 v2, 0x7

    #@36
    aput-object v1, v0, v2

    #@38
    .line 27
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@3a
    const-string/jumbo v2, "St. Stephens Day"

    #@3d
    const/16 v3, 0xb

    #@3f
    const/16 v4, 0x1a

    #@41
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@44
    const/16 v2, 0x8

    #@46
    aput-object v1, v0, v2

    #@48
    .line 28
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    #@4a
    const/16 v2, 0x9

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 31
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@50
    const/16 v2, 0xa

    #@52
    aput-object v1, v0, v2

    #@54
    .line 32
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@56
    const/16 v2, 0xb

    #@58
    aput-object v1, v0, v2

    #@5a
    .line 18
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fHolidays:[Landroid/icu/util/Holiday;

    #@5c
    .line 34
    new-array v0, v6, [[Ljava/lang/Object;

    #@5e
    .line 35
    new-array v1, v7, [Ljava/lang/Object;

    #@60
    const-string/jumbo v2, "holidays"

    #@63
    aput-object v2, v1, v5

    #@65
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_it_IT;->fHolidays:[Landroid/icu/util/Holiday;

    #@67
    aput-object v2, v1, v6

    #@69
    aput-object v1, v0, v5

    #@6b
    .line 34
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fContents:[[Ljava/lang/Object;

    #@6d
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
    .line 37
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_it_IT;->fContents:[[Ljava/lang/Object;
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
