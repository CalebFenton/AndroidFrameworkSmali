.class public final Landroid/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;,
        Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;,
        Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final greylist-max-o CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final greylist-max-o CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final greylist-max-o CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final greylist-max-o mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/database/sqlite/SQLiteConnection;",
            "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mClosedBy:Ljava/lang/Throwable;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final greylist-max-o mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private greylist-max-o mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private blacklist mDatabaseSeqNum:J

.field private greylist-max-o mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

.field private greylist-max-o mIsOpen:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMaxConnectionPoolSize:I

.field private greylist-max-o mNextConnectionId:I

.field public blacklist mTotalPrepareStatementCacheMiss:I

.field public blacklist mTotalPrepareStatements:I

.field private final blacklist mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionHandler(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseAvailableConnectionLocked(Landroid/database/sqlite/SQLiteConnectionPool;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionLocked(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 84
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 6
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    .line 114
    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    .line 124
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabaseSeqNum:J

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 149
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 185
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 186
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 189
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_66

    .line 190
    nop

    .line 191
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 190
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->setupIdleConnectionHandler(Landroid/os/Looper;JLjava/lang/Runnable;)V

    .line 194
    :cond_66
    return-void
.end method

.method private greylist-max-o cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 5
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 834
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_2e

    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 840
    :cond_9
    const/4 v0, 0x0

    .line 841
    .local v0, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 842
    .local v1, "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_c
    if-eq v1, p1, :cond_13

    .line 843
    nop

    .line 844
    move-object v0, v1

    .line 845
    iget-object v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_c

    .line 847
    :cond_13
    if-eqz v0, :cond_1a

    .line 848
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1e

    .line 850
    :cond_1a
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 854
    :goto_1e
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    iput-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 855
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 858
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 859
    return-void

    .line 836
    .end local v0    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v1    # "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private greylist-max-o closeAvailableConnectionLocked(I)Z
    .registers 7
    .param p1, "connectionId"    # I

    .line 594
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 595
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/4 v2, 0x1

    if-ltz v1, :cond_25

    .line 596
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 597
    .local v3, "c":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 598
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 599
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    return v2

    .line 595
    .end local v3    # "c":Landroid/database/sqlite/SQLiteConnection;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 604
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 605
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v1

    if-ne v1, p1, :cond_3a

    .line 606
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 607
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 608
    return v2

    .line 610
    :cond_3a
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o closeAvailableConnectionsAndLogExceptionsLocked()V
    .registers 2

    .line 583
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 585
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_f

    .line 586
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 589
    :cond_f
    return-void
.end method

.method private greylist-max-o closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .registers 4

    .line 616
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 617
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 618
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 620
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 621
    return-void
.end method

.method private greylist-max-o closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 5
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .line 648
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->close()V

    .line 649
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v0, :cond_c

    .line 650
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionClosed(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 655
    :cond_c
    goto :goto_26

    .line 652
    :catch_d
    move-exception v0

    .line 653
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_26
    return-void
.end method

.method private greylist-max-o closeExcessConnectionsAndLogExceptionsLocked()V
    .registers 4

    .line 636
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, "availableCount":I
    :goto_6
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1b

    .line 638
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 639
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 640
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 641
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    move v0, v1

    goto :goto_6

    .line 642
    :cond_1b
    return-void
.end method

.method private greylist-max-o discardAcquiredConnectionsLocked()V
    .registers 2

    .line 660
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 661
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 7
    .param p1, "finalized"    # Z

    .line 258
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 259
    if-eqz p1, :cond_b

    .line 260
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 262
    :cond_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 265
    :cond_10
    if-nez p1, :cond_67

    .line 270
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_15
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 274
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "SQLiteConnectionPool.close()"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mClosedBy:Ljava/lang/Throwable;

    .line 276
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 278
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 279
    .local v1, "pendingCount":I
    if-eqz v1, :cond_5f

    .line 280
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been closed but there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connections in use.  They will be closed as they are released back to the pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_5f
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 287
    .end local v1    # "pendingCount":I
    monitor-exit v0

    goto :goto_67

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_15 .. :try_end_66} :catchall_64

    throw v1

    .line 289
    :cond_67
    :goto_67
    return-void
.end method

.method private greylist-max-o finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V
    .registers 6
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 1037
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1038
    .local v0, "readOnly":Z
    :goto_7
    :try_start_7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 1040
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_11} :catch_13

    .line 1046
    nop

    .line 1047
    .end local v0    # "readOnly":Z
    return-void

    .line 1041
    :catch_13
    move-exception v0

    .line 1042
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare acquired connection for session, closing it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 1045
    throw v0
.end method

.method private static greylist-max-o getPriority(I)I
    .registers 2
    .param p0, "connectionFlags"    # I

    .line 1074
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .registers 6
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    .line 1051
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1052
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_1b

    .line 1053
    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v1

    .line 1056
    .local v1, "priority":I
    :cond_8
    iget v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v1, v2, :cond_d

    .line 1057
    goto :goto_1b

    .line 1063
    :cond_d
    if-nez p1, :cond_19

    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_14

    goto :goto_19

    .line 1067
    :cond_14
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1068
    if-nez v0, :cond_8

    goto :goto_1b

    .line 1064
    :cond_19
    :goto_19
    const/4 v2, 0x1

    return v2

    .line 1070
    .end local v1    # "priority":I
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o logConnectionPoolBusyLocked(JI)V
    .registers 14
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    .line 863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 864
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v2, "The connection pool for database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const-string v2, "\' has been unable to grant a connection to thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string/jumbo v2, "with flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-float v3, p1

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 873
    .local v3, "activeConnections":I
    const/4 v4, 0x0

    .line 874
    .local v4, "idleConnections":I
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 875
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    .line 876
    .local v6, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v7

    .line 877
    .local v7, "description":Ljava/lang/String;
    if-eqz v7, :cond_89

    .line 878
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 881
    :cond_89
    add-int/lit8 v4, v4, 0x1

    .line 883
    .end local v6    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v7    # "description":Ljava/lang/String;
    :goto_8b
    goto :goto_71

    .line 885
    :cond_8c
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 886
    .local v5, "availableConnections":I
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v6, :cond_98

    .line 887
    add-int/lit8 v5, v5, 0x1

    .line 890
    :cond_98
    const-string v6, "Connections: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " idle, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e4

    .line 895
    const-string v6, "\nRequests in progress:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 897
    .local v7, "request":Ljava/lang/String;
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .end local v7    # "request":Ljava/lang/String;
    goto :goto_c8

    .line 901
    :cond_e4
    const-string v6, "SQLiteConnectionPool"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method private greylist-max-o markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .registers 7
    .param p1, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 696
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 698
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 700
    .local v0, "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 701
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 702
    .local v3, "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v3, :cond_3e

    sget-object v4, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v3, v4, :cond_3e

    .line 704
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v3    # "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_3e
    goto :goto_1d

    .line 707
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, "updateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    if-ge v2, v1, :cond_54

    .line 709
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v3, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 712
    .end local v0    # "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    .end local v1    # "updateCount":I
    .end local v2    # "i":I
    :cond_54
    return-void
.end method

.method private greylist-max-o obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .registers 11
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    .line 1117
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1118
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1119
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1120
    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_12

    .line 1122
    :cond_c
    new-instance v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Landroid/database/sqlite/SQLiteConnectionPool-IA;)V

    move-object v0, v2

    .line 1124
    :goto_12
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 1125
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 1126
    iput p4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 1127
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 1128
    iput-object p6, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 1129
    iput p7, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 1130
    return-object v0
.end method

.method public static greylist-max-o open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;
    .registers 3
    .param p0, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 214
    if-eqz p0, :cond_b

    .line 219
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 220
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open()V

    .line 221
    return-object v0

    .line 215
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o open()V
    .registers 5

    .line 228
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 231
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v2, :cond_17

    .line 233
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V

    .line 235
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_22

    .line 238
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 239
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "SQLiteConnectionPool.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 240
    return-void

    .line 235
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private greylist-max-o openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;
    .registers 5
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    .line 541
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 542
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o reconfigureAllConnectionsLocked()V
    .registers 8

    .line 666
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v1, "SQLiteConnectionPool"

    if-eqz v0, :cond_2f

    .line 668
    :try_start_6
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_d} :catch_e

    .line 674
    goto :goto_2f

    .line 669
    :catch_e
    move-exception v0

    .line 670
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconfigure available primary connection, closing it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 673
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 677
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 678
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v0, :cond_6d

    .line 679
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 681
    .local v3, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_40
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_45} :catch_46

    .line 688
    goto :goto_6a

    .line 682
    :catch_46
    move-exception v4

    .line 683
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 686
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 687
    add-int/lit8 v0, v0, -0x1

    move v2, v6

    .line 678
    .end local v3    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 691
    .end local v2    # "i":I
    :cond_6d
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 692
    return-void
.end method

.method private greylist-max-o recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .registers 6
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 462
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_25

    .line 464
    :try_start_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    .line 469
    goto :goto_25

    .line 465
    :catch_a
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to reconfigure released connection, closing it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    sget-object p2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 471
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_25
    :goto_25
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_2e

    .line 472
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 473
    const/4 v0, 0x0

    return v0

    .line 475
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 3
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1134
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 1136
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 1137
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1138
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 1139
    iget v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 1140
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1141
    return-void
.end method

.method private greylist-max-o setMaxConnectionPoolSizeLocked()V
    .registers 3

    .line 1078
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1079
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_18

    .line 1086
    :cond_15
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1088
    :goto_18
    return-void
.end method

.method private greylist-max-o throwIfClosedLocked()V
    .registers 4

    .line 1109
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-eqz v0, :cond_5

    .line 1113
    return-void

    .line 1110
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mClosedBy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private greylist-max-o tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    .line 999
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1000
    .local v0, "availableCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    if-eqz p1, :cond_28

    .line 1003
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_28

    .line 1004
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 1005
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1006
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1007
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1008
    return-object v2

    .line 1003
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1012
    .end local v1    # "i":I
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_28
    if-lez v0, :cond_38

    .line 1014
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 1015
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1016
    return-object v1

    .line 1020
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_38
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 1021
    .local v1, "openConnections":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v2, :cond_44

    .line 1022
    add-int/lit8 v1, v1, 0x1

    .line 1024
    :cond_44
    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v1, v2, :cond_4a

    .line 1025
    const/4 v2, 0x0

    return-object v2

    .line 1027
    :cond_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v2

    .line 1029
    .restart local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1030
    return-object v2
.end method

.method private greylist-max-o tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .param p1, "connectionFlags"    # I

    .line 971
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 972
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 973
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 974
    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 975
    return-object v0

    .line 979
    :cond_b
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 980
    .local v3, "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 981
    return-object v1

    .line 983
    .end local v3    # "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    :cond_28
    goto :goto_15

    .line 987
    :cond_29
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 989
    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 990
    return-object v0
.end method

.method private greylist-max-o waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .registers 23
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 717
    move-object/from16 v1, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    and-int/lit8 v0, v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_e

    move v6, v10

    goto :goto_f

    :cond_e
    move v6, v11

    .line 722
    .local v6, "wantPrimaryConnection":Z
    :goto_f
    iget-object v12, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 723
    :try_start_12
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e7

    .line 726
    if-eqz v9, :cond_20

    .line 727
    :try_start_17
    invoke-virtual {v9}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    goto :goto_20

    .line 765
    :catchall_1b
    move-exception v0

    move/from16 v18, v6

    goto/16 :goto_ea

    .line 731
    :cond_20
    :goto_20
    const/4 v0, 0x0

    .line 732
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v6, :cond_28

    .line 733
    invoke-direct/range {p0 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v2

    move-object v0, v2

    .line 736
    :cond_28
    if-nez v0, :cond_2f

    .line 737
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v2

    move-object v0, v2

    .line 739
    :cond_2f
    if-eqz v0, :cond_33

    .line 740
    monitor-exit v12
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_1b

    return-object v0

    .line 744
    :cond_33
    :try_start_33
    invoke-static {v8}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v5

    .line 745
    .local v5, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 746
    .local v3, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v2

    .line 748
    .local v2, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v7, 0x0

    .line 749
    .local v7, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v13, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_e7

    .line 750
    .local v13, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_48
    if-eqz v13, :cond_56

    .line 751
    :try_start_4a
    iget v14, v13, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v5, v14, :cond_51

    .line 752
    iput-object v13, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 753
    goto :goto_56

    .line 755
    :cond_51
    move-object v7, v13

    .line 756
    iget-object v14, v13, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v13, v14

    goto :goto_48

    .line 758
    :cond_56
    :goto_56
    if-eqz v7, :cond_5b

    .line 759
    iput-object v2, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_1b

    goto :goto_5d

    .line 761
    :cond_5b
    :try_start_5b
    iput-object v2, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 764
    :goto_5d
    iget v14, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 765
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v3    # "startTime":J
    .end local v5    # "priority":I
    .end local v7    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v13    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .local v14, "nonce":I
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_e7

    .line 768
    if-eqz v9, :cond_6a

    .line 769
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$1;

    invoke-direct {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteConnectionPool$1;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    invoke-virtual {v9, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 783
    :cond_6a
    const-wide/16 v3, 0x7530

    .line 784
    .local v3, "busyTimeoutMillis":J
    :try_start_6c
    iget-wide v12, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    add-long/2addr v12, v3

    .line 787
    .local v12, "nextBusyTimeoutTime":J
    :goto_6f
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_dd

    if-eqz v0, :cond_86

    .line 788
    :try_start_77
    iget-object v7, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_82

    .line 789
    :try_start_7a
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 790
    monitor-exit v7

    goto :goto_86

    :catchall_7f
    move-exception v0

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_7f

    .end local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v6    # "wantPrimaryConnection":Z
    .end local v14    # "nonce":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 825
    .end local v3    # "busyTimeoutMillis":J
    .end local v12    # "nextBusyTimeoutTime":J
    .restart local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v6    # "wantPrimaryConnection":Z
    .restart local v14    # "nonce":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_82
    move-exception v0

    move/from16 v18, v6

    goto :goto_e0

    .line 794
    .restart local v3    # "busyTimeoutMillis":J
    .restart local v12    # "nextBusyTimeoutTime":J
    :cond_86
    :goto_86
    const-wide/32 v15, 0xf4240

    mul-long v10, v3, v15

    :try_start_8b
    invoke-static {v1, v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 797
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 800
    iget-object v10, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_dd

    .line 801
    :try_start_94
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 803
    iget-object v11, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 804
    .local v11, "connection":Landroid/database/sqlite/SQLiteConnection;
    iget-object v15, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 805
    .local v15, "ex":Ljava/lang/RuntimeException;
    if-nez v11, :cond_c3

    if-eqz v15, :cond_a2

    move/from16 v18, v6

    goto :goto_c5

    .line 813
    :cond_a2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_d4

    .line 814
    .local v16, "now":J
    cmp-long v18, v16, v12

    if-gez v18, :cond_af

    .line 815
    sub-long v3, v16, v12

    move/from16 v18, v6

    goto :goto_bd

    .line 817
    :cond_af
    move/from16 v18, v6

    .end local v6    # "wantPrimaryConnection":Z
    .local v18, "wantPrimaryConnection":Z
    :try_start_b1
    iget-wide v5, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v5, v16, v5

    invoke-direct {v1, v5, v6, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V

    .line 818
    const-wide/16 v3, 0x7530

    .line 819
    add-long v5, v16, v3

    move-wide v12, v5

    .line 821
    .end local v11    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .end local v16    # "now":J
    :goto_bd
    monitor-exit v10

    move/from16 v6, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_6f

    .line 805
    .end local v18    # "wantPrimaryConnection":Z
    .restart local v6    # "wantPrimaryConnection":Z
    .restart local v11    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v15    # "ex":Ljava/lang/RuntimeException;
    :cond_c3
    move/from16 v18, v6

    .line 806
    .end local v6    # "wantPrimaryConnection":Z
    .restart local v18    # "wantPrimaryConnection":Z
    :goto_c5
    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 807
    if-eqz v11, :cond_d2

    .line 808
    monitor-exit v10
    :try_end_cb
    .catchall {:try_start_b1 .. :try_end_cb} :catchall_db

    .line 825
    if-eqz v9, :cond_d1

    .line 826
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 808
    :cond_d1
    return-object v11

    .line 810
    :cond_d2
    nop

    .end local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v3    # "busyTimeoutMillis":J
    .end local v12    # "nextBusyTimeoutTime":J
    .end local v14    # "nonce":I
    .end local v18    # "wantPrimaryConnection":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_d3
    throw v15

    .line 821
    .end local v11    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v3    # "busyTimeoutMillis":J
    .restart local v6    # "wantPrimaryConnection":Z
    .restart local v12    # "nextBusyTimeoutTime":J
    .restart local v14    # "nonce":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_d4
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "wantPrimaryConnection":Z
    .restart local v18    # "wantPrimaryConnection":Z
    :goto_d7
    monitor-exit v10
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_db

    .end local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v14    # "nonce":I
    .end local v18    # "wantPrimaryConnection":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_d8
    throw v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    .line 825
    .end local v3    # "busyTimeoutMillis":J
    .end local v12    # "nextBusyTimeoutTime":J
    .restart local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v14    # "nonce":I
    .restart local v18    # "wantPrimaryConnection":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_d9
    move-exception v0

    goto :goto_e0

    .line 821
    .restart local v3    # "busyTimeoutMillis":J
    .restart local v12    # "nextBusyTimeoutTime":J
    :catchall_db
    move-exception v0

    goto :goto_d7

    .line 825
    .end local v3    # "busyTimeoutMillis":J
    .end local v12    # "nextBusyTimeoutTime":J
    .end local v18    # "wantPrimaryConnection":Z
    .restart local v6    # "wantPrimaryConnection":Z
    :catchall_dd
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "wantPrimaryConnection":Z
    .restart local v18    # "wantPrimaryConnection":Z
    :goto_e0
    if-eqz v9, :cond_e6

    .line 826
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 828
    :cond_e6
    throw v0

    .line 765
    .end local v2    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v14    # "nonce":I
    .end local v18    # "wantPrimaryConnection":Z
    .restart local v6    # "wantPrimaryConnection":Z
    :catchall_e7
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "wantPrimaryConnection":Z
    .restart local v18    # "wantPrimaryConnection":Z
    :goto_ea
    :try_start_ea
    monitor-exit v12
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_ec

    throw v0

    :catchall_ec
    move-exception v0

    goto :goto_ea
.end method

.method private greylist-max-o wakeConnectionWaitersLocked()V
    .registers 9

    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 912
    .local v1, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v2, 0x0

    .line 913
    .local v2, "primaryConnectionNotAvailable":Z
    const/4 v3, 0x0

    .line 914
    .local v3, "nonPrimaryConnectionNotAvailable":Z
    :goto_5
    if-eqz v1, :cond_56

    .line 915
    const/4 v4, 0x0

    .line 916
    .local v4, "unpark":Z
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v5, :cond_e

    .line 917
    const/4 v4, 0x1

    goto :goto_3f

    .line 920
    :cond_e
    const/4 v5, 0x0

    .line 921
    .local v5, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_f
    iget-boolean v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v6, :cond_21

    if-nez v3, :cond_21

    .line 922
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v7, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v6

    move-object v5, v6

    .line 924
    if-nez v5, :cond_21

    .line 925
    const/4 v3, 0x1

    .line 928
    :cond_21
    if-nez v5, :cond_2f

    if-nez v2, :cond_2f

    .line 929
    iget v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v6

    move-object v5, v6

    .line 931
    if-nez v5, :cond_2f

    .line 932
    const/4 v2, 0x1

    .line 935
    :cond_2f
    if-eqz v5, :cond_35

    .line 936
    iput-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_33} :catch_3b

    .line 937
    const/4 v4, 0x1

    goto :goto_3a

    .line 938
    :cond_35
    if-eqz v3, :cond_3a

    if-eqz v2, :cond_3a

    .line 941
    goto :goto_56

    .line 947
    .end local v5    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_3a
    :goto_3a
    goto :goto_3f

    .line 943
    :catch_3b
    move-exception v5

    .line 945
    .local v5, "ex":Ljava/lang/RuntimeException;
    iput-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 946
    const/4 v4, 0x1

    .line 950
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :goto_3f
    iget-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 951
    .local v5, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v4, :cond_53

    .line 952
    if-eqz v0, :cond_48

    .line 953
    iput-object v5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_4a

    .line 955
    :cond_48
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 957
    :goto_4a
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 959
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_54

    .line 961
    :cond_53
    move-object v0, v1

    .line 963
    :goto_54
    move-object v1, v5

    .line 964
    .end local v4    # "unpark":Z
    .end local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_5

    .line 965
    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method public greylist-max-o acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 406
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 407
    .local v0, "con":Landroid/database/sqlite/SQLiteConnection;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v2, :cond_10

    .line 409
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionAcquired(Landroid/database/sqlite/SQLiteConnection;)V

    .line 411
    :cond_10
    monitor-exit v1

    .line 412
    return-object v0

    .line 411
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v2
.end method

.method blacklist clearAcquiredConnectionsPreparedStatementCache()V
    .registers 6

    .line 1145
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_3
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabaseSeqNum:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabaseSeqNum:J

    .line 1147
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1148
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 1149
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabaseSeqNum:J

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->setDatabaseSeqNum(J)V

    .line 1150
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_1c

    .line 1152
    :cond_2e
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 255
    return-void
.end method

.method greylist-max-o closeAvailableNonPrimaryConnectionsAndLogExceptions()V
    .registers 3

    .line 628
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 517
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_c

    .line 519
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 522
    :cond_c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 523
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 524
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_12

    .line 526
    :cond_22
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 527
    .restart local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    .line 528
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_2c

    .line 531
    :cond_3c
    new-instance v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    iget v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    sub-int v9, v0, v4

    iget v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    iget v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    const/4 v12, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIIIZ)V

    .line 534
    .local v2, "poolStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    nop

    .end local v2    # "poolStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method greylist-max-o disableIdleConnectionHandler()V
    .registers 3

    .line 1103
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    .line 1105
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;ZLandroid/util/ArraySet;)V
    .registers 14
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Printer;",
            "Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1162
    .local p3, "directories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "    "

    invoke-static {p1, v0}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object v0

    .line 1163
    .local v0, "indentedPrinter":Landroid/util/Printer;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1164
    if-eqz p3, :cond_1d

    .line 1165
    :try_start_b
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 1166
    .local v2, "parent":Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 1167
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1170
    .end local v2    # "parent":Ljava/lang/String;
    :cond_1d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLegacyCompatibilityWalEnabled()Z

    move-result v2

    .line 1171
    .local v2, "isCompatibilityWalEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Max connections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Total execution time (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Total statements executed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1176
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_d2

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Average time per statement (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1179
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1181
    :cond_d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Configuration: openFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLegacyCompatibilityWalEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", journalMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1183
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1184
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1181
    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IsReadOnlyDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1187
    if-eqz v2, :cond_156

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Compatibility WAL enabled: wal_syncmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->getWALSyncMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1191
    :cond_156
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLookasideConfigSet()Z

    move-result v3

    if-eqz v3, :cond_186

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Lookaside config: sz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1195
    :cond_186
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1ad

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Idle connection timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1199
    :cond_1ad
    const-string v3, "  Available primary connection:"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1200
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v3, :cond_1bc

    .line 1201
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v3, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    goto :goto_1c1

    .line 1203
    :cond_1bc
    const-string v3, "<none>"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1206
    :goto_1c1
    const-string v3, "  Available non-primary connections:"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1207
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e6

    .line 1208
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1209
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d5
    if-ge v4, v3, :cond_1e5

    .line 1210
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v5, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1209
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d5

    .line 1212
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_1e5
    goto :goto_1eb

    .line 1213
    :cond_1e6
    const-string v3, "<none>"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1216
    :goto_1eb
    const-string v3, "  Acquired connections:"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1217
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_233

    .line 1219
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_202
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_232

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1220
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteConnection;

    .line 1221
    .local v5, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v5, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1223
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v5    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_202

    :cond_232
    goto :goto_238

    .line 1225
    :cond_233
    const-string v3, "<none>"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1228
    :goto_238
    const-string v3, "  Connection waiters:"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1229
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz v3, :cond_29e

    .line 1230
    const/4 v3, 0x0

    .line 1231
    .local v3, "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1232
    .local v4, "now":J
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .local v6, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_248
    if-eqz v6, :cond_29d

    .line 1234
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": waited for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v6, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v8, v4, v8

    long-to-float v8, v8

    const v9, 0x3a83126f    # 0.001f

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms - thread="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", priority="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sql=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1233
    iget-object v7, v6, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_248

    .line 1240
    .end local v3    # "i":I
    .end local v4    # "now":J
    .end local v6    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_29d
    goto :goto_2a3

    .line 1241
    :cond_29e
    const-string v3, "<none>"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1243
    .end local v2    # "isCompatibilityWalEnabled":Z
    :goto_2a3
    monitor-exit v1

    .line 1244
    return-void

    .line 1243
    :catchall_2a5
    move-exception v2

    monitor-exit v1
    :try_end_2a7
    .catchall {:try_start_b .. :try_end_2a7} :catchall_2a5

    throw v2
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    throw v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 1270
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatementCacheMissRate()D
    .registers 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1249
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    if-nez v0, :cond_7

    .line 1251
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1253
    :cond_7
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    int-to-double v0, v0

    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalStatementsCount()J
    .registers 3

    .line 1261
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalStatementsTime()J
    .registers 3

    .line 1257
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasAnyAvailableNonPrimaryConnection()Z
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o onConnectionLeaked()V
    .registers 3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A SQLiteConnection object for database \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 573
    return-void
.end method

.method greylist-max-o onStatementExecuted(J)V
    .registers 4
    .param p1, "executionTimeMs"    # J

    .line 576
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 577
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 578
    return-void
.end method

.method public greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 11
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 305
    if-eqz p1, :cond_9c

    .line 309
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 312
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 314
    .local v1, "isWalCurrentMode":Z
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 316
    .local v2, "isWalNewMode":Z
    xor-int v3, v1, v2

    .line 317
    .local v3, "walModeChanged":Z
    if-eqz v3, :cond_36

    .line 320
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 329
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 330
    goto :goto_36

    .line 321
    :cond_2e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    throw v4

    .line 333
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    :cond_36
    :goto_36
    iget-boolean v4, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_42

    move v4, v7

    goto :goto_43

    :cond_42
    move v4, v6

    .line 335
    .local v4, "foreignKeyModeChanged":Z
    :goto_43
    if-eqz v4, :cond_56

    .line 339
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_56

    .line 340
    :cond_4e
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    throw v5

    .line 349
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    :cond_56
    :goto_56
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v5, v8

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_62

    move v6, v7

    .line 352
    .local v6, "onlyCompatWalChanged":Z
    :cond_62
    if-nez v6, :cond_86

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v5, v8, :cond_86

    .line 356
    if-eqz v3, :cond_71

    .line 357
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 364
    :cond_71
    invoke-direct {p0, p1, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v5

    .line 367
    .local v5, "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 368
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 370
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 371
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v7, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 372
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 373
    .end local v5    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_94

    .line 375
    :cond_86
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 376
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 378
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 379
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    .line 382
    :goto_94
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 383
    .end local v1    # "isWalCurrentMode":Z
    .end local v2    # "isWalNewMode":Z
    .end local v3    # "walModeChanged":Z
    .end local v4    # "foreignKeyModeChanged":Z
    .end local v6    # "onlyCompatWalChanged":Z
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_5 .. :try_end_9b} :catchall_99

    throw v1

    .line 306
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .line 428
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v1, :cond_c

    .line 430
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V

    .line 432
    :cond_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 433
    .local v1, "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eqz v1, :cond_4f

    .line 439
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v2, :cond_1e

    .line 440
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_4d

    .line 441
    :cond_1e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 442
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 443
    nop

    .line 444
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 446
    :cond_2d
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_4d

    .line 447
    :cond_31
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v2, v3, :cond_3f

    .line 448
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_4d

    .line 450
    :cond_3f
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 451
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_4a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 455
    .end local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :goto_4d
    monitor-exit v0

    .line 456
    return-void

    .line 434
    .restart local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_4f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    throw v2

    .line 455
    .end local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public blacklist setupIdleConnectionHandler(Landroid/os/Looper;JLjava/lang/Runnable;)V
    .registers 13
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "timeoutMs"    # J
    .param p4, "onAllConnectionsIdle"    # Ljava/lang/Runnable;

    .line 1096
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1097
    :try_start_3
    new-instance v2, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "timeoutMs":J
    .end local p4    # "onAllConnectionsIdle":Ljava/lang/Runnable;
    .local v4, "looper":Landroid/os/Looper;
    .local v5, "timeoutMs":J
    .local v7, "onAllConnectionsIdle":Ljava/lang/Runnable;
    :try_start_9
    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;JLjava/lang/Runnable;)V

    iput-object v2, v3, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    .line 1099
    monitor-exit v1

    .line 1100
    return-void

    .line 1099
    :catchall_10
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v4    # "looper":Landroid/os/Looper;
    .end local v5    # "timeoutMs":J
    .end local v7    # "onAllConnectionsIdle":Ljava/lang/Runnable;
    .restart local p1    # "looper":Landroid/os/Looper;
    .restart local p2    # "timeoutMs":J
    .restart local p4    # "onAllConnectionsIdle":Ljava/lang/Runnable;
    :catchall_13
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "timeoutMs":J
    .end local p4    # "onAllConnectionsIdle":Ljava/lang/Runnable;
    .restart local v4    # "looper":Landroid/os/Looper;
    .restart local v5    # "timeoutMs":J
    .restart local v7    # "onAllConnectionsIdle":Ljava/lang/Runnable;
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_10

    throw p1
.end method

.method public greylist-max-o shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z
    .registers 6
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 495
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 502
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_12

    .line 503
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 506
    :cond_12
    nop

    .line 507
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    .line 506
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 497
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local p2    # "connectionFlags":I
    throw v1

    .line 508
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local p2    # "connectionFlags":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnectionPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
