.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o deleteDatabaseFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 98
    const-string v0, ":memory:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_51

    .line 101
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleting the database file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDatabaseErrorHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_2b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;Z)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_35

    .line 107
    goto :goto_50

    .line 104
    :catch_35
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    return-void

    .line 99
    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public whitelist onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDatabaseErrorHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "corruption"

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_33

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_33
    const/4 v0, 0x0

    .line 74
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_34
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v1
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_38} :catch_3c
    .catchall {:try_start_34 .. :try_end_38} :catchall_3a

    move-object v0, v1

    .line 77
    goto :goto_3d

    .line 85
    :catchall_3a
    move-exception v1

    goto :goto_41

    .line 75
    :catch_3c
    move-exception v1

    .line 79
    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_40} :catch_64
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 82
    goto :goto_65

    .line 85
    :goto_41
    if-eqz v0, :cond_5c

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 87
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 88
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_47

    :cond_5b
    goto :goto_63

    .line 92
    :cond_5c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 94
    :goto_63
    throw v1

    .line 80
    :catch_64
    move-exception v1

    .line 85
    :goto_65
    if-eqz v0, :cond_80

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 87
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 88
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6b

    :cond_7f
    goto :goto_88

    .line 92
    :cond_80
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    :goto_88
    return-void
.end method
