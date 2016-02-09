.class public Landroid/icu/impl/data/HolidayBundle_en_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/16 v8, 0x8

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 17
    const/16 v0, 0xa

    #@8
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@a
    .line 18
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@c
    aput-object v1, v0, v5

    #@e
    .line 19
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@10
    const-string/jumbo v2, "Victoria Day"

    #@13
    const/16 v3, 0x13

    #@15
    invoke-direct {v1, v4, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@18
    aput-object v1, v0, v6

    #@1a
    .line 20
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@1c
    const-string/jumbo v2, "Canada Day"

    #@1f
    const/4 v3, 0x6

    #@20
    invoke-direct {v1, v3, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@23
    aput-object v1, v0, v7

    #@25
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@27
    const-string/jumbo v2, "Civic Holiday"

    #@2a
    const/4 v3, 0x7

    #@2b
    invoke-direct {v1, v3, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@2e
    const/4 v2, 0x3

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@33
    const-string/jumbo v2, "Labor Day"

    #@36
    invoke-direct {v1, v8, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@39
    aput-object v1, v0, v4

    #@3b
    .line 23
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@3d
    const-string/jumbo v2, "Thanksgiving"

    #@40
    const/16 v3, 0x9

    #@42
    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@45
    const/4 v2, 0x5

    #@46
    aput-object v1, v0, v2

    #@48
    .line 24
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@4a
    const-string/jumbo v2, "Remembrance Day"

    #@4d
    const/16 v3, 0xa

    #@4f
    const/16 v4, 0xb

    #@51
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@54
    const/4 v2, 0x6

    #@55
    aput-object v1, v0, v2

    #@57
    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@59
    const/4 v2, 0x7

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@5e
    aput-object v1, v0, v8

    #@60
    .line 27
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    #@62
    const/16 v2, 0x9

    #@64
    aput-object v1, v0, v2

    #@66
    .line 17
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    #@68
    .line 36
    new-array v0, v7, [[Ljava/lang/Object;

    #@6a
    .line 37
    new-array v1, v7, [Ljava/lang/Object;

    #@6c
    const-string/jumbo v2, "holidays"

    #@6f
    aput-object v2, v1, v5

    #@71
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    #@73
    aput-object v2, v1, v6

    #@75
    aput-object v1, v0, v5

    #@77
    .line 39
    new-array v1, v7, [Ljava/lang/Object;

    #@79
    const-string/jumbo v2, "Labor Day"

    #@7c
    aput-object v2, v1, v5

    #@7e
    const-string/jumbo v2, "Labour Day"

    #@81
    aput-object v2, v1, v6

    #@83
    aput-object v1, v0, v6

    #@85
    .line 36
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;

    #@87
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
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
    .line 41
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;
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
