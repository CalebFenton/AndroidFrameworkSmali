.class public Landroid/database/sqlite/SQLiteDatabaseLockedException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseLockedException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
