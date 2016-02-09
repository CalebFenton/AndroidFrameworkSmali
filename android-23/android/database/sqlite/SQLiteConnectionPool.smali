.class public final Landroid/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;,
        Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I


# direct methods
.method static synthetic -get0(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 0
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/database/sqlite/SQLiteConnectionPool;

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
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnectionPool;->-assertionsDisabled:Z

    #@b
    .line 72
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 81
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@10
    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@15
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 92
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@1e
    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    #@20
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@23
    .line 113
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@25
    .line 149
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@27
    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@2a
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2c
    .line 150
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    #@2f
    .line 148
    return-void
.end method

.method private cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@0
    .prologue
    .line 709
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    #@2
    if-nez v2, :cond_0

    #@4
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 711
    :cond_0
    return-void

    #@9
    .line 715
    :cond_1
    const/4 v1, 0x0

    #@a
    .line 716
    .local v1, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@c
    .line 717
    .end local v1    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .local v0, "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_0
    if-eq v0, p1, :cond_4

    #@e
    .line 718
    sget-boolean v2, Landroid/database/sqlite/SQLiteConnectionPool;->-assertionsDisabled:Z

    #@10
    if-nez v2, :cond_3

    #@12
    if-eqz v0, :cond_2

    #@14
    const/4 v2, 0x1

    #@15
    :goto_1
    if-nez v2, :cond_3

    #@17
    new-instance v2, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v2

    #@1d
    :cond_2
    const/4 v2, 0x0

    #@1e
    goto :goto_1

    #@1f
    .line 719
    :cond_3
    move-object v1, v0

    #@20
    .line 720
    .local v1, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@22
    goto :goto_0

    #@23
    .line 722
    .end local v1    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_4
    if-eqz v1, :cond_5

    #@25
    .line 723
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@27
    iput-object v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@29
    .line 729
    :goto_2
    new-instance v2, Landroid/os/OperationCanceledException;

    #@2b
    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    #@2e
    iput-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    #@30
    .line 730
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    #@32
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@35
    .line 733
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    #@38
    .line 708
    return-void

    #@39
    .line 725
    :cond_5
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@3b
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@3d
    goto :goto_2
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 498
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    #@4
    .line 500
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 501
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@a
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@d
    .line 502
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@f
    .line 497
    :cond_0
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    #@0
    .prologue
    .line 508
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 509
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 510
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    #@11
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@14
    .line 509
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 512
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 507
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    #@0
    .prologue
    .line 528
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 526
    :goto_0
    return-void

    #@4
    .line 529
    :catch_0
    move-exception v0

    #@5
    .line 530
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SQLiteConnectionPool"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 4

    #@0
    .prologue
    .line 517
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 518
    .local v0, "availableCount":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    #@8
    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    if-le v0, v3, :cond_0

    #@e
    .line 520
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    #@16
    .line 521
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@19
    move v0, v1

    #@1a
    .end local v1    # "availableCount":I
    .restart local v0    # "availableCount":I
    goto :goto_0

    #@1b
    .line 516
    .end local v0    # "availableCount":I
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v1    # "availableCount":I
    :cond_0
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .locals 1

    #@0
    .prologue
    .line 537
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@2
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    #@5
    .line 536
    return-void
.end method

.method private dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    #@0
    .prologue
    .line 209
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 210
    if-eqz p1, :cond_0

    #@6
    .line 211
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@8
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@b
    .line 213
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@d
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@10
    .line 216
    :cond_1
    if-nez p1, :cond_3

    #@12
    .line 221
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@14
    monitor-enter v2

    #@15
    .line 222
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    #@18
    .line 224
    const/4 v1, 0x0

    #@19
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@1b
    .line 226
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    #@1e
    .line 228
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@20
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    #@23
    move-result v0

    #@24
    .line 229
    .local v0, "pendingCount":I
    if-eqz v0, :cond_2

    #@26
    .line 230
    const-string/jumbo v1, "SQLiteConnectionPool"

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "The connection pool for "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@37
    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 231
    const-string/jumbo v4, " has been closed but there are still "

    #@40
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 232
    const-string/jumbo v4, " connections in use.  They will be closed "

    #@4b
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 233
    const-string/jumbo v4, "as they are released back to the pool."

    #@52
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 236
    :cond_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    monitor-exit v2

    #@61
    .line 208
    .end local v0    # "pendingCount":I
    :cond_3
    return-void

    #@62
    .line 221
    :catchall_0
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1
.end method

.method private finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V
    .locals 5
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    #@0
    .prologue
    .line 908
    and-int/lit8 v2, p2, 0x1

    #@2
    if-eqz v2, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 909
    .local v1, "readOnly":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    #@8
    .line 911
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@a
    sget-object v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@c
    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 906
    return-void

    #@10
    .line 908
    .end local v1    # "readOnly":Z
    :cond_0
    const/4 v1, 0x0

    #@11
    .restart local v1    # "readOnly":Z
    goto :goto_0

    #@12
    .line 912
    :catch_0
    move-exception v0

    #@13
    .line 913
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SQLiteConnectionPool"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Failed to prepare acquired connection for session, closing it: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 914
    const-string/jumbo v4, ", connectionFlags="

    #@29
    .line 913
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 915
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@3b
    .line 916
    throw v0
.end method

.method private static getPriority(I)I
    .locals 2
    .param p0, "connectionFlags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 945
    and-int/lit8 v1, p0, 0x4

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 3
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    #@0
    .prologue
    .line 922
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@2
    .line 923
    .local v1, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v1, :cond_0

    #@4
    .line 924
    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    #@7
    move-result v0

    #@8
    .line 927
    .local v0, "priority":I
    :goto_0
    iget v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    #@a
    if-le v0, v2, :cond_1

    #@c
    .line 941
    .end local v0    # "priority":I
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 934
    .restart local v0    # "priority":I
    :cond_1
    if-nez p1, :cond_2

    #@10
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 938
    iget-object v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@16
    .line 939
    if-eqz v1, :cond_0

    #@18
    goto :goto_0

    #@19
    .line 935
    :cond_2
    const/4 v2, 0x1

    #@1a
    return v2
.end method

.method private logConnectionPoolBusyLocked(JI)V
    .locals 17
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    #@0
    .prologue
    .line 738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v12

    #@4
    .line 739
    .local v12, "thread":Ljava/lang/Thread;
    new-instance v8, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 740
    .local v8, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v13, "The connection pool for database \'"

    #@c
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v13

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@14
    iget-object v14, v14, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@16
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 741
    const-string/jumbo v13, "\' has been unable to grant a connection to thread "

    #@1c
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 742
    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    #@22
    move-result-wide v14

    #@23
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v13

    #@27
    const-string/jumbo v14, " ("

    #@2a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v13

    #@2e
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@31
    move-result-object v14

    #@32
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v13

    #@36
    const-string/jumbo v14, ") "

    #@39
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 743
    const-string/jumbo v13, "with flags 0x"

    #@3f
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v13

    #@43
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@46
    move-result-object v14

    #@47
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 744
    const-string/jumbo v13, " for "

    #@4d
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v13

    #@51
    move-wide/from16 v0, p1

    #@53
    long-to-float v14, v0

    #@54
    const v15, 0x3a83126f    # 0.001f

    #@57
    mul-float/2addr v14, v15

    #@58
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v13

    #@5c
    const-string/jumbo v14, " seconds.\n"

    #@5f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 746
    new-instance v11, Ljava/util/ArrayList;

    #@64
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@67
    .line 747
    .local v11, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@68
    .line 748
    .local v2, "activeConnections":I
    const/4 v7, 0x0

    #@69
    .line 749
    .local v7, "idleConnections":I
    move-object/from16 v0, p0

    #@6b
    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@6d
    invoke-virtual {v13}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@70
    move-result v13

    #@71
    if-nez v13, :cond_1

    #@73
    .line 750
    move-object/from16 v0, p0

    #@75
    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@77
    invoke-virtual {v13}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@7a
    move-result-object v13

    #@7b
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v5

    #@7f
    .local v5, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v13

    #@83
    if-eqz v13, :cond_1

    #@85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v4

    #@89
    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    #@8b
    .line 751
    .local v4, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    .line 752
    .local v6, "description":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@91
    .line 753
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@94
    .line 754
    add-int/lit8 v2, v2, 0x1

    #@96
    goto :goto_0

    #@97
    .line 756
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@99
    goto :goto_0

    #@9a
    .line 760
    .end local v4    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v5    # "connection$iterator":Ljava/util/Iterator;
    .end local v6    # "description":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@9c
    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v3

    #@a2
    .line 761
    .local v3, "availableConnections":I
    move-object/from16 v0, p0

    #@a4
    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@a6
    if-eqz v13, :cond_2

    #@a8
    .line 762
    add-int/lit8 v3, v3, 0x1

    #@aa
    .line 765
    :cond_2
    const-string/jumbo v13, "Connections: "

    #@ad
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v13

    #@b1
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v13

    #@b5
    const-string/jumbo v14, " active, "

    #@b8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    .line 766
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v13

    #@bf
    const-string/jumbo v14, " idle, "

    #@c2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 767
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v13

    #@c9
    const-string/jumbo v14, " available.\n"

    #@cc
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 769
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    #@d2
    move-result v13

    #@d3
    if-nez v13, :cond_3

    #@d5
    .line 770
    const-string/jumbo v13, "\nRequests in progress:\n"

    #@d8
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 771
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v10

    #@df
    .local v10, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v13

    #@e3
    if-eqz v13, :cond_3

    #@e5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e8
    move-result-object v9

    #@e9
    check-cast v9, Ljava/lang/String;

    #@eb
    .line 772
    .local v9, "request":Ljava/lang/String;
    const-string/jumbo v13, "  "

    #@ee
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v13

    #@f2
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v13

    #@f6
    const-string/jumbo v14, "\n"

    #@f9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    goto :goto_1

    #@fd
    .line 776
    .end local v9    # "request":Ljava/lang/String;
    .end local v10    # "request$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v13, "SQLiteConnectionPool"

    #@100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v14

    #@104
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    .line 737
    return-void
.end method

.method private markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 8
    .param p1, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@0
    .prologue
    .line 572
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v6}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@5
    move-result v6

    #@6
    if-nez v6, :cond_2

    #@8
    .line 573
    new-instance v3, Ljava/util/ArrayList;

    #@a
    .line 574
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@c
    invoke-virtual {v6}, Ljava/util/WeakHashMap;->size()I

    #@f
    move-result v6

    #@10
    .line 573
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 576
    .local v3, "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@15
    invoke-virtual {v6}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    #@18
    move-result-object v6

    #@19
    .line 575
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/Map$Entry;

    #@29
    .line 577
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@2f
    .line 578
    .local v4, "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v4, :cond_0

    #@31
    .line 579
    sget-object v6, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@33
    if-eq v4, v6, :cond_0

    #@35
    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    #@3b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 583
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v4    # "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v5

    #@43
    .line 584
    .local v5, "updateCount":I
    const/4 v2, 0x0

    #@44
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    #@46
    .line 585
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    #@4e
    invoke-virtual {v7, v6, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 584
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_1

    #@54
    .line 571
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    .end local v5    # "updateCount":I
    :cond_2
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 969
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@3
    .line 970
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_0

    #@5
    .line 971
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@7
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@9
    .line 972
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@b
    .line 976
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    #@d
    .line 977
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    #@f
    .line 978
    iput p4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    #@11
    .line 979
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    #@13
    .line 980
    iput-object p6, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    #@15
    .line 981
    iput p7, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    #@17
    .line 982
    return-object v0

    #@18
    .line 974
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@1a
    .end local v0    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    #@1d
    .restart local v0    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_0
.end method

.method public static open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;
    .locals 3
    .param p0, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@0
    .prologue
    .line 171
    if-nez p0, :cond_0

    #@2
    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "configuration must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 176
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    #@d
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@10
    .line 177
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open()V

    #@13
    .line 178
    return-object v0
.end method

.method private open()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 185
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@3
    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@9
    .line 189
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@b
    .line 190
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@d
    const-string/jumbo v1, "close"

    #@10
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@13
    .line 182
    return-void
.end method

.method private openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;
    .locals 2
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    #@6
    .line 463
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method private reconfigureAllConnectionsLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 542
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 544
    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@7
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@9
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 553
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v1

    #@12
    .line 554
    .local v1, "count":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    move v4, v3

    #@14
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    #@16
    .line 555
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    #@1e
    .line 557
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@20
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@23
    move v3, v4

    #@24
    .line 554
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@26
    move v4, v3

    #@27
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@28
    .line 545
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v1    # "count":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    #@29
    .line 546
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SQLiteConnectionPool"

    #@2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v7, "Failed to reconfigure available primary connection, closing it: "

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 547
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3a
    .line 546
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 548
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@47
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@4a
    .line 549
    iput-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@4c
    goto :goto_0

    #@4d
    .line 558
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    #@4e
    .line 559
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SQLiteConnectionPool"

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "Failed to reconfigure available non-primary connection, closing it: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 561
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@6b
    .line 562
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@6d
    add-int/lit8 v3, v4, -0x1

    #@6f
    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@72
    .line 563
    add-int/lit8 v1, v1, -0x1

    #@74
    goto :goto_2

    #@75
    .line 567
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    sget-object v5, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@77
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    #@7a
    .line 541
    return-void
.end method

.method private recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@0
    .prologue
    .line 394
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@6
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 403
    :cond_0
    :goto_0
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@b
    if-ne p2, v1, :cond_1

    #@d
    .line 404
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@10
    .line 405
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 397
    :catch_0
    move-exception v0

    #@13
    .line 398
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SQLiteConnectionPool"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Failed to reconfigure released connection, closing it: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 400
    sget-object p2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@2f
    goto :goto_0

    #@30
    .line 407
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    #@31
    return v1
.end method

.method private recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 2
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 986
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@3
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@5
    .line 987
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    #@7
    .line 988
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    #@9
    .line 989
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    #@b
    .line 990
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    #@d
    .line 991
    iget v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    #@13
    .line 992
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@15
    .line 985
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked()V
    .locals 2

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@4
    const/high16 v1, 0x20000000

    #@6
    and-int/2addr v0, v1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 950
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@f
    .line 948
    :goto_0
    return-void

    #@10
    .line 956
    :cond_0
    const/4 v0, 0x1

    #@11
    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@13
    goto :goto_0
.end method

.method private throwIfClosedLocked()V
    .locals 2

    #@0
    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 962
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot perform this operation because the connection pool has been closed."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 960
    :cond_0
    return-void
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 871
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 872
    .local v0, "availableCount":I
    const/4 v4, 0x1

    #@9
    if-le v0, v4, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 875
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@10
    .line 876
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    #@18
    .line 877
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 878
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 879
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    #@26
    .line 880
    return-object v1

    #@27
    .line 875
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 884
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "i":I
    :cond_1
    if-lez v0, :cond_2

    #@2c
    .line 886
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@2e
    add-int/lit8 v5, v0, -0x1

    #@30
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    #@36
    .line 887
    .restart local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    #@39
    .line 888
    return-object v1

    #@3a
    .line 892
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@3c
    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    #@3f
    move-result v3

    #@40
    .line 893
    .local v3, "openConnections":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 894
    add-int/lit8 v3, v3, 0x1

    #@46
    .line 896
    :cond_3
    iget v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@48
    if-lt v3, v4, :cond_4

    #@4a
    .line 897
    return-object v5

    #@4b
    .line 899
    :cond_4
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@4d
    invoke-direct {p0, v4, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    #@50
    move-result-object v1

    #@51
    .line 901
    .restart local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    #@54
    .line 902
    return-object v1
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    .locals 5
    .param p1, "connectionFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 844
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@3
    .line 845
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-eqz v2, :cond_0

    #@5
    .line 846
    iput-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@7
    .line 847
    invoke-direct {p0, v2, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    #@a
    .line 848
    return-object v2

    #@b
    .line 852
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "acquiredConnection$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    #@21
    .line 853
    .local v0, "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 854
    return-object v4

    #@28
    .line 860
    .end local v0    # "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2a
    .line 861
    const/4 v4, 0x1

    #@2b
    .line 860
    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    #@2e
    move-result-object v2

    #@2f
    .line 862
    invoke-direct {p0, v2, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    #@32
    .line 863
    return-object v2
.end method

.method private waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 25
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 594
    and-int/lit8 v4, p2, 0x2

    #@2
    if-eqz v4, :cond_3

    #@4
    const/4 v9, 0x1

    #@5
    .line 598
    .local v9, "wantPrimaryConnection":Z
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@9
    move-object/from16 v24, v0

    #@b
    monitor-enter v24

    #@c
    .line 599
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    #@f
    .line 602
    if-eqz p3, :cond_0

    #@11
    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@14
    .line 607
    :cond_0
    const/4 v14, 0x0

    #@15
    .line 608
    .local v14, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v9, :cond_1

    #@17
    .line 609
    invoke-direct/range {p0 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    #@1a
    move-result-object v14

    #@1b
    .line 612
    .end local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_1
    if-nez v14, :cond_2

    #@1d
    .line 613
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, p2

    #@21
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v14

    #@25
    .line 615
    :cond_2
    if-eqz v14, :cond_4

    #@27
    monitor-exit v24

    #@28
    .line 616
    return-object v14

    #@29
    .line 594
    .end local v9    # "wantPrimaryConnection":Z
    :cond_3
    const/4 v9, 0x0

    #@2a
    .restart local v9    # "wantPrimaryConnection":Z
    goto :goto_0

    #@2b
    .line 620
    :cond_4
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    #@2e
    move-result v8

    #@2f
    .line 621
    .local v8, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@32
    move-result-wide v6

    #@33
    .line 622
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@36
    move-result-object v5

    #@37
    move-object/from16 v4, p0

    #@39
    move-object/from16 v10, p1

    #@3b
    move/from16 v11, p2

    #@3d
    invoke-direct/range {v4 .. v11}, Landroid/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@40
    move-result-object v23

    #@41
    .line 624
    .local v23, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/16 v19, 0x0

    #@43
    .line 625
    .local v19, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@47
    move-object/from16 v22, v0

    #@49
    .line 626
    .end local v19    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .local v22, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_1
    if-eqz v22, :cond_5

    #@4b
    .line 627
    move-object/from16 v0, v22

    #@4d
    iget v4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    #@4f
    if-le v8, v4, :cond_a

    #@51
    .line 628
    move-object/from16 v0, v22

    #@53
    move-object/from16 v1, v23

    #@55
    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@57
    .line 634
    :cond_5
    if-eqz v19, :cond_b

    #@59
    .line 635
    move-object/from16 v0, v23

    #@5b
    move-object/from16 v1, v19

    #@5d
    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@5f
    .line 640
    :goto_2
    move-object/from16 v0, v23

    #@61
    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    #@63
    move/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .local v18, "nonce":I
    monitor-exit v24

    #@66
    .line 644
    if-eqz p3, :cond_6

    #@68
    .line 645
    new-instance v4, Landroid/database/sqlite/SQLiteConnectionPool$1;

    #@6a
    move-object/from16 v0, p0

    #@6c
    move-object/from16 v1, v23

    #@6e
    move/from16 v2, v18

    #@70
    invoke-direct {v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$1;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    #@73
    move-object/from16 v0, p3

    #@75
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@78
    .line 659
    :cond_6
    const-wide/16 v12, 0x7530

    #@7a
    .line 660
    .local v12, "busyTimeoutMillis":J
    :try_start_2
    move-object/from16 v0, v23

    #@7c
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    #@7e
    .line 659
    const-wide/16 v10, 0x7530

    #@80
    .line 660
    add-long v16, v4, v10

    #@82
    .line 663
    .local v16, "nextBusyTimeoutTime":J
    :goto_3
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@86
    const/4 v5, 0x1

    #@87
    const/4 v10, 0x0

    #@88
    invoke-virtual {v4, v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_7

    #@8e
    .line 664
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@92
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@93
    .line 665
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@96
    :try_start_4
    monitor-exit v4

    #@97
    .line 670
    :cond_7
    const-wide/32 v4, 0xf4240

    #@9a
    mul-long/2addr v4, v12

    #@9b
    move-object/from16 v0, p0

    #@9d
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@a0
    .line 673
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@a3
    .line 676
    move-object/from16 v0, p0

    #@a5
    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@a7
    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@a8
    .line 677
    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    #@ab
    .line 679
    move-object/from16 v0, v23

    #@ad
    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    #@af
    .line 680
    .local v14, "connection":Landroid/database/sqlite/SQLiteConnection;
    move-object/from16 v0, v23

    #@b1
    iget-object v15, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    #@b3
    .line 681
    .local v15, "ex":Ljava/lang/RuntimeException;
    if-nez v14, :cond_8

    #@b5
    if-eqz v15, :cond_e

    #@b7
    .line 682
    :cond_8
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v23

    #@bb
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@be
    .line 683
    if-eqz v14, :cond_d

    #@c0
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@c1
    .line 701
    if-eqz p3, :cond_9

    #@c3
    .line 702
    const/4 v4, 0x0

    #@c4
    move-object/from16 v0, p3

    #@c6
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@c9
    .line 684
    :cond_9
    return-object v14

    #@ca
    .line 631
    .end local v12    # "busyTimeoutMillis":J
    .end local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .end local v16    # "nextBusyTimeoutTime":J
    .end local v18    # "nonce":I
    :cond_a
    move-object/from16 v19, v22

    #@cc
    .line 632
    .local v19, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_start_7
    move-object/from16 v0, v22

    #@ce
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@d0
    move-object/from16 v22, v0

    #@d2
    goto/16 :goto_1

    #@d4
    .line 637
    .end local v19    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_b
    move-object/from16 v0, v23

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@da
    goto :goto_2

    #@db
    .line 598
    .end local v6    # "startTime":J
    .end local v8    # "priority":I
    .end local v22    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v23    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_0
    move-exception v4

    #@dc
    monitor-exit v24

    #@dd
    throw v4

    #@de
    .line 664
    .restart local v6    # "startTime":J
    .restart local v8    # "priority":I
    .restart local v12    # "busyTimeoutMillis":J
    .restart local v16    # "nextBusyTimeoutTime":J
    .restart local v18    # "nonce":I
    .restart local v22    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v23    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_1
    move-exception v5

    #@df
    :try_start_8
    monitor-exit v4

    #@e0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@e1
    .line 699
    .end local v16    # "nextBusyTimeoutTime":J
    :catchall_2
    move-exception v4

    #@e2
    .line 701
    if-eqz p3, :cond_c

    #@e4
    .line 702
    const/4 v5, 0x0

    #@e5
    move-object/from16 v0, p3

    #@e7
    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@ea
    .line 699
    :cond_c
    throw v4

    #@eb
    .line 686
    .restart local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v15    # "ex":Ljava/lang/RuntimeException;
    .restart local v16    # "nextBusyTimeoutTime":J
    :cond_d
    :try_start_9
    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@ec
    .line 676
    .end local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    :catchall_3
    move-exception v4

    #@ed
    :try_start_a
    monitor-exit v5

    #@ee
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@ef
    .line 689
    .restart local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v15    # "ex":Ljava/lang/RuntimeException;
    :cond_e
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@f2
    move-result-wide v20

    #@f3
    .line 690
    .local v20, "now":J
    cmp-long v4, v20, v16

    #@f5
    if-gez v4, :cond_f

    #@f7
    .line 691
    sub-long v12, v20, v16

    #@f9
    :goto_4
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@fa
    goto :goto_3

    #@fb
    .line 693
    :cond_f
    :try_start_d
    move-object/from16 v0, v23

    #@fd
    iget-wide v10, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    #@ff
    sub-long v10, v20, v10

    #@101
    move-object/from16 v0, p0

    #@103
    move/from16 v1, p2

    #@105
    invoke-direct {v0, v10, v11, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@108
    .line 694
    const-wide/16 v12, 0x7530

    #@10a
    const-wide/16 v10, 0x7530

    #@10c
    .line 695
    add-long v16, v20, v10

    #@10e
    goto :goto_4
.end method

.method private wakeConnectionWaitersLocked()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 784
    const/4 v3, 0x0

    #@2
    .line 785
    .local v3, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@4
    .line 786
    .local v7, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v4, 0x0

    #@5
    .line 787
    .local v4, "primaryConnectionNotAvailable":Z
    const/4 v2, 0x0

    #@6
    .line 788
    .end local v3    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .local v2, "nonPrimaryConnectionNotAvailable":Z
    :goto_0
    if-eqz v7, :cond_7

    #@8
    .line 789
    const/4 v6, 0x0

    #@9
    .line 790
    .local v6, "unpark":Z
    iget-boolean v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@b
    if-nez v8, :cond_1

    #@d
    .line 791
    const/4 v6, 0x1

    #@e
    .line 824
    :cond_0
    :goto_1
    iget-object v5, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@10
    .line 825
    .local v5, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v6, :cond_9

    #@12
    .line 826
    if-eqz v3, :cond_8

    #@14
    .line 827
    iput-object v5, v3, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@16
    .line 831
    :goto_2
    iput-object v10, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@18
    .line 833
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    #@1a
    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@1d
    .line 837
    :goto_3
    move-object v7, v5

    #@1e
    goto :goto_0

    #@1f
    .line 794
    .end local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_1
    const/4 v0, 0x0

    #@20
    .line 795
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    iget-boolean v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    #@22
    if-nez v8, :cond_2

    #@24
    if-eqz v2, :cond_4

    #@26
    .line 802
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    :goto_4
    if-nez v0, :cond_3

    #@28
    if-eqz v4, :cond_5

    #@2a
    .line 809
    :cond_3
    :goto_5
    if-eqz v0, :cond_6

    #@2c
    .line 810
    iput-object v0, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    #@2e
    .line 811
    const/4 v6, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 797
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_4
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    #@32
    iget v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    #@34
    .line 796
    invoke-direct {p0, v8, v9}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    #@37
    move-result-object v0

    #@38
    .line 798
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v0, :cond_2

    #@3a
    .line 799
    const/4 v2, 0x1

    #@3b
    goto :goto_4

    #@3c
    .line 804
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_5
    iget v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    #@3e
    .line 803
    invoke-direct {p0, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v0

    #@42
    .line 805
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v0, :cond_3

    #@44
    .line 806
    const/4 v4, 0x1

    #@45
    goto :goto_5

    #@46
    .line 812
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_6
    if-eqz v2, :cond_0

    #@48
    if-eqz v4, :cond_0

    #@4a
    .line 780
    .end local v6    # "unpark":Z
    :cond_7
    return-void

    #@4b
    .line 817
    .restart local v6    # "unpark":Z
    :catch_0
    move-exception v1

    #@4c
    .line 819
    .local v1, "ex":Ljava/lang/RuntimeException;
    iput-object v1, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    #@4e
    .line 820
    const/4 v6, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 829
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_8
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@52
    goto :goto_2

    #@53
    .line 835
    :cond_9
    move-object v3, v7

    #@54
    .local v3, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_3
.end method


# virtual methods
.method public acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    #@4
    .line 204
    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 444
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 445
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 446
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@9
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    #@c
    .line 449
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    #@1e
    .line 450
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 444
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2

    #@25
    .line 453
    .restart local v1    # "connection$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@27
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    #@3b
    .line 454
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_1

    #@3f
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    monitor-exit v3

    #@40
    .line 443
    return-void
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 16
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 1002
    const-string/jumbo v11, "    "

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v11}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    #@8
    move-result-object v7

    #@9
    .line 1003
    .local v7, "indentedPrinter":Landroid/util/Printer;
    move-object/from16 v0, p0

    #@b
    iget-object v12, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v12

    #@e
    .line 1004
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v13, "Connection pool for "

    #@16
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v11

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1e
    iget-object v13, v13, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@20
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v11

    #@24
    const-string/jumbo v13, ":"

    #@27
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v11

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@34
    .line 1005
    new-instance v11, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v13, "  Open: "

    #@3c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v11

    #@40
    move-object/from16 v0, p0

    #@42
    iget-boolean v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@44
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v11

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@51
    .line 1006
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v13, "  Max connections: "

    #@59
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget v13, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@61
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6e
    .line 1008
    const-string/jumbo v11, "  Available primary connection:"

    #@71
    move-object/from16 v0, p1

    #@73
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@76
    .line 1009
    move-object/from16 v0, p0

    #@78
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@7a
    if-eqz v11, :cond_0

    #@7c
    .line 1010
    move-object/from16 v0, p0

    #@7e
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@80
    move/from16 v0, p2

    #@82
    invoke-virtual {v11, v7, v0}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    #@85
    .line 1015
    :goto_0
    const-string/jumbo v11, "  Available non-primary connections:"

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@8d
    .line 1016
    move-object/from16 v0, p0

    #@8f
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    #@94
    move-result v11

    #@95
    if-nez v11, :cond_1

    #@97
    .line 1017
    move-object/from16 v0, p0

    #@99
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result v3

    #@9f
    .line 1018
    .local v3, "count":I
    const/4 v6, 0x0

    #@a0
    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    #@a2
    .line 1019
    move-object/from16 v0, p0

    #@a4
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v11

    #@aa
    check-cast v11, Landroid/database/sqlite/SQLiteConnection;

    #@ac
    move/from16 v0, p2

    #@ae
    invoke-virtual {v11, v7, v0}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    #@b1
    .line 1018
    add-int/lit8 v6, v6, 0x1

    #@b3
    goto :goto_1

    #@b4
    .line 1012
    .end local v3    # "count":I
    .end local v6    # "i":I
    :cond_0
    const-string/jumbo v11, "<none>"

    #@b7
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ba
    goto :goto_0

    #@bb
    .line 1003
    :catchall_0
    move-exception v11

    #@bc
    monitor-exit v12

    #@bd
    throw v11

    #@be
    .line 1022
    :cond_1
    :try_start_1
    const-string/jumbo v11, "<none>"

    #@c1
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@c4
    .line 1025
    :cond_2
    const-string/jumbo v11, "  Acquired connections:"

    #@c7
    move-object/from16 v0, p1

    #@c9
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@cc
    .line 1026
    move-object/from16 v0, p0

    #@ce
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@d0
    invoke-virtual {v11}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@d3
    move-result v11

    #@d4
    if-nez v11, :cond_3

    #@d6
    .line 1028
    move-object/from16 v0, p0

    #@d8
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@da
    invoke-virtual {v11}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    #@dd
    move-result-object v11

    #@de
    .line 1027
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e1
    move-result-object v5

    #@e2
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e5
    move-result v11

    #@e6
    if-eqz v11, :cond_4

    #@e8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@eb
    move-result-object v4

    #@ec
    check-cast v4, Ljava/util/Map$Entry;

    #@ee
    .line 1029
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f1
    move-result-object v2

    #@f2
    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    #@f4
    .line 1030
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    move/from16 v0, p2

    #@f6
    invoke-virtual {v2, v7, v0}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    #@f9
    .line 1031
    new-instance v11, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v13, "  Status: "

    #@101
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v11

    #@105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@108
    move-result-object v13

    #@109
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v11

    #@10d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v11

    #@111
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@114
    goto :goto_2

    #@115
    .line 1034
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v11, "<none>"

    #@118
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@11b
    .line 1037
    :cond_4
    const-string/jumbo v11, "  Connection waiters:"

    #@11e
    move-object/from16 v0, p1

    #@120
    invoke-interface {v0, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@123
    .line 1038
    move-object/from16 v0, p0

    #@125
    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@127
    if-eqz v11, :cond_5

    #@129
    .line 1039
    const/4 v6, 0x0

    #@12a
    .line 1040
    .restart local v6    # "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12d
    move-result-wide v8

    #@12e
    .line 1041
    .local v8, "now":J
    move-object/from16 v0, p0

    #@130
    iget-object v10, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@132
    .local v10, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_3
    if-eqz v10, :cond_6

    #@134
    .line 1043
    new-instance v11, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v11

    #@13d
    const-string/jumbo v13, ": waited for "

    #@140
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v11

    #@144
    .line 1044
    iget-wide v14, v10, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    #@146
    sub-long v14, v8, v14

    #@148
    long-to-float v13, v14

    #@149
    const v14, 0x3a83126f    # 0.001f

    #@14c
    mul-float/2addr v13, v14

    #@14d
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@150
    move-result-object v11

    #@151
    .line 1045
    const-string/jumbo v13, " ms - thread="

    #@154
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v11

    #@158
    .line 1045
    iget-object v13, v10, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    #@15a
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v11

    #@15e
    .line 1046
    const-string/jumbo v13, ", priority="

    #@161
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v11

    #@165
    .line 1046
    iget v13, v10, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    #@167
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v11

    #@16b
    .line 1047
    const-string/jumbo v13, ", sql=\'"

    #@16e
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v11

    #@172
    .line 1047
    iget-object v13, v10, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    #@174
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v11

    #@178
    .line 1047
    const-string/jumbo v13, "\'"

    #@17b
    .line 1043
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v11

    #@17f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v11

    #@183
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@186
    .line 1042
    iget-object v10, v10, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    #@188
    add-int/lit8 v6, v6, 0x1

    #@18a
    goto :goto_3

    #@18b
    .line 1050
    .end local v6    # "i":I
    .end local v8    # "now":J
    .end local v10    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_5
    const-string/jumbo v11, "<none>"

    #@18e
    invoke-interface {v7, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@191
    :cond_6
    monitor-exit v12

    #@192
    .line 1001
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 154
    return-void

    #@8
    .line 157
    :catchall_0
    move-exception v0

    #@9
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 157
    throw v0
.end method

.method onConnectionLeaked()V
    .locals 3

    #@0
    .prologue
    .line 488
    const-string/jumbo v0, "SQLiteConnectionPool"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "A SQLiteConnection object for database \'"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 489
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@11
    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@13
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 489
    const-string/jumbo v2, "\' was leaked!  Please fix your application "

    #@1a
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 490
    const-string/jumbo v2, "to end transactions in progress properly and to close the database "

    #@21
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 491
    const-string/jumbo v2, "when it is no longer needed."

    #@28
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 493
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@35
    const/4 v1, 0x1

    #@36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@39
    .line 467
    return-void
.end method

.method public reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 6
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@0
    .prologue
    .line 255
    if-nez p1, :cond_0

    #@2
    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "configuration must not be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 259
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    #@11
    .line 262
    iget v3, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@13
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@15
    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@17
    xor-int/2addr v3, v5

    #@18
    .line 263
    const/high16 v5, 0x20000000

    #@1a
    .line 262
    and-int/2addr v3, v5

    #@1b
    if-eqz v3, :cond_1

    #@1d
    const/4 v2, 0x1

    #@1e
    .line 264
    .local v2, "walModeChanged":Z
    :goto_0
    if-eqz v2, :cond_3

    #@20
    .line 267
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@22
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    .line 268
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2a
    const-string/jumbo v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    #@2d
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 259
    .end local v2    # "walModeChanged":Z
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3

    #@34
    .line 262
    :cond_1
    const/4 v2, 0x0

    #@35
    .restart local v2    # "walModeChanged":Z
    goto :goto_0

    #@36
    .line 276
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    #@39
    .line 277
    sget-boolean v3, Landroid/database/sqlite/SQLiteConnectionPool;->-assertionsDisabled:Z

    #@3b
    if-nez v3, :cond_3

    #@3d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_3

    #@45
    new-instance v3, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v3

    #@4b
    .line 280
    :cond_3
    iget-boolean v3, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@4d
    .line 281
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@4f
    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@51
    .line 280
    if-eq v3, v5, :cond_4

    #@53
    const/4 v0, 0x1

    #@54
    .line 282
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    if-eqz v0, :cond_5

    #@56
    .line 286
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@58
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@5b
    move-result v3

    #@5c
    if-nez v3, :cond_5

    #@5e
    .line 287
    new-instance v3, Ljava/lang/IllegalStateException;

    #@60
    const-string/jumbo v5, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    #@63
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    throw v3

    #@67
    .line 280
    .end local v0    # "foreignKeyModeChanged":Z
    :cond_4
    const/4 v0, 0x0

    #@68
    .restart local v0    # "foreignKeyModeChanged":Z
    goto :goto_1

    #@69
    .line 294
    :cond_5
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@6b
    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@6d
    iget v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@6f
    if-eq v3, v5, :cond_7

    #@71
    .line 298
    if-eqz v2, :cond_6

    #@73
    .line 299
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    #@76
    .line 307
    :cond_6
    const/4 v3, 0x1

    #@77
    .line 306
    invoke-direct {p0, p1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    #@7a
    move-result-object v1

    #@7b
    .line 309
    .local v1, "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    #@7e
    .line 310
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    #@81
    .line 312
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@83
    .line 313
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@85
    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@88
    .line 314
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    #@8b
    .line 324
    .end local v1    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    :goto_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    monitor-exit v4

    #@8f
    .line 254
    return-void

    #@90
    .line 317
    :cond_7
    :try_start_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@92
    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@95
    .line 318
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    #@98
    .line 320
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    #@9b
    .line 321
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    goto :goto_2
.end method

.method public releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    #@0
    .prologue
    .line 364
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    #@b
    .line 366
    .local v0, "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-nez v0, :cond_0

    #@d
    .line 367
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    #@12
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 364
    .end local v0    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 372
    .restart local v0    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 373
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :goto_0
    monitor-exit v2

    #@21
    .line 363
    return-void

    #@22
    .line 374
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_5

    #@28
    .line 375
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_4

    #@2e
    .line 376
    sget-boolean v1, Landroid/database/sqlite/SQLiteConnectionPool;->-assertionsDisabled:Z

    #@30
    if-nez v1, :cond_3

    #@32
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@34
    if-nez v1, :cond_2

    #@36
    const/4 v1, 0x1

    #@37
    :goto_1
    if-nez v1, :cond_3

    #@39
    new-instance v1, Ljava/lang/AssertionError;

    #@3b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3e
    throw v1

    #@3f
    :cond_2
    const/4 v1, 0x0

    #@40
    goto :goto_1

    #@41
    .line 377
    :cond_3
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    #@43
    .line 379
    :cond_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    #@46
    goto :goto_0

    #@47
    .line 380
    :cond_5
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v1

    #@4d
    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    #@4f
    add-int/lit8 v3, v3, -0x1

    #@51
    if-lt v1, v3, :cond_6

    #@53
    .line 381
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    #@56
    goto :goto_0

    #@57
    .line 383
    :cond_6
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_7

    #@5d
    .line 384
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    .line 386
    :cond_7
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    goto :goto_0
.end method

.method public shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    #@0
    .prologue
    .line 422
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    #@10
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 422
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 429
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 430
    const/4 v0, 0x0

    #@1c
    monitor-exit v1

    #@1d
    return v0

    #@1e
    .line 434
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    #@21
    move-result v0

    #@22
    .line 433
    invoke-direct {p0, v0, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result v0

    #@26
    monitor-exit v1

    #@27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SQLiteConnectionPool: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@e
    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
