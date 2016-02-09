.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
.super Landroid/util/LruCache;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnection;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 1253
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    #@2
    .line 1254
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    #@5
    .line 1253
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 10
    .param p1, "printer"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 1267
    const-string/jumbo v6, "  Prepared statement cache:"

    #@3
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6
    .line 1268
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->snapshot()Ljava/util/Map;

    #@9
    move-result-object v0

    #@a
    .line 1269
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 1270
    const/4 v3, 0x0

    #@11
    .line 1271
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v6

    #@15
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_2

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/Map$Entry;

    #@25
    .line 1272
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@2b
    .line 1273
    .local v5, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    #@2d
    if-eqz v6, :cond_0

    #@2f
    .line 1274
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Ljava/lang/String;

    #@35
    .line 1275
    .local v4, "sql":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "    "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    const-string/jumbo v7, ": statementPtr=0x"

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 1276
    iget-wide v8, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@4e
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    .line 1277
    const-string/jumbo v7, ", numParameters="

    #@59
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 1277
    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    #@5f
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    .line 1278
    const-string/jumbo v7, ", type="

    #@66
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    .line 1278
    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    #@6c
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    .line 1279
    const-string/jumbo v7, ", readOnly="

    #@73
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 1279
    iget-boolean v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    #@79
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    .line 1280
    const-string/jumbo v7, ", sql=\""

    #@80
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    .line 1280
    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    .line 1280
    const-string/jumbo v7, "\""

    #@8f
    .line 1275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@9a
    .line 1282
    .end local v4    # "sql":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@9c
    goto/16 :goto_0

    #@9e
    .line 1285
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :cond_1
    const-string/jumbo v6, "    <none>"

    #@a1
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a4
    .line 1266
    :cond_2
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1258
    check-cast p2, Ljava/lang/String;

    #@2
    .end local p2    # "key":Ljava/lang/Object;
    check-cast p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@4
    .end local p3    # "oldValue":Ljava/lang/Object;
    check-cast p4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@6
    .end local p4    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@9
    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p4, "newValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 1260
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    #@3
    .line 1261
    iget-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1262
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    #@9
    invoke-static {v0, p3}, Landroid/database/sqlite/SQLiteConnection;->-wrap1(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@c
    .line 1259
    :cond_0
    return-void
.end method
