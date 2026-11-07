.class public Lcom/android/ims/rcs/uce/eab/EabProvider;
.super Landroid/content/ContentProvider;
.source "EabProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/eab/EabProvider$ContactColumns;,
        Lcom/android/ims/rcs/uce/eab/EabProvider$EabCommonColumns;,
        Lcom/android/ims/rcs/uce/eab/EabProvider$OptionsColumns;,
        Lcom/android/ims/rcs/uce/eab/EabProvider$PresenceTupleColumns;,
        Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;
    }
.end annotation


# static fields
.field public static final blacklist ALL_DATA_URI:Landroid/net/Uri;

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "eab"

.field public static final blacklist COMMON_URI:Landroid/net/Uri;

.field public static final blacklist CONTACT_URI:Landroid/net/Uri;

.field private static final blacklist DATABASE_VERSION:I = 0x4

.field public static final blacklist EAB_COMMON_TABLE_NAME:Ljava/lang/String; = "eab_common"

.field public static final blacklist EAB_CONTACT_TABLE_NAME:Ljava/lang/String; = "eab_contact"

.field public static final blacklist EAB_OPTIONS_TABLE_NAME:Ljava/lang/String; = "eab_options"

.field public static final blacklist EAB_PRESENCE_TUPLE_TABLE_NAME:Ljava/lang/String; = "eab_presence"

.field private static final blacklist JOIN_ALL_TABLES:Ljava/lang/String; = " INNER JOIN eab_common ON eab_contact._id=eab_common.eab_contact_id LEFT JOIN eab_options ON eab_common._id=eab_options.eab_common_id LEFT JOIN eab_presence ON eab_common._id=eab_presence.eab_common_id"

.field public static final blacklist OPTIONS_URI:Landroid/net/Uri;

.field public static final blacklist PRESENCE_URI:Landroid/net/Uri;

.field private static final blacklist QUERY_CONTACT_TABLE:Ljava/lang/String; = " SELECT * FROM eab_contact"

.field private static final blacklist TAG:Ljava/lang/String; = "EabProvider"

.field private static final blacklist URI_MATCHER:Landroid/content/UriMatcher;

.field private static final blacklist URL_ALL:I = 0x5

.field private static final blacklist URL_ALL_WITH_SUB_ID_AND_PHONE_NUMBER:I = 0x6

.field private static final blacklist URL_COMMON:I = 0x2

.field private static final blacklist URL_CONTACT:I = 0x1

.field private static final blacklist URL_OPTIONS:I = 0x4

.field private static final blacklist URL_PRESENCE:I = 0x3


# instance fields
.field private blacklist mOpenHelper:Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 72
    const-string v0, "content://eab/contact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://eab/common"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://eab/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://eab/options"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "content://eab/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 100
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "contact"

    const/4 v2, 0x1

    const-string v3, "eab"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "common"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "presence"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "options"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "all"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "all/#/*"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 593
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 594
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 595
    .local v1, "match":I
    const/4 v2, 0x0

    .line 596
    .local v2, "result":I
    const-string v3, ""

    .line 597
    .local v3, "tableName":Ljava/lang/String;
    packed-switch v1, :pswitch_data_7c

    goto :goto_1d

    .line 608
    :pswitch_11
    const-string v3, "eab_options"

    goto :goto_1d

    .line 605
    :pswitch_14
    const-string v3, "eab_presence"

    .line 606
    goto :goto_1d

    .line 602
    :pswitch_17
    const-string v3, "eab_common"

    .line 603
    goto :goto_1d

    .line 599
    :pswitch_1a
    const-string v3, "eab_contact"

    .line 600
    nop

    .line 612
    :goto_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "EabProvider"

    if-eqz v4, :cond_2c

    .line 613
    const-string v4, "bulkInsert. Not support URI."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return v5

    .line 619
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 620
    array-length v4, p2

    :goto_30
    const/4 v7, 0x0

    if-ge v5, v4, :cond_40

    aget-object v8, p2, v5

    .line 621
    .local v8, "contentValue":Landroid/content/ContentValues;
    if-eqz v8, :cond_3d

    .line 622
    const/4 v9, 0x5

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 624
    add-int/lit8 v2, v2, 0x1

    .line 620
    .end local v8    # "contentValue":Landroid/content/ContentValues;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 627
    :cond_40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_76

    .line 629
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 630
    nop

    .line 631
    if-lez v2, :cond_55

    .line 632
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, p1, v7, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 634
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkInsert uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v2

    .line 629
    :catchall_76
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 630
    throw v4

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 640
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 641
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 642
    .local v1, "match":I
    const/4 v2, 0x0

    .line 643
    .local v2, "result":I
    const-string v3, ""

    .line 644
    .local v3, "tableName":Ljava/lang/String;
    packed-switch v1, :pswitch_data_60

    goto :goto_1d

    .line 655
    :pswitch_11
    const-string v3, "eab_options"

    goto :goto_1d

    .line 652
    :pswitch_14
    const-string v3, "eab_presence"

    .line 653
    goto :goto_1d

    .line 649
    :pswitch_17
    const-string v3, "eab_common"

    .line 650
    goto :goto_1d

    .line 646
    :pswitch_1a
    const-string v3, "eab_contact"

    .line 647
    nop

    .line 658
    :goto_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "EabProvider"

    if-nez v4, :cond_5a

    .line 659
    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 660
    if-lez v2, :cond_39

    .line 661
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 663
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 665
    :cond_5a
    const-string v4, "Delete. Not support URI."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_5f
    return v2

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabProvider;->mOpenHelper:Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 706
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabProvider;->mOpenHelper:Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 559
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 560
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 561
    .local v1, "match":I
    const-wide/16 v2, 0x0

    .line 562
    .local v2, "result":J
    const-string v4, ""

    .line 563
    .local v4, "tableName":Ljava/lang/String;
    packed-switch v1, :pswitch_data_6e

    goto :goto_1e

    .line 574
    :pswitch_12
    const-string v4, "eab_options"

    goto :goto_1e

    .line 571
    :pswitch_15
    const-string v4, "eab_presence"

    .line 572
    goto :goto_1e

    .line 568
    :pswitch_18
    const-string v4, "eab_common"

    .line 569
    goto :goto_1e

    .line 565
    :pswitch_1b
    const-string v4, "eab_contact"

    .line 566
    nop

    .line 577
    :goto_1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "EabProvider"

    if-nez v5, :cond_5f

    .line 578
    const/4 v5, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Insert uri: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_64

    .line 582
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, p1, v7, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    goto :goto_64

    .line 585
    :cond_5f
    const-string v5, "Insert. Not support URI."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_64
    :goto_64
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public whitelist onCreate()Z
    .registers 3

    .line 471
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabProvider;->mOpenHelper:Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 497
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v1, v0

    .line 498
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 499
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 503
    .local v9, "match":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query URI: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EabProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "eab_contact"

    const/4 v4, 0x0

    packed-switch v9, :pswitch_data_f4

    .line 551
    const-string v0, "Query failed. Not support URL."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-object v4

    .line 523
    :pswitch_34
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 525
    .local v5, "pathSegment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 527
    .local v6, "subIdString":Ljava/lang/String;
    :try_start_3f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_b3

    .line 531
    .local v7, "subId":I
    nop

    .line 532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereStandalone(Ljava/lang/CharSequence;)V

    .line 534
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 536
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 537
    const-string v0, "phone number is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v4

    .line 540
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " where phone_number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "whereClause":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(( SELECT * FROM eab_contact"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ") AS "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " INNER JOIN eab_common ON eab_contact._id=eab_common.eab_contact_id LEFT JOIN eab_options ON eab_common._id=eab_options.eab_common_id LEFT JOIN eab_presence ON eab_common._id=eab_presence.eab_common_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 544
    goto :goto_e7

    .line 528
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v7    # "subId":I
    .end local v8    # "phoneNumber":Ljava/lang/String;
    :catch_b3
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v4

    .line 547
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "pathSegment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "subIdString":Ljava/lang/String;
    :pswitch_cb
    const-string v0, "( SELECT * FROM eab_contact INNER JOIN eab_common ON eab_contact._id=eab_common.eab_contact_id LEFT JOIN eab_options ON eab_common._id=eab_options.eab_common_id LEFT JOIN eab_presence ON eab_common._id=eab_presence.eab_common_id)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 548
    goto :goto_e7

    .line 519
    :pswitch_d1
    const-string v0, "eab_options"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 520
    goto :goto_e7

    .line 515
    :pswitch_d7
    const-string v0, "eab_presence"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 516
    goto :goto_e7

    .line 511
    :pswitch_dd
    const-string v0, "eab_common"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 512
    goto :goto_e7

    .line 507
    :pswitch_e3
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 508
    nop

    .line 554
    :goto_e7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_34
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 674
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 675
    .local v6, "match":I
    const/4 v7, 0x0

    .line 676
    .local v7, "result":I
    const-string v1, ""

    .line 677
    .local v1, "tableName":Ljava/lang/String;
    packed-switch v6, :pswitch_data_68

    goto :goto_1d

    .line 688
    :pswitch_11
    const-string v1, "eab_options"

    goto :goto_1d

    .line 685
    :pswitch_14
    const-string v1, "eab_presence"

    .line 686
    goto :goto_1d

    .line 682
    :pswitch_17
    const-string v1, "eab_common"

    .line 683
    goto :goto_1d

    .line 679
    :pswitch_1a
    const-string v1, "eab_contact"

    .line 680
    nop

    .line 691
    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, "EabProvider"

    if-nez v2, :cond_5e

    .line 692
    const/4 v5, 0x5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "contentValues":Landroid/content/ContentValues;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "contentValues":Landroid/content/ContentValues;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    .line 694
    if-lez v7, :cond_3d

    .line 695
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0x8

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 697
    :cond_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Update uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 699
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local p2    # "contentValues":Landroid/content/ContentValues;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_5e
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "contentValues":Landroid/content/ContentValues;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const-string p2, "Update. Not support URI."

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_66
    return v7

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method
