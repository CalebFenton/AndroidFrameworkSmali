.class public final Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# instance fields
.field private final greylist-max-o mCancellationSignal:Landroid/os/CancellationSignal;

.field private final greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final greylist-max-o mEditTable:Ljava/lang/String;

.field private greylist-max-o mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final greylist-max-o mSql:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist cursorClosed()V
    .registers 1

    .line 67
    return-void
.end method

.method public whitelist cursorDeactivated()V
    .registers 1

    .line 75
    return-void
.end method

.method public whitelist cursorRequeried(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 79
    return-void
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/database/sqlite/SQLiteQuery;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 49
    .local v0, "query":Landroid/database/sqlite/SQLiteQuery;
    :try_start_b
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 51
    if-nez p1, :cond_18

    .line 52
    new-instance v1, Landroid/database/sqlite/SQLiteCursor;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_20

    .line 54
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_18
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_20} :catch_24

    .line 59
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :goto_20
    nop

    .line 61
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 62
    return-object v1

    .line 56
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_24
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 58
    throw v1
.end method

.method public whitelist setBindArguments([Ljava/lang/String;)V
    .registers 3
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .line 70
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
