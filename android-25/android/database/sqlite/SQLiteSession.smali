.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/database/sqlite/SQLiteSession;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@b
    .line 163
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .param p1, "connectionPool"    # Landroid/database/sqlite/SQLiteConnectionPool;

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    if-nez p1, :cond_0

    #@5
    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "connectionPool must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 232
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@10
    .line 227
    return-void
.end method

.method private acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 892
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3
    if-nez v1, :cond_2

    #@5
    .line 893
    sget-boolean v1, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@7
    if-nez v1, :cond_1

    #@9
    iget v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 894
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@18
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@1e
    .line 896
    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    #@20
    .line 898
    :cond_2
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@26
    .line 891
    return-void
.end method

.method private beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 5
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 305
    if-eqz p4, :cond_0

    #@3
    .line 306
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@6
    .line 309
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 310
    invoke-direct {p0, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@d
    .line 315
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@f
    if-nez v2, :cond_2

    #@11
    .line 317
    packed-switch p1, :pswitch_data_0

    #@14
    .line 327
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@16
    const-string/jumbo v3, "BEGIN;"

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 333
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    #@1f
    .line 335
    :try_start_1
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 345
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    #@25
    move-result-object v1

    #@26
    .line 346
    .local v1, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@28
    iput-object v2, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2a
    .line 347
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 349
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2e
    if-nez v2, :cond_4

    #@30
    .line 350
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@33
    .line 304
    :cond_4
    return-void

    #@34
    .line 319
    .end local v1    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@36
    const-string/jumbo v3, "BEGIN IMMEDIATE;"

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 348
    :catchall_0
    move-exception v2

    #@3f
    .line 349
    iget-object v3, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@41
    if-nez v3, :cond_5

    #@43
    .line 350
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@46
    .line 348
    :cond_5
    throw v2

    #@47
    .line 323
    :pswitch_1
    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@49
    const-string/jumbo v3, "BEGIN EXCLUSIVE;"

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@50
    goto :goto_0

    #@51
    .line 336
    :catch_0
    move-exception v0

    #@52
    .line 337
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@54
    if-nez v2, :cond_6

    #@56
    .line 338
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@58
    const-string/jumbo v3, "ROLLBACK;"

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@5f
    .line 340
    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .locals 8
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "yielding"    # Z

    #@0
    .prologue
    .line 405
    if-eqz p1, :cond_0

    #@2
    .line 406
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@5
    .line 409
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@7
    .line 410
    .local v4, "top":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    #@9
    if-nez v5, :cond_1

    #@b
    if-eqz p2, :cond_2

    #@d
    :cond_1
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    #@f
    if-eqz v5, :cond_5

    #@11
    :cond_2
    const/4 v3, 0x0

    #@12
    .line 412
    .local v3, "successful":Z
    :goto_0
    const/4 v2, 0x0

    #@13
    .line 413
    .local v2, "listenerException":Ljava/lang/RuntimeException;
    iget-object v1, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    #@15
    .line 414
    .local v1, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    if-eqz v1, :cond_3

    #@17
    .line 416
    if-eqz v3, :cond_6

    #@19
    .line 417
    :try_start_0
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 427
    .end local v2    # "listenerException":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    iget-object v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@1e
    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@20
    .line 428
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    #@23
    .line 430
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@25
    if-eqz v5, :cond_7

    #@27
    .line 431
    if-nez v3, :cond_4

    #@29
    .line 432
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2b
    const/4 v6, 0x1

    #@2c
    iput-boolean v6, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    #@2e
    .line 446
    :cond_4
    :goto_2
    if-eqz v2, :cond_9

    #@30
    .line 447
    throw v2

    #@31
    .line 410
    .end local v1    # "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local v3    # "successful":Z
    :cond_5
    const/4 v3, 0x1

    #@32
    .restart local v3    # "successful":Z
    goto :goto_0

    #@33
    .line 419
    .restart local v1    # "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local v2    # "listenerException":Ljava/lang/RuntimeException;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@36
    goto :goto_1

    #@37
    .line 421
    :catch_0
    move-exception v0

    #@38
    .line 422
    .local v0, "ex":Ljava/lang/RuntimeException;
    move-object v2, v0

    #@39
    .line 423
    .local v2, "listenerException":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    #@3a
    goto :goto_1

    #@3b
    .line 436
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "listenerException":Ljava/lang/RuntimeException;
    :cond_7
    if-eqz v3, :cond_8

    #@3d
    .line 437
    :try_start_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3f
    const-string/jumbo v6, "COMMIT;"

    #@42
    const/4 v7, 0x0

    #@43
    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 442
    :goto_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@49
    goto :goto_2

    #@4a
    .line 439
    :cond_8
    :try_start_3
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@4c
    const-string/jumbo v6, "ROLLBACK;"

    #@4f
    const/4 v7, 0x0

    #@50
    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    goto :goto_3

    #@54
    .line 441
    :catchall_0
    move-exception v5

    #@55
    .line 442
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@58
    .line 441
    throw v5

    #@59
    .line 404
    :cond_9
    return-void
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 867
    if-eqz p4, :cond_0

    #@4
    .line 868
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@7
    .line 871
    :cond_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 872
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@e
    .line 887
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 874
    :pswitch_0
    const/4 v1, 0x2

    #@11
    invoke-virtual {p0, v1, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    #@14
    .line 876
    return v2

    #@15
    .line 879
    :pswitch_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    #@18
    .line 880
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    #@1b
    .line 881
    return v2

    #@1c
    .line 884
    :pswitch_2
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    #@1f
    .line 885
    return v2

    #@20
    .line 872
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .locals 4
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 936
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@4
    .line 937
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    if-eqz v0, :cond_0

    #@6
    .line 938
    iget-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@8
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@a
    .line 939
    iput-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@c
    .line 940
    iput-boolean v3, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    #@e
    .line 941
    iput-boolean v3, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    #@10
    .line 945
    :goto_0
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    #@12
    .line 946
    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    #@14
    .line 947
    return-object v0

    #@15
    .line 943
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteSession$Transaction;

    #@17
    .end local v0    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    #@1a
    .restart local v0    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    goto :goto_0
.end method

.method private recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/database/sqlite/SQLiteSession$Transaction;

    #@0
    .prologue
    .line 951
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2
    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@4
    .line 952
    const/4 v0, 0x0

    #@5
    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    #@7
    .line 953
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@9
    .line 950
    return-void
.end method

.method private releaseConnection()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 902
    sget-boolean v2, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@5
    if-nez v2, :cond_1

    #@7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@9
    if-eqz v2, :cond_0

    #@b
    move v2, v0

    #@c
    :goto_0
    if-nez v2, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    move v2, v1

    #@15
    goto :goto_0

    #@16
    .line 903
    :cond_1
    sget-boolean v2, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@18
    if-nez v2, :cond_3

    #@1a
    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@1c
    if-lez v2, :cond_2

    #@1e
    :goto_1
    if-nez v0, :cond_3

    #@20
    new-instance v0, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v0

    #@26
    :cond_2
    move v0, v1

    #@27
    goto :goto_1

    #@28
    .line 904
    :cond_3
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    #@2e
    if-nez v0, :cond_4

    #@30
    .line 906
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@32
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@34
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 908
    iput-object v3, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@39
    .line 901
    :cond_4
    return-void

    #@3a
    .line 907
    :catchall_0
    move-exception v0

    #@3b
    .line 908
    iput-object v3, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3d
    .line 907
    throw v0
.end method

.method private throwIfNestedTransaction()V
    .locals 2

    #@0
    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 930
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this operation because a nested transaction is in progress."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 928
    :cond_0
    return-void
.end method

.method private throwIfNoTransaction()V
    .locals 2

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot perform this operation because there is no current transaction."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 913
    :cond_0
    return-void
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .locals 2

    #@0
    .prologue
    .line 921
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@6
    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 920
    :cond_0
    return-void
.end method

.method private yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .locals 9
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 526
    if-eqz p3, :cond_0

    #@3
    .line 527
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@6
    .line 530
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@8
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@a
    iget v6, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    #@c
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 531
    const/4 v4, 0x0

    #@13
    return v4

    #@14
    .line 534
    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@16
    iget v3, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    #@18
    .line 535
    .local v3, "transactionMode":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@1a
    iget-object v2, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    #@1c
    .line 536
    .local v2, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    #@1e
    .line 537
    .local v0, "connectionFlags":I
    invoke-direct {p0, p3, v7}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    #@21
    .line 539
    const-wide/16 v4, 0x0

    #@23
    cmp-long v4, p1, v4

    #@25
    if-lez v4, :cond_2

    #@27
    .line 541
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 547
    :cond_2
    :goto_0
    invoke-direct {p0, v3, v2, v0, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    #@2d
    .line 549
    return v7

    #@2e
    .line 542
    :catch_0
    move-exception v1

    #@2f
    .local v1, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 297
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    #@3
    .line 298
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    #@6
    .line 296
    return-void
.end method

.method public endTransaction(Landroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 398
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    #@4
    .line 399
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    if-nez v0, :cond_1

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    :cond_0
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 401
    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    #@1a
    .line 397
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 609
    if-nez p1, :cond_0

    #@2
    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sql must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 614
    return-void

    #@12
    .line 617
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@15
    .line 619
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@17
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 621
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@1d
    .line 608
    return-void

    #@1e
    .line 620
    :catchall_0
    move-exception v0

    #@1f
    .line 621
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@22
    .line 620
    throw v0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 710
    if-nez p1, :cond_0

    #@3
    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "sql must not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 714
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 715
    return-object v1

    #@13
    .line 718
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@16
    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@18
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v0

    #@1c
    .line 723
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@1f
    .line 720
    return-object v0

    #@20
    .line 722
    :catchall_0
    move-exception v0

    #@21
    .line 723
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@24
    .line 722
    throw v0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 744
    if-nez p1, :cond_0

    #@2
    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sql must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 748
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 749
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 752
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@16
    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@18
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v0

    #@1c
    .line 757
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@1f
    .line 754
    return v0

    #@20
    .line 756
    :catchall_0
    move-exception v0

    #@21
    .line 757
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@24
    .line 756
    throw v0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 822
    if-nez p1, :cond_0

    #@2
    .line 823
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "sql must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 825
    :cond_0
    if-nez p3, :cond_1

    #@d
    .line 826
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "window must not be null."

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 829
    :cond_1
    move/from16 v0, p7

    #@18
    move-object/from16 v1, p8

    #@1a
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 830
    invoke-virtual {p3}, Landroid/database/CursorWindow;->clear()V

    #@23
    .line 831
    const/4 v2, 0x0

    #@24
    return v2

    #@25
    .line 834
    :cond_2
    move/from16 v0, p7

    #@27
    move-object/from16 v1, p8

    #@29
    invoke-direct {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@2c
    .line 836
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@2e
    move-object v3, p1

    #@2f
    move-object v4, p2

    #@30
    move-object v5, p3

    #@31
    move v6, p4

    #@32
    move v7, p5

    #@33
    move/from16 v8, p6

    #@35
    move-object/from16 v9, p8

    #@37
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v2

    #@3b
    .line 840
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@3e
    .line 836
    return v2

    #@3f
    .line 839
    :catchall_0
    move-exception v2

    #@40
    .line 840
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@43
    .line 839
    throw v2
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 778
    if-nez p1, :cond_0

    #@2
    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sql must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 782
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 783
    const-wide/16 v0, 0x0

    #@13
    return-wide v0

    #@14
    .line 786
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@17
    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@19
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v0

    #@1d
    .line 791
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@20
    .line 788
    return-wide v0

    #@21
    .line 790
    :catchall_0
    move-exception v0

    #@22
    .line 791
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@25
    .line 790
    throw v0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 642
    if-nez p1, :cond_0

    #@2
    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sql must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 646
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 647
    const-wide/16 v0, 0x0

    #@13
    return-wide v0

    #@14
    .line 650
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@17
    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@19
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v0

    #@1d
    .line 654
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@20
    .line 652
    return-wide v0

    #@21
    .line 653
    :catchall_0
    move-exception v0

    #@22
    .line 654
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@25
    .line 653
    throw v0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 675
    if-nez p1, :cond_0

    #@3
    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "sql must not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 679
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 680
    return-object v1

    #@13
    .line 683
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@16
    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@18
    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v0

    #@1c
    .line 687
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@1f
    .line 685
    return-object v0

    #@20
    .line 686
    :catchall_0
    move-exception v0

    #@21
    .line 687
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@24
    .line 686
    throw v0
.end method

.method public hasConnection()Z
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasNestedTransaction()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 250
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@7
    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    #@0
    .prologue
    .line 578
    if-nez p1, :cond_0

    #@2
    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sql must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 582
    :cond_0
    if-eqz p3, :cond_1

    #@d
    .line 583
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@10
    .line 586
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    #@13
    .line 588
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@15
    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 590
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@1b
    .line 577
    return-void

    #@1c
    .line 589
    :catchall_0
    move-exception v0

    #@1d
    .line 590
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    #@20
    .line 589
    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 2

    #@0
    .prologue
    .line 371
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    #@3
    .line 372
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    #@6
    .line 374
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@8
    const/4 v1, 0x1

    #@9
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    #@b
    .line 370
    return-void
.end method

.method public yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .locals 3
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 504
    if-eqz p3, :cond_1

    #@3
    .line 505
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    #@6
    .line 506
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    #@9
    .line 507
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    #@c
    .line 514
    :cond_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    #@e
    if-nez v0, :cond_4

    #@10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    #@12
    if-eqz v0, :cond_3

    #@14
    const/4 v0, 0x1

    #@15
    :goto_0
    if-nez v0, :cond_4

    #@17
    new-instance v0, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 509
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@1f
    if-eqz v0, :cond_2

    #@21
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@23
    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    #@25
    if-nez v0, :cond_2

    #@27
    .line 510
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@29
    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 511
    :cond_2
    return v1

    #@2e
    :cond_3
    move v0, v1

    #@2f
    .line 514
    goto :goto_0

    #@30
    .line 516
    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    #@32
    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    #@34
    if-eqz v0, :cond_5

    #@36
    .line 517
    return v1

    #@37
    .line 520
    :cond_5
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    #@3a
    move-result v0

    #@3b
    return v0
.end method
