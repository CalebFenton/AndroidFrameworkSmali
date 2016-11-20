.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIGITS:[C

.field public static final STATEMENT_ABORT:I = 0x6

.field public static final STATEMENT_ATTACH:I = 0x3

.field public static final STATEMENT_BEGIN:I = 0x4

.field public static final STATEMENT_COMMIT:I = 0x5

.field public static final STATEMENT_DDL:I = 0x8

.field public static final STATEMENT_OTHER:I = 0x63

.field public static final STATEMENT_PRAGMA:I = 0x7

.field public static final STATEMENT_SELECT:I = 0x1

.field public static final STATEMENT_UNPREPARED:I = 0x9

.field public static final STATEMENT_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 426
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/database/DatabaseUtils;->DIGITS:[C

    #@9
    .line 461
    const/4 v0, 0x0

    #@a
    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    #@c
    .line 47
    return-void

    #@d
    .line 426
    nop

    #@e
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x27

    #@2
    .line 339
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 340
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v3

    #@9
    const/4 v4, -0x1

    #@a
    if-eq v3, v4, :cond_1

    #@c
    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    .line 342
    .local v2, "length":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@13
    .line 343
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 344
    .local v0, "c":C
    if-ne v0, v5, :cond_0

    #@19
    .line 345
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 347
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 342
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 350
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 351
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 338
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1433
    if-eqz p0, :cond_0

    #@3
    array-length v1, p0

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1434
    :cond_0
    return-object p1

    #@7
    .line 1436
    :cond_1
    array-length v1, p0

    #@8
    array-length v2, p1

    #@9
    add-int/2addr v1, v2

    #@a
    new-array v0, v1, [Ljava/lang/String;

    #@c
    .line 1437
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    #@d
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 1438
    array-length v1, p0

    #@11
    array-length v2, p1

    #@12
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 1439
    return-object v0
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 369
    if-nez p1, :cond_0

    #@2
    .line 370
    const-string/jumbo v1, "NULL"

    #@5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 368
    :goto_0
    return-void

    #@9
    .line 371
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    #@b
    if-eqz v1, :cond_2

    #@d
    move-object v0, p1

    #@e
    .line 372
    check-cast v0, Ljava/lang/Boolean;

    #@10
    .line 373
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 374
    const/16 v1, 0x31

    #@18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    goto :goto_0

    #@1c
    .line 376
    :cond_1
    const/16 v1, 0x30

    #@1e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    goto :goto_0

    #@22
    .line 379
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {p0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@29
    goto :goto_0
.end method

.method public static bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .locals 4
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 198
    if-nez p2, :cond_0

    #@2
    .line 199
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    #@5
    .line 197
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    #@6
    .line 200
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/Double;

    #@8
    if-nez v1, :cond_1

    #@a
    instance-of v1, p2, Ljava/lang/Float;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 201
    :cond_1
    check-cast p2, Ljava/lang/Number;

    #@10
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    #@13
    move-result-wide v2

    #@14
    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    #@17
    goto :goto_0

    #@18
    .line 202
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 203
    check-cast p2, Ljava/lang/Number;

    #@1e
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    #@21
    move-result-wide v2

    #@22
    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    #@25
    goto :goto_0

    #@26
    .line 204
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    #@28
    if-eqz v1, :cond_5

    #@2a
    move-object v0, p2

    #@2b
    .line 205
    check-cast v0, Ljava/lang/Boolean;

    #@2d
    .line 206
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 207
    const-wide/16 v2, 0x1

    #@35
    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    #@38
    goto :goto_0

    #@39
    .line 209
    :cond_4
    const-wide/16 v2, 0x0

    #@3b
    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    #@3e
    goto :goto_0

    #@3f
    .line 211
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_5
    instance-of v1, p2, [B

    #@41
    if-eqz v1, :cond_6

    #@43
    .line 212
    check-cast p2, [B

    #@45
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    #@48
    goto :goto_0

    #@49
    .line 214
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    #@50
    goto :goto_0
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 878
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 880
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 882
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@b
    .line 880
    return-object v1

    #@c
    .line 881
    :catchall_0
    move-exception v1

    #@d
    .line 882
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@10
    .line 881
    throw v1
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 894
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    #@3
    .line 895
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 387
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 388
    return-object p1

    #@7
    .line 390
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 391
    return-object p0

    #@e
    .line 394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "("

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ") AND ("

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ")"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public static createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "sqlStatements"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1367
    const/4 v4, 0x0

    #@2
    invoke-virtual {p0, p1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    .line 1371
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, ";\n"

    #@9
    invoke-static {p3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 1372
    .local v2, "statements":[Ljava/lang/String;
    array-length v4, v2

    #@e
    :goto_0
    if-ge v3, v4, :cond_1

    #@10
    aget-object v1, v2, v3

    #@12
    .line 1373
    .local v1, "statement":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    .line 1372
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1374
    :cond_0
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@1e
    goto :goto_1

    #@1f
    .line 1376
    .end local v1    # "statement":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    #@22
    .line 1377
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@25
    .line 1366
    return-void
.end method

.method public static cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 716
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 717
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 718
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    #@d
    move-result-wide v2

    #@e
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@15
    .line 715
    :goto_0
    return-void

    #@16
    .line 720
    :cond_0
    const/4 v1, 0x0

    #@17
    check-cast v1, Ljava/lang/Double;

    #@19
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@1c
    goto :goto_0
.end method

.method public static cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 988
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 989
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 987
    :cond_0
    :goto_0
    return-void

    #@e
    .line 990
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    #@11
    move-result-wide v2

    #@12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@19
    goto :goto_0
.end method

.method public static cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 703
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3
    .line 701
    return-void
.end method

.method public static cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    #@0
    .prologue
    .line 264
    if-ltz p1, :cond_0

    #@2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    #@5
    move-result v7

    #@6
    if-lt p1, v7, :cond_1

    #@8
    .line 265
    :cond_0
    return-void

    #@9
    .line 267
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    #@c
    move-result v2

    #@d
    .line 268
    .local v2, "oldPos":I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    #@10
    move-result v1

    #@11
    .line 269
    .local v1, "numColumns":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    #@14
    .line 270
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    #@17
    .line 271
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    #@1a
    .line 272
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_2

    #@20
    .line 274
    :goto_0
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    #@23
    move-result v7

    #@24
    if-nez v7, :cond_3

    #@26
    .line 316
    :cond_2
    :goto_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@29
    .line 263
    return-void

    #@2a
    .line 277
    :cond_3
    const/4 v0, 0x0

    #@2b
    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_7

    #@2d
    .line 278
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getType(I)I

    #@30
    move-result v4

    #@31
    .line 280
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    #@34
    .line 302
    :pswitch_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 303
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_5

    #@3a
    invoke-virtual {p2, v5, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    #@3d
    move-result v3

    #@3e
    .line 308
    .end local v5    # "value":Ljava/lang/String;
    .local v3, "success":Z
    :goto_3
    if-nez v3, :cond_6

    #@40
    .line 309
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    #@43
    goto :goto_1

    #@44
    .line 282
    .end local v3    # "success":Z
    :pswitch_1
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    #@47
    move-result v3

    #@48
    .restart local v3    # "success":Z
    goto :goto_3

    #@49
    .line 286
    .end local v3    # "success":Z
    :pswitch_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    #@4c
    move-result-wide v8

    #@4d
    invoke-virtual {p2, v8, v9, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    #@50
    move-result v3

    #@51
    .restart local v3    # "success":Z
    goto :goto_3

    #@52
    .line 290
    .end local v3    # "success":Z
    :pswitch_3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    #@55
    move-result-wide v8

    #@56
    invoke-virtual {p2, v8, v9, p1, v0}, Landroid/database/CursorWindow;->putDouble(DII)Z

    #@59
    move-result v3

    #@5a
    .restart local v3    # "success":Z
    goto :goto_3

    #@5b
    .line 294
    .end local v3    # "success":Z
    :pswitch_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    #@5e
    move-result-object v6

    #@5f
    .line 295
    .local v6, "value":[B
    if-eqz v6, :cond_4

    #@61
    invoke-virtual {p2, v6, p1, v0}, Landroid/database/CursorWindow;->putBlob([BII)Z

    #@64
    move-result v3

    #@65
    .restart local v3    # "success":Z
    goto :goto_3

    #@66
    .line 296
    .end local v3    # "success":Z
    :cond_4
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    #@69
    move-result v3

    #@6a
    .restart local v3    # "success":Z
    goto :goto_3

    #@6b
    .line 304
    .end local v3    # "success":Z
    .end local v6    # "value":[B
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    #@6e
    move-result v3

    #@6f
    .restart local v3    # "success":Z
    goto :goto_3

    #@70
    .line 277
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_2

    #@73
    .line 313
    .end local v3    # "success":Z
    .end local v4    # "type":I
    :cond_7
    add-int/lit8 p1, p1, 0x1

    #@75
    .line 314
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    #@78
    move-result v7

    #@79
    if-eqz v7, :cond_2

    #@7b
    goto :goto_0

    #@7c
    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 972
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 973
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 971
    :cond_0
    :goto_0
    return-void

    #@e
    .line 974
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@19
    goto :goto_0
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 642
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3
    .line 641
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 655
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 656
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 657
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@15
    .line 654
    :goto_0
    return-void

    #@16
    .line 659
    :cond_0
    const/4 v1, 0x0

    #@17
    check-cast v1, Ljava/lang/Integer;

    #@19
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c
    goto :goto_0
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 957
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 955
    :cond_0
    :goto_0
    return-void

    #@e
    .line 958
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@19
    goto :goto_0
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 672
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3
    .line 670
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 685
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 686
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 687
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v1

    #@12
    .line 688
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@15
    .line 684
    .end local v1    # "value":Ljava/lang/Long;
    :goto_0
    return-void

    #@16
    .line 690
    :cond_0
    const/4 v2, 0x0

    #@17
    check-cast v2, Ljava/lang/Long;

    #@19
    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1c
    goto :goto_0
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 924
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 925
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 923
    :cond_0
    :goto_0
    return-void

    #@e
    .line 926
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@19
    goto :goto_0
.end method

.method public static cursorPickFillWindowStartPosition(II)I
    .locals 2
    .param p0, "cursorPosition"    # I
    .param p1, "cursorWindowCapacity"    # I

    #@0
    .prologue
    .line 768
    div-int/lit8 v0, p1, 0x3

    #@2
    sub-int v0, p0, v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 732
    instance-of v4, p0, Landroid/database/AbstractWindowedCursor;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v0, p0

    #@5
    check-cast v0, Landroid/database/AbstractWindowedCursor;

    #@7
    .line 734
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 735
    .local v1, "columns":[Ljava/lang/String;
    array-length v3, v1

    #@c
    .line 736
    .local v3, "length":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@f
    .line 737
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0, v2}, Landroid/database/AbstractWindowedCursor;->isBlob(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 738
    aget-object v4, v1, v2

    #@19
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@20
    .line 736
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 732
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    const/4 v0, 0x0

    #@24
    .local v0, "awc":Landroid/database/AbstractWindowedCursor;
    goto :goto_0

    #@25
    .line 740
    .end local v0    # "awc":Landroid/database/AbstractWindowedCursor;
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_1
    aget-object v4, v1, v2

    #@27
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    goto :goto_2

    #@2f
    .line 730
    :cond_2
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 940
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 941
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 939
    :cond_0
    :goto_0
    return-void

    #@e
    .line 942
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    #@19
    goto :goto_0
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 605
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3
    .line 604
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 631
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 630
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    #@0
    .prologue
    .line 908
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 909
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 907
    :cond_0
    :goto_0
    return-void

    #@e
    .line 910
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    goto :goto_0
.end method

.method public static cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Landroid/database/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 618
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    #@b
    .line 617
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 533
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    #@5
    .line 532
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 543
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 544
    .local v0, "cols":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, ""

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    #@13
    move-result v6

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v6, " {"

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 545
    array-length v3, v0

    #@27
    .line 546
    .local v3, "length":I
    const/4 v2, 0x0

    #@28
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@2a
    .line 549
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-object v4

    #@2e
    .line 555
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "   "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    aget-object v6, v0, v2

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    const/16 v6, 0x3d

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 546
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 550
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@55
    .line 553
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v4, "<unprintable>"

    #@58
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    #@59
    .line 557
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}"

    #@5c
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5f
    .line 542
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 567
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 568
    .local v0, "cols":[Ljava/lang/String;
    const-string/jumbo v5, ""

    #@7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v5

    #@b
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    #@e
    move-result v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v6, " {\n"

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 569
    array-length v3, v0

    #@1a
    .line 570
    .local v3, "length":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@1d
    .line 573
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v4

    #@21
    .line 579
    .local v4, "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "   "

    #@24
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    aget-object v6, v0, v2

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    const/16 v6, 0x3d

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, "\n"

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 570
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 574
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@42
    .line 577
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v4, "<unprintable>"

    #@45
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    #@46
    .line 581
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}\n"

    #@49
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 566
    return-void
.end method

.method public static dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 592
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    #@8
    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    #@5
    .line 468
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, ">>>>> Dumping cursor "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17
    .line 481
    if-eqz p0, :cond_1

    #@19
    .line 482
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    #@1c
    move-result v0

    #@1d
    .line 484
    .local v0, "startPos":I
    const/4 v1, -0x1

    #@1e
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@21
    .line 485
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 486
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    #@2a
    goto :goto_0

    #@2b
    .line 488
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@2e
    .line 490
    .end local v0    # "startPos":I
    :cond_1
    const-string/jumbo v1, "<<<<<"

    #@31
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 479
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 501
    const-string/jumbo v1, ">>>>> Dumping cursor "

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "\n"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 502
    if-eqz p0, :cond_1

    #@13
    .line 503
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    #@16
    move-result v0

    #@17
    .line 505
    .local v0, "startPos":I
    const/4 v1, -0x1

    #@18
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@1b
    .line 506
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 507
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    #@24
    goto :goto_0

    #@25
    .line 509
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@28
    .line 511
    .end local v0    # "startPos":I
    :cond_1
    const-string/jumbo v1, "<<<<<\n"

    #@2b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 500
    return-void
.end method

.method public static dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 523
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    #@8
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static encodeHex([B)[C
    .locals 7
    .param p0, "input"    # [B

    #@0
    .prologue
    .line 432
    array-length v3, p0

    #@1
    .line 433
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    #@3
    new-array v4, v5, [C

    #@5
    .line 436
    .local v4, "out":[C
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    const/4 v1, 0x0

    #@7
    .local v1, "j":I
    move v2, v1

    #@8
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@a
    .line 437
    add-int/lit8 v1, v2, 0x1

    #@c
    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    #@e
    aget-byte v6, p0, v0

    #@10
    and-int/lit16 v6, v6, 0xf0

    #@12
    ushr-int/lit8 v6, v6, 0x4

    #@14
    aget-char v5, v5, v6

    #@16
    aput-char v5, v4, v2

    #@18
    .line 438
    add-int/lit8 v2, v1, 0x1

    #@1a
    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    #@1c
    aget-byte v6, p0, v0

    #@1e
    and-int/lit8 v6, v6, 0xf

    #@20
    aget-char v5, v5, v6

    #@22
    aput-char v5, v4, v1

    #@24
    .line 436
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 441
    :cond_0
    return-object v4
.end method

.method public static findRowIdColumnIndex([Ljava/lang/String;)I
    .locals 4
    .param p0, "columnNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1447
    array-length v1, p0

    #@1
    .line 1448
    .local v1, "length":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@4
    .line 1449
    aget-object v2, p0, v0

    #@6
    const-string/jumbo v3, "_id"

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1450
    return v0

    #@10
    .line 1448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1453
    :cond_1
    const/4 v2, -0x1

    #@14
    return v2
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 403
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    .line 405
    .local v0, "arr":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    #@9
    move-result v3

    #@a
    const-string/jumbo v4, "ISO8859_1"

    #@d
    const/4 v5, 0x0

    #@e
    invoke-direct {v2, v0, v5, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v2

    #@12
    .line 406
    :catch_0
    move-exception v1

    #@13
    .line 407
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    #@16
    return-object v2
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 454
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 455
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    #@a
    .line 456
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    #@10
    .line 458
    :cond_0
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    #@12
    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "arr":[B
    invoke-static {v0}, Landroid/database/DatabaseUtils;->encodeHex([B)[C

    #@7
    move-result-object v1

    #@8
    .line 419
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    #@a
    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    #@d
    move-result v3

    #@e
    mul-int/lit8 v3, v3, 0x2

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([CII)V

    #@14
    return-object v2
.end method

.method private static getKeyLen([B)I
    .locals 1
    .param p0, "arr"    # [B

    #@0
    .prologue
    .line 445
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    aget-byte v0, p0, v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 446
    array-length v0, p0

    #@8
    return v0

    #@9
    .line 449
    :cond_0
    array-length v0, p0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    return v0
.end method

.method public static getSqlStatementType(Ljava/lang/String;)I
    .locals 6
    .param p0, "sql"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x63

    #@2
    const/4 v4, 0x5

    #@3
    const/4 v3, 0x3

    #@4
    .line 1395
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 1396
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 1397
    return v5

    #@f
    .line 1399
    :cond_0
    const/4 v1, 0x0

    #@10
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1400
    .local v0, "prefixSql":Ljava/lang/String;
    const-string/jumbo v1, "SEL"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1401
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 1402
    :cond_1
    const-string/jumbo v1, "INS"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 1403
    const-string/jumbo v1, "UPD"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 1402
    if-nez v1, :cond_2

    #@37
    .line 1404
    const-string/jumbo v1, "REP"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    .line 1402
    if-nez v1, :cond_2

    #@40
    .line 1405
    const-string/jumbo v1, "DEL"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    .line 1402
    if-eqz v1, :cond_3

    #@49
    .line 1406
    :cond_2
    const/4 v1, 0x2

    #@4a
    return v1

    #@4b
    .line 1407
    :cond_3
    const-string/jumbo v1, "ATT"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_4

    #@54
    .line 1408
    return v3

    #@55
    .line 1409
    :cond_4
    const-string/jumbo v1, "COM"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_5

    #@5e
    .line 1410
    return v4

    #@5f
    .line 1411
    :cond_5
    const-string/jumbo v1, "END"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 1412
    return v4

    #@69
    .line 1413
    :cond_6
    const-string/jumbo v1, "ROL"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 1414
    const/4 v1, 0x6

    #@73
    return v1

    #@74
    .line 1415
    :cond_7
    const-string/jumbo v1, "BEG"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_8

    #@7d
    .line 1416
    const/4 v1, 0x4

    #@7e
    return v1

    #@7f
    .line 1417
    :cond_8
    const-string/jumbo v1, "PRA"

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_9

    #@88
    .line 1418
    const/4 v1, 0x7

    #@89
    return v1

    #@8a
    .line 1419
    :cond_9
    const-string/jumbo v1, "CRE"

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_a

    #@93
    const-string/jumbo v1, "DRO"

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    if-nez v1, :cond_a

    #@9c
    .line 1420
    const-string/jumbo v1, "ALT"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v1

    #@a3
    .line 1419
    if-eqz v1, :cond_b

    #@a5
    .line 1421
    :cond_a
    const/16 v1, 0x8

    #@a7
    return v1

    #@a8
    .line 1422
    :cond_b
    const-string/jumbo v1, "ANA"

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v1

    #@af
    if-nez v1, :cond_c

    #@b1
    const-string/jumbo v1, "DET"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_d

    #@ba
    .line 1423
    :cond_c
    const/16 v1, 0x9

    #@bc
    return v1

    #@bd
    .line 1425
    :cond_d
    return v5
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 236
    if-nez p0, :cond_0

    #@2
    .line 237
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 238
    :cond_0
    instance-of v0, p0, [B

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 239
    const/4 v0, 0x4

    #@9
    return v0

    #@a
    .line 240
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    #@c
    if-nez v0, :cond_2

    #@e
    instance-of v0, p0, Ljava/lang/Double;

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 241
    :cond_2
    const/4 v0, 0x2

    #@13
    return v0

    #@14
    .line 242
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    #@16
    if-nez v0, :cond_4

    #@18
    instance-of v0, p0, Ljava/lang/Integer;

    #@1a
    if-nez v0, :cond_4

    #@1c
    .line 243
    instance-of v0, p0, Ljava/lang/Short;

    #@1e
    .line 242
    if-nez v0, :cond_4

    #@20
    .line 243
    instance-of v0, p0, Ljava/lang/Byte;

    #@22
    .line 242
    if-eqz v0, :cond_5

    #@24
    .line 244
    :cond_4
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 246
    :cond_5
    const/4 v0, 0x3

    #@27
    return v0
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 831
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 833
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-wide v2

    #@8
    .line 835
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@b
    .line 833
    return-wide v2

    #@c
    .line 834
    :catchall_0
    move-exception v1

    #@d
    .line 835
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@10
    .line 834
    throw v1
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 2
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 844
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    #@3
    .line 845
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public static queryIsEmpty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    #@0
    .prologue
    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "select exists(select 1 from "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, ")"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@1f
    move-result-wide v0

    #@20
    .line 823
    .local v0, "isEmpty":J
    const-wide/16 v2, 0x0

    #@22
    cmp-long v2, v0, v2

    #@24
    if-nez v2, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    :goto_0
    return v2

    #@28
    :cond_0
    const/4 v2, 0x0

    #@29
    goto :goto_0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 778
    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    #@0
    .prologue
    .line 791
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 809
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, " where "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 810
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "select count(*) from "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@35
    move-result-wide v2

    #@36
    return-wide v2

    #@37
    .line 809
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@3a
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p0, "reply"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    #@3
    move-result v0

    #@4
    .line 133
    .local v0, "code":I
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 135
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    #@e
    .line 131
    return-void
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    #@0
    .prologue
    .line 163
    packed-switch p2, :pswitch_data_0

    #@3
    .line 183
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    #@6
    .line 162
    return-void

    #@7
    .line 165
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 167
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 169
    :pswitch_3
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    #@15
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 171
    :pswitch_4
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    #@1b
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 173
    :pswitch_5
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    #@21
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 175
    :pswitch_6
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    #@27
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 177
    :pswitch_7
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    #@2d
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 179
    :pswitch_8
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@33
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 181
    :pswitch_9
    new-instance v0, Landroid/os/OperationCanceledException;

    #@39
    invoke-direct {v0, p1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 163
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    #@3
    move-result v0

    #@4
    .line 141
    .local v0, "code":I
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 143
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 144
    new-instance v2, Ljava/io/FileNotFoundException;

    #@10
    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 146
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    #@17
    .line 139
    return-void
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    #@3
    move-result v0

    #@4
    .line 153
    .local v0, "code":I
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 155
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    #@d
    if-ne v0, v2, :cond_1

    #@f
    .line 156
    new-instance v2, Landroid/content/OperationApplicationException;

    #@11
    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 158
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    #@18
    .line 151
    return-void
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 360
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@8
    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 853
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 855
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 857
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@b
    .line 855
    return-object v1

    #@c
    .line 856
    :catchall_0
    move-exception v1

    #@d
    .line 857
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    #@10
    .line 856
    throw v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 866
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    #@3
    .line 867
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    .line 84
    .local v0, "code":I
    const/4 v1, 0x1

    #@2
    .line 85
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 86
    const/4 v0, 0x1

    #@7
    .line 87
    const/4 v1, 0x0

    #@8
    .line 114
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 117
    if-eqz v1, :cond_0

    #@14
    .line 118
    const-string/jumbo v2, "DatabaseUtils"

    #@17
    const-string/jumbo v3, "Writing exception to parcel"

    #@1a
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 82
    :cond_0
    return-void

    #@1e
    .line 88
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 89
    const/4 v0, 0x2

    #@23
    goto :goto_0

    #@24
    .line 90
    :cond_2
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 91
    const/4 v0, 0x3

    #@29
    goto :goto_0

    #@2a
    .line 92
    :cond_3
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    #@2c
    if-eqz v2, :cond_4

    #@2e
    .line 93
    const/4 v0, 0x4

    #@2f
    goto :goto_0

    #@30
    .line 94
    :cond_4
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    #@32
    if-eqz v2, :cond_5

    #@34
    .line 95
    const/4 v0, 0x5

    #@35
    goto :goto_0

    #@36
    .line 96
    :cond_5
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    #@38
    if-eqz v2, :cond_6

    #@3a
    .line 97
    const/4 v0, 0x6

    #@3b
    goto :goto_0

    #@3c
    .line 98
    :cond_6
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    #@3e
    if-eqz v2, :cond_7

    #@40
    .line 99
    const/4 v0, 0x7

    #@41
    goto :goto_0

    #@42
    .line 100
    :cond_7
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    #@44
    if-eqz v2, :cond_8

    #@46
    .line 101
    const/16 v0, 0x8

    #@48
    goto :goto_0

    #@49
    .line 102
    :cond_8
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    #@4b
    if-eqz v2, :cond_9

    #@4d
    .line 103
    const/16 v0, 0x9

    #@4f
    goto :goto_0

    #@50
    .line 104
    :cond_9
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    #@52
    if-eqz v2, :cond_a

    #@54
    .line 105
    const/16 v0, 0xa

    #@56
    goto :goto_0

    #@57
    .line 106
    :cond_a
    instance-of v2, p1, Landroid/os/OperationCanceledException;

    #@59
    if-eqz v2, :cond_b

    #@5b
    .line 107
    const/16 v0, 0xb

    #@5d
    .line 108
    const/4 v1, 0x0

    #@5e
    goto :goto_0

    #@5f
    .line 110
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@62
    .line 111
    const-string/jumbo v2, "DatabaseUtils"

    #@65
    const-string/jumbo v3, "Writing exception to parcel"

    #@68
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 112
    return-void
.end method
