.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1297
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    #@7
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@9
    .line 1292
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    #@3
    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 6
    .param p1, "cookie"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x100000

    #@3
    const/4 v1, 0x0

    #@4
    .line 1375
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@7
    move-result-object v0

    #@8
    .line 1376
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_2

    #@a
    .line 1377
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1378
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 1379
    iget v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    #@16
    .line 1378
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@19
    .line 1381
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v2

    #@1d
    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    #@1f
    .line 1382
    const/4 v2, 0x1

    #@20
    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@22
    .line 1383
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 1384
    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    #@28
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@2a
    sub-long/2addr v2, v4

    #@2b
    .line 1383
    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    #@2e
    move-result v1

    #@2f
    :cond_1
    return v1

    #@30
    .line 1386
    :cond_2
    return v1
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    #@0
    .prologue
    .line 1405
    and-int/lit16 v0, p1, 0xff

    #@2
    .line 1406
    .local v0, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@4
    aget-object v1, v2, v0

    #@6
    .line 1407
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    #@8
    if-ne v2, p1, :cond_0

    #@a
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_0
    return-object v1

    #@b
    .restart local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1390
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@3
    move-result-object v1

    #@4
    .line 1391
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1392
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@d
    .line 1393
    if-eqz p2, :cond_0

    #@f
    .line 1394
    const-string/jumbo v2, ", "

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1396
    :cond_0
    const-string/jumbo v2, "SQLiteConnection"

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1389
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1400
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    #@6
    .line 1401
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    #@8
    or-int/2addr v1, p1

    #@9
    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1302
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v5

    #@3
    .line 1303
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@5
    add-int/lit8 v4, v4, 0x1

    #@7
    rem-int/lit8 v2, v4, 0x14

    #@9
    .line 1304
    .local v2, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@b
    aget-object v3, v4, v2

    #@d
    .line 1305
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    #@f
    .line 1306
    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    #@11
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v4, 0x0

    #@12
    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    #@15
    .line 1307
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@17
    aput-object v3, v4, v2

    #@19
    .line 1315
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c
    move-result-wide v6

    #@1d
    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    #@1f
    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@22
    move-result-wide v6

    #@23
    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@25
    .line 1317
    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    #@27
    .line 1318
    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    #@29
    .line 1319
    if-eqz p3, :cond_4

    #@2b
    .line 1320
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@2d
    if-nez v4, :cond_2

    #@2f
    .line 1321
    new-instance v4, Ljava/util/ArrayList;

    #@31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@36
    .line 1325
    :goto_1
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_2
    array-length v4, p3

    #@38
    if-ge v1, v4, :cond_4

    #@3a
    .line 1326
    aget-object v0, p3, v1

    #@3c
    .line 1327
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@3e
    instance-of v4, v0, [B

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 1329
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@44
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-get0()[B

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1325
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 1309
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@4f
    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@51
    .line 1310
    const/4 v4, 0x0

    #@52
    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    #@54
    .line 1311
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@56
    if-eqz v4, :cond_0

    #@58
    .line 1312
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 1302
    .end local v2    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    #@5f
    monitor-exit v5

    #@60
    throw v4

    #@61
    .line 1323
    .restart local v2    # "index":I
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@66
    goto :goto_1

    #@67
    .line 1331
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    goto :goto_3

    #@6d
    .line 1335
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    #@70
    move-result v4

    #@71
    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    #@73
    .line 1336
    const-wide/32 v6, 0x100000

    #@76
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@79
    move-result v4

    #@7a
    if-eqz v4, :cond_5

    #@7c
    .line 1337
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 1338
    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    #@82
    .line 1337
    const-wide/32 v8, 0x100000

    #@85
    invoke-static {v8, v9, v4, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@88
    .line 1340
    :cond_5
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@8a
    .line 1341
    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    monitor-exit v5

    #@8d
    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1411
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@3
    monitor-enter v3

    #@4
    .line 1412
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@6
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@8
    aget-object v1, v2, v4

    #@a
    .line 1413
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    #@c
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-eqz v2, :cond_1

    #@10
    :cond_0
    monitor-exit v3

    #@11
    .line 1418
    return-object v5

    #@12
    .line 1414
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 1415
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@18
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@1b
    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    monitor-exit v3

    #@20
    return-object v2

    #@21
    .line 1411
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 1423
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v5

    #@3
    .line 1424
    :try_start_0
    const-string/jumbo v4, "  Most recently executed operations:"

    #@6
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@9
    .line 1425
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@b
    .line 1426
    .local v0, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@d
    aget-object v3, v4, v0

    #@f
    .line 1427
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    #@11
    .line 1428
    const/4 v2, 0x0

    #@12
    .line 1430
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 1431
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "    "

    #@1a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v6, ": ["

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 1432
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1433
    const-string/jumbo v4, "] "

    #@32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1434
    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@38
    .line 1435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3f
    .line 1437
    if-lez v0, :cond_2

    #@41
    .line 1438
    add-int/lit8 v0, v0, -0x1

    #@43
    .line 1442
    :goto_0
    add-int/lit8 v2, v2, 0x1

    #@45
    .line 1443
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@47
    aget-object v3, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 1444
    if-eqz v3, :cond_1

    #@4b
    const/16 v4, 0x14

    #@4d
    if-lt v2, v4, :cond_0

    #@4f
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_1
    :goto_1
    monitor-exit v5

    #@50
    .line 1422
    return-void

    #@51
    .line 1440
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    #@53
    goto :goto_0

    #@54
    .line 1446
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_3
    :try_start_1
    const-string/jumbo v4, "    <none>"

    #@57
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 1423
    .end local v0    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    #@5c
    monitor-exit v5

    #@5d
    throw v4
.end method

.method public endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    #@0
    .prologue
    .line 1355
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v1

    #@3
    .line 1356
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1357
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 1354
    return-void

    #@f
    .line 1355
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    #@0
    .prologue
    .line 1363
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v0

    #@3
    .line 1364
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1363
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 1346
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v2

    #@3
    .line 1347
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@6
    move-result-object v0

    #@7
    .line 1348
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    #@9
    .line 1349
    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :cond_0
    monitor-exit v2

    #@c
    .line 1345
    return-void

    #@d
    .line 1346
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1369
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v0

    #@3
    .line 1370
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1368
    return-void

    #@8
    .line 1369
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
