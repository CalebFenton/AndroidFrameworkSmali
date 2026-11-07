.class public Landroid/database/DatabaseUtils$InsertHelper;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertHelper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o TABLE_INFO_PRAGMA_COLUMNNAME_INDEX:I = 0x1

.field public static final greylist-max-o TABLE_INFO_PRAGMA_DEFAULT_INDEX:I = 0x4


# instance fields
.field private greylist-max-o mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private greylist-max-o mInsertSQL:Ljava/lang/String;

.field private greylist-max-o mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private greylist-max-o mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

.field private greylist-max-o mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final greylist-max-o mTableName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1206
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1207
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1208
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1231
    iput-object p1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1232
    iput-object p2, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method private greylist-max-o buildSQL()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1236
    const-string v0, "\'"

    const-string v1, ")"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1237
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "INSERT INTO "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget-object v4, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1242
    .local v4, "sbv":Ljava/lang/StringBuilder;
    const-string v3, "VALUES ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const/4 v3, 0x1

    .line 1245
    .local v3, "i":I
    const/4 v5, 0x0

    .line 1247
    .local v5, "cur":Landroid/database/Cursor;
    :try_start_26
    iget-object v6, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA table_info("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    .line 1248
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 1249
    :goto_52
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1250
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "columnName":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1253
    .local v7, "defaultValue":Ljava/lang/String;
    iget-object v8, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    if-nez v7, :cond_7c

    .line 1259
    const-string v8, "?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 1261
    :cond_7c
    const-string v8, "COALESCE(?, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :goto_87
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_8b
    .catchall {:try_start_26 .. :try_end_8b} :catchall_b4

    const-string v9, ", "

    if-ne v3, v8, :cond_92

    :try_start_8f
    const-string v8, ") "

    goto :goto_93

    :cond_92
    move-object v8, v9

    :goto_93
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v3, v8, :cond_9e

    const-string v9, ");"

    :cond_9e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_b4

    .line 1268
    nop

    .end local v6    # "columnName":Ljava/lang/String;
    .end local v7    # "defaultValue":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1269
    goto :goto_52

    .line 1271
    :cond_a5
    if-eqz v5, :cond_aa

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1274
    :cond_aa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1278
    return-void

    .line 1271
    :catchall_b4
    move-exception v0

    if-eqz v5, :cond_ba

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1272
    :cond_ba
    throw v0
.end method

.method private greylist-max-o getStatement(Z)Landroid/database/sqlite/SQLiteStatement;
    .registers 5
    .param p1, "allowReplace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1281
    if-eqz p1, :cond_32

    .line 1282
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2f

    .line 1283
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/database/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 1285
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "replaceSQL":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1288
    .end local v0    # "replaceSQL":Ljava/lang/String;
    :cond_2f
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 1290
    :cond_32
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_47

    .line 1291
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_3d

    invoke-direct {p0}, Landroid/database/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 1292
    :cond_3d
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1294
    :cond_47
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method private greylist-max-o insertInternal(Landroid/content/ContentValues;Z)J
    .registers 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "allowReplace"    # Z

    .line 1317
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1319
    :try_start_5
    invoke-direct {p0, p2}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1320
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1322
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1323
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1324
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1325
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1330
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":I
    goto :goto_14

    .line 1331
    :cond_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 1332
    .local v1, "result":J
    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_3b} :catch_44
    .catchall {:try_start_5 .. :try_end_3b} :catchall_42

    .line 1333
    nop

    .line 1338
    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1333
    return-wide v1

    .line 1338
    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v1    # "result":J
    :catchall_42
    move-exception v0

    goto :goto_72

    .line 1334
    :catch_44
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/database/SQLException;
    :try_start_45
    const-string v1, "DatabaseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into table  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_45 .. :try_end_69} :catchall_42

    .line 1336
    nop

    .line 1338
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1336
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1338
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_72
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1339
    throw v0
.end method


# virtual methods
.method public whitelist bind(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1364
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 1365
    return-void
.end method

.method public whitelist bind(IF)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1374
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 1375
    return-void
.end method

.method public whitelist bind(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1394
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1395
    return-void
.end method

.method public whitelist bind(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1384
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1385
    return-void
.end method

.method public whitelist bind(ILjava/lang/String;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1437
    if-nez p2, :cond_8

    .line 1438
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 1440
    :cond_8
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1442
    :goto_d
    return-void
.end method

.method public whitelist bind(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1404
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz p2, :cond_7

    const-wide/16 v1, 0x1

    goto :goto_9

    :cond_7
    const-wide/16 v1, 0x0

    :goto_9
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1405
    return-void
.end method

.method public whitelist bind(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 1423
    if-nez p2, :cond_8

    .line 1424
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 1426
    :cond_8
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1428
    :goto_d
    return-void
.end method

.method public whitelist bindNull(I)V
    .registers 3
    .param p1, "index"    # I

    .line 1413
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1414
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 1539
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1540
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1541
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1543
    :cond_c
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_17

    .line 1544
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1545
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1547
    :cond_17
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1548
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 1549
    return-void
.end method

.method public whitelist execute()J
    .registers 6

    .line 1470
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_34

    .line 1476
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_b} :catch_10
    .catchall {:try_start_5 .. :try_end_b} :catchall_e

    .line 1482
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1476
    return-wide v1

    .line 1482
    :catchall_e
    move-exception v1

    goto :goto_31

    .line 1477
    :catch_10
    move-exception v1

    .line 1478
    .local v1, "e":Landroid/database/SQLException;
    :try_start_11
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing InsertHelper with table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_e

    .line 1479
    nop

    .line 1482
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1479
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1482
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_31
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1483
    throw v1

    .line 1471
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must prepare this inserter before calling execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    .line 1350
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1351
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    .line 1354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1352
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist insert(Landroid/content/ContentValues;)J
    .registers 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1456
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist prepareForInsert()V
    .registers 2

    .line 1498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1499
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1500
    return-void
.end method

.method public whitelist prepareForReplace()V
    .registers 2

    .line 1514
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1515
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1516
    return-void
.end method

.method public whitelist replace(Landroid/content/ContentValues;)J
    .registers 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1530
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method
