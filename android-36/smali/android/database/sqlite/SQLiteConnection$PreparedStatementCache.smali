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
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDatabaseSeqNum:J

.field private blacklist mLastSeqNum:J

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;I)V
    .registers 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1547
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    .line 1548
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 1541
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mDatabaseSeqNum:J

    .line 1545
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mLastSeqNum:J

    .line 1549
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist createStatement(Ljava/lang/String;)J
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;

    monitor-enter p0

    .line 1571
    :try_start_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mDatabaseSeqNum:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mLastSeqNum:J

    .line 1572
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmConnectionPtr(Landroid/database/sqlite/SQLiteConnection;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$smnativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    .line 1570
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
    .end local p1    # "sql":Ljava/lang/String;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public greylist-max-o dump(Landroid/util/Printer;)V
    .registers 11
    .param p1, "printer"    # Landroid/util/Printer;

    .line 1585
    const-string v0, "  Prepared statement cache:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 1587
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_97

    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1590
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1591
    .local v4, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v5, :cond_92

    .line 1592
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1593
    .local v5, "sql":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": statementPtr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1594
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numParameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", readOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sql=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1598
    invoke-static {v5}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1593
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1600
    .end local v5    # "sql":Ljava/lang/String;
    :cond_92
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    add-int/lit8 v1, v1, 0x1

    .line 1601
    goto :goto_18

    .line 1602
    .end local v1    # "i":I
    :cond_96
    goto :goto_9c

    .line 1603
    :cond_97
    const-string v1, "    <none>"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1605
    :goto_9c
    return-void
.end method

.method protected bridge synthetic whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1539
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    check-cast p4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method protected greylist-max-o entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p4, "newValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1579
    iget-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_c

    .line 1580
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v0, p3}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$mfinalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1582
    :cond_c
    return-void
.end method

.method public blacklist getLastSeqNum()J
    .registers 3

    .line 1557
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mLastSeqNum:J

    return-wide v0
.end method

.method public declared-synchronized blacklist getStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;

    monitor-enter p0

    .line 1562
    :try_start_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mDatabaseSeqNum:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mLastSeqNum:J

    .line 1563
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 1561
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
    .end local p1    # "sql":Ljava/lang/String;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist setDatabaseSeqNum(J)V
    .registers 3
    .param p1, "n"    # J

    monitor-enter p0

    .line 1552
    :try_start_1
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->mDatabaseSeqNum:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1553
    monitor-exit p0

    return-void

    .line 1551
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
    .end local p1    # "n":J
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
