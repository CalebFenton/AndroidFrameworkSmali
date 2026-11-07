.class public Landroid/icu/impl/data/HolidayBundle_da;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_da.java"


# static fields
.field private static final blacklist fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 20
    const-string v0, "Armistice Day"

    const-string v1, "v\u00e5benhvile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "Ascension"

    const-string v1, "himmelfart"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "Boxing Day"

    const-string v1, "anden juledag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "Christmas Eve"

    const-string v1, "juleaften"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "Easter"

    const-string v1, "p\u00e5ske"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "Epiphany"

    const-string v1, "helligtrekongersdag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "Good Friday"

    const-string v1, "langfredag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "Halloween"

    const-string v1, "allehelgensaften"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "Maundy Thursday"

    const-string v1, "sk\u00e6rtorsdag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "Palm Sunday"

    const-string v1, "palmes\u00f8ndag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "Pentecost"

    const-string v1, "pinse"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "Shrove Tuesday"

    const-string v1, "hvidetirsdag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_da;->fContents:[[Ljava/lang/Object;

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

    .line 36
    :try_start_1
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_da;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 36
    .end local p0    # "this":Landroid/icu/impl/data/HolidayBundle_da;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
