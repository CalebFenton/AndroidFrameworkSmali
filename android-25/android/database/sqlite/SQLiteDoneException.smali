.class public Landroid/database/sqlite/SQLiteDoneException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDoneException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method
