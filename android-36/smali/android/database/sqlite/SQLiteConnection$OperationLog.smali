.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OperationLog"
.end annotation


# static fields
.field private static final greylist-max-o COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final greylist-max-o COOKIE_INDEX_MASK:I = 0xff

.field private static final blacklist LONG_OPERATION_THRESHOLD_MS:J = 0x7d0L

.field private static final blacklist MAX_LONG_OPERATIONS:I = 0xa

.field private static final greylist-max-o MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private greylist-max-o mGeneration:I

.field private greylist-max-o mIndex:I

.field private final blacklist mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

.field private final blacklist mLongOperations:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/database/sqlite/SQLiteConnection$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private blacklist mResultLong:J

.field private blacklist mResultString:Ljava/lang/String;

.field private blacklist mTotalLongOperations:I

.field private final blacklist mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$Xgq3hBDEhM_ztShleD13PdzKmX4(Landroid/database/sqlite/SQLiteConnection$OperationLog;)Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1650
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    const/16 p1, 0x14

    new-array p1, p1, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1660
    const/4 p1, -0x1

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1661
    const/4 p1, 0x0

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1662
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1663
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1666
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V

    new-instance v2, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    .line 1670
    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    .line 1673
    new-instance p1, Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteConnection$RateLimiter;-><init>(JI)V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private blacklist dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "op"    # Landroid/database/sqlite/SQLiteConnection$Operation;
    .param p3, "counter"    # I

    .line 1857
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 1860
    :cond_11
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1861
    const/4 v0, 0x1

    return v0

    .line 1858
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist dumpLongLocked(Landroid/util/Printer;)V
    .registers 5
    .param p1, "printer"    # Landroid/util/Printer;

    .line 1894
    const-string v0, "  Operations exceeding 2000ms:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1896
    const-string v0, "    <none>"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1897
    return-void

    .line 1899
    :cond_13
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1900
    .local v0, "longOps":[Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 1901
    aget-object v2, v0, v1

    if-eqz v2, :cond_2c

    .line 1902
    aget-object v2, v0, v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1900
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1905
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private blacklist dumpRecentLocked(Landroid/util/Printer;)V
    .registers 8
    .param p1, "printer"    # Landroid/util/Printer;

    .line 1865
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1866
    :try_start_3
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1867
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1868
    .local v1, "index":I
    if-nez v1, :cond_13

    .line 1869
    const-string v2, "    <none>"

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1870
    monitor-exit v0

    return-void

    .line 1874
    :cond_13
    const/4 v2, 0x0

    .line 1875
    .local v2, "counter":I
    const/4 v3, 0x0

    .line 1876
    .local v3, "n":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v4, v4, v1

    .line 1878
    .local v4, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_19
    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1880
    if-lez v1, :cond_25

    .line 1881
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 1883
    :cond_25
    const/16 v1, 0x13

    .line 1885
    :goto_27
    add-int/lit8 v3, v3, 0x1

    .line 1886
    add-int/lit8 v2, v2, 0x1

    .line 1887
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v5, v5, v1

    move-object v4, v5

    .line 1888
    if-eqz v4, :cond_36

    const/16 v5, 0x14

    if-lt v3, v5, :cond_19

    .line 1889
    :cond_36
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, p1, v5, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I

    .line 1890
    .end local v1    # "index":I
    .end local v2    # "counter":I
    .end local v3    # "n":I
    .end local v4    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    monitor-exit v0

    .line 1891
    return-void

    .line 1890
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private greylist-max-o endOperationDeferLogLocked(I)Z
    .registers 8
    .param p1, "cookie"    # I

    .line 1788
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1789
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 1790
    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz v2, :cond_17

    .line 1791
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v4, 0x100000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1794
    :cond_17
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v2

    .line 1795
    .local v2, "execTime":J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    .line 1796
    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v4, :cond_2f

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1

    .line 1799
    .end local v2    # "execTime":J
    :cond_30
    return v1
.end method

.method private blacklist finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J
    .registers 7
    .param p1, "operation"    # Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1821
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1823
    iget-wide v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    .line 1824
    .local v1, "elapsed":J
    const-wide/16 v3, 0x7d0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4c

    .line 1825
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1826
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    .line 1827
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Long db operation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SQLiteConnection"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_4c
    return-wide v1
.end method

.method private greylist-max-o getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 5
    .param p1, "cookie"    # I

    .line 1835
    and-int/lit16 v0, p1, 0xff

    .line 1836
    .local v0, "index":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 1837
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_e

    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_e

    move-object v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return-object v2
.end method

.method private synthetic blacklist lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 4

    .line 1667
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)[Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 2
    .param p0, "n"    # I

    .line 1668
    new-array v0, p0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    return-object v0
.end method

.method private greylist-max-o logOperationLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1803
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1804
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    iput-wide v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1805
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1807
    .local v1, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1808
    if-eqz p2, :cond_20

    .line 1809
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    :cond_20
    const-string v2, "SQLiteConnection"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    return-void
.end method

.method private greylist-max-o newOperationCookieLocked(I)I
    .registers 4
    .param p1, "index"    # I

    .line 1815
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1816
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method

.method private blacklist newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 7

    .line 1724
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    .line 1725
    .local v0, "index":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 1726
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v1, :cond_1c

    .line 1727
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    aput-object v3, v2, v0

    .line 1728
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    .line 1730
    :cond_1c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->start()V

    .line 1731
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v2

    iput v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1732
    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1733
    return-object v1
.end method


# virtual methods
.method public greylist-max-o beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .line 1676
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1677
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1679
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1680
    :try_start_a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1681
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1682
    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1683
    if-eqz p3, :cond_3d

    .line 1684
    iget-object v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v2, :cond_1f

    .line 1685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1687
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    array-length v3, p3

    if-ge v2, v3, :cond_3d

    .line 1688
    aget-object v3, p3, v2

    .line 1689
    .local v3, "arg":Ljava/lang/Object;
    if-eqz v3, :cond_35

    instance-of v4, v3, [B

    if-eqz v4, :cond_35

    .line 1691
    iget-object v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 1693
    :cond_35
    iget-object v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1697
    .end local v2    # "i":I
    :cond_3d
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    iput-boolean v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 1698
    iget-boolean v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz v4, :cond_53

    .line 1699
    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1702
    :cond_53
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return v2

    .line 1703
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_57

    throw v1
.end method

.method public blacklist beginTransaction(Ljava/lang/String;)V
    .registers 8
    .param p1, "kind"    # Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1708
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1709
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1710
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1712
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz v2, :cond_1e

    .line 1713
    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v4, 0x100000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1716
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_1e
    monitor-exit v0

    .line 1717
    return-void

    .line 1716
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o describeCurrentOperation()Ljava/lang/String;
    .registers 5

    .line 1841
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1842
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    .line 1843
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_1e

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_1e

    .line 1844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1845
    .local v2, "msg":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1846
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1848
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_1e
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1849
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;)V
    .registers 4
    .param p1, "printer"    # Landroid/util/Printer;

    .line 1912
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1913
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpRecentLocked(Landroid/util/Printer;)V

    .line 1914
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpLongLocked(Landroid/util/Printer;)V

    .line 1915
    monitor-exit v0

    .line 1916
    return-void

    .line 1915
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public greylist-max-o endOperation(I)V
    .registers 4
    .param p1, "cookie"    # I

    .line 1746
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1747
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1748
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1750
    :cond_d
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist-max-o endOperationDeferLog(I)Z
    .registers 4
    .param p1, "cookie"    # I

    .line 1754
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1755
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1756
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist endTransaction(Z)Z
    .registers 7
    .param p1, "success"    # Z

    .line 1760
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1761
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    if-eqz p1, :cond_a

    const-wide/16 v2, 0x1

    goto :goto_c

    :cond_a
    const-wide/16 v2, 0x0

    :goto_c
    iput-wide v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1762
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v1

    .line 1763
    .local v1, "execTime":J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v3, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v3

    .line 1764
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_23

    .line 1765
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1767
    :cond_23
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteConnection$Operation;->setEmpty()V

    .line 1768
    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v4, :cond_34

    .line 1769
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    monitor-exit v0

    .line 1768
    return v4

    .line 1770
    .end local v1    # "execTime":J
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public greylist-max-o failOperation(ILjava/lang/Exception;)V
    .registers 5
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 1737
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1738
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1739
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_b

    .line 1740
    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1742
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_b
    monitor-exit v0

    .line 1743
    return-void

    .line 1742
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist getTotalLongOperations()J
    .registers 3

    .line 1908
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public greylist-max-o logOperation(ILjava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1774
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1775
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1776
    monitor-exit v0

    .line 1777
    return-void

    .line 1776
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist setResult(J)V
    .registers 3
    .param p1, "longResult"    # J

    .line 1780
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1781
    return-void
.end method

.method public blacklist setResult(Ljava/lang/String;)V
    .registers 2
    .param p1, "stringResult"    # Ljava/lang/String;

    .line 1784
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1785
    return-void
.end method
