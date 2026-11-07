.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static blacklist isCorruptException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 36
    nop

    :goto_1
    if-eqz p0, :cond_e

    .line 37
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_9

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 42
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
