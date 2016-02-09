.class public Landroid/test/DatabaseTestUtils;
.super Ljava/lang/Object;
.source "DatabaseTestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assertSchemaEquals(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "expectedDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 38
    invoke-static {p0}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 39
    .local v0, "expectedSchema":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    .line 40
    .local v1, "schema":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/util/Set;Ljava/util/Set;)V

    #@b
    .line 37
    return-void
.end method

.method private static getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@3
    move-result-object v1

    #@4
    .line 46
    .local v1, "schemaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v3, "SELECT sql FROM sqlite_master"

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    .line 48
    .local v0, "entityCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 49
    const/4 v3, 0x0

    #@13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 50
    .local v2, "sql":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 52
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@1c
    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1f
    .line 52
    throw v3

    #@20
    .line 53
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@23
    .line 55
    return-object v1
.end method
