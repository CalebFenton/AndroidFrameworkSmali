.class public Landroid/icu/impl/data/HolidayBundle_fr_FR;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_fr_FR.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x6

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v4, 0x4

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 18
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@9
    .line 19
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@b
    aput-object v1, v0, v5

    #@d
    .line 20
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@f
    const-string/jumbo v2, "Labor Day"

    #@12
    invoke-direct {v1, v4, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@15
    aput-object v1, v0, v6

    #@17
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@19
    const-string/jumbo v2, "Victory Day"

    #@1c
    const/16 v3, 0x8

    #@1e
    invoke-direct {v1, v4, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@21
    aput-object v1, v0, v7

    #@23
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@25
    const-string/jumbo v2, "Bastille Day"

    #@28
    const/16 v3, 0xe

    #@2a
    invoke-direct {v1, v8, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@2d
    const/4 v2, 0x3

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 23
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    #@32
    aput-object v1, v0, v4

    #@34
    .line 24
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@36
    const/4 v2, 0x5

    #@37
    aput-object v1, v0, v2

    #@39
    .line 25
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@3b
    const-string/jumbo v2, "Armistice Day"

    #@3e
    const/16 v3, 0xa

    #@40
    const/16 v4, 0xb

    #@42
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@45
    aput-object v1, v0, v8

    #@47
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 29
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@4e
    const/16 v2, 0x8

    #@50
    aput-object v1, v0, v2

    #@52
    .line 30
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@54
    const/16 v2, 0x9

    #@56
    aput-object v1, v0, v2

    #@58
    .line 31
    sget-object v1, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    #@5a
    const/16 v2, 0xa

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 32
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@60
    const/16 v2, 0xb

    #@62
    aput-object v1, v0, v2

    #@64
    .line 33
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    #@66
    const/16 v2, 0xc

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 18
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_FR;->fHolidays:[Landroid/icu/util/Holiday;

    #@6c
    .line 35
    new-array v0, v6, [[Ljava/lang/Object;

    #@6e
    .line 36
    new-array v1, v7, [Ljava/lang/Object;

    #@70
    const-string/jumbo v2, "holidays"

    #@73
    aput-object v2, v1, v5

    #@75
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_fr_FR;->fHolidays:[Landroid/icu/util/Holiday;

    #@77
    aput-object v2, v1, v6

    #@79
    aput-object v1, v0, v5

    #@7b
    .line 35
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_FR;->fContents:[[Ljava/lang/Object;

    #@7d
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
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_fr_FR;->fContents:[[Ljava/lang/Object;
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
