.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private deleteDatabaseFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const-string/jumbo v1, ":memory:"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 98
    :cond_0
    return-void

    #@14
    .line 100
    :cond_1
    const-string/jumbo v1, "DefaultDatabaseErrorHandler"

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "deleting the database file: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 102
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@30
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@33
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 96
    :goto_0
    return-void

    #@37
    .line 103
    :catch_0
    move-exception v0

    #@38
    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DefaultDatabaseErrorHandler"

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "delete failed: "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 54
    const-string/jumbo v4, "DefaultDatabaseErrorHandler"

    #@3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "Corruption reported by sqlite on database: "

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 57
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_0

    #@24
    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    #@2b
    .line 65
    return-void

    #@2c
    .line 68
    :cond_0
    const/4 v0, 0x0

    #@2d
    .line 73
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v0

    #@31
    .line 78
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 84
    :goto_1
    if-eqz v0, :cond_1

    #@36
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v3

    #@3a
    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_2

    #@40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroid/util/Pair;

    #@46
    .line 86
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@48
    check-cast v4, Ljava/lang/String;

    #@4a
    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    #@4d
    goto :goto_2

    #@4e
    .line 74
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v1

    #@4f
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    #@50
    .line 79
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    #@51
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    goto :goto_1

    #@52
    .line 91
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    #@59
    .line 53
    :cond_2
    return-void

    #@5a
    .line 82
    :catchall_0
    move-exception v4

    #@5b
    move-object v5, v4

    #@5c
    .line 84
    if-eqz v0, :cond_3

    #@5e
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v3

    #@62
    .restart local v3    # "p$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_4

    #@68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Landroid/util/Pair;

    #@6e
    .line 86
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@70
    check-cast v4, Ljava/lang/String;

    #@72
    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    #@75
    goto :goto_3

    #@76
    .line 91
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-direct {p0, v4}, Landroid/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    #@7d
    .line 82
    :cond_4
    throw v5
.end method
