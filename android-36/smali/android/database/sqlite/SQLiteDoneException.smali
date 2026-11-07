.class public Landroid/database/sqlite/SQLiteDoneException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDoneException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
