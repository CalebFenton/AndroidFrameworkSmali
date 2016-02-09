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
    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1295
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    #@7
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@9
    .line 1290
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
    const/4 v1, 0x0

    #@1
    .line 1368
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@4
    move-result-object v0

    #@5
    .line 1369
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_1

    #@7
    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v2

    #@b
    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    #@d
    .line 1371
    const/4 v2, 0x1

    #@e
    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@10
    .line 1372
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 1373
    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    #@16
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@18
    sub-long/2addr v2, v4

    #@19
    .line 1372
    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    #@1c
    move-result v1

    #@1d
    :cond_0
    return v1

    #@1e
    .line 1375
    :cond_1
    return v1
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    #@0
    .prologue
    .line 1394
    and-int/lit16 v0, p1, 0xff

    #@2
    .line 1395
    .local v0, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@4
    aget-object v1, v2, v0

    #@6
    .line 1396
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
    .line 1379
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@3
    move-result-object v1

    #@4
    .line 1380
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1381
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@d
    .line 1382
    if-eqz p2, :cond_0

    #@f
    .line 1383
    const-string/jumbo v2, ", "

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1385
    :cond_0
    const-string/jumbo v2, "SQLiteConnection"

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1378
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1389
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    #@6
    .line 1390
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    #@8
    or-int/2addr v1, p1

    #@9
    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1300
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v5

    #@3
    .line 1301
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@5
    add-int/lit8 v4, v4, 0x1

    #@7
    rem-int/lit8 v2, v4, 0x14

    #@9
    .line 1302
    .local v2, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@b
    aget-object v3, v4, v2

    #@d
    .line 1303
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    #@f
    .line 1304
    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    #@11
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v4, 0x0

    #@12
    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    #@15
    .line 1305
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@17
    aput-object v3, v4, v2

    #@19
    .line 1313
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c
    move-result-wide v6

    #@1d
    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@1f
    .line 1314
    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    #@21
    .line 1315
    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    #@23
    .line 1316
    if-eqz p3, :cond_4

    #@25
    .line 1317
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@27
    if-nez v4, :cond_2

    #@29
    .line 1318
    new-instance v4, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2e
    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@30
    .line 1322
    :goto_1
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_2
    array-length v4, p3

    #@32
    if-ge v1, v4, :cond_4

    #@34
    .line 1323
    aget-object v0, p3, v1

    #@36
    .line 1324
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@38
    instance-of v4, v0, [B

    #@3a
    if-eqz v4, :cond_3

    #@3c
    .line 1326
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@3e
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-get0()[B

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 1322
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_2

    #@48
    .line 1307
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@49
    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@4b
    .line 1308
    const/4 v4, 0x0

    #@4c
    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    #@4e
    .line 1309
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@50
    if-eqz v4, :cond_0

    #@52
    .line 1310
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1300
    .end local v2    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    #@59
    monitor-exit v5

    #@5a
    throw v4

    #@5b
    .line 1320
    .restart local v2    # "index":I
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@60
    goto :goto_1

    #@61
    .line 1328
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_3

    #@67
    .line 1332
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    #@6a
    move-result v4

    #@6b
    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    #@6d
    .line 1333
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@6f
    .line 1334
    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    monitor-exit v5

    #@72
    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1400
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@3
    monitor-enter v3

    #@4
    .line 1401
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@6
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@8
    aget-object v1, v2, v4

    #@a
    .line 1402
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
    .line 1407
    return-object v5

    #@12
    .line 1403
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 1404
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@18
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@1b
    .line 1405
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
    .line 1400
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
    .line 1412
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v5

    #@3
    .line 1413
    :try_start_0
    const-string/jumbo v4, "  Most recently executed operations:"

    #@6
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@9
    .line 1414
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    #@b
    .line 1415
    .local v0, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@d
    aget-object v3, v4, v0

    #@f
    .line 1416
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    #@11
    .line 1417
    const/4 v2, 0x0

    #@12
    .line 1419
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 1420
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
    .line 1421
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1422
    const-string/jumbo v4, "] "

    #@32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1423
    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    #@38
    .line 1424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3f
    .line 1426
    if-lez v0, :cond_2

    #@41
    .line 1427
    add-int/lit8 v0, v0, -0x1

    #@43
    .line 1431
    :goto_0
    add-int/lit8 v2, v2, 0x1

    #@45
    .line 1432
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@47
    aget-object v3, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 1433
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
    .line 1411
    return-void

    #@51
    .line 1429
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    #@53
    goto :goto_0

    #@54
    .line 1435
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
    .line 1412
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
    .line 1348
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v1

    #@3
    .line 1349
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1350
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 1347
    return-void

    #@f
    .line 1348
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
    .line 1356
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v0

    #@3
    .line 1357
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
    .line 1356
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
    .line 1339
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v2

    #@3
    .line 1340
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    #@6
    move-result-object v0

    #@7
    .line 1341
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    #@9
    .line 1342
    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :cond_0
    monitor-exit v2

    #@c
    .line 1338
    return-void

    #@d
    .line 1339
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
    .line 1362
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    #@2
    monitor-enter v0

    #@3
    .line 1363
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1361
    return-void

    #@8
    .line 1362
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
