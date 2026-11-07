.class public Landroid/icu/impl/data/HolidayBundle_en_US;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_US.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;

.field private static final blacklist fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 25
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/icu/util/Holiday;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/util/SimpleHoliday;

    const-string v7, "Martin Luther King Day"

    const/16 v8, 0x7c2

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-direct/range {v3 .. v8}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string v8, "Presidents\' Day"

    const/16 v9, 0x7b8

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/4 v7, 0x2

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/util/SimpleHoliday;

    const/16 v9, 0x6f0

    const/16 v10, 0x7b7

    const/4 v6, 0x1

    const/16 v7, 0x16

    const-string v8, "Washington\'s Birthday"

    invoke-direct/range {v5 .. v10}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v5, v0, v2

    sget-object v3, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    sget-object v5, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    aput-object v5, v0, v3

    new-instance v6, Landroid/icu/util/SimpleHoliday;

    const-string v10, "Mother\'s Day"

    const/16 v11, 0x77a

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v3, 0x6

    aput-object v6, v0, v3

    new-instance v7, Landroid/icu/util/SimpleHoliday;

    const-string v11, "Memorial Day"

    const/16 v12, 0x7b3

    const/4 v8, 0x4

    const/16 v9, 0x1f

    const/4 v10, -0x2

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v5, 0x7

    aput-object v7, v0, v5

    new-instance v8, Landroid/icu/util/SimpleHoliday;

    const/16 v12, 0x74c

    const/16 v13, 0x7b2

    const/4 v9, 0x4

    const/16 v10, 0x1e

    const-string v11, "Memorial Day"

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v8, v0, v5

    new-instance v9, Landroid/icu/util/SimpleHoliday;

    const-string v13, "Father\'s Day"

    const/16 v14, 0x7a4

    const/4 v10, 0x5

    const/16 v11, 0xf

    const/4 v12, 0x1

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v5, 0x9

    aput-object v9, v0, v5

    new-instance v6, Landroid/icu/util/SimpleHoliday;

    const-string v7, "Independence Day"

    const/16 v8, 0x6f0

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v3, 0xa

    aput-object v6, v0, v3

    new-instance v7, Landroid/icu/util/SimpleHoliday;

    const-string v11, "Labor Day"

    const/16 v12, 0x766

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v4, 0xb

    aput-object v7, v0, v4

    new-instance v6, Landroid/icu/util/SimpleHoliday;

    const-string v7, "Election Day"

    invoke-direct {v6, v3, v1, v2, v7}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0xc

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/util/SimpleHoliday;

    const-string v11, "Columbus Day"

    const/16 v12, 0x7b3

    const/16 v8, 0x9

    const/16 v9, 0x8

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v1, 0xd

    aput-object v7, v0, v1

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x1f

    const-string v6, "Halloween"

    invoke-direct {v1, v5, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v2, "Veterans\' Day"

    const/16 v5, 0x77e

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v3, Landroid/icu/util/SimpleHoliday;

    const-string v7, "Thanksgiving"

    const/16 v8, 0x747

    const/16 v4, 0xa

    const/16 v5, 0x16

    const/4 v6, 0x5

    invoke-direct/range {v3 .. v8}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    .line 51
    const-string v0, "holidays"

    sget-object v1, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;

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

    .line 55
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 55
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_en_US;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
