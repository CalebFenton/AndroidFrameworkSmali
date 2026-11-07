.class public final Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private final greylist-max-o mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 39
    iput-object p3, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 40
    return-void
.end method


# virtual methods
.method greylist-max-o fillWindow(Landroid/database/CursorWindow;IIZ)I
    .registers 14
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "startPos"    # I
    .param p3, "requiredPos"    # I
    .param p4, "countAllRows"    # Z

    .line 58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 60
    :try_start_3
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7c

    .line 62
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_18} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_18} :catch_35
    .catchall {:try_start_6 .. :try_end_18} :catchall_2e

    .line 62
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .local v3, "window":Landroid/database/CursorWindow;
    .local v4, "startPos":I
    .local v5, "requiredPos":I
    .local v6, "countAllRows":Z
    :try_start_1c
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I

    move-result p1
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1c .. :try_end_20} :catch_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_20} :catch_28
    .catchall {:try_start_1c .. :try_end_20} :catchall_72

    .line 65
    .local p1, "numRows":I
    nop

    .line 73
    :try_start_21
    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_79

    .line 76
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 65
    return p1

    .line 69
    .end local p1    # "numRows":I
    :catch_28
    move-exception v0

    move-object p1, v0

    goto :goto_3b

    .line 66
    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_6d

    .line 73
    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_2e
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    goto :goto_74

    .line 69
    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .restart local p1    # "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_35
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 70
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .local p1, "ex":Landroid/database/sqlite/SQLiteException;
    :goto_3b
    :try_start_3b
    const-string p2, "SQLiteQuery"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "; query: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1

    .line 66
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_67
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 67
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .local p1, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_6d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->onCorruption()V

    .line 68
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1
    :try_end_72
    .catchall {:try_start_3b .. :try_end_72} :catchall_72

    .line 73
    .end local p1    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    :catchall_72
    move-exception v0

    move-object p1, v0

    :goto_74
    :try_start_74
    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 74
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_79

    .line 76
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    :catchall_79
    move-exception v0

    move-object p1, v0

    goto :goto_82

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_7c
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    :goto_82
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 77
    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
