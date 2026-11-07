.class public Landroid/icu/impl/data/HolidayBundle_it;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_it.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 19
    const-string v0, "All Saints\' Day"

    const-string v1, "Ognissanti"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "Armistice Day"

    const-string v1, "armistizio"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "Ascension"

    const-string v1, "ascensione"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "Ash Wednesday"

    const-string v1, "mercoled\u00ec delle ceneri"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "Boxing Day"

    const-string v1, "Santo Stefano"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "Christmas"

    const-string v7, "natale"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "Easter Sunday"

    const-string v8, "pasqua"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "Epiphany"

    const-string v9, "Epifania"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "Good Friday"

    const-string v10, "venerd\u00ec santo"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "Halloween"

    const-string v11, "vigilia di Ognissanti"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "Maundy Thursday"

    const-string v12, "gioved\u00ec santo"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "New Year\'s Day"

    const-string v13, "anno nuovo"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "Palm Sunday"

    const-string v14, "domenica delle palme"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "Pentecost"

    const-string v15, "di Pentecoste"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "Shrove Tuesday"

    move-object/from16 v16, v2

    const-string v2, "martedi grasso"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "St. Stephen\'s Day"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v1, "Thanksgiving"

    const-string v2, "Giorno del Ringraziamento"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v18}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 41
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_it;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 41
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_it;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
