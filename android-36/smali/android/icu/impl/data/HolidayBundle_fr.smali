.class public Landroid/icu/impl/data/HolidayBundle_fr;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_fr.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 19
    const-string v0, "All Saints\' Day"

    const-string v1, "Toussaint"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Armistice Day"

    const-string v4, "Jour de l\'Armistice"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Ascension"

    filled-new-array {v4, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Bastille Day"

    const-string v6, "F\u00eate de la Bastille"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Benito Ju\u00e1rez Day"

    const-string v7, "F\u00eate de Benito Ju\u00e1rez"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Boxing Day"

    const-string v8, "Lendemain de No\u00ebl"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Christmas Eve"

    const-string v9, "Veille de No\u00ebl"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Christmas"

    const-string v10, "No\u00ebl"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Easter Monday"

    const-string v11, "P\u00e2ques lundi"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Easter Sunday"

    const-string v12, "P\u00e2ques"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Epiphany"

    const-string v13, "l\'\u00c9piphanie"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Flag Day"

    const-string v14, "F\u00eate du Drapeau"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Good Friday"

    const-string v15, "Vendredi Saint"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Halloween"

    move-object/from16 v16, v2

    const-string v2, "Veille de la Toussaint"

    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v15

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Independence Day"

    const-string v2, "F\u00eate Ind\u00e9pendance"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v17

    const-string v1, "Maundy Thursday"

    const-string v2, "Jeudi Saint"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v18

    const-string v1, "Mother\'s Day"

    const-string v2, "F\u00eate des m\u00e8res"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v19

    const-string v1, "National Day"

    const-string v2, "F\u00eate Nationale"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v20

    const-string v1, "New Year\'s Day"

    const-string v2, "Jour de l\'an"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v21

    const-string v1, "Palm Sunday"

    const-string v2, "les Rameaux"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v22

    const-string v1, "Pentecost"

    const-string v2, "Pentec\u00f4te"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v23

    const-string v1, "Shrove Tuesday"

    const-string v2, "Mardi Gras"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v24

    const-string v1, "St. Stephen\'s Day"

    const-string v2, "Saint-\u00c9tienne"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v25

    const-string v1, "Victoria Day"

    const-string v2, "F\u00eate de la Victoria"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v26

    const-string v1, "Victory Day"

    const-string v2, "F\u00eate de la Victoire"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v27}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr;->fContents:[[Ljava/lang/Object;

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

    .line 49
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_fr;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 49
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_fr;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
