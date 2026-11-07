.class public Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteCantOpenDatabaseException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
