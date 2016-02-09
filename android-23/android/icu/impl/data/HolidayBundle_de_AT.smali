.class public Landroid/icu/impl/data/HolidayBundle_de_AT;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_de_AT.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 18
    const/16 v0, 0x10

    #@7
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@9
    .line 19
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@b
    aput-object v1, v0, v6

    #@d
    .line 20
    sget-object v1, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    #@f
    aput-object v1, v0, v7

    #@11
    .line 21
    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@13
    aput-object v1, v0, v8

    #@15
    .line 22
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@17
    aput-object v1, v0, v9

    #@19
    .line 23
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@1b
    aput-object v1, v0, v3

    #@1d
    .line 24
    sget-object v1, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 25
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 26
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 27
    sget-object v1, Landroid/icu/util/EasterHoliday;->CORPUS_CHRISTI:Landroid/icu/util/EasterHoliday;

    #@2e
    const/16 v2, 0x8

    #@30
    aput-object v1, v0, v2

    #@32
    .line 28
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    #@34
    const/16 v2, 0x9

    #@36
    aput-object v1, v0, v2

    #@38
    .line 29
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@3a
    const/16 v2, 0xa

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 30
    sget-object v1, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    #@40
    const/16 v2, 0xb

    #@42
    aput-object v1, v0, v2

    #@44
    .line 31
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@46
    const/16 v2, 0xc

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 32
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;

    #@4c
    const/16 v2, 0xd

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 34
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@52
    const-string/jumbo v2, "National Holiday"

    #@55
    invoke-direct {v1, v3, v7, v6, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@58
    const/16 v2, 0xe

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 35
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@5e
    const-string/jumbo v2, "National Holiday"

    #@61
    const/16 v3, 0x9

    #@63
    const/16 v4, 0x1f

    #@65
    const/4 v5, -0x2

    #@66
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@69
    const/16 v2, 0xf

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 18
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_AT;->fHolidays:[Landroid/icu/util/Holiday;

    #@6f
    .line 38
    new-array v0, v9, [[Ljava/lang/Object;

    #@71
    .line 39
    new-array v1, v8, [Ljava/lang/Object;

    #@73
    const-string/jumbo v2, "holidays"

    #@76
    aput-object v2, v1, v6

    #@78
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_de_AT;->fHolidays:[Landroid/icu/util/Holiday;

    #@7a
    aput-object v2, v1, v7

    #@7c
    aput-object v1, v0, v6

    #@7e
    .line 42
    new-array v1, v8, [Ljava/lang/Object;

    #@80
    const-string/jumbo v2, "Christmas"

    #@83
    aput-object v2, v1, v6

    #@85
    const-string/jumbo v2, "Christtag"

    #@88
    aput-object v2, v1, v7

    #@8a
    aput-object v1, v0, v7

    #@8c
    .line 43
    new-array v1, v8, [Ljava/lang/Object;

    #@8e
    const-string/jumbo v2, "New Year\'s Day"

    #@91
    aput-object v2, v1, v6

    #@93
    const-string/jumbo v2, "Neujahrstag"

    #@96
    aput-object v2, v1, v7

    #@98
    aput-object v1, v0, v8

    #@9a
    .line 38
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_AT;->fContents:[[Ljava/lang/Object;

    #@9c
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
    .line 45
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_de_AT;->fContents:[[Ljava/lang/Object;
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
