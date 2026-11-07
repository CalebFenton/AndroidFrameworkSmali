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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final greylist-max-o TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final greylist-max-o TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private greylist-max-o mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private greylist-max-o mConnectionFlags:I

.field private final greylist-max-o mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private greylist-max-o mConnectionUseCount:I

.field private final blacklist mOpenDependents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private greylist-max-o mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 170
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .registers 4
    .param p1, "connectionPool"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    .line 240
    if-eqz p1, :cond_f

    .line 244
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 245
    return-void

    .line 241
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 929
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_f

    .line 930
    nop

    .line 931
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 933
    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 935
    :cond_f
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 936
    return-void
.end method

.method private greylist-max-o beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 9
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 327
    if-eqz p4, :cond_5

    .line 328
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 331
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 332
    invoke-direct {p0, v1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 333
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteSession;->modeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->recordBeginTransaction(Ljava/lang/String;)V

    .line 338
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_3d

    .line 340
    packed-switch p1, :pswitch_data_6c

    .line 355
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_38

    .line 346
    :pswitch_20
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 348
    goto :goto_3d

    .line 342
    :pswitch_28
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 344
    goto :goto_3d

    .line 350
    :pswitch_30
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN DEFERRED;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 352
    goto :goto_3d

    .line 355
    :goto_38
    const-string v2, "BEGIN;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_63

    .line 361
    :cond_3d
    :goto_3d
    if-eqz p2, :cond_51

    .line 363
    :try_start_3f
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_63

    .line 369
    goto :goto_51

    .line 364
    :catch_43
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_44
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_4f

    .line 366
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    invoke-virtual {v2, v3, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 368
    :cond_4f
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .end local p1    # "transactionMode":I
    .end local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local p3    # "connectionFlags":I
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0

    .line 373
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .restart local p1    # "transactionMode":I
    .restart local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local p3    # "connectionFlags":I
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_51
    :goto_51
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v0

    .line 374
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 375
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_63

    .line 377
    .end local v0    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_62

    .line 378
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 381
    :cond_62
    return-void

    .line 377
    :catchall_63
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v1, :cond_6b

    .line 378
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 380
    :cond_6b
    throw v0

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method private greylist-max-o endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .registers 10
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "yielding"    # Z

    .line 436
    if-eqz p1, :cond_5

    .line 437
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 440
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 441
    .local v0, "top":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v2, 0x1

    if-nez v1, :cond_e

    if-eqz p2, :cond_14

    :cond_e
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 443
    .local v1, "successful":Z
    :goto_15
    const/4 v3, 0x0

    .line 444
    .local v3, "listenerException":Ljava/lang/RuntimeException;
    iget-object v4, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 445
    .local v4, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    if-eqz v4, :cond_27

    .line 447
    if-eqz v1, :cond_20

    .line 448
    :try_start_1c
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_23

    .line 450
    :cond_20
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_23} :catch_24

    .line 455
    :goto_23
    goto :goto_27

    .line 452
    :catch_24
    move-exception v5

    .line 453
    .local v5, "ex":Ljava/lang/RuntimeException;
    move-object v3, v5

    .line 454
    const/4 v1, 0x0

    .line 458
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_27
    :goto_27
    iget-object v5, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 459
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    .line 461
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_39

    .line 462
    if-nez v1, :cond_57

    .line 463
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-boolean v2, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_57

    .line 469
    :cond_39
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->closeOpenDependents()V

    .line 472
    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 473
    :try_start_3f
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "COMMIT;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_4e

    .line 475
    :cond_47
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "ROLLBACK;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_5b

    .line 478
    :goto_4e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteConnection;->recordEndTransaction(Z)V

    .line 479
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 480
    nop

    .line 483
    :cond_57
    :goto_57
    if-nez v3, :cond_5a

    .line 486
    return-void

    .line 484
    :cond_5a
    throw v3

    .line 478
    :catchall_5b
    move-exception v2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection;->recordEndTransaction(Z)V

    .line 479
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 480
    throw v2
.end method

.method private greylist-max-o executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .registers 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 904
    if-eqz p4, :cond_5

    .line 905
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 908
    :cond_5
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 909
    .local v0, "type":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    .line 924
    const/4 v1, 0x0

    return v1

    .line 921
    :pswitch_f
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 922
    return v1

    .line 916
    :pswitch_13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 917
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 918
    return v1

    .line 911
    :pswitch_1a
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 913
    return v1

    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist modeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionMode"    # I

    .line 316
    packed-switch p1, :pswitch_data_10

    .line 320
    const-string v0, "TRANSACTION"

    return-object v0

    .line 318
    :pswitch_6
    const-string v0, "TRANSACTION-EXCLUSIVE"

    return-object v0

    .line 317
    :pswitch_9
    const-string v0, "TRANSACTION-IMMEDIATE"

    return-object v0

    .line 319
    :pswitch_c
    const-string v0, "TRANSACTION-DEFERRED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .registers 6
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 1053
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1054
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1055
    iget-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1056
    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1057
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 1058
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_17

    .line 1060
    :cond_11
    new-instance v2, Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession-IA;)V

    move-object v0, v2

    .line 1062
    :goto_17
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 1063
    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 1064
    return-object v0
.end method

.method private greylist-max-o recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1068
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 1070
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 1071
    return-void
.end method

.method private greylist-max-o releaseConnection()V
    .registers 4

    .line 939
    nop

    .line 940
    nop

    .line 941
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_19

    .line 943
    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_15

    .line 945
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 946
    goto :goto_19

    .line 945
    :catchall_15
    move-exception v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 946
    throw v1

    .line 948
    :cond_19
    :goto_19
    return-void
.end method

.method private greylist-max-o throwIfNestedTransaction()V
    .registers 3

    .line 1046
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1050
    return-void

    .line 1047
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfTransactionMarkedSuccessful()V
    .registers 3

    .line 1038
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 1039
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_13
    :goto_13
    return-void
.end method

.method private greylist-max-o yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .registers 10
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 563
    if-eqz p3, :cond_5

    .line 564
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 567
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 568
    const/4 v0, 0x0

    return v0

    .line 571
    :cond_13
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 572
    .local v0, "transactionMode":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 573
    .local v1, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 574
    .local v2, "connectionFlags":I
    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 576
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2c

    .line 578
    :try_start_27
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 581
    goto :goto_2c

    .line 579
    :catch_2b
    move-exception v4

    .line 584
    :cond_2c
    :goto_2c
    invoke-direct {p0, v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 586
    return v3
.end method


# virtual methods
.method blacklist acquirePersistentStatement(Ljava/lang/String;Ljava/io/Closeable;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "dependent"    # Ljava/io/Closeable;

    .line 958
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 959
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 960
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 962
    :try_start_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePersistentStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    return-object v0

    .line 963
    :catchall_12
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 965
    throw v0
.end method

.method public greylist beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 310
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 313
    return-void
.end method

.method blacklist closeOpenDependents()V
    .registers 3

    .line 983
    nop

    :goto_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 984
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 985
    .local v0, "dependent":Ljava/io/Closeable;
    if-eqz v0, :cond_18

    .line 987
    :try_start_13
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 990
    goto :goto_18

    .line 988
    :catch_17
    move-exception v1

    .line 991
    .end local v0    # "dependent":Ljava/io/Closeable;
    :cond_18
    :goto_18
    goto :goto_1

    .line 992
    :cond_19
    return-void
.end method

.method public greylist-max-o endTransaction(Landroid/os/CancellationSignal;)V
    .registers 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 429
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 430
    nop

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 433
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 646
    if-eqz p1, :cond_1b

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 651
    return-void

    .line 654
    :cond_9
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 656
    :try_start_c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16

    .line 658
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_16
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 659
    throw v0

    .line 647
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 747
    if-eqz p1, :cond_1c

    .line 751
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 752
    const/4 v0, 0x0

    return-object v0

    .line 755
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 757
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 760
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 757
    return-object v0

    .line 760
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 761
    throw v0

    .line 748
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 781
    if-eqz p1, :cond_1c

    .line 785
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 786
    const/4 v0, 0x0

    return v0

    .line 789
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 791
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 794
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 791
    return v0

    .line 794
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 795
    throw v0

    .line 782
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .registers 19
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 859
    move/from16 v1, p7

    move-object/from16 v9, p8

    if-eqz p1, :cond_35

    .line 862
    if-eqz p3, :cond_2c

    .line 866
    invoke-direct {p0, p1, p2, v1, v9}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 867
    invoke-virtual {p3}, Landroid/database/CursorWindow;->clear()V

    .line 868
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_13
    invoke-direct {p0, p1, v1, v9}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 873
    :try_start_16
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_27

    .line 877
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 873
    return v0

    .line 877
    :catchall_27
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 878
    throw v0

    .line 863
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 815
    if-eqz p1, :cond_1d

    .line 819
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 820
    const-wide/16 v0, 0x0

    return-wide v0

    .line 823
    :cond_b
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 825
    :try_start_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 828
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 825
    return-wide v0

    .line 828
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 829
    throw v0

    .line 816
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 679
    if-eqz p1, :cond_1d

    .line 683
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 684
    const-wide/16 v0, 0x0

    return-wide v0

    .line 687
    :cond_b
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 689
    :try_start_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 691
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 689
    return-wide v0

    .line 691
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 692
    throw v0

    .line 680
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 712
    if-eqz p1, :cond_1c

    .line 716
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 717
    const/4 v0, 0x0

    return-object v0

    .line 720
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 722
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 724
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 722
    return-object v0

    .line 724
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 725
    throw v0

    .line 713
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLastChangedRowCount()J
    .registers 3

    .line 1013
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 1014
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->getLastChangedRowCount()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getLastInsertRowId()J
    .registers 3

    .line 1003
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 1004
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->getLastInsertRowId()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTotalChangedRowCount()J
    .registers 3

    .line 1023
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 1024
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->getTotalChangedRowCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o hasConnection()Z
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasNestedTransaction()Z
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o hasTransaction()Z
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 615
    if-eqz p1, :cond_19

    .line 619
    if-eqz p3, :cond_7

    .line 620
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 623
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 625
    :try_start_a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 627
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_14
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 628
    throw v0

    .line 616
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist releasePersistentStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Ljava/io/Closeable;)V
    .registers 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "dependent"    # Ljava/io/Closeable;

    .line 974
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 975
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mOpenDependents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 976
    return-void
.end method

.method public greylist-max-o setTransactionSuccessful()V
    .registers 3

    .line 399
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 400
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 402
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 405
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->closeOpenDependents()V

    .line 406
    return-void
.end method

.method greylist-max-o throwIfNoTransaction()V
    .registers 3

    .line 1031
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_5

    .line 1035
    return-void

    .line 1032
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .registers 7
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 541
    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 542
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 543
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_1e

    .line 546
    :cond_d
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_1e

    goto :goto_2b

    .line 551
    :cond_1e
    :goto_1e
    nop

    .line 553
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v1, :cond_26

    .line 554
    return v0

    .line 557
    :cond_26
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    return v0

    .line 548
    :cond_2b
    :goto_2b
    return v0
.end method
