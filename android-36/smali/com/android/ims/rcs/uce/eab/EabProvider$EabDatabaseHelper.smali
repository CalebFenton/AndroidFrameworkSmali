.class public final Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EabProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EabDatabaseHelper"
.end annotation


# static fields
.field private static final blacklist COMMON_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CONTACT_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DB_NAME:Ljava/lang/String; = "EabDatabase"

.field public static final blacklist SQL_CREATE_COMMON_TABLE:Ljava/lang/String; = "CREATE TABLE eab_common (_id INTEGER PRIMARY KEY, eab_contact_id INTEGER DEFAULT -1, mechanism INTEGER DEFAULT NULL, request_result INTEGER DEFAULT -1, subscription_id INTEGER DEFAULT -1, entity_uri TEXT DEFAULT NULL );"

.field public static final blacklist SQL_CREATE_CONTACT_TABLE:Ljava/lang/String;

.field public static final blacklist SQL_CREATE_OPTIONS_TABLE:Ljava/lang/String; = "CREATE TABLE eab_options (_id INTEGER PRIMARY KEY, eab_common_id INTEGER DEFAULT -1, options_request_timestamp LONG DEFAULT NULL, feature_tag TEXT DEFAULT NULL );"

.field public static final blacklist SQL_CREATE_PRESENCE_TUPLE_TABLE:Ljava/lang/String; = "CREATE TABLE eab_presence (_id INTEGER PRIMARY KEY, eab_common_id INTEGER DEFAULT -1, basic_status TEXT DEFAULT NULL, service_id TEXT DEFAULT NULL, service_version TEXT DEFAULT NULL, description TEXT DEFAULT NULL, presence_request_timestamp LONG DEFAULT NULL, contact_uri TEXT DEFAULT NULL, duplex_mode TEXT DEFAULT NULL, unsupported_duplex_mode TEXT DEFAULT NULL, audio_capable BOOLEAN DEFAULT NULL, video_capable BOOLEAN DEFAULT NULL);"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->CONTACT_UNIQUE_FIELDS:Ljava/util/List;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->COMMON_UNIQUE_FIELDS:Ljava/util/List;

    .line 341
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->CONTACT_UNIQUE_FIELDS:Ljava/util/List;

    const-string v1, "phone_number"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE eab_contact (_id INTEGER PRIMARY KEY, phone_number Text DEFAULT NULL, contact_id INTEGER DEFAULT -1, raw_contact_id INTEGER DEFAULT -1, data_id INTEGER DEFAULT -1, UNIQUE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->CONTACT_UNIQUE_FIELDS:Ljava/util/List;

    .line 353
    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->SQL_CREATE_CONTACT_TABLE:Ljava/lang/String;

    .line 345
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "EabDatabase"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 400
    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 403
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabProvider$EabDatabaseHelper;->SQL_CREATE_CONTACT_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    const-string v0, "CREATE TABLE eab_common (_id INTEGER PRIMARY KEY, eab_contact_id INTEGER DEFAULT -1, mechanism INTEGER DEFAULT NULL, request_result INTEGER DEFAULT -1, subscription_id INTEGER DEFAULT -1, entity_uri TEXT DEFAULT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v0, "CREATE TABLE eab_presence (_id INTEGER PRIMARY KEY, eab_common_id INTEGER DEFAULT -1, basic_status TEXT DEFAULT NULL, service_id TEXT DEFAULT NULL, service_version TEXT DEFAULT NULL, description TEXT DEFAULT NULL, presence_request_timestamp LONG DEFAULT NULL, contact_uri TEXT DEFAULT NULL, duplex_mode TEXT DEFAULT NULL, unsupported_duplex_mode TEXT DEFAULT NULL, audio_capable BOOLEAN DEFAULT NULL, video_capable BOOLEAN DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v0, "CREATE TABLE eab_options (_id INTEGER PRIMARY KEY, eab_common_id INTEGER DEFAULT -1, options_request_timestamp LONG DEFAULT NULL, feature_tag TEXT DEFAULT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB upgrade from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EabProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2b

    .line 414
    const-string v0, "ALTER TABLE eab_contact ADD COLUMN contact_id INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const/4 p2, 0x2

    .line 419
    :cond_2b
    const/4 v0, 0x3

    if-ge p2, v0, :cond_45

    .line 424
    const-string v0, "CREATE TABLE temp (_id INTEGER PRIMARY KEY, eab_contact_id INTEGER DEFAULT -1, mechanism INTEGER DEFAULT NULL, request_result INTEGER DEFAULT -1, subscription_id INTEGER DEFAULT -1 );"

    .line 432
    .local v0, "createTempTableCommand":Ljava/lang/String;
    const-string v1, "CREATE TABLE temp (_id INTEGER PRIMARY KEY, eab_contact_id INTEGER DEFAULT -1, mechanism INTEGER DEFAULT NULL, request_result INTEGER DEFAULT -1, subscription_id INTEGER DEFAULT -1 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    const-string v1, "INSERT INTO temp (_id, eab_contact_id, mechanism, request_result, subscription_id)  SELECT _id, eab_contact_id, mechanism, request_result, subscription_id  FROM eab_common;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v1, "DROP TABLE eab_common;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    const-string v1, "ALTER TABLE temp RENAME TO eab_common;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    const/4 p2, 0x3

    .line 459
    .end local v0    # "createTempTableCommand":Ljava/lang/String;
    :cond_45
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4e

    .line 460
    const-string v0, "ALTER TABLE eab_common ADD COLUMN entity_uri Text DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    const/4 p2, 0x4

    .line 464
    :cond_4e
    return-void
.end method
