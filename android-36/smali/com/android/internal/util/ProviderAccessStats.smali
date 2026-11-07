.class public Lcom/android/internal/util/ProviderAccessStats;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    }
.end annotation


# instance fields
.field private final blacklist mAllCallingUids:Landroid/util/SparseBooleanArray;

.field private final blacklist mBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mDeleteInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mDeleteStats:Landroid/util/SparseLongArray;

.field private final blacklist mInsertInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mInsertStats:Landroid/util/SparseLongArray;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOperationDurationMillis:Landroid/util/SparseLongArray;

.field private final blacklist mQueryStats:Landroid/util/SparseLongArray;

.field private final blacklist mStartUptime:J

.field private final blacklist mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/util/ProviderAccessStats$PerThreadData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mUpdateStats:Landroid/util/SparseLongArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    .line 29
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    .line 30
    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    .line 31
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    .line 32
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    .line 33
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    .line 34
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    .line 35
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    .line 36
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    .line 37
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    .line 39
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 46
    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/util/ProviderAccessStats$$ExternalSyntheticLambda0;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    .line 46
    return-void
.end method

.method private blacklist incrementStats(ILandroid/util/SparseLongArray;)V
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "stats"    # Landroid/util/SparseLongArray;

    .line 50
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p2, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 52
    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    .line 55
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    .line 56
    .local v0, "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    .line 57
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-ne v1, v2, :cond_2b

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    .line 60
    :cond_2b
    return-void

    .line 53
    .end local v0    # "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private blacklist incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z
    .param p3, "statsNonBatch"    # Landroid/util/SparseLongArray;
    .param p4, "statsInBatch"    # Landroid/util/SparseLongArray;

    .line 64
    if-eqz p2, :cond_4

    move-object v0, p4

    goto :goto_5

    :cond_4
    move-object v0, p3

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 65
    return-void
.end method

.method static synthetic blacklist lambda$new$0()Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    .registers 2

    .line 47
    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>(Lcom/android/internal/util/ProviderAccessStats-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 104
    :try_start_7
    const-string v0, "  Process uptime: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 106
    const-string v0, " minutes"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 109
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string v0, "Client activities:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string v0, "  UID        Query  Insert Update Delete   Batch Insert Update Delete          Sec"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    iget-object v4, v1, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_bf

    .line 115
    iget-object v4, v1, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 116
    .local v4, "uid":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    const-string v5, "  %-9d %6d  %6d %6d %6d  %6d %6d %6d %6d %12.3f"

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    .line 120
    invoke-virtual {v7, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    .line 121
    invoke-virtual {v8, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    .line 122
    invoke-virtual {v9, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    .line 123
    invoke-virtual {v10, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v1, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    .line 124
    invoke-virtual {v11, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v1, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    .line 125
    invoke-virtual {v12, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    .line 126
    invoke-virtual {v13, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    .line 127
    invoke-virtual {v14, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 128
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    invoke-virtual {v15, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .end local v4    # "uid":I
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_33

    :cond_bf
    move/from16 v16, v0

    .line 131
    .end local v0    # "i":I
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 132
    monitor-exit v3

    .line 133
    return-void

    .line 132
    :catchall_c6
    move-exception v0

    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_7 .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method public blacklist finishOperation(I)V
    .registers 9
    .param p1, "callingUid"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    .line 89
    .local v0, "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    .line 90
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-nez v1, :cond_33

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 95
    .local v1, "duration":J
    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_22
    iget-object v4, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    iget-object v5, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 97
    invoke-virtual {v5, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 96
    invoke-virtual {v4, p1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 98
    monitor-exit v3

    goto :goto_33

    :catchall_30
    move-exception v4

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v4

    .line 100
    .end local v1    # "duration":J
    :cond_33
    :goto_33
    return-void
.end method

.method public final blacklist incrementBatchStats(I)V
    .registers 3
    .param p1, "callingUid"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 85
    return-void
.end method

.method public final blacklist incrementDeleteStats(IZ)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 77
    return-void
.end method

.method public final blacklist incrementInsertStats(IZ)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 69
    return-void
.end method

.method public final blacklist incrementQueryStats(I)V
    .registers 3
    .param p1, "callingUid"    # I

    .line 80
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 81
    return-void
.end method

.method public final blacklist incrementUpdateStats(IZ)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 73
    return-void
.end method
